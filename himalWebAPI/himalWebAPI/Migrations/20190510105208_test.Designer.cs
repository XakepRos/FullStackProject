﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using himalWebAPI.Models;

namespace himalWebAPI.Migrations
{
    [DbContext(typeof(DataContext))]
    [Migration("20190510105208_test")]
    partial class test
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "2.1.8-servicing-32085")
                .HasAnnotation("Relational:MaxIdentifierLength", 128)
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("himalWebAPI.Models.Product", b =>
                {
                    b.Property<int>("ProductID")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("CREATED_BY");

                    b.Property<DateTime>("CREATED_DATE");

                    b.Property<string>("ImageURL");

                    b.Property<DateTime>("MODIFIED_DATE");

                    b.Property<string>("ProductDescription")
                        .IsRequired();

                    b.Property<string>("ProductName")
                        .IsRequired();

                    b.HasKey("ProductID");

                    b.ToTable("ProductTable");
                });

            modelBuilder.Entity("himalWebAPI.Models.Register", b =>
                {
                    b.Property<int>("ID")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("EMAIL");

                    b.Property<string>("FIRST_NAME");

                    b.Property<string>("LAST_NAME");

                    b.Property<string>("MOBILE_NUMBER");

                    b.Property<string>("PASSWORD");

                    b.HasKey("ID");

                    b.ToTable("RegisterTable");
                });
#pragma warning restore 612, 618
        }
    }
}
