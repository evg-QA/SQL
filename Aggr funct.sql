/* Aggregate functions in databases
//*COUNT(*) - a common function used to counts the number of rows in the group if no column name
//COUNT(column) - number of row numbers in the group
//MIN(column) - finds the smallest numeric value in the specified column of all rows of the group
//MAX(column) - finds the largest numeric value in the specified column of all rows of the group
//AVG(column) - finds the average value in the specified column of all rows of the group
//SUM(column) - finds the sum of all numeric values in the specified column of all rows of the group  */
 
/* a common function used to counts the number of rows in the group if no column name */
SELECT count(*) FROM cities
SELECT count(*) FROM clients

/* number of row numbers in the group */
SELECT count(clientNAME) FROM clients WHERE clientName LIKE 'M%'
SELECT count(cityNAME) FROM cities WHERE cityName LIKE '%a'

/* finds the smallest numeric value in the specified column of all rows of the group */
SELECT min(starsCounts) FROM hotels
SELECT min(creationDate) FROM hotels

/* finds the largest numeric value in the specified column of all rows of the group */
SELECT max(starsCounts) FROM hotels

/* finds the average value in the specified column of all rows of the group */
SELECT avg(starsCounts) FROM hotels

/* finds the sum of all numeric values in the specified column of all rows of the group */
SELECT sum(orderID) FROM orders
