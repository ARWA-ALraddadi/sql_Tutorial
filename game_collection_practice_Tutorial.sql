
USE game_collection_pe;

# Question 1
/* 	Write a query to list the title, year and RRP (Recommended Retail Price) 
	of every game that is an adventure game and was developed by LucasArts */
	
SELECT title, year, RRP
FROM games
WHERE genre = 'Adventure' AND developer = 'LucasArts';


# Question 2
/* Write a query to list the systems (names) that don’t have any games */

SELECT name
FROM systems
WHERE systemID NOT IN (SELECT s.systemID
					   FROM systems s
					   JOIN games g
					   ON s.systemID = g.systemID);

 # Question 3
/* Write a query to list all the details of controllers that have the colour ‘black’ on them. */

SELECT * 
FROM controllers
WHERE colour LIKE '%black%';


# Question 4
/* Write a query to list the name of all systems. Also list the controllers that can be used with 
   each system. Rename the name column of the systems table to ‘GameSystem’ and the controller name column
   to ‘Controller’.*/
   
  
SELECT name, AVG(RRP) AS 'Average Game Price'
FROM systems AS s
JOIN games AS g
ON s.systemID = g.systemID
GROUP BY name;


# Question 5
/* 	Write a query to calculate the average price (RRP) of games for each system. Include the system name 
	and Average price in the result. Exclude systems that don’t have any games. */
	
SELECT s.name AS GameSystem, c.name AS Controller
FROM systems AS s
LEFT JOIN systemsControllers AS sc
ON s.systemID = sc.systemID
LEFT JOIN controllers AS c
ON c.controllerID = sc.controllerID;



# Question 6
/* Write a statement to change the cost (RRP) of the game Crash Bandicoot to $70.00. */

# Check current values to compare with outcome of update
SELECT title, RRP 
FROM games
WHERE title = 'Crash Bandicoot';

#SET SQL_SAFE_UPDATES = 0;

UPDATE games
SET RRP = 70.00
WHERE title = 'Crash Bandicoot';

#SET SQL_SAFE_UPDATES = 1;

# Check result of update
SELECT title, RRP 
FROM games
WHERE title = 'Crash Bandicoot';

