/* Joining tables */

/* Join - Joining tables Cities and Hotels */
SELECT * FROM cities JOIN hotels ON cities.CityID = hotels.cityId

/* Inner Join - shows what the tables have in common */
SELECT * FROM cities INNER JOIN hotels ON cities.CityID = hotels.cityId

/* Left Join - all that is in the Cities table and the same groups from the Hotels table*/ 
SELECT * FROM cities LEFT JOIN hotels ON cities.CityID = hotels.cityId

/* Right Join - all that is in the Hotels table and the same groups from the Cities table*/ 
SELECT * FROM cities RIGHT JOIN hotels ON cities.CityID = hotels.cityId

/* Full Join tables */
SELECT * FROM cities LEFT JOIN hotels ON cities.CityID = hotels.cityId
UNION ALL
SELECT * FROM cities RIGHT JOIN hotels ON cities.CityID = hotels.cityId WHERE cities.CityID IS NULL