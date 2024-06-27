using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace flordelizHemilly.Migrations
{
    /// <inheritdoc />
    public partial class retiradaultimaalteração : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "UltimaAlteracao",
                table: "Parcelas");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "UltimaAlteracao",
                table: "Parcelas",
                type: "longtext",
                nullable: false)
                .Annotation("MySql:CharSet", "utf8mb4");
        }
    }
}
