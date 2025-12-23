-- 1. Database Name

CREATE DATABASE netflix_2025_db;

USE netflix_2025_db;

-- 2. Tables to Create

-- Table 1: users

CREATE TABLE users(
user_id INT PRIMARY KEY,
name VARCHAR(50),
country VARCHAR(60) NOT NULL,
email VARCHAR(50) UNIQUE,
plan_type VARCHAR(20) NOT NULL 
CHECK (plan_type IN ("Basic","Standard", "Premium")),
signup_date DATE NOT NULL
);


-- Table 2: movies

CREATE TABLE movies(
movie_id INT PRIMARY KEY,
title VARCHAR(200) NOT NULL,
genre VARCHAR(50) NOT NULL,
release_year YEAR CHECK (release_year = 2025),
language VARCHAR(50) NOT NULL,
duration_minutes INT NOT NULL,
rating  DECIMAL(3,1) CHECK (rating BETWEEN 0 AND 10),
industry  VARCHAR(50) NOT NULL
);

-- 3. Movie Data (20 Real Movies – 2025)

INSERT INTO movies (
    movie_id,
    title,
    genre,
    release_year,
    language,
    duration_minutes,
    rating,
    industry
)
VALUES
    (1, 'Baaghi 4', 'Action', 2025, 'Hindi', 142, 7.4, 'Bollywood'),
    (2, 'Alpha', 'Action, Thriller', 2025, 'Hindi', 138, 7.1, 'Bollywood'),
    (3, 'Anaconda', 'Horror/Adventure', 2025, 'English', 128, 6.6, 'Hollywood'),
    (4, 'Smile 2', 'Horror', 2025, 'English', 121, 7.5, 'Hollywood'),
    (5, 'M3GAN 2.0', 'Horror/Thriller', 2025, 'English', 115, 6.9, 'Hollywood'),
    (6, 'The Black Phone 2', 'Horror', 2025, 'English', 118, 7.3, 'Hollywood'),
    (7, 'How to Train Your Dragon', 'Fantasy/Adventure', 2025, 'English', 145, 8.1, 'Hollywood'),
    (8, 'Moana 2', 'Animation', 2025, 'English', 112, 8.0, 'Disney'),
    (9, 'Zootopia 2', 'Animation', 2025, 'English', 110, 8.2, 'Disney'),
    (10, 'Mandalorian & Grogu', 'Sci-Fi', 2025, 'English', 134, 7.9, 'Disney'),
    (11, 'Super Mario Bros. Movie 2', 'Animation', 2025, 'English', 119, 7.6, 'Universal'),
    (12, 'Toy Story 5', 'Animation', 2025, 'English', 108, 7.8, 'Disney'),
    (13, 'Spider-Man 4', 'Action/Superhero', 2025, 'English', 141, 8.4, 'Marvel'),
    (14, 'Fast & Furious 11', 'Action', 2025, 'English', 150, 6.8, 'Universal'),
    (15, 'Tron: Ares', 'Sci-Fi', 2025, 'English', 127, 7.2, 'Disney'),
    (16, 'Sonic the Hedgehog 3', 'Animation/Action', 2025, 'English', 124, 7.7, 'Paramount'),
    (17, 'Minecraft: The Movie', 'Adventure/Family', 2025, 'English', 118, 7.1, 'Warner Bros'),
    (18, 'Captain America: Brave New World', 'Superhero', 2025, 'English', 149, 7.3, 'Marvel'),
    (19, 'Thunderbolts*', 'Superhero', 2025, 'English', 129, 7.0, 'Marvel'),
    (20, 'Jurassic World 4', 'Sci-Fi/Adventure', 2025, 'English', 146, 7.8, 'Universal');
    
   
   -- 4. User Data (25 Realistic Users)
   
   
    INSERT INTO users (
    user_id,
    name,
    country,
    email,
    plan_type,
    signup_date
)
VALUES
    (1, 'Arjun Mehta', 'India', 'arjunm@gmail.com', 'Premium', '2024-11-12'),
    (2, 'Priya Sharma', 'India', 'priya.sharma@gmail.com', 'Standard', '2023-10-05'),
    (3, 'Rahul Verma', 'India', 'rahulv@gmail.com', 'Basic', '2024-02-19'),
    (4, 'Sarah Jones', 'USA', 'sarahj@gmail.com', 'Premium', '2023-09-11'),
    (5, 'David Miller', 'USA', 'davidmiller@gmail.com', 'Basic', '2022-12-15'),
    (6, 'Emily Carter', 'UK', 'emilyc@gmail.com', 'Standard', '2023-07-22'),
    (7, 'Daniel Scott', 'UK', 'dscott@gmail.com', 'Premium', '2023-05-30'),
    (8, 'Aisha Khan', 'UAE', 'aishakhan@gmail.com', 'Standard', '2024-01-04'),
    (9, 'Ahmed Ali', 'UAE', 'ahmed.ali@gmail.com', 'Basic', '2023-03-07'),
    (10, 'Maria Garcia', 'Spain', 'mariags@gmail.com', 'Premium', '2024-05-14'),
    (11, 'Carlos Ruiz', 'Spain', 'carlosr@gmail.com', 'Standard', '2022-11-29'),
    (12, 'Riya Patel', 'India', 'riyapatel@gmail.com', 'Basic', '2024-06-10'),
    (13, 'Kevin Brown', 'USA', 'kevinb@gmail.com', 'Standard', '2023-08-18'),
    (14, 'Olivia White', 'UK', 'oliviaw@gmail.com', 'Premium', '2022-09-01'),
    (15, 'Harsh Gupta', 'India', 'harshg@gmail.com', 'Standard', '2024-03-26'),
    (16, 'Kunal Singh', 'India', 'kunalsingh@gmail.com', 'Premium', '2024-08-19'),
    (17, 'Chloe Evans', 'Australia', 'chloeev@gmail.com', 'Basic', '2023-12-21'),
    (18, 'Liam Wilson', 'Australia', 'liamw@gmail.com', 'Standard', '2022-10-09'),
    (19, 'Emma Taylor', 'Canada', 'emmat@gmail.com', 'Premium', '2024-09-16'),
    (20, 'Noah Brown', 'Canada', 'noahb@gmail.com', 'Basic', '2023-11-03'),
    (21, 'Arnav Rao', 'India', 'arnavr@gmail.com', 'Standard', '2024-07-13'),
    (22, 'Meera Nair', 'India', 'meeranair@gmail.com', 'Premium', '2023-04-17'),
    (23, 'Vivek Pillai', 'India', 'vivekp@gmail.com', 'Basic', '2024-02-28'),
    (24, 'Jason Lee', 'Singapore', 'jasonlee@gmail.com', 'Premium', '2023-06-25'),
    (25, 'Hannah Kim', 'South Korea', 'hannahk@gmail.com', 'Standard', '2024-04-02');

