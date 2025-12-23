-- SQL Challenge 1 Admission Management System
-- PART 1 — DDL TASKS (Structure Creation)
-- Task 1  Create Database
# Creating a database as admission_db
create database admission_db;

use admission_db;

# Task 2  Create Table: Departments
create table Departments(
department_id int,
department_name varchar(25)
);

show tables;
select * from Departments;

-- Task 4 — Insert Data into Departments

insert into Departments(department_id,department_name)
values(101,"Computer Science"),
(102,"Data Science"),
(103,"Mechanical Engineering"),
(104,"Civil Engineering"),
(105,"Electronics");

select * from Departments;

-- Task 3 — Create Table: Students
create table students(
student_id int,
student_name varchar(20),
email varchar(30),
phone char(10),
gender char(6),
department_id int,
admission_date date
);

show tables;
select * from students;
SET SQL_SAFE_UPDATES = 0;

-- Task 5 — Insert Data into Students

insert into students(student_id,student_name,email,phone,gender,department_id,admission_date)
values(1,"Rahul Sharma","rahul@gmail.com",9876543210,"Male",101, "2024-01-15"),
(2,"Priya Verma","priya@gmail.com",9123456780,"Female",102, "2024-02-01"),
(3,"Samuel D’Souza","samuel@gmail.com",9898989898,"Male",103, "2024-01-10"),
(4,"Ayesha Khan","ayesha@yahoo.com",9786543210,"Female",101, "2024-03-12"),
(5,"Sneha Reddy","sneha@gmail.com",9000012345,"Female",105, "2024-03-01"),
(6,"Ajay Singh","ajay@gmail.com",9998877665,"Male",102, "2024-02-10"),
(7,"Sai Teja","saiteja@gmail.com",9700001111,"Male",104, "2024-02-25"),
(8,"John Peter","john@gmail.com",8800223344,"Male",103, "2024-01-22"),
(9,"Anjali Mehra","anjali@gmail.com",7894561230,"Female",101, "2024-03-14"),
(10,"Deepika Rao","deepika@gmail.com",8123456700,"Female",105, "2024-03-05");

select * from students;

-- PART 3 — DML TASKS (Update, Delete, Select)
-- Task 6 — UPDATE Operation
update students
set phone = 9999999999
where student_id = 1;

select * from students;

-- Task 7  UPDATE Operation
update students
set department_id = 102
where student_name = "Ayesha Khan";

select * from students;

-- Task 8 — DELETE Operation
delete from students
where student_id = 3;

select * from students;

-- Task 9 — DELETE Operation
delete from departments
where department_id = 105;

select * from departments;

-- Task 10 — SELECT Operation
select * from students;












