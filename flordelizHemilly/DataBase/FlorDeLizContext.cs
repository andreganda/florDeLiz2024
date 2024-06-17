using flordelizHemilly.Models;
using Microsoft.EntityFrameworkCore;

namespace flordelizHemilly.DataBase
{
    public class FlorDeLizContext : DbContext
    {
        public FlorDeLizContext(DbContextOptions<FlorDeLizContext> options) : base(options) { }

        public DbSet<Cliente> Clientes { get; set; }
        public DbSet<Venda> Vendas { get; set; }
        public DbSet<ItemVenda> ItemVendas { get; set; }
        public DbSet<Parcela> Parcelas { get; set; }
        public DbSet<Loja> Lojas { get; set; }
        public DbSet<Usuario> Usuarios { get; set; }
    }
}
