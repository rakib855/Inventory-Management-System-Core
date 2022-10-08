drop database InventoryManagementSystem

create database InventoryManagementSystem
use InventoryManagementSystem

create table Registration(
RegistrationID int primary key identity(1,1) not null,
Name varchar(50),
Email varchar(50)   ,
Age varchar(50),
Password varchar(50)
)

create table Manager(
ManagerID int primary key identity(1,1) not null,
Manager_Name varchar(50),
Gender varchar(50),
Address varchar(50),
Joining_Date date
)

create table Shop(
ShopID int primary key identity(1,1) not null,
Shop_Name varchar(50),
ManagerID int references Manager(ManagerID),
ShopAddress varchar(50),
Opening_Date date
)

create table Brand(
BrandID int primary key identity(1,1) not null,
Brand_Name varchar(50)
)

create table Category(
CategoryID int primary key identity(1,1) not null,
Category_Name varchar(50)
)

create table Product(
ProductID int primary key identity(1,1) not null,
Product_Name varchar(50),
CategoryID int references Category(CategoryID),
BrandID int references Brand(BrandID),
ShopID int references Shop(ShopID),
Condition varchar(50),
Quantity varchar(50),
Price varchar(50),
Selling_Date varchar(50),
Photo varchar(50),
)

select * from Registration
select * from Manager
select * from Shop
select * from Brand
select * from Category
select * from Product


truncate table Registration
truncate table Manager
truncate table Shop
truncate table Brand
truncate table Category
truncate table Product


drop table Registration
drop table Manager
drop table Shop
drop table Brand
drop table Category
drop table Product