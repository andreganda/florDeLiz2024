﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using flordelizHemilly.DataBase;
using flordelizHemilly.Models;
using flordelizHemilly.Service;
using MySqlConnector;
using System.Data.SqlClient;
using static flordelizHemilly.Models.SuportClass;
using Microsoft.AspNetCore.Authorization;
using Newtonsoft.Json;
using static flordelizHemilly.Controllers.ParcelasController;
using System.Text;
using MySqlX.XDevAPI;

namespace flordelizHemilly.Controllers
{
    [Authorize]
    public class VendasController : Controller
    {
        private readonly FlorDeLizContext _context;
        private readonly IVendaService _vendaService;
        private readonly IItemVendaService _itemVendaService;
        private readonly IParcelaService _parcelaService;

        public VendasController(
            FlorDeLizContext context,
            IVendaService vendaService,
            IItemVendaService itemVendaService,
            IParcelaService parcelaService)
        {
            _context = context;
            _vendaService = vendaService;
            _itemVendaService = itemVendaService;
            _parcelaService = parcelaService;
        }

        public IActionResult Create()
        {

            //select Item
            ViewData["ClienteId"] = ListaClientesSelectItem();
            return View(new Venda());
        }

        private IEnumerable<SelectListItem> ListaClientesSelectItem()
        { int lojaId = Convert.ToInt16(User.FindFirst("LojaId")?.Value);
            var listaManual = new List<SelectListItem>
            {
                new SelectListItem { Text = "SELECIONE UM CLIENTE ", Value = "" }
            };

            // Criando a lista selecionável a partir dos clientes
            var listaSelecionavelClientes = new SelectList(_context.Clientes.Where(a => a.Status == 1 && a.LojaId == lojaId), "ClienteID", "Nome");

            // Concatenando a lista manual com a lista selecionável dos clientes
            var listaCompleta = listaManual.Concat(listaSelecionavelClientes);

            return listaCompleta;
        }

        [HttpGet]
        public async Task<string> DetalharItensCompra(int idVenda)
        {
            var itensCompra = await _context.ItemVendas.Where(a=> a.VendaId == idVenda).ToListAsync();

            var sb = new StringBuilder();

            foreach (var item in itensCompra)
            {
                sb.Append($"<tr>" +
                    $"<td>{item.NomeDoProduto}</td>" +
                    $"<td>{item.Quantidade}</td>" +
                    $"<td>{Math.Round(item.PrecoUnitario,2)}</td>" +
                    $"<td>{Math.Round(item.Total,2)}</td>" +
                    $"</tr>");
            }

            return sb.ToString();

        }

