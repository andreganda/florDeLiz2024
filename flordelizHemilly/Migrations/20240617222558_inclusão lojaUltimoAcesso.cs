using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace flordelizHemilly.Migrations
{
    /// <inheritdoc />
    public partial class inclusãolojaUltimoAcesso : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Clientes_Lojas_LojaId",
                table: "Clientes");

            migrationBuilder.DropForeignKey(
                name: "FK_Lojas_Usuarios_UsuarioId",
                table: "Lojas");

            migrationBuilder.DropIndex(
                name: "IX_Lojas_UsuarioId",
                table: "Lojas");

            migrationBuilder.DropColumn(
                name: "UsuarioId",
                table: "Lojas");

            migrationBuilder.AlterColumn<string>(
                name: "Senha",
                table: "Usuarios",
                type: "longtext",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "longtext")
                .Annotation("MySql:CharSet", "utf8mb4")
                .OldAnnotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.AlterColumn<string>(
                name: "Login",
                table: "Usuarios",
                type: "longtext",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "longtext")
                .Annotation("MySql:CharSet", "utf8mb4")
                .OldAnnotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.AddColumn<int>(
                name: "LojaIdUltimoAcesso",
                table: "Usuarios",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AlterColumn<int>(
                name: "LojaId",
                table: "Clientes",
                type: "int",
                nullable: false,
                defaultValue: 0,
                oldClrType: typeof(int),
                oldType: "int",
                oldNullable: true);

            migrationBuilder.AddForeignKey(
                name: "FK_Clientes_Lojas_LojaId",
                table: "Clientes",
                column: "LojaId",
                principalTable: "Lojas",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Clientes_Lojas_LojaId",
                table: "Clientes");

            migrationBuilder.DropColumn(
                name: "LojaIdUltimoAcesso",
                table: "Usuarios");

            migrationBuilder.UpdateData(
                table: "Usuarios",
                keyColumn: "Senha",
                keyValue: null,
                column: "Senha",
                value: "");

            migrationBuilder.AlterColumn<string>(
                name: "Senha",
                table: "Usuarios",
                type: "longtext",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "longtext",
                oldNullable: true)
                .Annotation("MySql:CharSet", "utf8mb4")
                .OldAnnotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.UpdateData(
                table: "Usuarios",
                keyColumn: "Login",
                keyValue: null,
                column: "Login",
                value: "");

            migrationBuilder.AlterColumn<string>(
                name: "Login",
                table: "Usuarios",
                type: "longtext",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "longtext",
                oldNullable: true)
                .Annotation("MySql:CharSet", "utf8mb4")
                .OldAnnotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.AddColumn<int>(
                name: "UsuarioId",
                table: "Lojas",
                type: "int",
                nullable: true);

            migrationBuilder.AlterColumn<int>(
                name: "LojaId",
                table: "Clientes",
                type: "int",
                nullable: true,
                oldClrType: typeof(int),
                oldType: "int");

            migrationBuilder.CreateIndex(
                name: "IX_Lojas_UsuarioId",
                table: "Lojas",
                column: "UsuarioId");

            migrationBuilder.AddForeignKey(
                name: "FK_Clientes_Lojas_LojaId",
                table: "Clientes",
                column: "LojaId",
                principalTable: "Lojas",
                principalColumn: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_Lojas_Usuarios_UsuarioId",
                table: "Lojas",
                column: "UsuarioId",
                principalTable: "Usuarios",
                principalColumn: "Id");
        }
    }
}
