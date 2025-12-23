# creating database  swiggy_db_2025
create database  swiggy_db_2025;
use  swiggy_db_2025;

CREATE TABLE users (
    user_id INT PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    signup_date DATE
);
INSERT INTO users (user_id, name, city, email, phone, signup_date) VALUES
(1, 'Arjun Mehta', 'Mumbai', 'arjunm@gmail.com', '9876543210', '2024-01-12'),
(2, 'Priya Sharma', 'Delhi', 'priya.sharma@gmail.com', '9876501234', '2023-10-05'),
(3, 'Rahul Verma', 'Pune', 'rahulv@gmail.com', '9898989898', '2024-02-19'),
(4, 'Sarah Jones', 'Bengaluru', 'sarahj@gmail.com', '9000001111', '2023-09-11'),
(5, 'David Miller', 'Hyderabad', 'davidmiller@gmail.com', '9441235678', '2022-12-15'),
(6, 'Emily Carter', 'Chennai', 'emilyc@gmail.com', '9001234567', '2023-07-22'),
(7, 'Daniel Scott', 'Delhi', 'dscott@gmail.com', '9123456789', '2023-05-30'),
(8, 'Aisha Khan', 'Mumbai', 'aishakhan@gmail.com', '9900112233', '2024-01-04'),
(9, 'Ahmed Ali', 'Pune', 'ahmed.ali@gmail.com', '9776655443', '2023-03-07'),
(10, 'Maria Garcia', 'Hyderabad', 'mariags@gmail.com', '9445566778', '2024-05-14'),
(11, 'Carlos Ruiz', 'Kolkata', 'carlosr@gmail.com', '9800345678', '2022-11-29'),
(12, 'Riya Patel', 'Mumbai', 'riyapatel@gmail.com', '9811223344', '2024-06-10'),
(13, 'Kevin Brown', 'Delhi', 'kevinb@gmail.com', '9922334455', '2023-08-18'),
(14, 'Olivia White', 'Chennai', 'oliviaw@gmail.com', '9009988776', '2022-09-01'),
(15, 'Harsh Gupta', 'Hyderabad', 'harshg@gmail.com', '9494949494', '2024-03-26'),
(16, 'Kunal Singh', 'Bengaluru', 'kunalsingh@gmail.com', '9090123456', '2024-08-19'),
(17, 'Chloe Evans', 'Kolkata', 'chloeev@gmail.com', '9800112233', '2023-12-21'),
(18, 'Liam Wilson', 'Mumbai', 'liamw@gmail.com', '9822334455', '2022-10-09'),
(19, 'Emma Taylor', 'Pune', 'emmat@gmail.com', '9898223344', '2024-09-16'),
(20, 'Noah Brown', 'Delhi', 'noahb@gmail.com', '9911223344', '2023-11-03'),
(21, 'Arnav Rao', 'Bengaluru', 'arnavr@gmail.com', '9090909090', '2024-07-13'),
(22, 'Meera Nair', 'Chennai', 'meeranair@gmail.com', '9009009000', '2023-04-17'),
(23, 'Vivek Pillai', 'Bengaluru', 'vivekp@gmail.com', '9080706050', '2024-02-28'),
(24, 'Jason Lee', 'Hyderabad', 'jasonlee@gmail.com', '9445566000', '2023-06-25'),
(25, 'Hannah Kim', 'Mumbai', 'hannahk@gmail.com', '9833445566', '2024-04-02');

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    user_id INT,
    restaurant VARCHAR(100),
    cuisine VARCHAR(50),
    order_amount DECIMAL(10,2),
    order_date DATE,
    payment_mode VARCHAR(20),
    city VARCHAR(50),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

