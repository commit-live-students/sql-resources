SHOW VARIABLES LIKE 'secure_file_priv';

Use greyatom;

Select * from Customers;

Select * from Orders;
Select * from OrderDetails;

SELECT CustomerID, OrderDate 
	FROM Orders, OrderDetails
	WHERE  Orders.OrderID = OrderDetails.OrderID;
    
SELECT  Customers.CustomerID, Customers.CustomerName, ORDERS.OrderDate
	FROM Customers
	INNER JOIN ORDERS
	ON Customers.CustomerID = ORDERS.CustomerID;