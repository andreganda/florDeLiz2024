using flordelizHemilly.DataBase;
using flordelizHemilly.Models;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Security.Claims;

namespace flordelizHemilly.Controllers
{
    public class AuthController : Controller
    {
        private readonly FlorDeLizContext _context;

        public AuthController(FlorDeLizContext context)
        {
            _context = context;
        }

        public IActionResult Login()
        {
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> Login(LoginModel login)
        {

            var userBd = await _context.Usuarios.FirstOrDefaultAsync(a=> a.Email == login.Email && a.Senha == login.Senha);
			

			if (userBd!=null)
            {
                var loja = await _context.Lojas.FirstAsync(a => a.Id == userBd.LojaId);
                var claims = new List<Claim>
                {
                    new Claim(ClaimTypes.Email, login.Email),
                    new Claim(ClaimTypes.Name, userBd.Nome),
                    new Claim("UserId", userBd.Id.ToString()),
                    new Claim("LojaId", userBd.LojaId.ToString()),
                    new Claim("NomeLoja", loja.NomeFantasia)
                };

                var claimsIdentity = new ClaimsIdentity(claims, CookieAuthenticationDefaults.AuthenticationScheme);

                await HttpContext.SignInAsync(CookieAuthenticationDefaults.AuthenticationScheme,
                    new ClaimsPrincipal(claimsIdentity));

                return RedirectToAction("Index", "Home");
            }

           
            TempData["MsgErro"] = "Login e/ou senha inválidos";

            return View();
            //return Unauthorized();
        }

        [HttpGet]
        public async Task<IActionResult> Logout()
        {
            await HttpContext.SignOutAsync(CookieAuthenticationDefaults.AuthenticationScheme);
            return RedirectToAction("Login", "Auth");
        }

        public class LoginModel
        {
            public string Email { get; set; }
            public string Senha { get; set; }
        }
    }

   

}
