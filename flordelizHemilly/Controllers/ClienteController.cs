using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using flordelizHemilly.DataBase;
using flordelizHemilly.Models;
using flordelizHemilly.Service;
using Microsoft.AspNetCore.Authorization;

namespace flordelizHemilly.Controllers
{
    [Authorize]
    public class ClienteController : Controller
    {
        private readonly FlorDeLizContext _context;
        private readonly IClienteService _clienteService;

        public ClienteController(FlorDeLizContext context, IClienteService clienteService)
        {
            _context = context;
            _clienteService = clienteService;
        }


        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> CreateUpdate(Cliente cliente)
        {
            int lojaId = Convert.ToInt16(User.FindFirst("LojaId")?.Value);

            if (ModelState.IsValid)
            {
                if (cliente.ClienteID == 0)
                {
                    if (cliente.Email != string.Empty && cliente.Email != null)
                    {
                        // Verificar se o e-mail já está em uso
                        var emailExistente = await _clienteService.VerificarEmailExistenteAsync(cliente.Email, lojaId);
                        if (emailExistente != null)
                        {
                            TempData["MessageError"] = $"O e-mail {cliente.Email} já está em uso.";
                            return RedirectToAction(nameof(Index));
                        }
                    }
                    cliente.Status = 1; //cliente ativo
                    cliente.LojaId = lojaId;
                    var c = await _clienteService.Create(cliente);
                    TempData["MessageSuccess"] = $"Cliente {cliente.Nome} cadastrado com sucesso!";
                    return RedirectToAction(nameof(Index));
                }
                else
                {
                    var clienteBd = new Cliente();
                    if (cliente.Email != string.Empty && cliente.Email != null)
                    {
                        // Verificar se o e-mail já está em uso
                        clienteBd = await _clienteService.VerificarEmailExistenteAsync(cliente.Email, lojaId);
                        if (clienteBd != null && clienteBd.ClienteID != cliente.ClienteID)
                        {
                            TempData["MessageError"] = $"O e-mail {cliente.Email} já está em uso.";

                            return RedirectToAction(nameof(Index));
                        }
                    }

                    if (clienteBd != null)
                    {
                        _context.Entry(clienteBd).State = EntityState.Detached;
                    }

                    cliente.LojaId= lojaId;
                    await _clienteService.Update(cliente);
                    TempData["MessageSuccess"] = $"Cliente {cliente.Nome} foi alterado com sucesso!";
                    _context.Clientes.Update(cliente);

                }
                _context.SaveChanges();

                ViewData["MsgModal"] = "Usuario alterado com sucesso";
                ViewData["MostrarModal"] = true;
                return RedirectToAction("Index", "Cliente");
            }

            return View("Index");
        }

        public async Task<IActionResult> Index()
        {
            int lojaId = Convert.ToInt16(User.FindFirst("LojaId")?.Value);
            var lista = await _context.Clientes.Where(c => c.Status == 1 && c.LojaId == lojaId).ToListAsync();
            return View(lista);
        }

        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var cliente = await _context.Clientes
                .FirstOrDefaultAsync(m => m.ClienteID == id);
            if (cliente == null)
            {
                return NotFound();
            }

            return View("Create",cliente);
        }

        public IActionResult Create()
        {
            return View(new Cliente());
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([FromForm] Cliente cliente)
        {
            int lojaId = Convert.ToInt16(User.FindFirst("LojaId")?.Value);
            cliente.LojaId = lojaId;
            if (ModelState.IsValid)
            {

                if (cliente.Email!=string.Empty && cliente.Email !=null)
                {
                    // Verificar se o e-mail já está em uso
                    var emailExistente = await _clienteService.VerificarEmailExistenteAsync(cliente.Email, lojaId);
                    if (emailExistente != null)
                    {
                        TempData["MessageError"] = $"O e-mail {cliente.Email} já está em uso.";
                        return RedirectToAction(nameof(Index));
                    } 
                }
                cliente.Status = 1; //cliente ativo
                var c = await _clienteService.Create(cliente);
                TempData["MessageSuccess"] = $"Cliente {cliente.Nome} cadastrado com sucesso!";
                return RedirectToAction(nameof(Index));
            }
            return View(cliente);
        }

        public async Task<IActionResult> Edit(int id)
        {
            var cliente = await _clienteService.Detail(id);
            if (cliente == null)
            {
                return NotFound();
            }
            return View(nameof(Create),cliente);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [FromForm] Cliente cliente)
        {
            int lojaId = Convert.ToInt16(User.FindFirst("LojaId")?.Value);
            cliente.LojaId = lojaId;

            if (id != cliente.ClienteID)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    var clienteBd = new Cliente();
                    if (cliente.Email != string.Empty && cliente.Email != null)
                    {
                        // Verificar se o e-mail já está em uso
                        clienteBd = await _clienteService.VerificarEmailExistenteAsync(cliente.Email, lojaId);
                        if (clienteBd != null && clienteBd.ClienteID != id)
                        {
                            TempData["MessageError"] = $"O e-mail {cliente.Email} já está em uso.";
                           
                            return RedirectToAction(nameof(Index));
                        }  
                    }

                    if (clienteBd != null)
                    {
                        _context.Entry(clienteBd).State = EntityState.Detached;
                    }
                    

                    await _clienteService.Update(cliente);
                    TempData["MessageSuccess"] = $"Cliente {cliente.Nome} foi alterado com sucesso!";
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!ClienteExists(cliente.ClienteID))
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
            return View(cliente);
        }

        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var cliente = await _context.Clientes
                .FirstOrDefaultAsync(m => m.ClienteID == id);
            if (cliente == null)
            {
                return NotFound();
            }

            return View(cliente);
        }

        // POST: Cliente/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
           var del = await _clienteService.DeleteOff(id);

            if (del)
            {
                TempData["MessageSuccess"] = $"Cliente removido com sucesso";
            }
            else
            {
                TempData["MessageError"] = $"Erro ao excluir cliente, tente novamente.";
            }

            return RedirectToAction(nameof(Index));
        }

        private bool ClienteExists(int id)
        {
            return _context.Clientes.Any(e => e.ClienteID == id);
        }
    }
}
