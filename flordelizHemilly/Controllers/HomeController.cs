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
using System.Net;
using System.Net.Mail;

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

        private void SendEmail()
        {
            // Configurações do SMTP da KingHost
            string smtpAddress = "smtp.kinghost.net";
            int portNumber = 587; // ou 465 para SSL
            bool enableSSL = true;

            string emailFrom = "admflordeliz@flordelizlinhares.kinghost.net";
            string password = "hemillyGandaadm*";
            string emailTo = "andrefelipeg@hotmail.com";
            string subject = "bkp flor de liz";
            string body = "Conteúdo do e-mail.";

            using (MailMessage mail = new MailMessage())
            {
                mail.From = new MailAddress(emailFrom);
                mail.To.Add(emailTo);
                mail.Subject = subject;
                mail.Body = body;
                mail.IsBodyHtml = true;

                using (SmtpClient smtp = new SmtpClient(smtpAddress, portNumber))
                {
                    smtp.Credentials = new NetworkCredential(emailFrom, password);
                    smtp.EnableSsl = enableSSL;
                    try
                    {
                        smtp.Send(mail);
                        Console.WriteLine("E-mail enviado com sucesso!");
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine($"Erro ao enviar e-mail: {ex.Message}");
                    }
                }
            }
        }

        public async Task<IActionResult> IndexAsync()
        {
            int lojaId = Convert.ToInt16(User.FindFirst("LojaId")?.Value);
            string nomeUsuario = User.FindFirst(ClaimTypes.Name)?.Value;

            var loja = await _context.Lojas.FirstAsync(a => a.Id == lojaId);

            ViewData["nomeLoja"] = loja.NomeFantasia ;
            ViewData["nomeUsuario"] = nomeUsuario;

            //SendEmail();

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