INSERT INTO orders (order_id, user_id, restaurant, cuisine, order_amount, order_date, payment_mode, city) VALUES
(1, 1, 'Behrouz Biryani', 'Biryani', 520, '2024-02-15', 'UPI', 'Mumbai'),
(2, 3, 'McDonald''s', 'Fast Food', 320, '2024-03-10', 'Card', 'Pune'),
(3, 5, 'Paradise Biryani', 'Biryani', 450, '2024-01-28', 'UPI', 'Hyderabad'),
(4, 7, 'Bikanervala', 'North Indian', 280, '2023-12-05', 'Cash', 'Delhi'),
(5, 10, 'Domino''s', 'Pizza', 690, '2024-06-12', 'UPI', 'Hyderabad'),
(6, 12, 'KFC', 'Fast Food', 410, '2024-07-08', 'Card', 'Mumbai'),
(7, 14, 'Subway', 'Healthy', 360, '2023-10-11', 'UPI', 'Chennai'),
(8, 15, 'Shah Ghouse', 'Biryani', 510, '2024-04-02', 'UPI', 'Hyderabad'),
(9, 18, 'Barbeque Nation', 'BBQ', 900, '2023-11-19', 'Card', 'Mumbai'),
(10, 2, 'Haldiram''s', 'North Indian', 340, '2024-01-18', 'Cash', 'Delhi'),
(11, 19, 'Burger King', 'Fast Food', 330, '2024-09-17', 'UPI', 'Pune'),
(12, 20, 'Moti Mahal', 'North Indian', 420, '2024-03-25', 'Card', 'Delhi'),
(13, 22, 'Saravana Bhavan', 'South Indian', 260, '2023-05-22', 'UPI', 'Chennai'),
(14, 23, 'Meghana Foods', 'Biryani', 580, '2024-03-01', 'UPI', 'Bengaluru'),
(15, 25, 'Wow! Momo', 'Snacks', 310, '2024-04-18', 'Card', 'Mumbai'),
(16, 4, 'KFC', 'Fast Food', 450, '2023-10-02', 'UPI', 'Bengaluru'),
(17, 6, 'Domino''s', 'Pizza', 700, '2024-02-12', 'Card', 'Chennai'),
(18, 8, 'Natural Ice Cream', 'Dessert', 260, '2024-01-20', 'Cash', 'Mumbai'),
(19, 9, 'McDonald''s', 'Fast Food', 310, '2023-09-03', 'UPI', 'Pune'),
(20, 11, 'Food Plaza', 'North Indian', 290, '2022-12-28', 'UPI', 'Kolkata'),
(21, 13, 'Burger King', 'Fast Food', 380, '2024-02-14', 'Cash', 'Delhi'),
(22, 16, 'Empire', 'Biryani', 620, '2024-08-21', 'UPI', 'Bengaluru'),
(23, 17, 'KFC', 'Fast Food', 420, '2023-12-29', 'Card', 'Kolkata'),
(24, 21, 'Shiv Sagar', 'South Indian', 270, '2024-07-22', 'UPI', 'Bengaluru'),
(25, 24, 'Pista House', 'Biryani', 490, '2023-06-28', 'UPI', 'Hyderabad'),
(26, 5, 'Karachi Bakery', 'Snacks', 250, '2024-02-02', 'Cash', 'Hyderabad'),
(27, 7, 'Wow! China', 'Chinese', 410, '2024-01-15', 'Card', 'Delhi'),
(28, 14, 'Tea Shop', 'Beverages', 150, '2023-09-15', 'Cash', 'Chennai'),
(29, 3, 'Oven Story', 'Pizza', 580, '2024-03-18', 'UPI', 'Pune'),
(30, 10, 'Cream Stone', 'Dessert', 340, '2024-06-05', 'UPI', 'Hyderabad');

-- 5. SQL TASKS

-- A. Basic SELECT
-- 1. Show all orders placed in 2024.
select * from orders 
where year(order_date) = 2024;

-- 2. Display all users from Mumbai.
select * from orders
where city = 'mumbai';

-- 3. Show all Biryani orders.
select * from orders 
where cuisine = 'Biryani';

-- 4.Display all Fast Food orders.
select * from orders
where cuisine = 'Fast Food';

-- 5. List all restaurants available in Hyderabad.
select restaurant from orders 
where city = 'Hyderabad';

-- B. Filtering (WHERE)
-- 1. Show orders with amount > 500.
SELECT * FROM orders
WHERE order_amount > 500;

-- 2. Find all orders paid by UPI.
SELECT * FROM orders
WHERE payment_mode = "UPI";

-- 3. Show all Pizza orders.
SELECT * FROM orders
WHERE cuisine = "Pizza";

-- 4. Display users who joined after 2024.
SELECT * FROM users
WHERE YEAR(signup_date) > "2024";

-- 5. Show orders where cuisine = "North Indian".
SELECT * FROM orders
WHERE cuisine = "North Indian";


-- C. Sorting (ORDER BY)
-- 1. Sort orders by amount (highest first).
SELECT * FROM orders
ORDER BY order_amount DESC;

-- 2. List users by signup date (newest first).
SELECT * FROM users
ORDER BY signup_date DESC;

-- 3. Show top 5 highest bill amounts.
SELECT * FROM orders
ORDER BY order_amount DESC
LIMIT 5;


-- D. Pattern Searching (LIKE)
-- 1. Show restaurants starting with “B”.
SELECT * FROM orders
WHERE restaurant LIKE "B%";

-- 2. Find users whose email ends with “gmail.com”.
SELECT * FROM users
WHERE email LIKE "%gmail.com";

-- 3. Show cuisine names containing “Indian”.
SELECT * FROM orders
WHERE cuisine LIKE "%Indian%";


-- E. Aggregation + GROUP BY
-- 1. Count orders per city.
SELECT city, COUNT(*)
FROM orders
GROUP BY city;

-- 2. Count users per city.
SELECT city, COUNT(*)
FROM users
GROUP BY city;

-- 3. Count orders per cuisine.
SELECT cuisine, COUNT(*)
FROM orders
GROUP BY cuisine;

-- 4. Find average order amount per cuisine.
SELECT cuisine, AVG(order_amount)
FROM orders
GROUP BY cuisine;

-- 5. Find highest order total per user.
SELECT user_id , MAX(order_amount)
FROM orders
GROUP BY user_id;



