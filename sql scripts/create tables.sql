# create database <database>
create database greyatom;

use greyatom;

create table Categories (
	CategoryID int(11) PRIMARY KEY auto_increment,
    CategoryName varchar(50) not null,
    Description varchar(250)
);

create table greyatom.Customers (
	CustomerID int(11) PRIMARY KEY auto_increment,
    CustomerName varchar(50) not null,
    ContactName varchar(50) not null,
    Address varchar(50),
	City varchar(50),
    PostalCode varchar(50),
    Country varchar(50)
);

create table greyatom.Employees (
	EmployeeID int(11) PRIMARY KEY auto_increment,
    LastName varchar(50) not null,
    FirstName varchar(50) not null,
    BirthDate date,
	Photo varchar(50),
    Notes varchar(500)
);

create table greyatom.Shippers (
	ShipperID int(11) PRIMARY KEY auto_increment,
    ShipperName varchar(50) not null,
    Phone varchar(25)
);

create table greyatom.Orders (
	OrderID int(11) PRIMARY KEY auto_increment,
    CustomerID int(11) references Customers(CustomerID),
    EmployeeID int(11) references Employees(EmployeeID),
    OrderDate date,
	ShipperID int(11) references Shippers(ShipperID)
);

create table greyatom.Suppliers (
	SupplierID int(11) PRIMARY KEY auto_increment,
    SupplierName varchar(50) not null,
    ContactName varchar(50) not null,
    Address varchar(50) not null,
    City varchar(50) not null,
	PostalCode varchar(50) not null,
	Country varchar(50) not null,
    Phone varchar(25) not null
);

create table greyatom.Products (
	ProductID int(11) PRIMARY KEY auto_increment,
    ProductName varchar(50) not null,
    SupplierID int(11) references Suppliers(SupplierID),
    CategoryID int(11) references Categories(CategoryID),
    Unit varchar(50),
	Price double not null
);

create table greyatom.OrderDetails (
	OrderDetailID int(11) PRIMARY KEY auto_increment,
    OrderID int(11) references Orders(OrderID),
    ProductID int(11) references Products(ProductID),
	Quantity int(11) not null
);