-- 5. SQL Tasks
-- A. Basic SELECT

/*
1.Show all movies released in 2025.

2.Display all users who joined Netflix in 2024.

3.Show all Animation movies.

4.Display all users from India.

5.Show all movies from Disney.

*/

-- 1
SELECT *
FROM movies
WHERE release_year = 2025;

-- 2

SELECT *
FROM users
WHERE year(signup_date) = 2024;



-- 3

SELECT * 
FROM movies
WHERE genre ="Animation";

-- 4
SELECT name
FROM users
where country = 'India';

-- 5
SELECT *
FROM movies
WHERE industry ='Disney';

-- B. Filtering (WHERE)
/*
6.Find movies with rating above 7.5.

7.Show all horror movies.

8.Find all Premium plan users.

9.Show movies longer than 130 minutes.

10.Display movies whose language is English

*/


-- 6

SELECT *
FROM movies
WHERE rating > 7.4;

-- 7
SELECT *
FROM movies
where genre = 'Horror';

-- 8
SELECT *
FROM users
WHERE plan_type = 'Premium';


-- 9 
SELECT *
FROM movies
WHERE duration_minutes > 130;

-- 10

SELECT *
FROM movies
WHERE language = 'English';


-- C. Sorting (ORDER BY)
/*
11.List movies in descending order of rating.

12.List users in order of their signup date (newest first).

13.Show the top 5 longest movies.
*/

-- 11

SELECT *
FROM movies
ORDER BY rating DESC;

-- 12

SELECT *
FROM users
ORDER BY signup_date DESC;

-- 13

SELECT *
FROM movies
ORDER BY duration_minutes DESC
LIMIT 5;

-- D. Pattern Searching (LIKE)

/*
14.Show all movies whose title starts with “S”.

15.Find all users whose email ends with “gmail.com”.

16Display movies containing the word “Man
*/

-- 14
SELECT *
FROM movies
WHERE title LIKE 'S%';

-- 15
SELECT *
FROM users
WHERE email LIKE '%gmail.com';

-- 16
SELECT *
FROM movies
WHERE title LIKE '%Man%';

-- E. Aggregation + GROUP BY
/*
17.Count how many movies each industry has released.

18.Find the average movie rating for each genre.

19.Count how many users are in each plan_type.

20.Count number of users per country.
*/

-- 17

SELECT 
industry,
count(movie_id)
FROM movies
GROUP BY industry;

-- 18

SELECT
    genre,
    AVG(rating) AS average_rating
FROM movies
GROUP BY genre;

-- 19

SELECT 
plan_type,
count(user_id)
FROM users
GROUP BY plan_type;

-- 20

SELECT 
country,
count(user_id)
FROM users
GROUP BY country;




