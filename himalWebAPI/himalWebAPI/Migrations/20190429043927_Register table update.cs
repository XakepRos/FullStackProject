using Microsoft.EntityFrameworkCore.Migrations;

namespace himalWebAPI.Migrations
{
    public partial class Registertableupdate : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<string>(
                name: "PASSWORD",
                table: "RegisterTable",
                nullable: false,
                oldClrType: typeof(string),
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "MOBILE_NUMBER",
                table: "RegisterTable",
                nullable: false,
                oldClrType: typeof(string),
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "EMAIL",
                table: "RegisterTable",
                nullable: false,
                oldClrType: typeof(string),
                oldNullable: true);

            migrationBuilder.AddColumn<string>(
                name: "FIRST_NAME",
                table: "RegisterTable",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<string>(
                name: "LAST_NAME",
                table: "RegisterTable",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AlterColumn<string>(
                name: "ProductName",
                table: "ProductTable",
                nullable: false,
                oldClrType: typeof(string),
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "ProductDescription",
                table: "ProductTable",
                nullable: false,
                oldClrType: typeof(string),
                oldNullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "FIRST_NAME",
                table: "RegisterTable");

            migrationBuilder.DropColumn(
                name: "LAST_NAME",
                table: "RegisterTable");

            migrationBuilder.AlterColumn<string>(
                name: "PASSWORD",
                table: "RegisterTable",
                nullable: true,
                oldClrType: typeof(string));

            migrationBuilder.AlterColumn<string>(
                name: "MOBILE_NUMBER",
                table: "RegisterTable",
                nullable: true,
                oldClrType: typeof(string));

            migrationBuilder.AlterColumn<string>(
                name: "EMAIL",
                table: "RegisterTable",
                nullable: true,
                oldClrType: typeof(string));

            migrationBuilder.AlterColumn<string>(
                name: "ProductName",
                table: "ProductTable",
                nullable: true,
                oldClrType: typeof(string));

            migrationBuilder.AlterColumn<string>(
                name: "ProductDescription",
                table: "ProductTable",
                nullable: true,
                oldClrType: typeof(string));
        }
    }
}
