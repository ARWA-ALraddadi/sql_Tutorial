USE video_store_v2;


# Problem 1
/* Use JOIN to list Customer’s given name, family name and movie titles rented by the customer. Refer to the relational model below.
Customers 	(customerNum, givenName, familyName, address, phoneNum)
Rentals		(customerNum, barcode, dateDue, dateReturned)
Copies	   	(barcode, movieNum, format, rentalCode)
Movies 	   	(movieNum, title, yearReleased)
*/
SELECT givenname, familyName, title
FROM customers cu 	
JOIN rentals r ON r.customerNum=cu.customerNum
JOIN copies co ON co.barcode=r.barcode 
JOIN movies m ON m.movieNum=co.movieNum;




# Problem 3
/* Use NATURAL JOIN to list Customer’s given name, family name and movie titles rented by the customer. Refer to the relational model below. */
SELECT givenname, familyName, title
FROM customers 	
NATURAL JOIN rentals	
NATURAL JOIN copies    
NATURAL JOIN movies;







# Problem 4
/* The following is an SQL to list Customers (given name and family name) who have not returned video(s) */
SELECT givenName, familyName
FROM customers c
WHERE EXISTS(
	SELECT * 
	FROM rentals r 
	WHERE c.customerNum=r.customerNum 
		AND dateReturned IS NULL);
  
/* Use EXISTS to list Customers’ given name and family name who have not returned a video(s). */
SELECT givenName, familyName
FROM customers c
WHERE EXISTS (
	SELECT * FROM rentals r 
	WHERE c.customerNum = r.customerNum 
		AND dateReturned IS NULL);      








# Problem 5
/* The following is an SQL to list Customers (given name and family name) who have not returned video(s) */
SELECT givenName, familyName
FROM customers c
WHERE EXISTS(
	SELECT * 
	FROM rentals r 
	WHERE c.customerNum=r.customerNum 
		AND dateReturned IS NULL);

/* Create an SQL without subquery (i.e. use JOIN) to list Customers (given name and family name) who have not returned video(s)! */
SELECT DISTINCT givenName, familyName
FROM customers c LEFT JOIN rentals r 
	ON c.customerNum=r.customerNum 
WHERE r.dateReturned IS NULL
	AND r.dateDue IS NOT NULL;





# JOIN vs. SUBQUERY
/* List the title of movies with no associated stars: */
SELECT DISTINCT title
FROM movies 
WHERE movieNum NOT IN(SELECT movieNum FROM actsin);

/*---- OR ---- */

SELECT DISTINCT title
FROM movies m 
	LEFT JOIN actsin a ON m.movieNum=a.movieNum
WHERE a.movieNum IS NULL;



