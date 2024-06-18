using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace flordelizHemilly.Migrations
{
    /// <inheritdoc />
    public partial class inclusãolojaId : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "LojaIdUltimoAcesso",
                table: "Usuarios",
                newName: "LojaId");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "LojaId",
                table: "Usuarios",
                newName: "LojaIdUltimoAcesso");
        }
    }
}
