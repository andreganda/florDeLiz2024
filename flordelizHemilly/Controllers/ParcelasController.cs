using flordelizHemilly.DataBase;
using flordelizHemilly.Models;
using flordelizHemilly.Service;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Newtonsoft.Json;
using System.Text;

namespace flordelizHemilly.Controllers
{
    [Authorize]
    public class ParcelasController : Controller
    {
        private readonly FlorDeLizContext _context;
        private readonly IVendaService _vendaService;

        public ParcelasController(FlorDeLizContext context, IVendaService vendaService)
        {
            _context = context;
            _vendaService = vendaService;
        }

        // GET: Parcelas
        public async Task<IActionResult> Index(int id)
        {
            var venda = await _vendaService.Detail(id);
            ViewData["cliente"] = venda.Cliente;
            ViewData["venda"] = venda;

            var florDeLizContext = _context.Parcelas.Where(a => a.VendaId == id).Include(p => p.Venda);
            return View(await florDeLizContext.ToListAsync());
        }

        [HttpPost]
        public async Task<Mensagem> EfetuarPagamentoParcelaAsync(PagamentoParcelaViewModel venda)
        {
            var m = new Mensagem();
            var parcela = await _context.Parcelas.FirstOrDefaultAsync(m => m.Id == venda.IdParcela);
            var valorPagamento = Convert.ToDecimal(venda.Valor.Replace(".", ","));

            return m;
        }

        [HttpPost]
        public async Task<Mensagem> EfetuarPagamento(PagamentoParcelaViewModel v)
        {
            var m = new Mensagem();
            string obsPagamento = "";
            try
            {
                var parcela = await _context.Parcelas.FirstOrDefaultAsync(m => m.Id == v.IdParcela);
                decimal valorParcela = parcela.Valor;

                var historico = JsonConvert.DeserializeObject<List<ParcelaHistorico>>(parcela.Historico);
                var venda = await _context.Vendas.FirstOrDefaultAsync(m => m.Id == parcela.VendaId);
                v.Valor = v.Valor.Replace(".", "");
                var valorPagamento = Convert.ToDecimal(v.Valor.Replace(".", ","));

                var dataPagamento = Convert.ToDateTime(v.DataPagamento);
                var diasVencido = Convert.ToInt32(DateTime.Now.Date.Subtract(parcela.DataVencimento.Date).TotalDays);

                var juros = Convert.ToDecimal(v.Juros.Replace(".", ","));

                //se estiver vencido
                CalculoPagamentoParcela(parcela, valorPagamento, diasVencido, juros);


                parcela.DataPagamento = DateTime.Now;
                parcela.Historico = HistoricoParcela(parcela, valorPagamento, dataPagamento, juros, v.Observacao);

                _context.Update(parcela);
                await _context.SaveChangesAsync();
 
                #region VERIFICANDO SE TODAS PARCELAS ESTÃO PAGAS PARA BAIXAR NA COMPRA.
                var listaParcelasVenda = await _context.Parcelas.Where(m => m.VendaId == parcela.VendaId).ToListAsync();
                int nParcelas = listaParcelasVenda.Count();
                int parcelasPagas = 0;
                foreach (var item in listaParcelasVenda)
                {
                    if (item.Pago)
                    {
                        parcelasPagas++;
                    }
                }

                if (nParcelas == parcelasPagas)
                {
                    venda.Status = 1;

                    _context.Update(venda);
                    await _context.SaveChangesAsync();
                }
                #endregion


                m.Status = 1;
                m.Descricao = $"Pagamento de parcela realizado com sucesso. {obsPagamento}";

                return m;
            }
            catch (Exception ex)
            {

                m.Status = 0;
                m.Descricao = ex.Message.ToString();
                return m;
            }
        }

        //[HttpPost]
        //public async Task<Mensagem> EfetuarPagamento(PagamentoParcelaViewModel v)
        //{
        //    var m = new Mensagem();
        //    string obsPagamento = "";
        //    try
        //    {
        //        var parcela = await _context.Parcelas.FirstOrDefaultAsync(m => m.Id == v.IdParcela);
        //        decimal valorParcela = parcela.Valor;

        //        var historico = JsonConvert.DeserializeObject<List<ParcelaHistorico>>(parcela.Historico);
        //        var venda = await _context.Vendas.FirstOrDefaultAsync(m => m.Id == parcela.VendaId);
        //        v.Valor = v.Valor.Replace(".", "");
        //        var valorPagamento = Convert.ToDecimal(v.Valor.Replace(".", ","));

