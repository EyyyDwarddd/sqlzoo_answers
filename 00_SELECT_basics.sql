/*
SELECT basics
*/


/*
#1) Introducing the `world` table of countries

The example uses a WHERE clause to show the population of 'France'.
Note that strings (pieces of text that are data) should be in 'single quotes'.

Q. Modify it to show the population of Germany
*/
SELECT population
FROM world
WHERE name = 'Germany';

/*
Correct answer
+------------+
| population |
+------------+
|  84432670  |
+------------+
*/


/*
#2) Scandinavia

Checking a list the word IN allows us to check if an item is in a list. 
the name and population for the countries 'Brazil', 'Russia', 'India', and 'China'.

Q. Show the name and population for 'Sweden', 'Norway', and 'Denmark'.
*/

SELECT name, population FROM world
	WHERE name IN ('Sweden', 'Norway', 'Denmark');


/*
Correct answer
+------------+------------+
|    name    | population |
+------------+------------+
|  Denmark   |  5944145   |
|  Norway    |  5514042   |
|  Sweden    | 10545310   |
+------------+------------+
*/


/*
#3) Just the right size

Which countries are not too small and not too big? 
BETWEEN allows range checking (range specified is inclusive of boundary values). 
The example below shows countries with an area of 250,000-300,000 sq. km. 
Modify it to show the country and the area for countries with an area between 200,000 and 250,000.
*/

SELECT name, area FROM world
	WHERE area BETWEEN 200000 AND 300000

/*
Correct answer
+-----------------+--------+
|      name       |  area  |
+-----------------+--------+
|     Belarus     | 202900 |
|      Ghana      | 227533 |
|     Guinea      | 245717 |
|      Laos       | 230800 |
|    Romania      | 231291 |
| United Kingdom  | 241930 |
+-----------------+--------+
*/