        [HttpPost]
        public async Task<Mensagem> SalvarVendaAsync(VendaViewModel venda)
        {
            var m = new Mensagem();
            try
            {
                int lojaId = Convert.ToInt16(User.FindFirst("LojaId")?.Value);

                decimal entrada = decimal.Parse(venda.Entrada.Replace("R$", "").Trim());
                decimal total = Convert.ToDecimal(venda.Total.Replace("R$", "").Trim());

                decimal jurosDescontoAVista = Convert.ToDecimal(venda.JuroDesconto);

                var novaVenda = new Venda();
                novaVenda.Entrada = entrada;
                novaVenda.Total = total;
                novaVenda.DataDaVenda = Convert.ToDateTime(venda.DataDaVenda);
                novaVenda.ClienteId = venda.ClienteId;
                novaVenda.TipoPagamento = (TipoPagamento)venda.TipoFormaPagamento;
                novaVenda.LojaId = lojaId;
                novaVenda.Observacao = venda.Observacao;

                //venda a vista;
                if (venda.TipoFormaPagamento == (int)TipoPagamento.AVista ||
                    venda.TipoFormaPagamento == (int)TipoPagamento.CartaoDebito)
                {

                    if (jurosDescontoAVista != Convert.ToDecimal("0.00"))
                    {
                        var desconto = Math.Round((total * (jurosDescontoAVista/100)),2);
                        var novoTotal = total - desconto;
                        novaVenda.Total = Math.Round(novoTotal,2);

                        if (novaVenda.Observacao!=string.Empty && novaVenda.Observacao!=null)
                        {
                            novaVenda.Observacao += Environment.NewLine + 
                                $"Valor real da venda: {total}."+ Environment.NewLine+ 
                                $"Valor desconto: {desconto}." + Environment.NewLine +
                                $"% a vista: {jurosDescontoAVista}";
                        }
                        else
                        {
                            novaVenda.Observacao = $"Valor real da venda: {total}." + Environment.NewLine +
                               $"Valor desconto: {desconto}." + Environment.NewLine +
                               $"% a vista: {jurosDescontoAVista}.";
                        }
                    }

                    novaVenda.NumeroParcelas = 0;
                    novaVenda.Status = 1;
                }

                if (venda.TipoFormaPagamento == (int)TipoPagamento.CartaoCredito)
                {
                    novaVenda.NumeroParcelas = venda.NumeroParcelas;
                    novaVenda.Status = 1;
                }

                if (venda.TipoFormaPagamento == (int)TipoPagamento.Crediario)
                {
                    novaVenda.NumeroParcelas = venda.NumeroParcelas;
                    novaVenda.Status = 0;
                }

                var vendaIncluida = await _vendaService.Create(novaVenda);

                if (vendaIncluida.Id != 0)
                {
                    await SalvarItensVendaAsync(vendaIncluida.Id, venda.ItensVenda);

                    //Criando parcelas no crediario
                    if (venda.TipoFormaPagamento == (int)TipoPagamento.Crediario)
                        await SalvarParcelasAsync(vendaIncluida);
                }
                m.Status = 1;
                m.Descricao = "Compra incluída com sucesso";
                return m;
            }
            catch (Exception ex)
            {
                m.Status = 0;
                m.Descricao = ex.Message.ToString();
                return m;
            }
        }

        private async Task<Mensagem> SalvarItensVendaAsync(int idVenda, IEnumerable<ItemVendaDto> itens)
        {
            Mensagem m = new Mensagem();
            try
            {
                foreach (var item in itens)
                {
                    var novoItem = new ItemVenda();
                    novoItem.NomeDoProduto = item.NomeDoProduto.ToUpper();
                    novoItem.VendaId = idVenda;
                    novoItem.PrecoUnitario = Convert.ToDecimal(item.PrecoUnitario.Replace(".", ","));
                    novoItem.Quantidade = item.Quantidade;
                    await _itemVendaService.Create(novoItem);
                }

                m.Status = 1;
            }
            catch (Exception ex)
            {
                m.Status = 0;
                m.Descricao = ex.Message;
                return m;
            }

            return m;
        }

        private async Task<bool> SalvarParcelasAsync(Venda venda)
        {
            var valorParcela = (venda.Total - venda.Entrada) / venda.NumeroParcelas;

            try
            {
                for (var i = 1; i <= venda.NumeroParcelas; i++)
                {
                    var dataVenda = venda.DataDaVenda;
                    var parcela = new Parcela();
                    parcela.VendaId = venda.Id;
                    parcela.NumeroParcela = i;
                    parcela.DataVencimento = dataVenda.AddMonths(i);
                    parcela.Valor = valorParcela;
                    parcela.Pago = false;
                    parcela.Historico = "";
                    await _parcelaService.Create(parcela);
                }
            }
            catch (Exception ex)
            {
                return false;
            }

            return true;
        }

