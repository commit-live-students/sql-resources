LOAD DATA LOCAL INFILE "C:\\ProgramData\\MySQL\\MySQL Server 5.7\\Uploads\\Categories.csv" 
INTO TABLE greyatom.Categories 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE "C:\\ProgramData\\MySQL\\MySQL Server 5.7\\Uploads\\Customers.csv" 
INTO TABLE greyatom.Customers 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE "C:\\ProgramData\\MySQL\\MySQL Server 5.7\\Uploads\\Employees.csv" 
INTO TABLE greyatom.Employees 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(EmployeeID, LastName, FirstName, @var1, Photo, Notes)
SET BirthDate = STR_TO_DATE(@var1, '%m/%d/%Y');

LOAD DATA LOCAL INFILE "C:\\ProgramData\\MySQL\\MySQL Server 5.7\\Uploads\\OrderDetails.csv" 
INTO TABLE greyatom.OrderDetails 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE "C:\\ProgramData\\MySQL\\MySQL Server 5.7\\Uploads\\Products.csv" 
INTO TABLE greyatom.Products 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE "C:\\ProgramData\\MySQL\\MySQL Server 5.7\\Uploads\\Shippers.csv" 
INTO TABLE greyatom.Shippers 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE "C:\\ProgramData\\MySQL\\MySQL Server 5.7\\Uploads\\Suppliers.csv" 
INTO TABLE greyatom.Suppliers 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE "C:\\ProgramData\\MySQL\\MySQL Server 5.7\\Uploads\\Orders.csv" 
INTO TABLE greyatom.Orders 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(OrderID, CustomerID, EmployeeID, @var2, ShipperID)
SET OrderDate = STR_TO_DATE(@var2, '%m/%d/%Y');

select * from greyatom.orders;

INSERT INTO greyatom.customers 
	(CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country) 
    values (9876, "sean", "sean", "Andheri", "Mumbai", "421503", "India");
    
Select * from greyatom.customers;

select * from greyatom.employees;

select * from greyatom.shippers;