select * from greyatom.customers;
select * from greyatom.orders;

select CustomerID, OrderID from greyatom.orders ORDER BY CustomerID ASC;

select orders.CustomerID, customers.CustomerName, orders.OrderID 
	from greyatom.orders, greyatom.customers
    where greyatom.orders.CustomerID = greyatom.customers.CustomerID
    ORDER BY CustomerID ASC;
    
select ord.CustomerID, cus.CustomerName, ord.OrderID 
	from greyatom.orders ord, greyatom.customers cus
    where ord.CustomerID = cus.CustomerID
    ORDER BY CustomerID ASC;
    

# There are different types of joins available in SQL −
# INNER JOIN 	− returns rows when there is a match in both tables.
# LEFT JOIN 	− returns all rows from the left table, even if there are no matches in the right table.
# RIGHT JOIN 	− returns all rows from the right table, even if there are no matches in the left table.
# FULL JOIN 	− returns rows when there is a match in one of the tables.
# SELF JOIN 	− is used to join a table to itself as if the table were two tables, temporarily renaming at least one table in the SQL statement.

# INNER JOIN
# Syntax 
#	 SELECT table1.column1, table2.column2...
#    FROM table1
#    INNER JOIN table2
#    ON table1.common_field = table2.common_field;

select ord.CustomerID, cus.CustomerName, ord.OrderID 
	from greyatom.customers cus
    INNER join greyatom.orders ord
    on ord.CustomerID = cus.CustomerID
    ORDER BY CustomerID ASC;



# Full JOIN
# Syntax 
#	 SELECT table1.column1, table2.column2...
#    FROM table1
#    FULL JOIN table2
#    ON table1.common_field = table2.common_field;

# MySQL lacks support of Full Join




# LEFT JOIN
# Syntax 
#	 SELECT table1.column1, table2.column2...
#    FROM table1
#    LEFT JOIN table2
#    ON table1.common_field = table2.common_field;

select ord.CustomerID, cus.CustomerName, ord.OrderID 
	from greyatom.customers cus
    LEFT join greyatom.orders ord
    on ord.CustomerID = cus.CustomerID;
    
# Look for customer id. it is as well null for which order id is null

select cus.CustomerID, cus.CustomerName, ord.OrderID 
	from greyatom.customers cus
    LEFT join greyatom.orders ord
    on ord.CustomerID = cus.CustomerID;
  
  
  
# Right Join
select cus.CustomerID, cus.CustomerName, ord.OrderID 
	from greyatom.customers cus
    RIGHT join greyatom.orders ord
    on ord.CustomerID = cus.CustomerID;
    
# SELF Join
# Syntax 
#	 SELECT a.column_name, b.column_name...
#    FROM table1 a, table1 b
#    WHERE a.common_field = b.common_field;

SELECT  a.CustomerID, b.CustomerName
FROM Customers a, Customers b
WHERE a.CustomerID = b.CustomerID;