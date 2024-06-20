using flordelizHemilly.DataBase;
using flordelizHemilly.Service;
using Hangfire;
using Hangfire.Console;
using Hangfire.MySql;
using Hangfire.Redis.StackExchange;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.FileProviders;
using StackExchange.Redis;
using System.Security.Principal;
using Microsoft.Extensions.DependencyInjection;
using System.Drawing.Text;
using Hangfire.Dashboard;
using flordelizHemilly.Configuration;
using System;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;

var builder = WebApplication.CreateBuilder(args);

var connectionString = builder.Configuration.GetConnectionString("DefaultConnection");
var HangfireConnection = builder.Configuration.GetConnectionString("HangfireConnection");

// Configurar Hangfire para usar MySQL  
builder.Services.AddHangfire(config =>
    config.SetDataCompatibilityLevel(CompatibilityLevel.Version_170)
          .UseSimpleAssemblyNameTypeSerializer()
          .UseDefaultTypeSerializer()
          .UseStorage(new MySqlStorage(HangfireConnection, new MySqlStorageOptions{TablesPrefix= "Hangfire" })));

// Adicionar Hangfire Server
builder.Services.AddHangfireServer();


// Adicionar serviços de autenticação
builder.Services.AddAuthentication(CookieAuthenticationDefaults.AuthenticationScheme)
    .AddCookie(options =>
    {
        options.LoginPath = "/Auth/Login"; // Rota para a página de login
        options.LogoutPath = "/Auth/Logout"; // Rota para a página de logout
        options.AccessDeniedPath = "/Auth/AccessDenied"; // Rota para a página de acesso negado
    });

// Add services to the container.   
builder.Services.AddControllersWithViews();


// Adicionar o serviço do DbContext com MySQL
builder.Services.AddDbContext<FlorDeLizContext>(options =>
    options.UseMySql(connectionString,
    new MySqlServerVersion(new Version(8, 0, 25))));


// Registrando o serviço. 
builder.Services.AddScoped<IClienteService, ClienteService>();
builder.Services.AddScoped<IVendaService, VendaService>();
builder.Services.AddScoped<IItemVendaService, ItemVendaService>();
builder.Services.AddScoped<IParcelaService, ParcelaService>();


var app = builder.Build();


// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");
    app.UseHsts();
}

app.UseHttpsRedirection();
app.UseStaticFiles();
app.UseRouting();

app.UseAuthentication();
app.UseAuthorization();

app.MapControllerRoute(
    name: "default",
        pattern: "{controller=Home}/{action=Index}/{id?}");


app.UseHangfireDashboard("/hangfire", new DashboardOptions
{
    Authorization = new[] { new HangfireAuthorizationFilter() }
});


var contentRootPath = builder.Environment.ContentRootPath;
//// Exemplo: obter o caminho para a pasta "uploads" dentro do wwwroot
//var uploadsPath = Path.Combine(contentRootPath, "wwwroot","BackBd" ,"flordeliz_backup.sql");

// Recurring job
RecurringJob.AddOrUpdate("make_backup_bd", () => MonitorService.BackUpBd(connectionString, contentRootPath), Cron.HourInterval(5));


app.Run();


public class HangfireAuthorizationFilter : IDashboardAuthorizationFilter
{
    public bool Authorize(DashboardContext context)
    {
        // Verificar se o usuário está autenticado e autorizado
        var httpContext = context.GetHttpContext();
        return httpContext.User.Identity.IsAuthenticated;
    }
}
