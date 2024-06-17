using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using flordelizHemilly.DataBase;
using flordelizHemilly.Models;
using static flordelizHemilly.Models.SuportClass;

namespace flordelizHemilly.Controllers
{
    public class UsuariosController : Controller
    {
        private readonly FlorDeLizContext _context;

        public UsuariosController(FlorDeLizContext context)
        {
            _context = context;
        }

        // GET: Usuarios
        public async Task<IActionResult> Index()
        {
            //ViewData["MostrarModal"] = true;

            return _context.Usuarios != null ? 
                          View(await _context.Usuarios.ToListAsync()) :
                          Problem("Entity set 'FlorDeLizContext.Usuarios'  is null.");
        }

        // GET: Usuarios/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null || _context.Usuarios == null)
            {
                return NotFound();
            }

            var usuario = await _context.Usuarios
                .FirstOrDefaultAsync(m => m.Id == id);
            if (usuario == null)
            {
                return NotFound();
            }

            return View(usuario);
        }

        // GET: Usuarios/Create
        public async Task<IActionResult> CreateAsync()
        {
            ViewData["Title"] = "Cadastrar Usuario";
            ViewData["ListaSelectLojas"] = await ListaSelectLojas();
            return View(new Usuario());
        }

        // POST: Usuarios/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,Nome,Telefone,Email,Login,Senha,LojasAcesso")] Usuario usuario)
        {
            if (ModelState.IsValid)
            {
                _context.Add(usuario);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }

            ViewData["ListaSelectLojas"] = await ListaSelectLojas();
            return View(usuario);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> CreateUpdate([Bind("Id,Nome,Telefone,Email,Login,Senha,LojasAcesso")] Usuario usuario)
        {
            ViewData["ListaSelectLojas"] = await ListaSelectLojas();

            if (ModelState.IsValid)
            {

                var existingUser = _context.Usuarios.FirstOrDefault(u => u.Email == usuario.Email);
                if (existingUser != null && existingUser.Id != usuario.Id)
                {
                    //retirando entidade do contexto
                    _context.Entry(existingUser).State = EntityState.Detached;

                    ModelState.AddModelError("", "Esse email ja existe.");
                    return View("Create", usuario);
                }



                if (usuario.Id == 0)
                {
                    // Nova criação (Create)
                    _context.Usuarios.Add(usuario);
                }
                else
                {
                    // Atualização (Edit)
                    _context.Usuarios.Update(usuario);

                }
                _context.SaveChanges();

                ViewData["MsgModal"] = "Usuario alterado com sucesso";
                ViewData["MostrarModal"] = true;
                return RedirectToAction("Index", "Usuarios");
            }

           
            return View("Create", usuario);
        }

        // GET: Usuarios/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || _context.Usuarios == null)
            {
                return NotFound();
            }

            var usuario = await _context.Usuarios.FindAsync(id);
            if (usuario == null)
            {
                return NotFound();
            }

            ViewData["ListaSelectLojas"] = await ListaSelectLojas();
            ViewData["Title"] = "Alterar Usuario";
            return View("Create", usuario);
        }

        // POST: Usuarios/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,Nome,Telefone,Email,Login,Senha,LojasAcesso")] Usuario usuario)
        {
            if (id != usuario.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(usuario);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!UsuarioExists(usuario.Id))
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
            return View(usuario);
        }

        // GET: Usuarios/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || _context.Usuarios == null)
            {
                return NotFound();
            }

            var usuario = await _context.Usuarios
                .FirstOrDefaultAsync(m => m.Id == id);
            if (usuario == null)
            {
                return NotFound();
            }

            return View(usuario);
        }

        // POST: Usuarios/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (_context.Usuarios == null)
            {
                return Problem("Entity set 'FlorDeLizContext.Usuarios'  is null.");
            }
            var usuario = await _context.Usuarios.FindAsync(id);
            if (usuario != null)
            {
                _context.Usuarios.Remove(usuario);
            }
            
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool UsuarioExists(int id)
        {
          return (_context.Usuarios?.Any(e => e.Id == id)).GetValueOrDefault();
        }

        public async Task<List<ItensSelectStatus>> ListaSelectLojas()
        {
            var listaLojas = await _context.Lojas.ToListAsync();

            var lista = new List<ItensSelectStatus>();

            foreach (var item in listaLojas)
            {
                var novo = new ItensSelectStatus();
                novo.Value  = item.Id;
                novo.Descricao = item.NomeFantasia;
                lista.Add(novo);
            }

            return lista;
        }
    }
}
