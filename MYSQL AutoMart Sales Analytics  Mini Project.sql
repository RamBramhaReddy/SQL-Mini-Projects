create database carsalesdb;
use carsalesdb;

CREATE TABLE Cars (
    Car_ID VARCHAR(10) PRIMARY KEY,
    Brand VARCHAR(50) NOT NULL,
    Model VARCHAR(50) NOT NULL,
    Year INT CHECK (Year >= 2000),
    Color VARCHAR(30),
    Engine_Type ENUM('Petrol','Diesel','Electric','Hybrid') NOT NULL,
    Transmission ENUM('Automatic','Manual') NOT NULL,
    Price DECIMAL(10,2) NOT NULL CHECK (Price > 0),
    Quantity_In_Stock INT NOT NULL CHECK (Quantity_In_Stock >= 0),
    Status ENUM('Available','Sold','Reserved') DEFAULT 'Available'
);

CREATE TABLE Customers (
    Customer_ID VARCHAR(10) PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Gender ENUM('Male','Female') NOT NULL,
    Age INT CHECK (Age > 0 AND Age < 120),
    Phone VARCHAR(30),
    Email VARCHAR(100),
    City VARCHAR(100)
);

CREATE TABLE Sales (
    Sale_ID VARCHAR(10) PRIMARY KEY,
    Customer_ID VARCHAR(10) NOT NULL,
    Car_ID VARCHAR(10) NOT NULL,
    Sale_Date DATE,
    Quantity INT CHECK (Quantity > 0),
    Sale_Price DECIMAL(10,2) CHECK (Sale_Price > 0),
    Payment_Method ENUM('Cash','Credit','Installment') NOT NULL,
    Salesperson VARCHAR(100),
    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID),
    FOREIGN KEY (Car_ID) REFERENCES Cars(Car_ID)
);

-- A. Filtering & Basic Clauses
-- 1. Retrieve all cars that are currently available and priced above $50,000. Sort by Price descending.
select * from cars
where status = "available" and price > 50000;

-- 2. List the names and contact details of all customers older than 30 years who live in cities starting with “New”.
select name,phone,email,city from customers 
where age = 30 and  city like "New%";

-- 3. Show all sales made via Installment, including sale date, customer name, and salesperson.
select s.Payment_Method, s.sale_date,s.salesperson,c.name
from sales s
join customers c
on s.customer_id = c.customer_id
where s.Payment_Method = 'installment';

-- 4. Find cars that have Automatic transmission AND Petrol engine, displaying Brand, Model, and Price.
select Transmission,Engine_Type,Brand,Model,Price from cars
where Transmission = 'Automatic' and Engine_Type = 'Petrol';

-- 5. List all distinct cities where customers have purchased cars.
select distinct c.city from customers c
join sales s
	on c.customer_id = s.customer_id;
    
-- B. Aggregation & GROUP BY
-- 6. For each car, find the total revenue generated, sorted by revenue in descending order.
select c.brand,c.model,sum(quantity * sale_price) as tol_rev_gen
from sales s
join cars c
	on s.car_id = c.car_id
group by c.brand,c.model
order by tol_rev_gen desc;

-- 7. Count the number of cars sold per brand, order by highest-selling brand first.
select c.brand, count(c.brand) as highest_sell_car
from cars c
group by c.brand
order by highest_sell_car desc;

-- 8.Calculate the average sale price per engine type.
select c.Engine_Type,avg(s.Sale_Price) as avg_sale_engine
from cars c
join sales s
	on c.car_id = s.car_id
group by c.Engine_Type
order by avg_sale_engine desc;

-- 9. Find the number of sales handled by each salesperson, showing only those with more than 3 sales.
select s.salesperson,s.quantity from sales s
where quantity >= 3 ;

-- 10. Find the total quantity of cars purchased by each customer, sorted by the highest buyer first.
select c.name,s.Quantity as highest_buyer from sales s
join customers c
	on s.Customer_ID = c.Customer_ID
group by c.Name, s.Quantity
order by highest_buyer desc;

-- C. GROUP Filtering with HAVING
-- 11. Identify brands with total sales revenue exceeding $200,000.
select c.brand,sum(s.Quantity * s.sale_price) as total_sales_rev from cars c
join sales s
	on c.car_id = s.car_id
group by c.brand
having sum(s.Quantity * s.sale_price) > 200000
order by total_sales_rev desc;
 
 -- 12.List customers who purchased more than 2 cars and the total number of cars they bought.
 select cu.Customer_ID,cu.Name,count(s.Car_ID) as total_cars
 from customers cu
 join sales s
	on s.Customer_ID = cu.Customer_ID
group by   cu.Customer_ID,cu.Name
having count(s.Car_ID) > 2;

-- 13.Find salespersons who handled more than 5 sales in 2025, showing their name and total sales.
select s.salesperson,count(s.Sale_ID) as total_sales
from sales s
where year(Sale_Date) = 2025
group by s.Salesperson
having count(s.Sale_ID) > 2;

-- here as per the data we don't have total_sales greater than 5, So i took 2 instead of 5 

-- 14.Determine cars that were sold more than 10 times, along with the total quantity sold.
select c.Car_ID, c.brand,c.model, sum(s.quantity) as total_qua_sold
from sales s
join cars c
	on c.Car_ID = s.Car_ID
group by c.Car_ID, c.brand,c.model 
having sum(s.quantity) > 10;

-- 15.List brands whose average car price is greater than $60,000, along with the average price.
select c.brand,c.model, avg(s.Sale_Price * s.quantity) as avg_price from sales s
join cars c 
	on c.Car_ID = s.Car_ID
group by c.brand,c.model
having avg(s.Sale_Price * s.quantity) > 60000;

-- D. JOINS (INNER, LEFT, RIGHT)
-- 16. Using an INNER JOIN, display all sales with customer name, car brand, model, and sale price.
select cu.name, c.brand, c.model,s.sale_price from cars c
join sales s
	on c.Car_ID = s.Car_ID
join customers cu
	on s.Customer_ID = cu.Customer_ID;
    
-- 17. Using a LEFT JOIN, list all cars along with any corresponding sale information, including unsold cars.
select c.brand,c.Model,s.sale_price,s.salesperson,s.Payment_Method,s.Sale_Date 
from cars c
left join sales s 
	 on c.Car_ID = s.Car_ID;
     
-- 18.Using a RIGHT JOIN, list all sales along with customer names, including cases where customer data may be missing
select cu.Customer_ID,cu.name,cu.Age,cu.City,s.Sale_ID,s.Car_ID,s.Sale_Date,Sale_Price,s.Payment_Method from customers cu
right join sales s
	on cu.Customer_ID = s.Customer_ID;
    
-- 19. Using INNER JOIN and WHERE, show sales of cars sold in 2025 with quantity > 2, displaying sale date, customer, and car details.
select cu.Customer_ID,cu.name,cu.Age,cu.City,s.Sale_ID,s.Car_ID,s.Sale_Date,Sale_Price,s.Payment_Method from customers cu
inner join sales s
		on cu.Customer_ID = s.Customer_ID; 


-- 20. Using JOIN and GROUP BY, calculate the total revenue per city, showing city name and total revenue, sorted by revenue descending.

select cu.city,
       SUM(s.quantity * c.price) AS total_revenue
FROM sales s
INNER JOIN customers cu
       ON s.customer_id = cu.customer_id
INNER JOIN cars c
       ON s.car_id = c.car_id
GROUP BY cu.city
ORDER BY total_revenue DESC;



select * from cars;

select * from sales;

select * from customers;

