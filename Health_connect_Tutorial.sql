
# Query 1 
SELECT nickname, firstName, surname, job 
FROM healthconnect.users 
where suburb like 'Stafford' OR  suburb like'Stafford Heights' ;

# Query 2 
SELECT nickname, mentorNickname
FROM healthconnect.users
where mentorNickname  IS NOT NULL  
ORDER BY nickname ASC ;

# Query 3  

select   healthPracID ,firstName ,surname ,count(DISTINCT nickname) as NumberOfusers
from healthpractitioners  cross join
     (select healthPracID FROM treatmentrecords ) left join treatmentrecords
     on healthpractitioners.healthPracID = treatmentrecords.healthPracID 
group by nickname
order by healthPracID;

SELECT healthPracID, 
       COUNT(DISTINCT nickname)     AS NumberOfusers
FROM   treatmentrecords 
GROUP  BY healthPracID   ; 


# Query 4 
 select firstName,city
from healthconnect.users 
where nickname not in (select nickname from healthconnect.postcomments ) and  
 nickname not in (select nickname from healthconnect.postauthors );
 
 
 # Query 5
 SELECT  treatmentrecords.illnessID, illness.name , COUNT(DISTINCT treatmentrecords.nickname) as numOfUserHave 
 ,min(datestarted) ,MAX(treatmentrecords.datestarted) , avg( degree)
FROM healthconnect.treatmentrecords
INNER JOIN illness ON treatmentrecords.illnessID = illness.illnessID
GROUP  BY illness.name ;
 
 
 # Query 6
 
 SELECT nickname,  
       COUNT(DISTINCT postID)  AS NumberOfpost
FROM   postauthors
where postID >= 1
GROUP  BY nickname   ;
SELECT nickname,  
       COUNT(DISTINCT postID)  AS NumberOfcom
FROM   postcomments 
where postID >= 1
GROUP  BY nickname   ;
 
 -- ------------------------------------------------------
# task Insert 
  
INSERT INTO healthconnect.users (nickname, firstName, surname, birthyear, videoID, mentorNickname)
VALUES ('stormy', 'Sam', 'Rodgers', 1982,NULL,NULL); 
 
# task   Delete
DELETE FROM phonenumber
WHERE phoneNumber LIKE '07%' ;

# task  UPDATE
UPDATE healthpractitioners
SET streetNumber = '72', street= 'Evergreen Terrace', suburb ='Springfield'
WHERE surname= 'Smith' AND streetNumber = '180'AND street= 'Zelda Street'AND suburb ='Linkburb' ; 

-- ------------------------------------------------------

 
# task  index
CREATE INDEX indexpostID ON posts (postID);


#task  view  
CREATE VIEW userinfo AS
SELECT nickname, firstName, surname, birthyear
FROM users
where nickname not in (select nickname from healthconnect.treatmentrecords ) ;
 
# to show the userinfo

SELECT * FROM userinfo ;

-- ------------------------------------------------------
# task 5  
 
CREATE USER IF NOT EXISTS Wayne  
IDENTIFIED BY  'Wayne' PASSWORD EXPIRE;
  
GRANT  INSERT, UPDATE, SELECT  ON users TO Wayne;

GRANT DELETE ON users TO Wayne;

-- ------------------------------------------------------
#task 6 

CREATE USER IF NOT EXISTS Jake  
IDENTIFIED BY  'Jake' PASSWORD EXPIRE;
 
REVOKE  UPDATE, INSERT ON users FROM Jake; 

REVOKE  DELETE ON users FROM Jake; 
 




