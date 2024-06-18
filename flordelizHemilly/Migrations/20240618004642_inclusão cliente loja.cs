using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace flordelizHemilly.Migrations
{
    /// <inheritdoc />
    public partial class inclusãoclienteloja : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Clientes_Lojas_LojaId",
                table: "Clientes");

            migrationBuilder.DropIndex(
                name: "IX_Clientes_LojaId",
                table: "Clientes");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateIndex(
                name: "IX_Clientes_LojaId",
                table: "Clientes",
                column: "LojaId");

            migrationBuilder.AddForeignKey(
                name: "FK_Clientes_Lojas_LojaId",
                table: "Clientes",
                column: "LojaId",
                principalTable: "Lojas",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
