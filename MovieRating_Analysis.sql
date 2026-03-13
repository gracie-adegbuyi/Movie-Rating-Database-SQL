CREATE DATABASE MovieRatingDB;
USE MovieRatingDB;
-- Creating Users Table
CREATE TABLE Users (
	User_Id	INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR (100), 	
    Age INT, 	
    Gender VARCHAR (50),
	Location VARCHAR (100)
);
-- Creating Movies Table
CREATE TABLE Movies (
	ID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR (200),	
    Release_Year INT,	
    Genre VARCHAR (100),	
    Director VARCHAR (100)
);
-- Creating Ratings Table
CREATE TABLE Ratings (
	Rating_ID INT AUTO_INCREMENT PRIMARY KEY,
	User_ID	INT,
    Movie_ID INT,
    Rating_Value DECIMAL (3,1), 
    Rating_Date VARCHAR (20),
    FOREIGN KEY (User_ID) REFERENCES Users(User_Id),
    FOREIGN KEY (Movie_ID) REFERENCES Movies(ID)
);
-- Verifying Schema
DESCRIBE Users;
DESCRIBE Movies;
DESCRIBE Ratings;
-- View all Users
SELECT * from Users;
-- View all Movies
SELECT * from Movies;
-- View all Ratings
SELECT * from Ratings;
 -- users older than 25
SELECT * FROM Users
WHERE Age > 25;
-- movies released between 2000 and 2020
SELECT * FROM Movies
WHERE  Release_Year BETWEEN 2002 AND 2020;
-- female users from Abuja
SELECT * FROM Users 
WHERE Gender = 'Female' AND Location = 'Abuja';
-- movies that are not Sci-Fi
SELECT * FROM Movies 
WHERE Genre <> 'Sci-Fi';
-- ratings greater than or equal to 4
SELECT * from Ratings
WHERE Rating_Value >= 4;
-- movies by release year (newest first)
SELECT * FROM Movies
ORDER BY Release_Year DESC;
-- distinct genres
SELECT DISTINCT genre FROM Movies;
-- Top 3 highest ratings
SELECT * FROM Ratings
ORDER BY Rating_Value DESC
LIMIT 3;
-- Skip the first 2 rows and display next 3
SELECT * FROM Users
LIMIT 3 OFFSET 2;
-- Sort users alphabetically
SELECT * FROM Users 
ORDER BY name;
