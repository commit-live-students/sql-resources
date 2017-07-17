create database greyatom;


drop database greyatom;

## Syntax

create table greyatom.Categories (
		CatrgoryID int(11) PRIMARY KEY auto_increment,
		CategoryName varchar(50) NOT NULL,
		CategoryDescription varchar(250)
    );
    
# get full description of tables    
describe greyatom.Categories;


drop table greyatom.Categories;

INSERT INTO greyatom.Categories
	(CatrgoryID, CategoryName, CategoryDescription) 
    VALUES
    (null, "general 3", "general"),
    (null, "general 4", "general"),
    (null, "general 5", "general")
    ;
    
select * from greyatom.Categories;

SHOW VARIABLES LIKE 'secure_file_priv';

CREATE TABLE greyatom.Customers (
    CustomerID int(11) PRIMARY KEY auto_increment,
    CustomerName varchar(50) not null,
    ContactName varchar(50) not null,
    Address varchar(50),
    City varchar(50),
    PostalCode varchar(50),
    Country varchar(50)
);

LOAD data local infile "C:\\ProgramData\\MySQL\\MySQL Server 5.7\\Uploads\\Customers.csv"
INTO table greyatom.Customers
Fields terminated by ','
enclosed by '"'
LINES terminated by '\r\n'
Ignore 1 rows;
    
truncate table greyatom.categories;

delete from greyatom.categories where CategoryId = 1;


select * from greyatom.customers where city = 'London' LIMIT 100;

select distinct city from greyatom.customers;

select * from greyatom.categories
	where CatrgoryID = 6 OR CatrgoryID = 7;
    
    
SELECT * FROM greyatom.Customers 
	WHERE Country LIKE '__a%' 
    order by CustomerName DESC;
   
select * from greyatom.categories;

Update greyatom.categories 
	SET CategoryName = "general" 
    where CatrgoryID = 2;




create table greyatom.Employees (
	EmployeeID int(11),
    LastName varchar(50),
    FirstName varchar(50),
    BirthDate date,
	Photo varchar(50),
    Notes varchar(500)
);

describe greyatom.Employees;

alter table greyatom.Employees
	add column description varchar(250) NOT NULL;
    
alter table greyatom.Employees
	drop column description;
    
alter table greyatom.Employees
	modify column description varchar(50) NOT NULL;
    
alter table greyatom.Employees
	add constraint unique(LastName);
    
alter table greyatom.Employees
	add constraint unique(LastName);


create table greyatom.Orders (
	OrderID int(11) PRIMARY KEY auto_increment,
    CustomerID int(11) references Customers(CustomerID),
    EmployeeID int(11) references Employees(EmployeeID),
    OrderDate date,
	ShipperID int(11) references Shippers(ShipperID)
);
    
    
describe greyatom.Orders;
    
    