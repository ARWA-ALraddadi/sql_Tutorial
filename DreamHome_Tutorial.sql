USE dreamhome;


# TASK 1

/* 1.	Andrew Smith would like access to the database. 
        Add him to the database using the username Smith, 
        host: localhost and set it so that he can login with a password. 
*/
        
CREATE USER 'smith'@'localhost' 
IDENTIFIED BY 'password';


/* 2.	View the lists of users to see that Smith was created. */

SELECT * FROM mysql.user;


/* 3.Add the following users to the database: */

/* a.	A user called Karen whose password will expire every 90 days. */

CREATE USER 'karen'@'localhost'
IDENTIFIED BY 'password'
PASSWORD EXPIRE INTERVAL 90 DAY;

/* b.	A user called Jake whose limited to 50 queries per hour. */

CREATE USER 'jake'@'localhost'
IDENTIFIED BY 'password'
WITH MAX_QUERIES_PER_HOUR 50;


/* 1.	Grant the user Smith the follow privileges: 

a.	the ability to look at all branches*/
GRANT INSERT ON branch TO 'smith'@'localhost';

/* b.	the ability to add a new record to the branch table */
GRANT SELECT ON branch TO 'smith'@'localhost';

/* 2.	User Karen must be able to add records to the Client table. Grant her access */
GRANT INSERT ON client TO 'karen'@'localhost';

/* 3.	User Karen must be able to also remove records from the Client table. */
GRANT DELETE ON client TO 'karen'@'localhost';

/* 4.	User Jake must be able to change records in the PropertyForRent table. */
GRANT UPDATE ON PropertyForRent TO 'jake'@'localhost';


/* 1.	Revoke Smith’s ability to add records to the branch table */
REVOKE INSERT ON branch FROM 'smith'@'localhost';

/* 2.	Revoke Karen’s ability to add and delete records from the client table. */
REVOKE INSERT, DELETE ON client FROM 'karen'@'localhost';



# TASK 5
/* 1.	Create a view that includes only Clients’ names and phone numbers. */

CREATE VIEW ClientContact AS 
SELECT fName,lName,telNo FROM client;

/* 2.	Grant Smith access to the view. */
GRANT SELECT ON ClientContact TO 'smith'@'localhost';


# View privileges for Smith
SHOW GRANTS FOR smith@localhost;

# Note to remove the users run the following;
DROP USER 'smith'@'localhost';
DROP USER 'karen'@'localhost';
DROP USER 'jake'@'localhost';

# Confirm users were removed
SELECT * FROM mysql.user;
