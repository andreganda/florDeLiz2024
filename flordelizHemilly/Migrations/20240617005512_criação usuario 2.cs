using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace flordelizHemilly.Migrations
{
    /// <inheritdoc />
    public partial class criaçãousuario2 : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Clientes_Loja_LojaId",
                table: "Clientes");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Loja",
                table: "Loja");

            migrationBuilder.RenameTable(
                name: "Loja",
                newName: "Lojas");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Lojas",
                table: "Lojas",
                column: "Id");

            migrationBuilder.CreateTable(
                name: "Usuarios",
                columns: table => new
                {
                    Id = table.Column<string>(type: "varchar(255)", nullable: false)
                        .Annotation("MySql:CharSet", "utf8mb4"),
                    Nome = table.Column<string>(type: "longtext", nullable: false)
                        .Annotation("MySql:CharSet", "utf8mb4"),
                    Telefone = table.Column<string>(type: "longtext", nullable: false)
                        .Annotation("MySql:CharSet", "utf8mb4"),
                    Email = table.Column<string>(type: "longtext", nullable: false)
                        .Annotation("MySql:CharSet", "utf8mb4"),
                    Login = table.Column<string>(type: "longtext", nullable: false)
                        .Annotation("MySql:CharSet", "utf8mb4"),
                    Senha = table.Column<string>(type: "longtext", nullable: false)
                        .Annotation("MySql:CharSet", "utf8mb4"),
                    LojasAcesso = table.Column<string>(type: "longtext", nullable: false)
                        .Annotation("MySql:CharSet", "utf8mb4")
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Usuarios", x => x.Id);
                })
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.AddForeignKey(
                name: "FK_Clientes_Lojas_LojaId",
                table: "Clientes",
                column: "LojaId",
                principalTable: "Lojas",
                principalColumn: "Id");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Clientes_Lojas_LojaId",
                table: "Clientes");

            migrationBuilder.DropTable(
                name: "Usuarios");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Lojas",
                table: "Lojas");

            migrationBuilder.RenameTable(
                name: "Lojas",
                newName: "Loja");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Loja",
                table: "Loja",
                column: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_Clientes_Loja_LojaId",
                table: "Clientes",
                column: "LojaId",
                principalTable: "Loja",
                principalColumn: "Id");
        }
    }
}
