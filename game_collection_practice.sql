
# Delete database if already exists
DROP DATABASE IF EXISTS game_collection_pe;

# Create a database object
CREATE DATABASE IF NOT EXISTS game_collection_pe;

# Use database
USE game_collection_pe;

# Create tables
CREATE TABLE systems (	
    systemID INT AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    year YEAR,
    manufacturer VARCHAR (100),
    PRIMARY KEY (systemID)
);


 CREATE TABLE games (
    gameID INT AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    year YEAR,
    RRP DEC(6,2),
    developer VARCHAR(100) DEFAULT 'Unknown',
    genre ENUM('Role-Playing', 'Strategy', 'Adventure','Shooter', 'Driving', 'Sport', 'Simulation', 'Fighter', 'Action', 'Educational', 'Platform', 'Other') DEFAULT 'Other',
    systemID INT NOT NULL,
    PRIMARY KEY (gameID),
    FOREIGN KEY (systemID) REFERENCES systems (systemID)
);


CREATE TABLE cheatcodes (
    codeID INT AUTO_INCREMENT,
    name VARCHAR(100),
    code VARCHAR(255),
    description TEXT NOT NULL,
    gameID INT NOT NULL,
    PRIMARY KEY (codeID),
    FOREIGN KEY (gameID) REFERENCES games (gameID)
);


CREATE TABLE controllers (
    controllerID INT AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    type ENUM('Mouse', 'Keyboard','Gamepad', 'Joystick', 'Steering wheel', 'Paddle', 'Microphone', 'Gun', 'Other') DEFAULT 'Other',
    description TEXT,
    colour VARCHAR(255),
    PRIMARY KEY (controllerID)
);


CREATE TABLE systemsControllers (
    controllerID INT,
    systemID INT,
    PRIMARY KEY (systemID, controllerID),
    FOREIGN KEY (systemID) REFERENCES systems(systemID),
    FOREIGN KEY(controllerID) REFERENCES controllers (controllerID)
);


	

# INSERT DATA INTO ALL TABLES

/* Systems table */
LOCK TABLES systems WRITE;

INSERT INTO systems 
VALUES (1, 'Nintendo Entertainment System', 1983, 'Nintendo'),
	   (2, 'Atari 2600', 1977, 'Atari, Inc'),
       (3, 'Atari 5200', 1977, 'Atari, Inc'),
       (4, 'Atari 7800', 1986, 'Atari, Inc'),
       (5, 'Atari Lynx', 1989, 'Atari, Inc'),
       (6, 'Commodore Amiga', 1985,'Commodore'),
       (7, 'Nintendo Famicon (FDS)', 1986,'Nintendo'),
       (8, 'Super Nintendo (SNES)', 1990,'Nintendo'),
       (9, 'Sega Genesis (Mega Drive)', 1988,'Sega Enterprises, Ltd.'),
       (10, 'Sega Dreamcast', 1998,'Sega Enterprises, Ltd.'),
       (11, 'Sega Saturn', 1994, 'Sega Enterprises, Ltd.'),
       (12, 'Sony Playstation (PS)', 1994, 'Sony Computer Entertainment'),
	   (13, 'MS DOS', 1981, 'Microsoft');
UNLOCK TABLES;

# Insert data into the games table
LOCK TABLES games WRITE;
INSERT INTO games
VALUES (1, 'Super Mario Bros. (World)',1985,43.95,'Nintendo','Platform', 1),
	   (2, 'DuckTales',1989,32.95,'Capcom','Platform', 1),
       (3, 'Contra',1988,68.00,'Konami','Shooter', 1),
       (4,'The Legend of Zelda',1992, 25.00,'Nintendo','Adventure', 1),
       (5,'Galaga',1987,58.00,'Namco','Shooter', 4),
       (6,'Chronotrigger',1995,115.00,'Square (Enix)','Role-Playing', 8),
       (7,'Soul Calibur',1999,78.50,'Namco','Fighter', 10),
       (8,'Crash Bandicoot',1996,65.50,'SCEA','Platform', 12),
       (9,'Barbie: Super Sports',1999, 15.00, 'Runecraft', 'Sport', 12),
        (10, 'Circus Atari',1980,102.50,'Mike Lorenzen','Action', 1),
        (11, 'Pac Man',1980, 98.00,'Namco','Action', 1),
        (12,'Day of the Tentacle',1987, 85.00,'LucasArts','Adventure', 13),
        (13,'The Secret of Monkey Island',1990,88.00,'LucasArts','Adventure', 13),
        (14,'Sam & Max Hit the Road',1993,156.00,'LucasArts','Adventure', 13),
        (15,'Full Throttle',1995,136.00,'LucasArts','Adventure', 13),
        (16,'Carmen Sandiago',1985,65.50,'Broderbund','Educational', 13),
       (17,'Crystal Caves',1991, 15.00, 'Apogee', 'Platform', 13);