        //        var dataPagamento = Convert.ToDateTime(v.DataPagamento);
        //        var diasVencido = Convert.ToInt32(DateTime.Now.Date.Subtract(parcela.DataVencimento.Date).TotalDays);

        //        var juros = Convert.ToDecimal(v.Juros.Replace(".", ","));

        //        //se estiver vencido
        //        CalculoPagamentoParcela(parcela, valorPagamento, diasVencido, juros);


        //        parcela.DataPagamento = DateTime.Now;
        //        parcela.Historico = HistoricoParcela(parcela, valorPagamento, dataPagamento, juros, v.Observacao);

        //        _context.Update(parcela);
        //        await _context.SaveChangesAsync();

        //        #region DEBITO AUTOMATICO SE VALOR MAIOR QUE A PRESTAÇÃO

        //        if (diasVencido > 0)
        //        {
        //            valorParcela = Math.Round(((valorParcela * (juros / 100)) * diasVencido) + parcela.Valor,2);
        //        }

        //        if ((valorParcela - valorPagamento) < 0)
        //        {
        //            var valorRestouDaMensalidade = Math.Round((valorPagamento - valorParcela),2);

        //            var listParcelasParaDebitoAutomatico = await _context.Parcelas.Where(m => m.VendaId == parcela.VendaId).ToListAsync();

        //            foreach (var parcelaExtra in listParcelasParaDebitoAutomatico)
        //            {
        //                if (!parcelaExtra.Pago && parcelaExtra.Id != v.IdParcela)
        //                {
        //                    //quer dizer que o valor restante abateu por completo outra mensalidade.
        //                    if ((parcelaExtra.Valor - valorRestouDaMensalidade) <= 0)
        //                    {
        //                        parcelaExtra.Historico = HistoricoParcela(parcelaExtra, Math.Round(parcelaExtra.Valor, 2), dataPagamento, juros, "REALIZADO AUTOMATICAMENTE COM RESTANTE DO PAGAMENTO DA PRESTAÇÃO");
        //                        valorRestouDaMensalidade = valorRestouDaMensalidade - parcelaExtra.Valor;
        //                        parcelaExtra.Valor = 0;
        //                        parcelaExtra.Pago = true;
        //                        _context.Update(parcelaExtra);
        //                    }
        //                    else
        //                    {
        //                        parcelaExtra.Historico = HistoricoParcela(parcelaExtra, Math.Round(valorRestouDaMensalidade, 2), dataPagamento, juros, "REALIZADO AUTOMATICAMENTE COM RESTANTE DO PAGAMENTO DA PRESTAÇÃO");
        //                        parcelaExtra.Valor = parcelaExtra.Valor - valorRestouDaMensalidade;
        //                        valorRestouDaMensalidade = valorRestouDaMensalidade - parcelaExtra.Valor;
        //                        _context.Update(parcelaExtra);
        //                    }

        //                    if (valorRestouDaMensalidade <= 0)
        //                        break;
        //                }
        //            }

        //            if (valorRestouDaMensalidade > 0)
        //            {
        //                obsPagamento = $" -------  ATENÇÃO Foi debitado todas as possiveis prestações com o dinheiro recebido, porem ainda sobrou {Math.Round(valorRestouDaMensalidade, 2).ToString()}";
        //            }

        //            await _context.SaveChangesAsync();
        //        } 
        //        #endregion

        //        #region VERIFICANDO SE TODAS PARCELAS ESTÃO PAGAS PARA BAIXAR NA COMPRA.
        //        var listaParcelasVenda = await _context.Parcelas.Where(m => m.VendaId == parcela.VendaId).ToListAsync();
        //        int nParcelas = listaParcelasVenda.Count();
        //        int parcelasPagas = 0;
        //        foreach (var item in listaParcelasVenda)
        //        {
        //            if (item.Pago)
        //            {
        //                parcelasPagas++;
        //            }
        //        }

        //        if (nParcelas == parcelasPagas)
        //        {
        //            venda.Status = 1;

        //            _context.Update(venda);
        //            await _context.SaveChangesAsync();
        //        }
        //        #endregion


        //        m.Status = 1;
        //        m.Descricao = $"Pagamento de parcela realizado com sucesso. {obsPagamento}";

        //        return m;
        //    }
        //    catch (Exception ex)
        //    {

        //        m.Status = 0;
        //        m.Descricao = ex.Message.ToString();
        //        return m;
        //    }
        //}

