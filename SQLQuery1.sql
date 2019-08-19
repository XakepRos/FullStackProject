use himalDB;

go;

create table AGAR_PRODUCT(
ID int primary key,
NAME nvarchar(50),
IMAGE nvarchar(50) UNIQUE,
PRICE int 
);

SELECT * FROM AGAR_PRODUCT;
