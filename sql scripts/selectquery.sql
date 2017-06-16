# Syntax SELECT column1, column2, columnN FROM table_name;
# SELECT * FROM table_name;

Select greyatom.CustomerID, CustomerName, ContactName from greyatom.Customers;
Select * from greyatom.Customers;


# Where claues
# Syntax SELECT column1, column2, column3 FROM table_name WHERE [condition]

Select CustomerID, CustomerName, Address, City from greyatom.Customers WHERE City='London';

# AND operator in where clause
# Syntax SELECT column1, column2, columnN FROM table_name WHERE [condition1] AND [condition2]...AND [conditionN];
Select * from greyatom.Customers WHERE City='London' AND PostalCode = 'WA1 1DP';



# OR Operator
# Syntax SELECT column1, column2, columnN FROM table_name WHERE [condition1] OR [condition2]...OR [conditionN]
Select * from greyatom.Customers WHERE PostalCode = 'WA1 1DP' OR PostalCode = 'EC2 5NT';



# Distinct keyword
# Syntax SELECT DISTINCT column1, column2,.....columnN FROM table_name WHERE [condition]
Select City from greyatom.Customers;
Select distinct City from greyatom.Customers;


# LIKE clause
# Notes: % sign for Zero, one or multiple characters
# Notes: _ for single number or character

# Syntax
#	WHERE SALARY LIKE '200%'	Finds any values that start with 200.
#	WHERE SALARY LIKE '%200%'	Finds any values that have 200 in any position.
#	WHERE SALARY LIKE '_00%'	Finds any values that have 00 in the second and third positions.
#	WHERE SALARY LIKE '2_%_%'	Finds any values that start with 2 and are at least 3 characters in length.
#	WHERE SALARY LIKE '%2'		Finds any values that end with 2.
#	WHERE SALARY LIKE '_2%3'	Finds any values that have a 2 in the second position and end with a 3.
#	WHERE SALARY LIKE '2___3'	Finds any values in a five-digit number that start with 2 and end with 3.

SELECT * FROM greyatom.Customers WHERE CustomerName LIKE 'Franc%';



# Order By clause
# Syntax SELECT column-list FROM table_name [WHERE condition] [ORDER BY column1, column2, .. columnN] [ASC | DESC];
SELECT * FROM greyatom.Customers ORDER BY CustomerName ASC;
SELECT * FROM greyatom.Customers ORDER BY CustomerName DESC;



# group by clause
# Syntax SELECT column1, column2 FROM table_name WHERE [ conditions ] GROUP BY column1, column2 ORDER BY column1, column2
# Must follow the conditions in the WHERE clause and must precede the ORDER BY clause if one is used.
SELECT CustomerName, City FROM Customers WHERE City='London';
SELECT CustomerName, City FROM Customers WHERE City='London' GROUP BY City;












