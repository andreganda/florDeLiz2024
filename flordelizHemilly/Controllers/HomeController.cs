using flordelizHemilly.Models;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;
using System.Security.Claims;
using Microsoft.AspNetCore.Identity;
using flordelizHemilly.DataBase;
using Microsoft.EntityFrameworkCore;

namespace flordelizHemilly.Controllers
{
    [Authorize]
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly FlorDeLizContext _context;

        public HomeController(ILogger<HomeController> logger, FlorDeLizContext context)
        {
            _logger = logger;
            _context = context;
        }

        public async Task<IActionResult> IndexAsync()
        {
            int lojaId = Convert.ToInt16(User.FindFirst("LojaId")?.Value);
            string nomeUsuario = User.FindFirst(ClaimTypes.Name)?.Value;

            var loja = await _context.Lojas.FirstAsync(a => a.Id == lojaId);

            ViewData["nomeLoja"] = loja.NomeFantasia ;
            ViewData["nomeUsuario"] = nomeUsuario;

            return View();
        }   

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
