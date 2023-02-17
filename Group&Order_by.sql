/* Add fields - age, salary to the table clients */
SELECT * FROM hotelsdb.clients

ALTER TABLE `hotelsdb`.`clients` 
ADD COLUMN `age` INT NULL AFTER `clientNumber`,
ADD COLUMN `salary` DECIMAL NULL AFTER `age`;

/* fill in the new fields with data */

UPDATE `hotelsdb`.`clients` SET `age` = '20', `salary` = '3000' WHERE (`clientID` = '1');
UPDATE `hotelsdb`.`clients` SET `age` = '21', `salary` = '3500' WHERE (`clientID` = '2');
UPDATE `hotelsdb`.`clients` SET `age` = '22', `salary` = '3600' WHERE (`clientID` = '3');
UPDATE `hotelsdb`.`clients` SET `age` = '23', `salary` = '2000' WHERE (`clientID` = '4');
UPDATE `hotelsdb`.`clients` SET `age` = '30', `salary` = '2000' WHERE (`clientID` = '5');
UPDATE `hotelsdb`.`clients` SET `age` = '30', `salary` = '2500' WHERE (`clientID` = '6');
UPDATE `hotelsdb`.`clients` SET `age` = '40', `salary` = '300' WHERE (`clientID` = '7');
UPDATE `hotelsdb`.`clients` SET `age` = '45', `salary` = '300' WHERE (`clientID` = '8');

/* find the average,max,sum values - in the specified column of all rows of the group */
SELECT avg(salary) FROM clients
SELECT max(salary) FROM clients
SELECT sum(salary) FROM clients

/* grouping - GROUP BY - the same salary */
SELECT Count(salary), salary FROM clients GROUP BY salary 

/* group by the same age */
SELECT Count(age), age FROM clients GROUP BY age

/* conditional choice - HAVING instead of WHERE */ 
SELECT Count(age), age FROM clients GROUP BY age HAVING age >=30

/* sorting- ORDER BY clientName, salary */
SELECT * FROM hotelsdb.clients ORDER BY clientName
SELECT * FROM hotelsdb.clients ORDER BY salary
/* or */
SELECT * FROM hotelsdb.clients ORDER BY clientName ASC
SELECT * FROM hotelsdb.clients ORDER BY salary ASC
/* sorting in reverse order */
SELECT * FROM hotelsdb.clients ORDER BY clientName DESC
SELECT * FROM hotelsdb.clients ORDER BY salary DESC

/* top 5 salaries (with help- LIMIT (value)) */
SELECT * FROM hotelsdb.clients ORDER BY salary DESC LIMIT 5

/* top 5 salaries from 2 employee (with help- OFFSET 2) */
SELECT * FROM hotelsdb.clients ORDER BY salary DESC LIMIT 5 OFFSET 2