UNLOCK TABLES;

# Insert data into the cheatcodes table
LOCK TABLES cheatcodes WRITE;
INSERT INTO cheatcodes 
VALUES (1,'Unlimited mid tonics', NULL, 'At the point in the game where you are imprisoned, 
                                       you\'ll have an opportunity to get unlimited Mid tonics. 
                                       When you are in the cell, rattle the gate and attack the guard to escape. 
                                       Run to the exit and then into the room with the Blue Shields guarding the upper area.
                                       Deal with them and go to the top right exit and cross the bridge. When you enter the prison
                                       again there will be three guards about the room. Knock them out and they each will leave Mid Tonic.
                                       You can repeat this ad nauseam by running back into the room with your jail cell and back to knock
                                       out the never ending guards. Mid Tonics are four times more effective than normal Tonics and sell for 1,000 gold.', 6),
	   (2,'11%', 'Square, Square, X, Square, Square, Triangle, X, Triangle', 'Game will be 11% complete', 8),
       (3,'13%', 'X, Square, X, Circle, X, Square, Triangle, X', 'Game will be 13% complete', 8),
       (4,'38%', 'Square, Square, X, Triangle, X, Square, Circle, X', 'Game will be 38% complete', 8),
       (5,'Victory Pose', 'X, Y or B', 'Win a match, then press X, Y, or B during the replay to select one of the victory poses.', 7);
       
UNLOCK TABLES;

# Insert data into the controllers table
LOCK TABLES controllers WRITE;
INSERT INTO controllers 
VALUES 
	   -- ('Super Scope' 'Gun', 'Light gun functionally similar to NES Zapper', 'Grey'),
       (1,'Super Scope', 'Gun', 'Light gun similar to the NES Zapper', 'Grey'),
	   (2,'SNES Controller', 'Gamepad', 'ABXY lavendar buttons in diamond shape, start and select buttons, and joypad', 'Grey, dark grey and purple'),
       (3,'Super Advantage','Joystick','Arcade-style joystick with adjustable turbo settings','Red, grey and dark grey.'),
       (4,'Super NES Mouse','Mouse','Two button computer mouse, includes mouse pad',' Grey and purple.'),
       (5,'NES Controller','Gamepad','AB, start and select, and joypad','Red, white, black and grey.'),
       (6,'Zapper','Gun','Light Gun','Grey, red and dark grey'),
       (7,'Power Glove','Other','Glove with NES buttons on arm as well as a program button and buttons labelled 0-9','Grey and black'),
       (8,'Handheld', 'Other', 'Handheld requiring no additional controllers', 'N/A'),
       (9,'Atari Proline Joystick', 'Joystick', 'Two button controller with joystick for movement', 'Black, dark grey and red'),
       (10,'Atari 2600 Joystick','Joystick','One button controller with joystick for movement','Black and red'),
       (11,'Dreamcast Controller','Gamepad','Analog stick and digital pad, four action buttons, and two analog triggers','Grey, green, blue and red'),
       (12,'Playstation Mouse','Mouse','2 button mouse','Grey'),
       (13,'Playstation Analog Joystick', 'Joystick','2 joysticks for movement and multiple buttons','Predominantely grey'),
       (14,'Playstation Controller', 'Gamepad','Analog stick and digital pad, four action buttons, and two analog triggers','Predominantely grey'),
       (15,'Generic PC Keyboard', 'Keyboard','QWUERTY Keyboard','Black'),
       (16,'Generic PC Mouse', 'Mouse','2 button mouse with trackball','Black');
UNLOCK TABLES;

# Insert data into the systemscontrollers table
LOCK TABLES systemsControllers WRITE;
INSERT INTO systemsControllers (systemID, controllerID)
VALUES (8,1),
	   (8,2),
       (8,3),
       (8,4),
       (7,5),
       (7,6),
       (7,7),
       (1,5),
       (1,6),
       (1,7),
       (5,8),
       (4, 9),
       (2, 10),
       (10, 11), 
       (12,12), 
       (12, 13),
       (12, 14),
       (13, 15),
       (13,16);
UNLOCK TABLES;


