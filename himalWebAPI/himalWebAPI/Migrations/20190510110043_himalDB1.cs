using Microsoft.EntityFrameworkCore.Migrations;

namespace himalWebAPI.Migrations
{
    public partial class himalDB1 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Test",
                table: "RegisterTable");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "Test",
                table: "RegisterTable",
                nullable: true);
        }
    }
}