        #region METODOS DEFAULT
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,DataDaVenda,ClienteId,PrecoTotal,NumeroParcelas,Total")] Venda venda)
        {
            if (ModelState.IsValid)
            {
                _context.Add(venda);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["ClienteId"] = new SelectList(_context.Clientes, "ClienteID", "Nome", venda.ClienteId);
            return View(venda);
        }



        public async Task<IActionResult> Index(DateTime? startDate, DateTime? endDate, int? status, int? idCliente)
        {

            if (!status.HasValue)
                status = 0;

            var query = $"";

            if (status == -1)
            {
                query = $"(status = 0 or status = 1) ";
            }
            else
            {
                query = $"(status = {status}) ";
            }

            if (startDate != null)
            {
                string de = String.Format("{0:yyyy-MM-dd}", Convert.ToDateTime(startDate));
                query += $" and (date(DataDaVenda) >= '{de}') ";
            }

            if (endDate != null)
            {
                string ate = String.Format("{0:yyyy-MM-dd}", Convert.ToDateTime(endDate));
                query += $"and (date(DataDaVenda) <= '{ate}') ";
            }

            if (idCliente != null)
            {
                query += $"and ClienteId = {idCliente} ";
            }

            query += $"and Excluido = 0 ";
            

            int lojaId = Convert.ToInt16(User.FindFirst("LojaId")?.Value);

            query += $" and LojaId = {lojaId}";

            var sqlQuery = $"SELECT * FROM Vendas where {query}";

            var vendas = await _context.Vendas.FromSqlRaw(sqlQuery).Include(v => v.Cliente).Include(a => a.Parcelas).ToListAsync();

            ViewData["StartDate"] = startDate != null ? startDate.Value.ToString("yyyy-MM-dd") : "";
            ViewData["EndDate"] = endDate != null ? endDate.Value.ToString("yyyy-MM-dd") : "";
            ViewData["status"] = status.ToString();

            ViewData["ListaSeletFiltro"] = ListaSelect();
            ViewData["ClienteId"] = ListaClientesSelectItem();

            return View(vendas);
        }


        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var venda = await _context.Vendas
                .Include(v => v.Cliente)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (venda == null)
            {
                return NotFound();
            }

            return View(venda);
        }

        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var venda = await _context.Vendas.FindAsync(id);
            if (venda == null)
            {
                return NotFound();
            }
            ViewData["ClienteId"] = new SelectList(_context.Clientes, "ClienteID", "Nome", venda.ClienteId);
            return View(venda);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,DataDaVenda,ClienteId,PrecoTotal,NumeroParcelas,Total")] Venda venda)
        {
            if (id != venda.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(venda);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!VendaExists(venda.Id))
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
            ViewData["ClienteId"] = new SelectList(_context.Clientes, "ClienteID", "Nome", venda.ClienteId);
            return View(venda);
        }

        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var venda = await _context.Vendas
                .Include(v => v.Cliente)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (venda == null)
            {
                return NotFound();
            }

            return View(venda);
        }

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var venda = await _context.Vendas.FindAsync(id);
            if (venda != null)
            {
                venda.Excluido = 1;
                _context.Vendas.Update(venda);
            }

            await _context.SaveChangesAsync();

            TempData["MessageSuccess"] = $"Venda excluida com sucesso!";

            return RedirectToAction(nameof(Index));
        }

        private bool VendaExists(int id)
        {
            return _context.Vendas.Any(e => e.Id == id);
        }

        #endregion

        public class VendaViewModel
        {
            public string DataDaVenda { get; set; }
            public int ClienteId { get; set; }
            public int NumeroParcelas { get; set; }
            public string Total { get; set; }
            public string JuroDesconto { get; set; }
            public string Entrada { get; set; }
            public string Observacao { get; set; }
            public int TipoFormaPagamento { get; set; }
            public IEnumerable<ItemVendaDto> ItensVenda { get; set; }
        }



        public List<ItensSelectStatus> ListaSelect()
        {
            var lista = new List<ItensSelectStatus>();
            lista.Add(new ItensSelectStatus { Value = 0, Descricao = "Pendente" });
            lista.Add(new ItensSelectStatus { Value = -1, Descricao = "Todos" });
            lista.Add(new ItensSelectStatus { Value = 1, Descricao = "Pago" });
            return lista;
        }
    }
}
