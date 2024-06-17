using flordelizHemilly.DataBase;
using flordelizHemilly.Service;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.FileProviders;

var builder = WebApplication.CreateBuilder(args);


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
    options.UseMySql(builder.Configuration.GetConnectionString("DefaultConnection"),
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
    // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
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
//pattern: "{controller=Home}/{action=Index}/{id?}");

app.Run();