        public string HistoricoParcela(Parcela parcela, decimal valorPagamento, DateTime dataPagamento, decimal juros, string observacao)
        {
            var historico = JsonConvert.DeserializeObject<List<ParcelaHistorico>>(parcela.Historico);

            if (historico == null)
            {
                List<ParcelaHistorico> listH = new List<ParcelaHistorico>
                                {
                                new ParcelaHistorico { Valor = valorPagamento.ToString(),
                                DataPagamento = dataPagamento.ToShortDateString(),
                                Juros = juros.ToString(),
                                Observacao = observacao
                                }
                                };
                return JsonConvert.SerializeObject(listH, Formatting.Indented);
            }
            else
            {
                historico.Add(new ParcelaHistorico { Valor = valorPagamento.ToString(), DataPagamento = dataPagamento.ToShortDateString(), Juros = juros.ToString(), Observacao = observacao });
                return JsonConvert.SerializeObject(historico, Formatting.Indented);
            }
        }

        [HttpGet]
        public async Task<string> DetalharHistorico(int idParcela)
        {
            var parcela = await _context.Parcelas.FirstOrDefaultAsync(m => m.Id == idParcela);
            var historico = JsonConvert.DeserializeObject<List<ParcelaHistorico>>(parcela.Historico);

            var sb = new StringBuilder();

            foreach (var item in historico)
            {
                sb.Append($"<tr>" +
                    $"<td>{item.DataPagamento}</td>" +
                    $"<td>{item.Valor}</td>" +
                    $"<td>{item.Juros}</td>" +
                    $"<td>{item.Observacao}</td>" +
                    $"</tr>");
            }

            return sb.ToString();

        }

        private void CalculoPagamentoParcela(Parcela? parcela, decimal valorPagamento, int diasVencido, decimal juros)
        {
            if (diasVencido > 0)
            {
                var valorParcela = ((parcela.Valor * (juros / 100)) * diasVencido) + parcela.Valor;
                valorParcela = Math.Round(valorParcela, 2);

                if (valorPagamento >= valorParcela)
                {
                    parcela.Pago = true;
                    parcela.Valor = 0;
                }
                else
                {
                    parcela.Valor = valorParcela - valorPagamento;
                }
            }
            else
            {
                if (valorPagamento >= parcela.Valor)
                {
                    parcela.Pago = true;
                    parcela.Valor = 0;
                }
                else
                {
                    parcela.Valor = Math.Round(parcela.Valor - valorPagamento,2);
                }
            }
        }

        #region CRIAÇÃO AUTOMATICA

        // GET: Parcelas/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var parcela = await _context.Parcelas
                .Include(p => p.Venda)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (parcela == null)
            {
                return NotFound();
            }

            return View(parcela);
        }

        // GET: Parcelas/Create
        public IActionResult Create()
        {
            ViewData["VendaId"] = new SelectList(_context.Vendas, "Id", "Id");
            return View();
        }

        // POST: Parcelas/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,VendaId,NumeroParcela,Valor,DataVencimento,Pago")] Parcela parcela)
        {
            if (ModelState.IsValid)
            {
                _context.Add(parcela);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["VendaId"] = new SelectList(_context.Vendas, "Id", "Id", parcela.VendaId);
            return View(parcela);
        }

        // GET: Parcelas/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var parcela = await _context.Parcelas.FindAsync(id);
            if (parcela == null)
            {
                return NotFound();
            }
            ViewData["VendaId"] = new SelectList(_context.Vendas, "Id", "Id", parcela.VendaId);
            return View(parcela);
        }

        // POST: Parcelas/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,VendaId,NumeroParcela,Valor,DataVencimento,Pago")] Parcela parcela)
        {
            if (id != parcela.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(parcela);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!ParcelaExists(parcela.Id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            ViewData["VendaId"] = new SelectList(_context.Vendas, "Id", "Id", parcela.VendaId);
            return View(parcela);
        }

        // GET: Parcelas/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var parcela = await _context.Parcelas
                .Include(p => p.Venda)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (parcela == null)
            {
                return NotFound();
            }

            return View(parcela);
        }

        // POST: Parcelas/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var parcela = await _context.Parcelas.FindAsync(id);
            if (parcela != null)
            {
                _context.Parcelas.Remove(parcela);
            }

            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool ParcelaExists(int id)
        {
            return _context.Parcelas.Any(e => e.Id == id);
        }
        #endregion

        public class PagamentoParcelaViewModel
        {
            public int IdParcela { get; set; }
            public string? Valor { get; set; }
            public string? Juros { get; set; }
            public string? DataPagamento { get; set; }
            public string? Observacao { get; set; }
        }

        public class ParcelaHistorico
        {
            public string DataPagamento { get; set; }
            public string? Valor { get; set; }
            public string? Juros { get; set; }
            public string? Observacao { get; set; }

        }
    }
}
