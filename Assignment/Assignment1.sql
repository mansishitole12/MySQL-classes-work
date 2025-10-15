-- --------------------------------------------------- Analysis of Database ------------------------------------------------
/*
Database Name --> Travel agent

Tables -->

1. booking(id, date,name,age,email)
2.package(id,name,destination,price,end date)
3.customer(id,name,phone,email,city)
4.hotel(id,name,location,star,package)
5.payment(payment id,booking id,amount paid,paymentdate, payment method)
*/
   
   -- ---------------------------------------- Database queries ---------------------------------------------------------
-- create a database travel agent
CREATE DATABASE `Travel agent`;

-- to work on database, you need to use it first
USE `Travel agent`;

  -- --------------------------------------------------------- Table Queries ----------------------------------------------
  
-- TABLE-1 booking(id, date,name,age,email)
create table Booking(
booking_id INT PRIMARY KEY,
booking_date VARCHAR(50),
name VARCHAR(50),
age VARCHAR(50),
email VARCHAR(50)
);

-- insert value in a table
insert into Booking
values
(1,'2025-06-01','mansi','21','mansi@12'),
(2,'2025-06-02','divya','22','divya@19'),
(3,'2025-06-03','rashi','24','rashi@18'),
(4,'2025-06-04','manoj','27','manoji@13'),
(5,'2025-06-05','tanmayi','20','tanmayi@17');

-- to display table data
select * from Booking;

-- to remove complete records from table
truncate table Booking;

-- to remove complete records and attributes from table
drop table Booking;

-- TABLE-2 package(id,name,destination,price,end date)
create table Package(
package_id INT PRIMARY KEY,
package_name VARCHAR(50),
destination VARCHAR(50),
price INT,
end_date VARCHAR(50)
);

-- insert value in a table
insert into Package
values
(11,'maldives escape','maldives',60000,'2025-07-05'),
(12,'bliss in bali','bali',70000,'2025-07-04'),
(13,'goa sun & sand','goa',50000,'2025-07-03'),
(14,'phuket island','island',40000,'2025-07-02'),
(15,'pink udaipur','udaipur',30000,'2025-07-01');

-- to display table data
select * from Package;

-- to remove complete records from table
truncate table Package;

-- to remove complete records and attributes from table
drop table Package;

-- TABLE-3 customer(id,name,phone,email,city)
create table Customer(
customer_id INT PRIMARY KEY,
name VARCHAR(50),
phone VARCHAR(50),
email VARCHAR(50),
city VARCHAR(50)
);

-- insert value in a table
insert into Customer
values
(21,'mansi','98765','mansi@12','neral'),
(22,'rashi','98777','rashi@18','neral'),
(23,'divya','98788','divya@92','neral'),
(24,'manoj','98324','manoj@32','neral'),
(25,'tanmayi','98766','tanmayi@612','neral');

-- to display table data
select * from Customer;

-- to remove complete records from table
truncate table Customer;

-- to remove complete records and attributes from table
drop table Customer;

-- TABLE-4 hotel(id,name,location,star,package)
create table Hotel(
hotel_id INT PRIMARY KEY,
hotel_name VARCHAR(50),
location VARCHAR(50),
stars INT,
package INT
);

-- insert value in a table
insert into Hotel
values
(31,'mayura','karjat',3,3000),
(32,'green leaf','karjat',5,5000),
(33,'oberoy','mumbai',7,7000),
(34,'taj','mumbai',7,8000),
(35,'fprest club','karjat',5,3000);

-- to display table data
select * from Hotel;

-- to remove complete records from table
truncate table Hotel;

-- to remove complete records and attributes from table
drop table Hotel;

-- TABLE-5 payment(payment id,booking id,amount paid,paymentdate, payment method)
create table Payment(
payment_id INT PRIMARY KEY,
booking_id INT,
amount_paid INT,
payment_date VARCHAR(50),
payment_method VARCHAR(50)
);

-- insert value in a table
insert into Payment
values
(41,201,2000,'2025-07-09','credit card'),
(42,202,3000,'2025-07-08','offline'),
(43,203,4000,'2025-07-07','credit card'),
(44,204,5000,'2025-07-06','offline'),
(45,205,6000,'2025-07-05','credit card');

-- to display table data
select * from Payment;

-- to remove complete records from table
truncate table Payment;

-- to remove complete records and attributes from table
drop table Payment;

-- --------------------------------------------------- Analysis of Database ------------------------------------------------
/*-
Database Name --> school7

Tables -->

1. student(id,first name, last name,phone,date of birth)
2.classes(id,name,teacher id,subject,roll no)
3.teacher(id,first name,last name,subject,phone)
4.marks(marks id,student id, subject id,marks obtaimed ,exam date)
5.exams(subject id,subject name,teacherid,semester id,date)
*/
   
   -- ---------------------------------------- Database queries ---------------------------------------------------------
-- create a database school7
CREATE DATABASE `school7`;

-- to work on database, you need to use it first
USE `school7`;

  -- --------------------------------------------------------- Table Queries ----------------------------------------------


-- TABLE-1 student(id,first name, last name,phone,date of birth)
create table Student(
student_id INT PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
phone VARCHAR(50),
date_of_birth VARCHAR(50)
);

-- insert value in a table
insert into Student
values
(1,'mansi','shitole','12345','2007-06-12'),
(2,'rashi','shitole','65437','2007-06-13'),
(3,'divya','mhadase','17896','2007-06-14'),
(4,'manu','deshmukh','78977','2007-06-15'),
(5,'tanmayi','patil','15435','2007-06-16');

-- to display table data
select * from Student;

-- to remove complete records from table
truncate table Student;

-- to remove complete records and attributes from table
drop table Student;

-- TABLE-2 classes(id,name,teacher id,subject,roll no)
create table Classes(
class_id INT PRIMARY KEY,
class_name VARCHAR(50),
teacher_id INT,
subject VARCHAR(50),
roll_number INT 
);

-- insert value in a table
insert into Classes
values
(21,'english class',201,'english',222),
(22,'maths class',202,'maths',223),
(23,'history class',203,'history',224),
(24,'marathi class',204,'marathi',225),
(25,'hindi class',205,'hindi',226);

-- to display table data
select * from Classes;

-- to remove complete records from table
truncate table Classes;

-- to remove complete records and attributes from table
drop table Classes;

-- TABLE-3 teacher(id,first name,last name,subject,phone)
create table Teacher(
teacher_id INT PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
subject VARCHAR(50),
phone VARCHAR(50)
);

-- insert value in a table
insert into Teacher
values
(81,'shalini','verma','english','12345'),
(82,'priti','sharma','maths','12879'),
(83,'sanika','pande','marathi','12786'),
(84,'vrunda','mourya','hindi','54632'),
(85,'sharu','mehta','history','12890');

-- to display table data
select * from Teacher;

-- to remove complete records from table
truncate table Teacher;

-- to remove complete records and attributes from table
drop table Teacher;

-- TABLE-4 marks(marks id,student id, subject id,marks obtaimed ,exam date)
create table Marks(
mark_id INT PRIMARY KEY,
student_id INT,
subject_id INT,
marks_obtained VARCHAR(50),
exam_date VARCHAR(50)
);

-- insert value in a table
insert into Marks
values
(301,1,21,'32','2025-06-27'),
(302,2,22,'33','2025-06-26'),
(303,3,23,'45','2025-06-25'),
(304,4,24,'47','2025-06-24'),
(305,5,25,'32','2025-06-23');

-- to display table data
select * from Marks;

-- to remove complete records from table
truncate table Marks;

-- to remove complete records and attributes from table
drop table Marks;

-- TABLE-5 exams(subject id,subject name,teacherid,semester id,date)
create table Exams(
subject_id INT PRIMARY KEY,
subject_name VARCHAR(50),
teacher_id INT,
semester_id INT,
date VARCHAR(50)
);

-- insert value in a table
insert into Exams
values
(401,'english',81,501,'2025-07-02'),
(402,'hindi',82,502,'2025-07-03'),
(403,'marathi',83,503,'2025-07-04'),
(404,'history',84,504,'2025-07-05'),
(405,'maths',85,505,'2025-07-06');

-- to display table data
select * from Exams;

-- to remove complete records from table
truncate table Exams;

-- to remove complete records and attributes from table
drop table Exams;

-- --------------------------------------------------- Analysis of Database ------------------------------------------------
/*-
Database Name --> collage1

Tables -->

1. student(id,first name, last name,phone,date of birth)
2.classes(id,name,teacher id,subject,roll no)
3.teacher(id,first name,last name,subject,phone)
4.marks(marks id,student id, subject id,marks obtaimed ,exam date)
5.exams(subject id,subject name,teacherid,semester id,date)
*/
   
   -- ---------------------------------------- Database queries ---------------------------------------------------------
-- create a database collage1
CREATE DATABASE `collage1`;

-- to work on database, you need to use it first
USE `collage1`;

  -- --------------------------------------------------------- Table Queries ----------------------------------------------

-- TABLE-1 student(id,first name, last name,phone,date of birth)
create table Student(
student_id INT PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
phone VARCHAR(50),
date_of_birth VARCHAR(50)
);

insert into Student
values
(1,'mansi','shitole','12345','2007-06-12'),
(2,'rashi','shitole','65437','2007-06-13'),
(3,'divya','mhadase','17896','2007-06-14'),
(4,'manu','deshmukh','78977','2007-06-15'),
(5,'tanmayi','patil','15435','2007-06-16');

-- to display table data
select * from Student;

-- to remove complete records from table
truncate table Student;

-- to remove complete records and attributes from table
drop table Student;

-- TABLE-2 classes(id,name,teacher id,subject,roll no)
create table Classes(
class_id INT PRIMARY KEY,
class_name VARCHAR(50),
teacher_id INT,
subject VARCHAR(50),
roll_number INT 
);

insert into Classes
values
(21,'english class',201,'english',222),
(22,'maths class',202,'maths',223),
(23,'history class',203,'history',224),
(24,'marathi class',204,'marathi',225),
(25,'hindi class',205,'hindi',226);

-- to display table data
select * from Classes;

-- to remove complete records from table
truncate table Classes;

-- to remove complete records and attributes from table
drop table Classes;

-- TABLE-3 teacher(id,first name,last name,subject,phone)
create table Teacher(
teacher_id INT PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
subject VARCHAR(50),
phone VARCHAR(50)
);

insert into Teacher
values
(81,'shalini','verma','english','12345'),
(82,'priti','sharma','maths','12879'),
(83,'sanika','pande','marathi','12786'),
(84,'vrunda','mourya','hindi','54632'),
(85,'sharu','mehta','history','12890');

-- to display table data
select * from Teacher;

-- to remove complete records from table
truncate table Teacher;

-- to remove complete records and attributes from table
drop table Teacher;

-- TABLE-4 marks(marks id,student id, subject id,marks obtaimed ,exam date)
create table Marks(
mark_id INT PRIMARY KEY,
student_id INT,
subject_id INT,
marks_obtained VARCHAR(50),
exam_date VARCHAR(50)
);

insert into Marks
values
(301,1,21,'32','2025-06-27'),
(302,2,22,'33','2025-06-26'),
(303,3,23,'45','2025-06-25'),
(304,4,24,'47','2025-06-24'),
(305,5,25,'32','2025-06-23');

-- to display table data
select * from Marks;

-- to remove complete records from table
truncate table Marks;

-- to remove complete records and attributes from table
drop table Marks;

-- TABLE-5 exams(subject id,subject name,teacherid,semester id,date)
create table Exams(
subject_id INT PRIMARY KEY,
subject_name VARCHAR(50),
teacher_id INT,
semester_id INT,
date VARCHAR(50)
);

insert into Exams
values
(401,'english',81,501,'2025-07-02'),
(402,'hindi',82,502,'2025-07-03'),
(403,'marathi',83,503,'2025-07-04'),
(404,'history',84,504,'2025-07-05'),
(405,'maths',85,505,'2025-07-06');

-- to display table data
select * from Exams;

-- to remove complete records from table
truncate table Exams;

-- to remove complete records and attributes from table
drop table Exams;


-- --------------------------------------------------- Analysis of Database ------------------------------------------------
/*-
Database Name --> Flipkart

Tables -->

1. customer (customer_,name,email,phone,city)
2. product (product_id,product_name,category,brand,price)
3. orders (order_id,customer_id,product_id,order_date,quantity)
4. payments (payment_id,order_id,payment_date,payment_method,payment_status)
5. shipping (shipping_id,order_id,shipping_date,delivery_status,shipping_provider)
*/
   
   -- ---------------------------------------- Database queries ---------------------------------------------------------
-- create a database flipkart
create database Flipkart;

-- to work on database, you need to use it first
use Flipkart;

-- --------------------------------------------------------- Table Queries ----------------------------------------------


-- TABLE-1 customer (customer_,name,email,phone,city)
create table Customer(
customer_id INT PRIMARY KEY,
name VARCHAR(50),
email VARCHAR(50),
phone VARCHAR(50),
city VARCHAR(50)
);

insert into Customer
values
(1, 'Amit Sharma', 'amit@example.com', '9876543210', 'thane'),
(2, 'Priya Verma', 'priya@example.com', '9123456780', 'neral'),
(3, 'Rahul Mehta', 'rahul@example.com', '9988776655', 'Karjat'),
(4, 'Sneha Kapoor', 'sneha@example.com', '9876123456', 'dombivali'),
(5, 'Vikram Singh', 'vikram@example.com', '9765432109', 'kalyan');

-- to display table data
select * from Customer;

-- to remove complete records from table
truncate table Customer;

-- to remove complete records and attributes from table
drop table Customer;

-- TABLE-2 product (product_id,product_name,category,brand,price)
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    brand VARCHAR(50),
    price DECIMAL(10,2)
);

insert into Products
values
(101, 'Samsung Galaxy M12', 'Electronics', 'Samsung', 10999.00),
(102, 'Nike Running Shoes', 'Footwear', 'Nike', 4599.00),
(103, 'Levi\'s Jeans', 'Apparel', 'Levi\'s', 2999.00),
(104, 'Sony Headphones', 'Electronics', 'Sony', 3499.00),
(105, 'Prestige Pressure Cooker', 'Home & Kitchen', 'Prestige', 2499.00);

-- to display table data
select * from Products;

-- to remove complete records from table
truncate table Products;

-- to remove complete records and attributes from table
drop table Products;

-- TABLE-3 orders (order_id,customer_id,product_id,order_date,quantity)
CREATE TABLE Orders (
order_id INT PRIMARY KEY,
customer_id INT,
product_id INT,
order_date DATE,
quantity INT
);
    
insert into Orders
values
(1001, 1, 101, '2025-05-20', 1),
(1002, 2, 102, '2025-05-21', 2),
(1003, 3, 103, '2025-05-22', 1),
(1004, 4, 104, '2025-05-23', 1),
(1005, 5, 105, '2025-05-24', 3);

-- to display table data
select * from Orders;

-- to remove complete records from table
truncate table Orders;

-- to remove complete records and attributes from table
drop table Orders;

-- TABLE-4 payments (payment_id,order_id,payment_date,payment_method,payment_status)
CREATE TABLE Payments (
payment_id INT PRIMARY KEY,
order_id INT,
payment_date DATE,
payment_method VARCHAR(50),
payment_status VARCHAR(20)
);
    
insert into Payments
values
(501, 1001, '2025-05-20', 'Credit Card', 'Completed'),
(502, 1002, '2025-05-21', 'UPI', 'Completed'),
(503, 1003, '2025-05-22', 'Net Banking', 'Pending'),
(504, 1004, '2025-05-23', 'Debit Card', 'Completed'),
(505, 1005, '2025-05-24', 'Cash on Delivery', 'Completed');

-- to display table data
-- to display table data
select * from Payments;

-- to remove complete records from table
truncate table Payments;

-- to remove complete records and attributes from table
drop table Payments;

-- TABLE-5  shipping (shipping_id,order_id,shipping_date,delivery_status,shipping_provider)
CREATE TABLE Shipping (
shipping_id INT PRIMARY KEY,
order_id INT,
shipping_date DATE,
delivery_status VARCHAR(20),
shipping_provider VARCHAR(50)
);
    
insert into Shipping
values
(301, 1001, '2025-05-21', 'Delivered', 'Ekart'),
(302, 1002, '2025-05-22', 'Shipped', 'Delhivery'),
(303, 1003, '2025-05-23', 'Processing', 'Blue Dart'),
(304, 1004, '2025-05-24', 'Delivered', 'FedEx'),
(305, 1005, '2025-05-25', 'Shipped', 'Ekart');

-- to display table data
select * from Shippping;

-- to remove complete records from table
truncate table Shipping;

-- to remove complete records and attributes from table
drop table Shipping;


-- --------------------------------------------------- Analysis of Database ------------------------------------------------
/*-
Database Name --> myntra

Tables -->

1. customer (customer_,name,email,phone,city)
2. product (product_id,product_name,category,brand,price)
3. orders (order_id,customer_id,product_id,order_date,quantity)
4. payments (payment_id,order_id,payment_date,payment_method,payment_status)
5. shipping (shipping_id,order_id,shipping_date,delivery_status,shipping_provider)
*/
   
   -- ---------------------------------------- Database queries ---------------------------------------------------------
-- create a database Myntra
create database Myntra;

-- to work on database, you need to use it first
use Myntra;

-- --------------------------------------------------------- Table Queries ----------------------------------------------


-- TABLE-1 customer (customer_,name,email,phone,city)
create table Customer(
customer_id INT PRIMARY KEY,
name VARCHAR(50),
email VARCHAR(50),
phone VARCHAR(50),
city VARCHAR(50)
);

insert into Customer
values
(1, 'Amit Sharma', 'amit@example.com', '9876543210', 'thane'),
(2, 'Priya Verma', 'priya@example.com', '9123456780', 'neral'),
(3, 'Rahul Mehta', 'rahul@example.com', '9988776655', 'Karjat'),
(4, 'Sneha Kapoor', 'sneha@example.com', '9876123456', 'dombivali'),
(5, 'Vikram Singh', 'vikram@example.com', '9765432109', 'kalyan');

-- to display table data
select * from Customer;

-- to remove complete records from table
truncate table Customer;

-- to remove complete records and attributes from table
drop table Customer;

-- TABLE-2 product (product_id,product_name,category,brand,price)
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    brand VARCHAR(50),
    price DECIMAL(10,2)
);

insert into Products
values
(101, 'Samsung Galaxy M12', 'Electronics', 'Samsung', 10999.00),
(102, 'Nike Running Shoes', 'Footwear', 'Nike', 4599.00),
(103, 'Levi\'s Jeans', 'Apparel', 'Levi\'s', 2999.00),
(104, 'Sony Headphones', 'Electronics', 'Sony', 3499.00),
(105, 'Prestige Pressure Cooker', 'Home & Kitchen', 'Prestige', 2499.00);

-- to display table data
select * from Products;

-- to remove complete records from table
truncate table Products;

-- to remove complete records and attributes from table
drop table Products;

-- TABLE-3 orders (order_id,customer_id,product_id,order_date,quantity)
CREATE TABLE Orders (
order_id INT PRIMARY KEY,
customer_id INT,
product_id INT,
order_date DATE,
quantity INT
);
    
insert into Orders
values
(1001, 1, 101, '2025-05-20', 1),
(1002, 2, 102, '2025-05-21', 2),
(1003, 3, 103, '2025-05-22', 1),
(1004, 4, 104, '2025-05-23', 1),
(1005, 5, 105, '2025-05-24', 3);

-- to display table data
select * from Orders;

-- to remove complete records from table
truncate table Orders;

-- to remove complete records and attributes from table
drop table Orders;

-- TABLE-4 payments (payment_id,order_id,payment_date,payment_method,payment_status)
CREATE TABLE Payments (
payment_id INT PRIMARY KEY,
order_id INT,
payment_date DATE,
payment_method VARCHAR(50),
payment_status VARCHAR(20)
);
    
insert into Payments
values
(501, 1001, '2025-05-20', 'Credit Card', 'Completed'),
(502, 1002, '2025-05-21', 'UPI', 'Completed'),
(503, 1003, '2025-05-22', 'Net Banking', 'Pending'),
(504, 1004, '2025-05-23', 'Debit Card', 'Completed'),
(505, 1005, '2025-05-24', 'Cash on Delivery', 'Completed');

-- to display table data
select * from Payments;

-- to remove complete records from table
truncate table Payments;

-- to remove complete records and attributes from table
drop table Payments;

-- TABLE-5  shipping (shipping_id,order_id,shipping_date,delivery_status,shipping_provider)
CREATE TABLE Shipping (
shipping_id INT PRIMARY KEY,
order_id INT,
shipping_date DATE,
delivery_status VARCHAR(20),
shipping_provider VARCHAR(50)
);
    
insert into Shipping
values
(301, 1001, '2025-05-21', 'Delivered', 'Ekart'),
(302, 1002, '2025-05-22', 'Shipped', 'Delhivery'),
(303, 1003, '2025-05-23', 'Processing', 'Blue Dart'),
(304, 1004, '2025-05-24', 'Delivered', 'FedEx'),
(305, 1005, '2025-05-25', 'Shipped', 'Ekart');

-- to display table data
select * from Shipping;

-- to remove complete records from table
truncate table Shipping;

-- to remove complete records and attributes from table
drop table Shipping;

-- --------------------------------------------------- Analysis of Database ------------------------------------------------
/*-
Database Name --> amazon

Tables -->

1. customer (customer_,name,email,phone,city)
2. product (product_id,product_name,category,brand,price)
3. orders (order_id,customer_id,product_id,order_date,quantity)
4. payments (payment_id,order_id,payment_date,payment_method,payment_status)
5. shipping (shipping_id,order_id,shipping_date,delivery_status,shipping_provider)
*/
   
   -- ---------------------------------------- Database queries ---------------------------------------------------------
   
-- create a database Amazon
create database Amazon;

-- to work on database, you need to use it first
use Amazon;

-- --------------------------------------------------------- Table Queries ---------------------------------------------- 

-- TABLE-1 customer (customer_,name,email,phone,city)
create table Customer(
customer_id INT PRIMARY KEY,
name VARCHAR(50),
email VARCHAR(50),
phone VARCHAR(50),
city VARCHAR(50)
);

insert into Customer
values
(1, 'Amit Sharma', 'amit@example.com', '9876543210', 'thane'),
(2, 'Priya Verma', 'priya@example.com', '9123456780', 'neral'),
(3, 'Rahul Mehta', 'rahul@example.com', '9988776655', 'Karjat'),
(4, 'Sneha Kapoor', 'sneha@example.com', '9876123456', 'dombivali'),
(5, 'Vikram Singh', 'vikram@example.com', '9765432109', 'kalyan');

-- to display table data
select * from Customer;

-- to remove complete records from table
truncate table Customer;

-- to remove complete records and attributes from table
drop table Customer;

-- TABLE-2 product (product_id,product_name,category,brand,price)
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    brand VARCHAR(50),
    price DECIMAL(10,2)
);

insert into Products
values
(101, 'Samsung Galaxy M12', 'Electronics', 'Samsung', 10999.00),
(102, 'Nike Running Shoes', 'Footwear', 'Nike', 4599.00),
(103, 'Levi\'s Jeans', 'Apparel', 'Levi\'s', 2999.00),
(104, 'Sony Headphones', 'Electronics', 'Sony', 3499.00),
(105, 'Prestige Pressure Cooker', 'Home & Kitchen', 'Prestige', 2499.00);

-- to display table data
select * from Products;

-- to remove complete records from table
truncate table Products;

-- to remove complete records and attributes from table
drop table Products;

-- TABLE-3 orders (order_id,customer_id,product_id,order_date,quantity)
CREATE TABLE Orders (
order_id INT PRIMARY KEY,
customer_id INT,
product_id INT,
order_date DATE,
quantity INT
);
    
insert into Orders
values
(1001, 1, 101, '2025-05-20', 1),
(1002, 2, 102, '2025-05-21', 2),
(1003, 3, 103, '2025-05-22', 1),
(1004, 4, 104, '2025-05-23', 1),
(1005, 5, 105, '2025-05-24', 3);

-- to display table data
select * from Orders;

-- to remove complete records from table
truncate table Orders;

-- to remove complete records and attributes from table
drop table Orders;

-- TABLE-4 payments (payment_id,order_id,payment_date,payment_method,payment_status)
CREATE TABLE Payments (
payment_id INT PRIMARY KEY,
order_id INT,
payment_date DATE,
payment_method VARCHAR(50),
payment_status VARCHAR(20)
);
    
insert into Payments
values
(501, 1001, '2025-05-20', 'Credit Card', 'Completed'),
(502, 1002, '2025-05-21', 'UPI', 'Completed'),
(503, 1003, '2025-05-22', 'Net Banking', 'Pending'),
(504, 1004, '2025-05-23', 'Debit Card', 'Completed'),
(505, 1005, '2025-05-24', 'Cash on Delivery', 'Completed');

-- to display table data
select * from Payments;

-- to remove complete records from table
truncate table Payments;

-- to remove complete records and attributes from table
drop table Payments;

-- TABLE-5  shipping (shipping_id,order_id,shipping_date,delivery_status,shipping_provider)
CREATE TABLE Shipping (
shipping_id INT PRIMARY KEY,
order_id INT,
shipping_date DATE,
delivery_status VARCHAR(20),
shipping_provider VARCHAR(50)
);
    
insert into Shipping
values
(301, 1001, '2025-05-21', 'Delivered', 'Ekart'),
(302, 1002, '2025-05-22', 'Shipped', 'Delhivery'),
(303, 1003, '2025-05-23', 'Processing', 'Blue Dart'),
(304, 1004, '2025-05-24', 'Delivered', 'FedEx'),
(305, 1005, '2025-05-25', 'Shipped', 'Ekart');

-- to display table data
select * from Shipping;

-- to remove complete records from table
truncate table Shipping;

-- to remove complete records and attributes from table
drop table Shipping;

-- --------------------------------------------------- Analysis of Database ------------------------------------------------
/*-
Database Name --> library3

Tables -->

1. books (book_id,title,author,genre,publisher)
2. members (member_id,name,email,phone,location)
3. loans (loan_id,member_id,book_id,loandate,returndate)
4. librarybranches (branch-id,branchname,address,city,state)
5. bookcopies (book_id,branch_id,no of book)
*/
   
   -- ---------------------------------------- Database queries ---------------------------------------------------------

-- create a database library3
create database Library3;

-- to work on database, you need to use it first
use Library3;

-- --------------------------------------------------------- Table Queries ---------------------------------------------- 


CREATE TABLE Books (
BookID INT PRIMARY KEY,
Title VARCHAR(255) NOT NULL,
Author VARCHAR(255) NOT NULL,
Genre VARCHAR(100),
PublishedYear INT
);

insert into Books
values
(1, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Classic', 1925),
(2, 'To Kill a Mockingbird', 'Harper Lee', 'Fiction', 1960),
(3, '1984', 'George Orwell', 'Dystopian', 1949),
(4, 'Pride and Prejudice', 'Jane Austen', 'Romance', 1813),
(5, 'The Catcher in the Rye', 'J.D. Salinger', 'Fiction', 1951);

-- to display table data
select * from Books;

-- to remove complete records from table
truncate table Books;

-- to remove complete records and attributes from table
drop table Books;

CREATE TABLE Members (
    MemberID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(15),
    JoinDate DATE
);

insert into Members
values
(101, 'Alice Johnson', 'alice@example.com', '123-456-7890', '2023-01-15'),
(102, 'Bob Smith', 'bob@example.com', '234-567-8901', '2023-02-20'),
(103, 'Charlie Brown', 'charlie@example.com', '345-678-9012', '2023-03-25'),
(104, 'Diana Prince', 'diana@example.com', '456-789-0123', '2023-04-30'),
(105, 'Ethan Hunt', 'ethan@example.com', '567-890-1234', '2023-05-10');

-- to display table data
select * from Members;

-- to remove complete records from table
truncate table Members;

-- to remove complete records and attributes from table
drop table Members;

CREATE TABLE Loans (
    LoanID INT PRIMARY KEY,
    MemberID INT,
    BookID INT,
    LoanDate DATE,
    ReturnDate DATE
    );
    
insert into Loans
values
(1001, 101, 1, '2023-06-01', '2023-06-15'),
(1002, 102, 2, '2023-06-05', '2023-06-19'),
(1003, 103, 3, '2023-06-10', '2023-06-24'),
(1004, 104, 4, '2023-06-15', '2023-06-29'),
(1005, 105, 5, '2023-06-20', '2023-07-04');

-- to display table data
select * from Loans;

-- to remove complete records from table
truncate table Loans;

-- to remove complete records and attributes from table
drop table Loans;

CREATE TABLE LibraryBranches (
    BranchID INT PRIMARY KEY,
    BranchName VARCHAR(100) NOT NULL,
    Address VARCHAR(255),
    City VARCHAR(100),
    State VARCHAR(100)
);

insert into LibraryBranches
values
(1, 'Central Library', '123 Main St', 'Mumbai', 'Maharashtra'),
(2, 'Eastside Branch', '456 East St', 'Mumbai', 'Maharashtra'),
(3, 'Westside Branch', '789 West St', 'Mumbai', 'Maharashtra'),
(4, 'Northside Branch', '321 North St', 'Mumbai', 'Maharashtra'),
(5, 'Southside Branch', '654 South St', 'Mumbai', 'Maharashtra');

-- to display table data
select * from LibraryBranches;

-- to remove complete records from table
truncate table LibraryBranches;

-- to remove complete records and attributes from table
drop table LibraryBranches;

CREATE TABLE BookCopies (
    BookID INT,
    BranchID INT,
    NoOfCopies INT,
    PRIMARY KEY (BookID, BranchID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (BranchID) REFERENCES LibraryBranches(BranchID)
);

insert into BookCopies
values
(1, 1, 5),
(2, 1, 3),
(3, 2, 4),
(4, 3, 2),
(5, 4, 6);

-- to display table data
select * from BookCopies;

-- to remove complete records from table
truncate table BookCopies;

-- to remove complete records and attributes from table
drop table BookCopies;


-- --------------------------------------------------- Analysis of Database ------------------------------------------------
/*-
Database Name --> Bank

Tables -->

1. branch (branch_id,branch_name,branch_code,address,phone)
2. customer_id,first_name,last_name,email,phone)
3. account (account_id,customer_id,branch_id,account_type,balance)
4. loan (loan_id,customer_id,branch_id,loan_type,amount)
5. transaction (transaction_id,account_id,transaction_Date,transaction_type,amount)
*/
   
   -- ---------------------------------------- Database queries --------------------------------------------------------

-- create a database Bank
create database Bank;

-- to work on database, you need to use it first
use Bank;

-- --------------------------------------------------------- Table Queries ---------------------------------------------- 

-- TABLE-1 branch (branch_id,branch_name,branch_code,address,phone)
CREATE TABLE Branch (
    BranchID INT PRIMARY KEY,
    BranchName VARCHAR(100) NOT NULL,
    BranchCode VARCHAR(10) UNIQUE NOT NULL,
    Address VARCHAR(255),
    PhoneNumber VARCHAR(20)
);

insert into Branch
values
(1, 'Downtown Branch', 'DT001', '123 Main St, Mumbai', '022-12345678'),
(2, 'Uptown Branch', 'UT002', '456 High St, Mumbai', '022-87654321'),
(3, 'Suburban Branch', 'SB003', '789 Suburb Rd, Mumbai', '022-11223344'),
(4, 'Central Branch', 'CT004', '321 Central Ave, Mumbai', '022-44332211'),
(5, 'Eastside Branch', 'ES005', '654 East St, Mumbai', '022-55667788');

-- to display table data
select * from Branch;

-- to remove complete records from table
truncate table Branch;

-- to remove complete records and attributes from table
drop table Branch;

-- TABLE-2 customer_id,first_name,last_name,email,phone)
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50),
    Email VARCHAR(100) UNIQUE,
    PhoneNumber VARCHAR(15)
);

insert into Customer
values
(101, 'Alice', 'Johnson', 'alice.johnson@example.com', '9876543210'),
(102, 'Bob', 'Smith', 'bob.smith@example.com', '8765432109'),
(103, 'Charlie', 'Brown', 'charlie.brown@example.com', '7654321098'),
(104, 'Diana', 'Prince', 'diana.prince@example.com', '6543210987'),
(105, 'Ethan', 'Hunt', 'ethan.hunt@example.com', '5432109876');

-- to display table data
select * from Customer;

-- to remove complete records from table
truncate table Customer;

-- to remove complete records and attributes from table
drop table Customer;

-- TABLE-3 account (account_id,customer_id,branch_id,account_type,balance)
CREATE TABLE Account (
    AccountID INT PRIMARY KEY,
    CustomerID INT,
    BranchID INT,
    AccountType VARCHAR(20),
    Balance DECIMAL(15, 2)
    );
    
insert into Account
values
(1001, 101, 1, 'Savings', 15000.00),
(1002, 102, 2, 'Checking', 25000.00),
(1003, 103, 3, 'Savings', 35000.00),
(1004, 104, 4, 'Checking', 45000.00),
(1005, 105, 5, 'Savings', 55000.00);

-- to display table data
select * from Account;

-- to remove complete records from table
truncate table Account;

-- to remove complete records and attributes from table
drop table Account;

-- TABLE-4 loan (loan_id,customer_id,branch_id,loan_type,amount)
CREATE TABLE Loan (
    LoanID INT PRIMARY KEY,
    CustomerID INT,
    BranchID INT,
    LoanType VARCHAR(20),
    Amount DECIMAL(15, 2)
    );
    
insert into Loan
values
(2001, 101, 1, 'Home', 500000.00),
(2002, 102, 2, 'Car', 300000.00),
(2003, 103, 3, 'Personal', 200000.00),
(2004, 104, 4, 'Education', 400000.00),
(2005, 105, 5, 'Business', 600000.00);

-- to display table data
select * from Loan;

-- to remove complete records from table
truncate table Loan;

-- to remove complete records and attributes from table
drop table Loan;

-- TABLE-5 transaction (transaction_id,account_id,transaction_Date,transaction_type,amount)
CREATE TABLE Transaction (
    TransactionID INT PRIMARY KEY,
    AccountID INT,
    TransactionDate DATE,
    TransactionType VARCHAR(20),
    Amount DECIMAL(15, 2)
    );
    
insert into Transaction
values
(3001, 1001, '2025-06-01', 'Deposit', 5000.00),
(3002, 1002, '2025-06-02', 'Withdrawal', 2000.00),
(3003, 1003, '2025-06-03', 'Deposit', 3000.00),
(3004, 1004, '2025-06-04', 'Withdrawal', 1500.00),
(3005, 1005, '2025-06-05', 'Deposit', 4000.00);

-- to display table data
select * from Transaction;

-- to remove complete records from table
truncate table Transaction;

-- to remove complete records and attributes from table
drop table Transaction;

-- --------------------------------------------------- Analysis of Database ------------------------------------------------
/*-
Database Name --> cinema

Tables -->

1. movies (movies_id,title,genre,duration,releasedate)
2. theaters (theatres_id,location,totalseats,managername)
3. showtimes (shiwtime_id,movie_id,theater_id,showdate,showtime)
4. tickets (ticket_id,showtime_id,,seatnumber,price,purchasedate)
5. customer (customer_id,first_name,last_name,email,phone)
*/
   
   -- ---------------------------------------- Database queries -------------------------------------------------------
   
   
-- create a database cinema
create database Cinema;

-- to work on database, you need to use it first
use Cinema;

-- --------------------------------------------------------- Table Queries --------------------------------------------------------

-- TABLE-1 movies (movies_id,title,genre,duration,releasedate)
CREATE TABLE Movies (
    MovieID INT PRIMARY KEY,
    Title VARCHAR(100) NOT NULL,
    Genre VARCHAR(50),
    Duration INT, -- Duration in minutes
    ReleaseDate DATE
);

insert into Movies
values
(1, 'Inception', 'Sci-Fi', 148, '2010-07-16'),
(2, 'The Dark Knight', 'Action', 152, '2008-07-18'),
(3, 'Interstellar', 'Sci-Fi', 169, '2014-11-07'),
(4, 'Parasite', 'Thriller', 132, '2019-05-30'),
(5, 'The Godfather', 'Crime', 175, '1972-03-24');

-- to display table data
select * from Movies;

-- to remove complete records from table
truncate table Movies;

-- to remove complete records and attributes from table
drop table Movies;

-- TABLE-2 theaters (theatres_id,location,totalseats,managername)
CREATE TABLE Theaters (
    TheaterID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Location VARCHAR(100),
    TotalSeats INT,
    ManagerName VARCHAR(100)
);

insert into Theaters
values
(1, 'Regal Cinemas', 'Mumbai', 200, 'Rajesh Kumar'),
(2, 'PVR Cinemas', 'Delhi', 250, 'Anita Sharma'),
(3, 'INOX', 'Bangalore', 180, 'Suresh Menon'),
(4, 'Cinepolis', 'Hyderabad', 220, 'Priya Reddy'),
(5, 'Carnival Cinemas', 'Chennai', 150, 'Arun Das');

-- to display table data
select * from Theaters;

-- to remove complete records from table
truncate table Theaters;

-- to remove complete records and attributes from table
drop table Theaters;

-- TABLE-3 showtimes (shiwtime_id,movie_id,theater_id,showdate,showtime)
CREATE TABLE Showtimes (
    ShowtimeID INT PRIMARY KEY,
    MovieID INT,
    TheaterID INT,
    ShowDate DATE,
    ShowTime TIME
    );
    
insert into Showtimes
values
(1, 1, 1, '2025-06-03', '18:00:00'),
(2, 2, 2, '2025-06-03', '20:00:00'),
(3, 3, 3, '2025-06-04', '17:30:00'),
(4, 4, 4, '2025-06-04', '19:00:00'),
(5, 5, 5, '2025-06-05', '21:00:00');

-- to display table data
select * from Showtimes;

-- to remove complete records from table
truncate table Showtimes;

-- to remove complete records and attributes from table
drop table Showtimes;

-- TABLE-4 tickets (ticket_id,showtime_id,,seatnumber,price,purchasedate)
CREATE TABLE Tickets (
    TicketID INT PRIMARY KEY,
    ShowtimeID INT,
    SeatNumber VARCHAR(10),
    Price DECIMAL(6,2),
    PurchaseDate DATE
    );
    
insert into Tickets
values
(1, 1, 'A1', 250.00, '2025-06-01'),
(2, 2, 'B2', 300.00, '2025-06-01'),
(3, 3, 'C3', 200.00, '2025-06-02'),
(4, 4, 'D4', 220.00, '2025-06-02'),
(5, 5, 'E5', 180.00, '2025-06-03');

-- to display table data
select * from Tickets;

-- to remove complete records from table
truncate table Tickets;

-- to remove complete records and attributes from table
drop table Tickets;

-- TABLE-5 customer (customer_id,first_name,last_name,email,phone)
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(15)
);

insert into Customers
values
(1, 'Amit', 'Shah', 'amit.shah@example.com', '9876543210'),
(2, 'Sneha', 'Patel', 'sneha.patel@example.com', '8765432109'),
(3, 'Rahul', 'Verma', 'rahul.verma@example.com', '7654321098'),
(4, 'Priya', 'Singh', 'priya.singh@example.com', '6543210987'),
(5, 'Karan', 'Mehta', 'karan.mehta@example.com', '5432109876');

-- to display table data
select * from Customers;

-- to remove complete records from table
truncate table Customers;

-- to remove complete records and attributes from table
drop table Customers;


-- --------------------------------------------------- Analysis of Database ------------------------------------------------
/*-
Database Name --> Birthdayparty

Tables -->

1. parties (party_id,partyname,hostname,partydate,location)
2. guests (guest_id,part_id,guestname,RSVPSstatus,contactnumber)
3. gifts (gift_id,party_id,partyname,giftdiscription,giftvalue)
4. menu (menu_id,party_id,itemname,itemtype,quantity)
5. activities (activity_id,party_id,activityname,activitytype,durationminute)
*/
   
   -- ---------------------------------------- Database queries -------------------------------------------------------
   
-- create a database Birthdayparty
create database Birthdayparty;

-- to work on database, you need to use it first
use Birthdayparty;

-- --------------------------------------------------------- Table Queries --------------------------------------------------------

-- TABLE-1 parties (party_id,partyname,hostname,partydate,location)
CREATE TABLE Parties (
    PartyID INT PRIMARY KEY,
    PartyName VARCHAR(100) NOT NULL,
    HostName VARCHAR(100),
    PartyDate DATE,
    Location VARCHAR(255)
);

insert into Parties
values
(1, 'Alice\'s 10th Birthday', 'Alice Johnson', '2025-06-10', 'Mumbai'),
(2, 'Bob\'s 5th Birthday', 'Bob Smith', '2025-07-15', 'Delhi'),
(3, 'Charlie\'s 8th Birthday', 'Charlie Brown', '2025-08-20', 'Bangalore'),
(4, 'Diana\'s 12th Birthday', 'Diana Prince', '2025-09-25', 'Hyderabad'),
(5, 'Ethan\'s 7th Birthday', 'Ethan Hunt', '2025-10-30', 'Chennai');

-- to display table data
select * from Parties;

-- to remove complete records from table
truncate table Parties;

-- to remove complete records and attributes from table
drop table Parties;

-- TABLE-2  guests (guest_id,part_id,guestname,RSVPSstatus,contactnumber)
CREATE TABLE Guests (
    GuestID INT PRIMARY KEY,
    PartyID INT,
    GuestName VARCHAR(100) NOT NULL,
    RSVPStatus VARCHAR(20),
    ContactNumber VARCHAR(15)
    );
    
insert into Guests
values
(101, 1, 'John Doe', 'Accepted', '9876543210'),
(102, 2, 'Jane Smith', 'Pending', '8765432109'),
(103, 3, 'Emily Davis', 'Declined', '7654321098'),
(104, 4, 'Michael Brown', 'Accepted', '6543210987'),
(105, 5, 'Sarah Wilson', 'Accepted', '5432109876');

-- to display table data
select * from Guests;

-- to remove complete records from table
truncate table Guests;

-- to remove complete records and attributes from table
drop table Guests;

-- TABLE-3 gifts (gift_id,party_id,partyname,giftdiscription,giftvalue)
CREATE TABLE Gifts (
    GiftID INT PRIMARY KEY,
    PartyID INT,
    GiftName VARCHAR(100),
    GiftDescription VARCHAR(255),
    GiftValue DECIMAL(10,2)
    );
    
insert into Gifts
values
(201, 1, 'Toy Car', 'Remote-controlled car', 1500.00),
(202, 2, 'Story Book', 'Collection of fairy tales', 500.00),
(203, 3, 'Lego Set', 'Building blocks set', 2000.00),
(204, 4, 'Board Game', 'Monopoly game set', 1200.00),
(205, 5, 'Puzzle', '1000-piece jigsaw puzzle', 800.00);

-- to display table data
select * from Gifts;

-- to remove complete records from table
truncate table Gifts;

-- to remove complete records and attributes from table
drop table Gifts;

-- TABLE-4  menu (menu_id,party_id,itemname,itemtype,quantity)
CREATE TABLE Menu (
    MenuID INT PRIMARY KEY,
    PartyID INT,
    ItemName VARCHAR(100),
    ItemType VARCHAR(50),
    Quantity INT
    );
    
insert into Menu
values
(301, 1, 'Chocolate Cake', 'Dessert', 1),
(302, 2, 'Pizza', 'Main Course', 5),
(303, 3, 'Sandwiches', 'Snack', 20),
(304, 4, 'Ice Cream', 'Dessert', 10),
(305, 5, 'Pasta', 'Main Course', 4);

-- to display table data
select * from Menu;

-- to remove complete records from table
truncate table Menu;

-- to remove complete records and attributes from table
drop table Menu;

-- TABLE-5 activities (activity_id,party_id,activityname,activitytype,durationminute)
CREATE TABLE Activities (
    ActivityID INT PRIMARY KEY,
    PartyID INT,
    ActivityName VARCHAR(100),
    ActivityType VARCHAR(50),
    DurationMinutes INT
    );
    
insert into Activities
values
(401, 1, 'Magic Show', 'Entertainment', 60),
(402, 2, 'Balloon Games', 'Game', 30),
(403, 3, 'Face Painting', 'Art', 45),
(404, 4, 'Dance Party', 'Entertainment', 90),
(405, 5, 'Treasure Hunt', 'Game', 60);

-- to display table data
select * from Activities;

-- to remove complete records from table
truncate table Activities;

-- to remove complete records and attributes from table
drop table Activities;


-- --------------------------------------------------- Analysis of Database ------------------------------------------------
/*
Database Name --> AIRLINE

Tables -->

1. airline (id, name, country, year, size)
2.airport (id, name, city, country, code)
3.flight1 (flight_id, Airline_id, Originairport_id,Destinationairpport_id ,Flightnumber)
4. Passenger ( Passenger_id, FirstName, LastName , date, Gender )
5.  Booking (BookingID,  PassengerID, FlightID, BookingDate, SeatClass)
*/

 -- ---------------------------------------- Database queries ---------------------------------------------------------
-- create a database AIRLINE
CREATE DATABASE AIRLINE;

-- to work on database, you need to use it first
USE AIRLINE;

  -- --------------------------------------------------------- Table Queries ----------------------------------------------

-- TABLE 1 airline 
CREATE TABLE Airline (
    AirlineID INT PRIMARY KEY,
    AirlineName VARCHAR(100),
    Country VARCHAR(100),
    EstablishedYear INT,
    FleetSize INT
);

-- insert value in a table
INSERT INTO Airline (id, name, country, year, size)
VALUES
    (1, 'Air India', 'India', 1932, 150),
    (2, 'IndiGo', 'India', 2006, 280),
    (3, 'SpiceJet', 'India', 2005, 130),
    (4, 'GoAir', 'India', 2005, 60),
    (5, 'Vistara', 'India', 2013, 50);
    
    -- to display table data
    select * from Airline;
    
    -- to reamove complete records from table
    truncate table Airline;
    
    -- to remove complete records and attribute from table
    drop table Airline;
    
    
   -- Table 2  Airport 
CREATE TABLE Airport (
    AirportID INT PRIMARY KEY,
    AirportName VARCHAR(100),
    City VARCHAR(100),
    Country VARCHAR(100),
    IATA_Code VARCHAR(3)
);

-- insert value in a table
INSERT INTO Airport (id, name, city, country, code)
VALUES
    (1, 'Indira Gandhi International Airport', 'Delhi', 'India', 'DEL'),
    (2, 'Chhatrapati Shivaji Maharaj International Airport', 'Mumbai', 'India', 'BOM'),
    (3, 'Kempegowda International Airport', 'Bangalore', 'India', 'BLR'),
    (4, 'Netaji Subhas Chandra Bose International Airport', 'Kolkata', 'India', 'CCU'),
    (5, 'Chennai International Airport', 'Chennai', 'India', 'MAA');
   
   -- to display table data
    select * from Airport;
   
   -- to reamove complete records from table
   truncate table Airport;
    
    -- to remove complete records and attribute from table
    drop table Airport;
    
    
    -- Table 3 Flight1 
  CREATE TABLE Flight1 (
  flight_id INT PRIMARY KEY,
 Airline_id INT,
  Originairport_id INT,
  Destinationairpport_id INT,
  Flightnumber VARCHAR(10)
  );
  
  -- insert value in a table
 INSERT INTO Flight1 (flight_id, Airline_id, Originairport_id,Destinationairpport_id ,Flightnumber)
VALUES
    (1, 1, 1, 2, 'AI202'),
    (2, 2, 2, 3, '6E303'),
    (3, 3, 3, 4, 'SG404'),
    (4, 4, 4, 5, 'G505'),
    (5, 5, 5, 1, 'UK606');
    
   -- to display table data
    select * from Flight1;
    
    -- to reamove complete records from table
    truncate table Flight1;
    
   -- to remove complete records and attribute from table
    drop table Flight1;
    
    -- Table 4 Passenger 
    CREATE TABLE Passenger (
    PassengerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Gender CHAR(1)
);

 -- insert value in a table
INSERT INTO Passenger  ( Passenger_id, FirstName, LastName , date, Gender )
values
    (1, 'John', 'Doe', '1985-06-15', 'M'),
    (2, 'Jane', 'Smith', '1990-07-20', 'F'),
    (3, 'Robert', 'Johnson', '1978-03-25', 'M'),
    (4, 'Emily', 'Davis', '1995-11-30', 'F'),
    (5, 'Michael', 'Miller', '1982-01-10', 'M');

 -- to display table data
    select * from Passenger;
    
   -- to reamove complete records from table
   truncate table Passenger;
   
    -- to remove complete records and attribute from table
   drop table Passenger;
    
    -- Table 5  Booking
    CREATE TABLE Booking (
    BookingID INT PRIMARY KEY,
    PassengerID INT,
    FlightID INT,
    BookingDate DATE,
    SeatClass VARCHAR(20)
    );
    
-- insert value in a table
INSERT INTO Booking  (BookingID,  PassengerID, FlightID, BookingDate, SeatClass)
VALUES
    (1, 1, 1, '2025-06-01', 'Economy'),
    (2, 2, 2, '2025-06-02', 'Business'),
    (3, 3, 3, '2025-06-03', 'Economy'),
    (4, 4, 4, '2025-06-04', 'First Class'),
    (5, 5, 5, '2025-06-05', 'Economy');
 
    -- to display table data
    select * from Booking;
  
    -- to reamove complete records from table
  truncate table Booking;
   
    -- to remove complete records and attribute from table
   drop table Booking; 
    
    
   -- --------------------------------------------------- Analysis of Database ------------------------------------------------
/*
Database Name -->HOSPITALS

Tables -->

1. doctors (doctor_id, name, specialty, phone, hospital_id)
2. patients (patient_id, name, age,  gender,  Admission_date)
3. appointments (appointment_id ,patient_id ,doctor_id ,appointment_date,status )
4. departments (department_id ,name ,floor,head_doctor,hospital_id) 
5. Booking (BookingID,  PassengerID, FlightID, BookingDate, SeatClass)
*/

 -- ---------------------------------------- Database queries ---------------------------------------------------------
-- create a database  HOSPITALS
CREATE DATABASE  HOSPITALS;

-- to work on database, you need to use it first
USE  HOSPITALS;

  -- --------------------------------------------------------- Table Queries ----------------------------------------------
   
    -- Table 1 doctors 
   CREATE TABLE doctors (
    doctor_id INT PRIMARY KEY,
    name VARCHAR(100),
    specialty VARCHAR(100),
    phone VARCHAR(20),
    hospital_id INT
);

INSERT INTO doctors VALUES (doctor_id, name, specialty, phone, hospital_id)
(1, 'Dr. John Smith', 'Cardiology', '555-1234', 1),
(2, 'Dr. Jane Lee', 'Neurology', '555-5678', 2),
(3, 'Dr. Ahmed Khan', 'Orthopedics', '555-9012', 3),
(4, 'Dr. Maria Gomez', 'Pediatrics', '555-3456', 4),
(5, 'Dr. Chen Wei', 'Oncology', '555-7890', 5);

  -- to display table data
  select * from doctors;

  -- to reamove complete records from table
   truncate table doctors;
 
 -- to remove complete records and attribute from table
   drop table doctors;
   
  -- Table 2 patients 
  CREATE TABLE patients (
    patient_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
     Admission_date DATE
);

 -- insert value in a table
INSERT INTO patients VALUES (patient_id, name, age,  gender,  Admission_date)
(1, 'Alice Brown', 34, 'Female', '2025-05-20'),
(2, 'Bob Carter', 45, 'Male', '2025-05-21'),
(3, 'Clara Evans', 29, 'Female', '2025-05-22'),
(4, 'David Foster', 52, 'Male', '2025-05-23'),
(5, 'Eva Green', 60, 'Female', '2025-05-24');

 -- to display table data
select * from patients;

-- to reamove complete records from table
   truncate table patients;

-- to remove complete records and attribute from table
drop table patients;


-- Table 3 appointments 
    CREATE TABLE appointments (
    appointment_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    status VARCHAR(20)
);

-- insert value in a table
INSERT INTO appointments (appointment_id ,patient_id ,doctor_id ,appointment_date,status )
VALUES 
(1, 1, 1, '2025-06-01', 'Scheduled'),
(2, 2, 2, '2025-06-02', 'Completed'),
(3, 3, 3, '2025-06-03', 'Cancelled'),
(4, 4, 4, '2025-06-04', 'Scheduled'),
(5, 5, 5, '2025-06-05', 'Completed');

 -- to display table data
select * from appointments;

-- to reamove complete records from table
truncate table appointments;

-- to remove complete records and attribute from table
drop table appointments;


-- Table 4  departments 
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    name VARCHAR(100),
    floor INT,
    head_doctor VARCHAR(100),
    hospital_id INT
);

-- insert value in a table
INSERT INTO departments (department_id ,name ,floor,head_doctor,hospital_id) 
VALUES
(1, 'Cardiology', 2, 'Dr. John Smith', 1),
(2, 'Neurology', 3, 'Dr. Jane Lee', 2),
(3, 'Orthopedics', 1, 'Dr. Ahmed Khan', 3),
(4, 'Pediatrics', 2, 'Dr. Maria Gomez', 4),
(5, 'Oncology', 4, 'Dr. Chen Wei', 5);

-- to display table data
select * from departments;

-- to reamove complete records from table
truncate table departments;

-- to remove complete records and attribute from table
drop table departments;

  -- --------------------------------------------------- Analysis of Database ------------------------------------------------
/*
Database Name -->AMAZON

Tables -->

1.  users (user_id ,name, email ,password ,address ,phone )
2. Products ( product_id ,name ,description,price,stock_quantity ,category )
3. Orders (order_id ,user_id ,order_date ,total_amount,status ,shipping_address)
4. OrderItems (order_item_id ,order_id ,product_id ,quantity ,unit_price ,total_price )
5. Payments (payment_id ,order_id ,payment_date ,amount,payment_method ,payment_status)
*/

 -- ---------------------------------------- Database queries ---------------------------------------------------------
-- create a database AMAZON
CREATE DATABASE  AMAZON;

-- to work on database, you need to use it first
USE  AMAZON;

  -- --------------------------------------------------------- Table Queries ----------------------------------------------
   


-- Table 1 users (user_id ,name, email ,password ,address ,phone )
CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    password VARCHAR(100),
    address VARCHAR(255),
    phone VARCHAR(15)
);

-- insert value in a table
INSERT INTO Users VALUES
(1, 'Alice Johnson', 'alice@example.com', 'alice123', '123 Main St, Mumbai', '9876543210'),
(2, 'Bob Smith', 'bob@example.com', 'bob123', '456 Park Ave, Delhi', '9123456780'),
(3, 'Charlie Brown', 'charlie@example.com', 'charlie123', '789 Elm St, Bangalore', '9988776655'),
(4, 'Diana Prince', 'diana@example.com', 'diana123', '321 Oak St, Hyderabad', '9871234560'),
(5, 'Ethan Hunt', 'ethan@example.com', 'ethan123', '654 Pine St, Chennai', '9765432109');

-- to display table data
select * from Users;

-- to reamove complete records from table
truncate table Users;

-- to remove complete records and attribute from table
drop table Users;


-- Table 2 Products ( product_id ,name ,description,price,stock_quantity ,category )
CREATE TABLE Products ( 
    product_id INT PRIMARY KEY,
    name VARCHAR(100),
    description TEXT,
    price DECIMAL(10,2),
    stock_quantity INT,
    category VARCHAR(50)
);

-- insert value in a table
INSERT INTO Products VALUES
(101, 'Wireless Mouse', 'Ergonomic wireless mouse', 25.99, 100, 'Electronics'),
(102, 'Bluetooth Headphones', 'Noise-cancelling over-ear headphones', 89.99, 50, 'Electronics'),
(103, 'Coffee Maker', '12-cup programmable coffee maker', 49.99, 30, 'Home Appliances'),
(104, 'Yoga Mat', 'Non-slip yoga mat', 19.99, 200, 'Fitness'),
(105, 'Smartphone', 'Latest model smartphone with 128GB storage', 699.99, 25, 'Electronics');

-- to display table data
select * from Products;

-- to reamove complete records from table
truncate table Products;

-- to remove complete records and attribute from table
drop table Products;

-- Table 3 Orders (order_id ,user_id ,order_date ,total_amount,status ,shipping_address)
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    user_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    status VARCHAR(20),
    shipping_address VARCHAR(255)
);

-- insert value in a table
INSERT INTO Orders VALUES
(1001, 1, '2025-06-01', 115.98, 'Shipped', '123 Main St, Mumbai'),
(1002, 2, '2025-06-02', 49.99, 'Processing', '456 Park Ave, Delhi'),
(1003, 3, '2025-06-03', 19.99, 'Delivered', '789 Elm St, Bangalore'),
(1004, 4, '2025-06-04', 699.99, 'Cancelled', '321 Oak St, Hyderabad'),
(1005, 5, '2025-06-05', 25.99, 'Shipped', '654 Pine St, Chennai');

select * from Orders;

truncate table Orders;

-- to remove complete records and attribute from table
drop table Orders;

 
 CREATE TABLE OrderItems (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    unit_price DECIMAL(10,2),
    total_price DECIMAL(10,2)
);
-- insert value in a table
INSERT INTO OrderItems  (order_item_id ,order_id ,product_id ,quantity ,unit_price ,total_price )
 values 
(1, 1001, 101, 2, 25.99, 51.98),
(2, 1001, 102, 1, 89.99, 89.99),
(3, 1002, 103, 1, 49.99, 49.99),
(4, 1003, 104, 1, 19.99, 19.99),
(5, 1004, 105, 1, 699.99, 699.99);

-- to display table data
select * from OrderItems;

truncate table  OrderItems;

-- to remove complete records and attribute from table
drop table  OrderItems;

CREATE TABLE Payments (
    payment_id INT PRIMARY KEY,
    order_id INT,
    payment_date DATE,
    amount DECIMAL(10,2),
    payment_method VARCHAR(50),
    payment_status VARCHAR(20)
);
-- insert value in a table
INSERT INTO Payments (payment_id ,order_id ,payment_date ,amount,payment_method ,payment_status)
VALUES
(501, 1001, '2025-06-01', 115.98, 'Credit Card', 'Completed'),
(502, 1002, '2025-06-02', 49.99, 'PayPal', 'Pending'),
(503, 1003, '2025-06-03', 19.99, 'Debit Card', 'Completed'),
(504, 1004, '2025-06-04', 699.99, 'Credit Card', 'Refunded'),
(505, 1005, '2025-06-05', 25.99, 'UPI', 'Completed');

-- to display table data
select * from  Payments;

-- to reamove complete records from table
truncate table  Payments;

-- to remove complete records and attribute from table
drop table  Payments;

CREATE TABLE Reviews (
    review_id INT PRIMARY KEY,
    user_id INT,
    product_id INT,
    rating INT,
    comment TEXT,
    review_date DATE
);
-- insert value in a table
INSERT INTO Reviews VALUES
(901, 1, 101, 5, 'Great mouse, very comfortable!', '2025-06-02'),
(902, 2, 102, 4, 'Good sound quality.', '2025-06-03'),
(903, 3, 103, 3, 'Decent coffee maker.', '2025-06-04'),
(904, 4, 104, 5, 'Excellent yoga mat!', '2025-06-05'),
(905, 5, 105, 2, 'Battery life could be better.', '2025-06-06');

-- to display table data
select * from  Reviews;

-- to reamove complete records from table
truncate table  Reviews;

-- to remove complete records and attribute from table
drop table  Reviews;

-- --------------------------------------------------- Analysis of Database ------------------------------------------------
/*
Database Name -->UBER

Tables -->

1. rides (ride_id, driver_name, passenger_name, pickup_location, drop_location)
2.  driver(driver_id , name ,phone ,email ,license_number ,rating )
3. passengers (passenger_id ,name,phone ,email,gender ,age )
4   payments (payment_id ,ride_id ,amount ,method ,status,paid_on)
5. feedback ( feedback_id ,ride_id ,passenger_id ,driver_id,rating ,comment)
 */


 -- ---------------------------------------- Database queries ---------------------------------------------------------
-- create a database UBER
CREATE DATABASE  UBER;

-- to work on database, you need to use it first
USE  UBER;

  -- --------------------------------------------------------- Table Queries ----------------------------------------------
   


-- TABLE 4

create database UBER;
use UBER;

CREATE TABLE rides (
    ride_id INT PRIMARY KEY,
    driver_name VARCHAR(50),
    passenger_name VARCHAR(50),
    pickup_location VARCHAR(100),
    drop_location VARCHAR(100)
);

INSERT INTO rides (ride_id, driver_name, passenger_name, pickup_location, drop_location) VALUES
(1, 'Amit Sharma', 'Ravi Verma', 'Andheri', 'Bandra'),
(2, 'Sunita Desai', 'Neha Kapoor', 'Powai', 'Dadar'),
(3, 'Rakesh Mehta', 'Anil Joshi', 'Borivali', 'Churchgate'),
(4, 'Kiran Yadav', 'Pooja Jain', 'Thane', 'Vashi'),
(5, 'Priya Singh', 'Raj Malhotra', 'Kandivali', 'Colaba');

-- to display table data
select * from rides ;

-- to reamove complete records from table
truncate table rides;

-- to remove complete records and attribute from table
drop table rides;


CREATE TABLE driver(
    driver_id INT PRIMARY KEY,
    name VARCHAR(50),
    phone VARCHAR(15),
    email VARCHAR(50),
    license_number VARCHAR(20),
    rating DECIMAL(2,1)
);
-- insert value in a table
INSERT INTO  driver(driver_id , name ,phone ,email ,license_number ,rating )
 VALUES
(101, 'Amit Sharma', '9876543210', 'amit@uber.com', 'MH12ABC1234', 4.8),
(102, 'Sunita Desai', '9876543211', 'sunita@uber.com', 'MH14XYZ5678', 4.5),
(103, 'Rakesh Mehta', '9876543212', 'rakesh@uber.com', 'MH01LMN9123', 4.9),
(104, 'Kiran Yadav', '9876543213', 'kiran@uber.com', 'MH02OPQ4567', 4.6),
(105, 'Priya Singh', '9876543214', 'priya@uber.com', 'MH15DEF7890', 4.7),
(106, 'Farhan Khan', '9876543215', 'farhan@uber.com', 'MH18TUV3333', 4.4);

-- to display table data
select * from  drivers;

-- to reamove complete records from table
truncate table driver;

-- to remove complete records and attribute from table
drop table driver;

CREATE TABLE passengers (
    passenger_id INT PRIMARY KEY,
    name VARCHAR(50),
    phone VARCHAR(15),
    email VARCHAR(50),
    gender VARCHAR(10),
    age INT
);
-- insert value in a table
INSERT INTO passengers (passenger_id ,name,phone ,email,gender ,age )
 VALUES
(201, 'Ravi Verma', '8888888880', 'ravi@uber.com', 'Male', 28),
(202, 'Neha Kapoor', '8888888881', 'neha@uber.com', 'Female', 32),
(203, 'Anil Joshi', '8888888882', 'anil@uber.com', 'Male', 45),
(204, 'Pooja Jain', '8888888883', 'pooja@uber.com', 'Female', 26),
(205, 'Raj Malhotra', '8888888884', 'raj@uber.com', 'Male', 30),
(206, 'Anita Das', '8888888885', 'anita@uber.com', 'Female', 27);

-- to display table data
select * from passengers;

-- to reamove complete records from table
truncate table passengers

-- to remove complete records and attribute from table
drop table passengers;


CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    ride_id INT,
    amount DECIMAL(8,2),
    method VARCHAR(20),
    status VARCHAR(20),
    paid_on DATE
);
-- insert value in a table
INSERT INTO payments (payment_id ,ride_id ,amount ,method ,status,paid_on)
VALUES
(301, 1, 350.00, 'UPI', 'Completed', '2025-06-01'),
(302, 2, 290.00, 'Cash', 'Completed', '2025-06-02'),
(303, 3, 410.50, 'Card', 'Completed', '2025-06-03'),
(304, 4, 500.00, 'Wallet', 'Completed', '2025-06-04'),
(305, 5, 150.00, 'UPI', 'Completed', '2025-06-05'),
(306, 6, 275.75, 'Card', 'Completed', '2025-06-06');

-- to display table data
select * from  Payments;

-- to reamove complete records from table
truncate table  Payments;

-- to remove complete records and attribute from table
drop table  Payments;


CREATE TABLE feedback (
    feedback_id INT PRIMARY KEY,
    ride_id INT,
    passenger_id INT,
    driver_id INT,
    rating INT,
    comment VARCHAR(255)
);
-- insert value in a table
INSERT INTO feedback ( feedback_id ,ride_id ,passenger_id ,driver_id,rating ,comment)
 VALUES
(1, 1, 201, 101, 5, 'Great ride and polite driver'),
(2, 2, 202, 102, 4, 'Smooth experience'),
(3, 3, 203, 103, 5, 'Very professional'),
(4, 4, 204, 104, 3, 'Driver was late'),
(5, 5, 205, 105, 4, 'Clean car and friendly'),
(6, 6, 206, 106, 5, 'Excellent service!');

-- to display table data
select * from feedback;

-- to reamove complete records from table
truncate table feedback;

-- to remove complete records and attribute from table
drop table feedback;


-- --------------------------------------------------- Analysis of Database ------------------------------------------------
/*
Database Name -->RAILWAY

Tables -->

1. trains (train_id ,train_name,source_station,destination_station,total_coaches ,train_type)
2. stations (station_id ,station_name,city ,state,platforms,zone)
3. passengers ( passenger_id,name ,age ,gender,phone,city)
4  schedules (schedule_id ,train_id,station_id ,arrival_time,departure_time,stop_number)
5. employees (emp_id ,name ,designation ,station_id,salary ,doj )
 */


 -- ---------------------------------------- Database queries ---------------------------------------------------------
-- create a database RAILWAY
CREATE DATABASE  RAILWAY;

-- to work on database, you need to use it first
USE RAILWAY;

  -- --------------------------------------------------------- Table Queries ----------------------------------------------
   


-- TABLE 5
create database RAILWAY;
use RAILWAY;


CREATE TABLE trains (
    train_id INT PRIMARY KEY,
    train_name VARCHAR(50),
    source_station VARCHAR(50),
    destination_station VARCHAR(50),
    total_coaches INT,
    train_type VARCHAR(20)
);
-- insert value in a table
INSERT INTO trains (train_id ,train_name,source_station,destination_station,total_coaches ,train_type)
 VALUES
(1, 'Rajdhani Express', 'Mumbai', 'Delhi', 22, 'Express'),
(2, 'Shatabdi Express', 'Chennai', 'Bangalore', 18, 'Superfast'),
(3, 'Duronto Express', 'Pune', 'Kolkata', 20, 'Express'),
(4, 'Garib Rath', 'Delhi', 'Patna', 16, 'AC'),
(5, 'Tejas Express', 'Mumbai', 'Goa', 18, 'Luxury'),
(6, 'Intercity Express', 'Lucknow', 'Kanpur', 12, 'Passenger');

-- to display table data
select * from trains ;

-- to reamove complete records from table
truncate table trains ;

-- to remove complete records and attribute from table
drop table trains ;


CREATE TABLE stations (
    station_id INT PRIMARY KEY,
    station_name VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50),
    platforms INT,
    zone VARCHAR(50)
);
-- insert value in a table
INSERT INTO stations (station_id ,station_name,city ,state,platforms,zone)
 VALUES
(101, 'CST', 'Mumbai', 'Maharashtra', 18, 'Central'),
(102, 'NDLS', 'Delhi', 'Delhi', 16, 'Northern'),
(103, 'SBC', 'Bangalore', 'Karnataka', 10, 'South Western'),
(104, 'MAS', 'Chennai', 'Tamil Nadu', 12, 'Southern'),
(105, 'HWH', 'Kolkata', 'West Bengal', 15, 'Eastern'),
(106, 'BBS', 'Bhubaneswar', 'Odisha', 8, 'East Coast');

-- to display table data
select * from stations ;

-- to reamove complete records from table
truncate table stations ;

-- to remove complete records and attribute from table
drop table stations ;


CREATE TABLE passengers (
    passenger_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    phone VARCHAR(15),
    city VARCHAR(50)
);
-- insert value in a table
INSERT INTO passengers ( passenger_id,name ,age ,gender,phone,city)
 VALUES
(201, 'Amit Sharma', 30, 'Male', '9876543210', 'Mumbai'),
(202, 'Ritika Mehra', 25, 'Female', '9876543211', 'Delhi'),
(203, 'Raj Verma', 45, 'Male', '9876543212', 'Kolkata'),
(204, 'Sneha Rao', 28, 'Female', '9876543213', 'Bangalore'),
(205, 'Karan Yadav', 33, 'Male', '9876543214', 'Lucknow'),
(206, 'Priya Singh', 22, 'Female', '9876543215', 'Chennai');

-- to display table data
select * from passengers ;

-- to reamove complete records from table
truncate table passengers ;

-- to remove complete records and attribute from table
drop table passengers ;

CREATE TABLE schedules (
    schedule_id INT PRIMARY KEY,
    train_id INT,
    station_id INT,
    arrival_time TIME,
    departure_time TIME,
    stop_number INT
);
-- insert value in a table
INSERT INTO schedules (schedule_id ,train_id,station_id ,arrival_time,departure_time,stop_number)
 VALUES
(501, 1, 101, '08:00:00', '08:10:00', 1),
(502, 1, 102, '12:00:00', '12:05:00', 2),
(503, 2, 103, '10:00:00', '10:15:00', 1),
(504, 2, 104, '13:00:00', '13:10:00', 2),
(505, 3, 105, '09:30:00', '09:35:00', 1),
(506, 3, 106, '14:00:00', '14:10:00', 2);

-- to display table data
select * from schedules ;

-- to reamove complete records from table
truncate table schedules;

-- to remove complete records and attribute from table
drop table schedules ;


CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    designation VARCHAR(50),
    station_id INT,
    salary DECIMAL(10,2),
    doj DATE
);
-- insert value in a table
INSERT INTO employees (emp_id ,name ,designation ,station_id,salary ,doj )
VALUES
(401, 'Rakesh Kumar', 'Station Master', 101, 55000.00, '2015-04-15'),
(402, 'Sonal Gupta', 'Ticket Checker', 102, 35000.00, '2018-07-10'),
(403, 'Mukesh Verma', 'Driver', 103, 60000.00, '2012-01-12'),
(404, 'Anjali Sharma', 'Clerk', 104, 30000.00, '2019-03-25'),
(405, 'Vinod Singh', 'Guard', 105, 40000.00, '2016-11-20');

-- to display table data
select * from employees;

-- to reamove complete records from table
truncate table employees;

-- to remove complete records and attribute from table
drop table employees ;


-- --------------------------------------------------- Analysis of Database ------------------------------------------------
/*
Database Name --> EDUCATION

Tables -->

1. teachers  (teacher_id,name,subject,experience,city )
2. students( student_id ,name ,age ,gender,city )
3. courses (course_id ,course_name ,duration_months,fee,department)
4  classes (class_id ,class_name,room_no,strength,teacher_id)
5. expenses (expense_id INT PRIMARY KEY,account_id ,category ,amount,expense_date)
 */


 -- ---------------------------------------- Database queries ---------------------------------------------------------
-- create a database EDUCATION
CREATE DATABASE   EDUCATION;

-- to work on database, you need to use it first
USE  EDUCATION;

  -- --------------------------------------------------------- Table Queries ----------------------------------------------
   




-- TABLE 6
create database EDUCATION;
use EDUCATION;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    city VARCHAR(50)
);
-- insert value in a table
INSERT INTO students( student_id ,name ,age ,gender,city )
 VALUES
(1, 'Ravi Kumar', 18, 'Male', 'Delhi'),
(2, 'Anita Sharma', 19, 'Female', 'Mumbai'),
(3, 'Raj Patel', 20, 'Male', 'Ahmedabad'),
(4, 'Pooja Desai', 18, 'Female', 'Pune'),
(5, 'Karan Yadav', 21, 'Male', 'Lucknow');

-- to display table data
select * from students;

-- to reamove complete records from table
truncate table students;

-- to remove complete records and attribute from table
drop table students ;

CREATE TABLE teachers (
    teacher_id INT PRIMARY KEY,
    name VARCHAR(50),
    subject VARCHAR(50),
    experience INT,
    city VARCHAR(50)
);
-- insert value in a table
INSERT INTO teachers  (teacher_id,name,subject,experience,city )
 VALUES
(101, 'Meera Joshi', 'Mathematics', 5, 'Mumbai'),
(102, 'Suresh Iyer', 'Physics', 8, 'Chennai'),
(103, 'Anjali Sharma', 'English', 4, 'Delhi'),
(104, 'Rajesh Mehta', 'Biology', 6, 'Ahmedabad'),
(105, 'Nisha Rao', 'History', 7, 'Hyderabad');

-- to display table data
select * from teachers;

-- to reamove complete records from table
truncate table teachers;

-- to remove complete records and attribute from table
drop table teachers ;

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50),
    duration_months INT,
    fee DECIMAL(10,2),
    department VARCHAR(50)
);
-- insert value in a table
INSERT INTO courses (course_id ,course_name ,duration_months,fee,department)
 VALUES
(201, 'B.Sc Mathematics', 36, 30000.00, 'Science'),
(202, 'B.A English', 36, 25000.00, 'Arts'),
(203, 'B.Com', 36, 28000.00, 'Commerce'),
(204, 'B.Sc Physics', 36, 32000.00, 'Science'),
(205, 'B.A History', 36, 24000.00, 'Arts');

-- to display table data
select * from courses;

-- to reamove complete records from table
truncate table courses;

-- to remove complete records and attribute from table
drop table courses;

CREATE TABLE classes (
    class_id INT PRIMARY KEY,
    class_name VARCHAR(50),
    room_no VARCHAR(10),
    strength INT,
    teacher_id INT
);
-- insert value in a table
INSERT INTO classes (class_id ,class_name,room_no,strength,teacher_id)
 VALUES
(301, 'FYBSc Math A', 'A101', 45, 101),
(302, 'FYBA Eng B', 'B201', 40, 103),
(303, 'FYBCom C', 'C301', 50, 105),
(304, 'FYBSc Phy A', 'A202', 42, 102),
(305, 'FYBA Hist B', 'B203', 38, 105);

-- to display table data
select * from  classes ;

-- to reamove complete records from table
truncate table  classes ;

-- to remove complete records and attribute from table
drop table  classes ;


CREATE TABLE results (
    result_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    percentage DECIMAL(5,2),
    grade VARCHAR(2)
);
-- insert value in a table
INSERT INTO results VALUES
(401, 1, 201, 85.60, 'A'),
(402, 2, 202, 78.25, 'B'),
(403, 3, 203, 82.10, 'A'),
(404, 4, 204, 74.50, 'B'),
(405, 5, 205, 88.00, 'A');

-- to display table data
select * from  results ;

-- to reamove complete records from table
truncate table results  ;

-- to remove complete records and attribute from table
drop table  results ;


-- --------------------------------------------------- Analysis of Database ------------------------------------------------
/*
Database Name --> FINANCE

Tables -->

1. accounts (account_id,account_holder,account_type ,balance ,created_date)
2. transactions ( transaction_id,account_id,type ,amount ,transaction_date)
3. investments (investment_id ,investor_name ,investment_type ,amount ,invest_date)
4  loans (loan_id ,customer_name ,loan_type ,loan_amount,start_date)
5. expenses (expense_id INT PRIMARY KEY,account_id ,category ,amount,expense_date)
*/ 


 -- ---------------------------------------- Database queries ---------------------------------------------------------

-- create a database FINANCE
CREATE DATABASE FINANCE;

-- to work on database, you need to use it first
USE FINANCE;

  -- --------------------------------------------------------- Table Queries ----------------------------------------------


-- Table 7
create database FINANCE;
use FINANCE;

CREATE TABLE accounts (
    account_id INT PRIMARY KEY,
    account_holder VARCHAR(100),
    account_type VARCHAR(50),
    balance DECIMAL(10,2),
    created_date DATE
);
-- insert value in a table
INSERT INTO accounts (account_id,account_holder,account_type ,balance ,created_date)
 VALUES
(1, 'Ananya Mehta', 'Savings', 50000.00, '2024-01-10'),
(2, 'Rahul Sharma', 'Current', 120000.00, '2023-11-05'),
(3, 'Neha Joshi', 'Savings', 30000.00, '2024-03-21'),
(4, 'Amit Kumar', 'Fixed Deposit', 100000.00, '2024-02-15'),
(5, 'Sneha Shah', 'Savings', 75000.00, '2023-12-01');

  -- to display table data
  select * from  accounts;
  
  -- to reamove complete records from table
truncate table accounts;

-- to remove complete records and attribute from table
drop table  accounts ;
  
CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    account_id INT,
    type VARCHAR(50),
    amount DECIMAL(10,2),
    transaction_date DATE
);
-- insert value in a table
INSERT INTO transactions ( transaction_id,account_id,type ,amount ,transaction_date)
VALUES
(101, 1, 'Deposit', 10000.00, '2025-06-01'),
(102, 2, 'Withdrawal', 5000.00, '2025-06-02'),
(103, 3, 'Deposit', 15000.00, '2025-06-03'),
(104, 4, 'Withdrawal', 3000.00, '2025-06-04'),
(105, 5, 'Deposit', 20000.00, '2025-06-04');

-- to display table data
 select * from transactions;
 
 -- to reamove complete records from table
truncate table transactions;

-- to remove complete records and attribute from table
drop table  transactions;

CREATE TABLE loans (
    loan_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    loan_type VARCHAR(50),
    loan_amount DECIMAL(10,2),
    start_date DATE
);
-- insert value in a table
INSERT INTO loans (loan_id ,customer_name ,loan_type ,loan_amount,start_date)
VALUES
(201, 'Ananya Mehta', 'Home Loan', 2500000.00, '2024-05-01'),
(202, 'Rahul Sharma', 'Car Loan', 600000.00, '2024-06-01'),
(203, 'Neha Joshi', 'Personal Loan', 300000.00, '2024-03-15'),
(204, 'Amit Kumar', 'Education Loan', 400000.00, '2024-01-10'),
(205, 'Sneha Shah', 'Business Loan', 1500000.00, '2024-04-20');

-- to display table data
select * from  loans ;

-- to reamove complete records from table
truncate table  loans ;

-- to remove complete records and attribute from table
drop table   loans ;

CREATE TABLE investments (
    investment_id INT PRIMARY KEY,
    investor_name VARCHAR(100),
    investment_type VARCHAR(50),
    amount DECIMAL(10,2),
    invest_date DATE
);
-- insert value in a table
INSERT INTO investments (investment_id ,investor_name ,investment_type ,amount ,invest_date)
VALUES
(301, 'Ananya Mehta', 'Stocks', 100000.00, '2024-06-01'),
(302, 'Rahul Sharma', 'Mutual Funds', 150000.00, '2024-05-15'),
(303, 'Neha Joshi', 'Bonds', 75000.00, '2024-04-01'),
(304, 'Amit Kumar', 'Real Estate', 500000.00, '2024-03-20'),
(305, 'Sneha Shah', 'Gold', 80000.00, '2024-05-10');

-- to display table data
select * from  investments ;

-- to reamove complete records from table
truncate table investments ;

-- to remove complete records and attribute from table
drop table   investments ;


CREATE TABLE expenses (
    expense_id INT PRIMARY KEY,
    account_id INT,
    category VARCHAR(50),
    amount DECIMAL(10,2),
    expense_date DATE
);
-- insert value in a table
INSERT INTO expenses (expense_id INT PRIMARY KEY,account_id ,category ,amount,expense_date)
 VALUES
(401, 1, 'Groceries', 4000.00, '2025-05-10'),
(402, 2, 'Utilities', 3000.00, '2025-05-12'),
(403, 3, 'Travel', 7000.00, '2025-05-14'),
(404, 4, 'Rent', 15000.00, '2025-05-01'),
(405, 5, 'Insurance', 5000.00, '2025-05-15');

-- to display table data
select * from  expenses;

-- to reamove complete records from table
truncate table expenses;

-- to remove complete records and attribute from table
drop table   expenses ;

-- TABLE 8
create  database HOSPITAL;

CREATE DATABASE hospital;
USE hospital;


CREATE TABLE patients (
    patient_id INT PRIMARY KEY,
    name VARCHAR(100),
    gender VARCHAR(10),
    age INT,
    phone VARCHAR(15)
);
-- insert value in a table
INSERT INTO patients VALUES
(1, 'Ravi Sharma', 'Male', 45, '9876543210'),
(2, 'Anita Desai', 'Female', 32, '9765432109'),
(3, 'Suresh Mehta', 'Male', 60, '9654321098'),
(4, 'Neha Kapoor', 'Female', 27, '9543210987'),
(5, 'Amit Kumar', 'Male', 39, '9432109876');

-- to display table data
select * from   patients ;


truncate table patients ;

-- to remove complete records and attribute from table
drop table  patients ;


CREATE TABLE doctors (
    doctor_id INT PRIMARY KEY,
    name VARCHAR(100),
    specialty VARCHAR(50),
    experience INT,
    contact VARCHAR(15)
);
-- insert value in a table
INSERT INTO doctors VALUES
(101, 'Dr. Renu Gupta', 'Cardiology', 15, '9988776655'),
(102, 'Dr. Arjun Mehta', 'Neurology', 12, '9877665544'),
(103, 'Dr. Priya Singh', 'Pediatrics', 8, '9766554433'),
(104, 'Dr. Mohan Rao', 'Orthopedics', 10, '9655443322'),
(105, 'Dr. Shalini Das', 'Dermatology', 7, '9544332211');

-- to display table data
select * from doctors ;

-- to reamove complete records from table
truncate table doctors ;

-- to remove complete records and attribute from table
drop table  doctors;


CREATE TABLE appointments (
    appointment_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    status VARCHAR(20)
);
-- insert value in a table
INSERT INTO appointments VALUES
(201, 1, 101, '2025-06-01', 'Confirmed'),
(202, 2, 102, '2025-06-02', 'Completed'),
(203, 3, 103, '2025-06-03', 'Cancelled'),
(204, 4, 104, '2025-06-04', 'Confirmed'),
(205, 5, 105, '2025-06-05', 'Pending');

-- to display table data
select * from appointments  ;

-- to reamove complete records from table
truncate table  appointments  ;

-- to remove complete records and attribute from table
drop table  appointments ;

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    name VARCHAR(50),
    head VARCHAR(100),
    floor INT,
    contact_number VARCHAR(15)
);
-- insert value in a table
INSERT INTO departments VALUES
(301, 'Cardiology', 'Dr. Renu Gupta', 2, '022-12345678'),
(302, 'Neurology', 'Dr. Arjun Mehta', 3, '022-22345678'),
(303, 'Pediatrics', 'Dr. Priya Singh', 1, '022-32345678'),
(304, 'Orthopedics', 'Dr. Mohan Rao', 4, '022-42345678'),
(305, 'Dermatology', 'Dr. Shalini Das', 5, '022-52345678');

-- to display table data
select * from departments ;

-- to reamove complete records from table
truncate table departments ;

-- to remove complete records and attribute from table
drop table departments ;


CREATE TABLE medications (
    medication_id INT PRIMARY KEY,
    name VARCHAR(100),
    patient_id INT,
    dosage VARCHAR(50),
    prescribed_date DATE
);
-- insert value in a table
INSERT INTO medications VALUES
(401, 'Paracetamol', 1, '500mg Twice a Day', '2025-06-01'),
(402, 'Aspirin', 2, '100mg Once a Day', '2025-06-02'),
(403, 'Amoxicillin', 3, '250mg Three Times a Day', '2025-06-03'),
(404, 'Cetirizine', 4, '10mg Once a Day', '2025-06-04'),
(405, 'Ibuprofen', 5, '400mg Twice a Day', '2025-06-05');

-- to display table data
select * from  medications;

-- to reamove complete records from table
truncate table  medications;

-- to remove complete records and attribute from table
drop table  medications;


-- --------------------------------------------------- Analysis of Database ------------------------------------------------
/*
Database Name --> FINANCE

Tables -->

1. Products (ProductID ,ProductName,Category ,Price ,Stock)
2. Customers ( CustomerID, Name, Email ,City ,SignupDate)
3. Employees (EmployeeID INT PRIMARY KEY,Name ,Position ,Salary ,JoinDate)
4  Campaigns (CampaignID,Name ,Client ,Budget ,LaunchDate)
5. Shipments ( ShipmentID,Origin ,Destination,Weight ,Status)
 */


 -- ---------------------------------------- Database queries ---------------------------------------------------------

-- create a database BUSINESS
CREATE DATABASE BUSINESS;

-- to work on database, you need to use it first
USE BUSINESS;

  -- --------------------------------------------------------- Table Queries ----------------------------------------------


-- Table 9
create database BUSINESS;
use BUSINESS;

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Category VARCHAR(30),
    Price DECIMAL(10, 2),
    Stock INT
);
-- insert value in a table
INSERT INTO Products (ProductID ,ProductName,Category ,Price ,Stock)
VALUES
(1, 'T-shirt', 'Clothing', 499.99, 150),
(2, 'Jeans', 'Clothing', 999.50, 80),
(3, 'Sneakers', 'Footwear', 1999.00, 60),
(4, 'Backpack', 'Accessories', 799.00, 40),
(5, 'Watch', 'Accessories', 1499.00, 30);

-- to display table data
select * from Products;

-- to reamove complete records from table
truncate table Products;

-- to remove complete records and attribute from table
drop table Products;


CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(50),
    Email VARCHAR(100),
    City VARCHAR(30),
    SignupDate DATE
);
-- insert value in a table
INSERT INTO Customers ( CustomerID, Name, Email ,City ,SignupDate)
 VALUES
(101, 'Ankit Sharma', 'ankit@gmail.com', 'Mumbai', '2023-01-15'),
(102, 'Riya Mehta', 'riya@yahoo.com', 'Delhi', '2023-03-22'),
(103, 'Sameer Khan', 'sameer@hotmail.com', 'Bangalore', '2023-02-10'),
(104, 'Neha Jain', 'neha@gmail.com', 'Chennai', '2023-05-05'),
(105, 'Raj Patel', 'raj@gmail.com', 'Pune', '2023-04-18');

-- to display table data
select * from Customers;

-- to reamove complete records from table
truncate table Customers;

-- to remove complete records and attribute from table
drop table Customers;


CREATE TABLE Shipments (
    ShipmentID INT PRIMARY KEY,
    Origin VARCHAR(50),
    Destination VARCHAR(50),
    Weight DECIMAL(6,2),
    Status VARCHAR(20)
);
-- insert value in a table
INSERT INTO Shipments ( ShipmentID,Origin ,Destination,Weight ,Status)
 VALUES
(201, 'Delhi', 'Mumbai', 150.75, 'In Transit'),
(202, 'Chennai', 'Hyderabad', 200.00, 'Delivered'),
(203, 'Pune', 'Kolkata', 175.25, 'Pending'),
(204, 'Bangalore', 'Ahmedabad', 300.00, 'In Transit'),
(205, 'Mumbai', 'Delhi', 100.50, 'Delivered');

-- to display table data
select * from Shipments;

-- to reamove complete records from table
truncate table Shipments;

-- to remove complete records and attribute from table
drop table Shipments;


CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    Position VARCHAR(30),
    Salary DECIMAL(10,2),
    JoinDate DATE
);
-- insert value in a table
INSERT INTO Employees (EmployeeID INT PRIMARY KEY,Name ,Position ,Salary ,JoinDate)
 VALUES
(301, 'Aditya Verma', 'Developer', 60000.00, '2023-02-01'),
(302, 'Pooja Singh', 'Designer', 55000.00, '2023-03-15'),
(303, 'Kunal Joshi', 'Manager', 75000.00, '2023-01-10'),
(304, 'Simran Kaur', 'HR', 50000.00, '2023-04-20'),
(305, 'Rohit Das', 'Tester', 52000.00, '2023-05-05');

-- to display table data
select * from Employees;

-- to reamove complete records from table
truncate table Employees;

-- to remove complete records and attribute from table
drop table Employees;

CREATE TABLE Campaigns (
    CampaignID INT PRIMARY KEY,
    Name VARCHAR(100),
    Client VARCHAR(50),
    Budget DECIMAL(10,2),
    LaunchDate DATE
);
-- insert value in a table
INSERT INTO Campaigns (CampaignID,Name ,Client ,Budget ,LaunchDate)
VALUES
(401, 'Summer Sale 2024', 'Flipkart', 200000.00, '2024-06-01'),
(402, 'Monsoon Bonanza', 'Amazon', 150000.00, '2024-07-10'),
(403, 'Festive Lights', 'Reliance', 300000.00, '2024-09-25'),
(404, 'Winter Warmers', 'Myntra', 180000.00, '2024-11-15'),
(405, 'New Year Blitz', 'TataCliq', 250000.00, '2024-12-28');

-- to display table data
select * from Campaigns ;

-- to reamove complete records from table
truncate table Campaigns ;

-- to remove complete records and attribute from table
drop table Campaigns ;


-- --------------------------------------------------- Analysis of Database ------------------------------------------------
/*
Database Name --> ECOMMERCE

Tables -->

1. Users ( UserID,UserName,Email ,City ,RegistrationDate)
2. Products ( ProductID ,ProductName,Category ,Price ,InStock)
3. Orders (OrderID INT PRIMARY KEY,UserID,ProductID ,OrderDate,Status )
4  Reviews (ReviewID,ProductID ,UserID ,Rating ,Comment)
5. Payments (PaymentID,OrderID,Amount,PaymentMode,PaymentDate)
 */


 -- ---------------------------------------- Database queries ---------------------------------------------------------

-- create a database ECOMMERCE
CREATE DATABASE ECOMMERCE;

-- to work on database, you need to use it first
USE ECOMMERCE;

  -- --------------------------------------------------------- Table Queries ----------------------------------------------

-- Table 10
create database ECOMMERCE;
use ECOMMERCE;

CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    UserName VARCHAR(50),
    Email VARCHAR(100),
    City VARCHAR(50),
    RegistrationDate DATE
);
-- insert value in a table
INSERT INTO Users ( UserID,UserName,Email ,City ,RegistrationDate)
 VALUES
(1, 'Aman Gupta', 'aman@gmail.com', 'Delhi', '2023-01-15'),
(2, 'Riya Sen', 'riya@yahoo.com', 'Mumbai', '2023-02-10'),
(3, 'Vikram Das', 'vikram@hotmail.com', 'Kolkata', '2023-03-05'),
(4, 'Neha Yadav', 'neha@gmail.com', 'Bangalore', '2023-04-12'),
(5, 'Suresh Rao', 'suresh@gmail.com', 'Chennai', '2023-05-20');

-- to display table data
select * from Users ;

-- to reamove complete records from table
truncate table Users ;

-- to remove complete records and attribute from table
drop table Users ;


CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    InStock INT
);
-- insert value in a table
INSERT INTO Products ( ProductID ,ProductName,Category ,Price ,InStock)
VALUES
(101, 'iPhone 14', 'Mobiles', 79999.00, 50),
(102, 'Sony Headphones', 'Electronics', 4999.00, 200),
(103, 'Nike Shoes', 'Footwear', 2999.00, 120),
(104, 'Dell Laptop', 'Computers', 59999.00, 30),
(105, 'T-shirt Combo', 'Clothing', 999.00, 300);

-- to display table data
select * from Products;

-- to reamove complete records from table
truncate table Products;

-- to remove complete records and attribute from table
drop table Products;


CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    UserID INT,
    ProductID INT,
    OrderDate DATE,
    Status VARCHAR(20)
);
-- insert value in a table
INSERT INTO Orders (OrderID INT PRIMARY KEY,UserID,ProductID ,OrderDate,Status )
 VALUES
(201, 1, 101, '2023-06-01', 'Shipped'),
(202, 2, 102, '2023-06-03', 'Delivered'),
(203, 3, 104, '2023-06-04', 'Pending'),
(204, 4, 105, '2023-06-05', 'Cancelled'),
(205, 5, 103, '2023-06-06', 'Shipped');

-- to display table data
select * from  Orders ;

-- to reamove complete records from table
truncate table  Orders;

-- to remove complete records and attribute from table
drop table  Orders ;


CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY,
    OrderID INT,
    Amount DECIMAL(10,2),
    PaymentMode VARCHAR(20),
    PaymentDate DATE
);
-- insert value in a table
INSERT INTO Payments (PaymentID,OrderID,Amount,PaymentMode,PaymentDate)
 VALUES
(301, 201, 79999.00, 'Credit Card', '2023-06-01'),
(302, 202, 4999.00, 'UPI', '2023-06-03'),
(303, 203, 59999.00, 'Net Banking', '2023-06-04'),
(304, 204, 999.00, 'Debit Card', '2023-06-05'),
(305, 205, 2999.00, 'Wallet', '2023-06-06');

-- to display table data
select * from   Payments;

-- to reamove complete records from table
truncate table  Payments;

-- to remove complete records and attribute from table
drop table   Payments;


CREATE TABLE Reviews (
    ReviewID INT PRIMARY KEY,
    ProductID INT,
    UserID INT,
    Rating INT,
    Comment VARCHAR(255)
);
-- insert value in a table
INSERT INTO Reviews (ReviewID,ProductID ,UserID ,Rating ,Comment)
VALUES
(401, 101, 1, 5, 'Excellent phone with great performance'),
(402, 102, 2, 4, 'Good sound quality'),
(403, 103, 5, 3, 'Average comfort'),
(404, 104, 3, 5, 'Very fast and reliable'),
(405, 105, 4, 2, 'Material quality not great');

-- to display table data
select * from  Reviews;

-- to reamove complete records from table
truncate table Reviews;

-- to remove complete records and attribute from table
drop table  Reviews;

-- --------------------------------------------------- Analysis of Database ------------------------------------------------
/*
Database Name --> Bank

Tables -->

1. Customers(CustomerID,FirstName,LastName,Email,Phone)
2.Accounts(AccountID,CustomerID,AccountType,Balance,OpenDate)3.customer(id,name,phone,email,city)
3.Transactions (TransactionID,AccountID,Date,Type,Amount)
4.Loans (LoanID,CutomerID,Amount,InterestRate,LoanDate)
5.Employees(EmployeeID,Name,Position,Branch,Salary)
*/
   
   -- ---------------------------------------- Database queries ---------------------------------------------------------

-- create a database Bank;
create database Bank;

-- to work on database, you need to use it first
use Bank;

-- --------------------------------------------------------- Table Queries ----------------------------------------------

-- 1. Customers Table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15)
);


INSERT INTO Customers(CustomerID,FirstName,LastName,Email,Phone) VALUES
(1, 'Ravi', 'Kumar', 'ravi@example.com', '9876543210'),
(2, 'Sneha', 'Sharma', 'sneha@example.com', '9876543211'),
(3, 'Amit', 'Verma', 'amit@example.com', '9876543212'),
(4, 'Priya', 'Patil', 'priya@example.com', '9876543213'),
(5, 'Karan', 'Mehta', 'karan@example.com', '9876543214');

-- to display select data
select * from Customers;

  -- to remove complete records from table
truncate table Customers;

-- to remove complete records and attributes from table
drop table Customers;


-- 2. Accounts Table
CREATE TABLE Accounts (
    AccountID INT PRIMARY KEY,
    CustomerID INT,
    AccountType VARCHAR(20),
    Balance DECIMAL(10,2),
    OpenDate DATE
);

INSERT INTO Accounts(AccountID,CustomerID,AccountType,Balance,OpenDate) VALUES
(101, 1, 'Savings', 5000.00, '2023-01-10'),
(102, 2, 'Current', 25000.50, '2023-02-15'),
(103, 3, 'Savings', 1500.75, '2023-03-20'),
(104, 4, 'Savings', 8000.00, '2023-04-18'),
(105, 5, 'Current', 12000.00, '2023-05-25');

-- to display select data
select * from Accounts;

  -- to remove complete records from table
truncate table Accounts;

-- to remove complete records and attributes from table
drop table Accounts;


-- 3. Transactions Table
CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY,
    AccountID INT,
    Date DATE,
    Type VARCHAR(10),
    Amount DECIMAL(10,2)
);

INSERT INTO Transactions (TransactionID,AccountID,Date,Type,Amount)VALUES
(201, 101, '2023-06-01', 'Deposit', 2000.00),
(202, 102, '2023-06-03', 'Withdraw', 500.00),
(203, 103, '2023-06-05', 'Deposit', 1000.00),
(204, 104, '2023-06-07', 'Withdraw', 1500.00),
(205, 105, '2023-06-08', 'Deposit', 3000.00);

-- to display select data
select * from Transactions;

  -- to remove complete records from table
truncate table Transactions;

-- to remove complete records and attributes from table
drop table Transactions;


-- 4. Loans Table
CREATE TABLE Loans (
    LoanID INT PRIMARY KEY,
    CustomerID INT,
    Amount DECIMAL(10,2),
    InterestRate DECIMAL(4,2),
    LoanDate DATE
);

INSERT INTO Loans (LoanID,CutomerID,Amount,InterestRate,LoanDate)VALUES
(301, 1, 10000.00, 7.5, '2023-01-15'),
(302, 2, 20000.00, 8.0, '2023-02-10'),
(303, 3, 15000.00, 7.0, '2023-03-12'),
(304, 4, 18000.00, 8.5, '2023-04-14'),
(305, 5, 22000.00, 9.0, '2023-05-16');

-- to display select data
select * from Loans;

  -- to remove complete records from table
truncate table Loans;

-- to remove complete records and attributes from table
drop table Loans;


-- 5. Employees Table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    Position VARCHAR(30),
    Branch VARCHAR(30),
    Salary DECIMAL(10,2)
);

INSERT INTO Employees(EmployeeID,Name,Position,Branch,Salary) VALUES
(401, 'Sunil Rao', 'Manager', 'Mumbai', 75000.00),
(402, 'Meena Das', 'Clerk', 'Pune', 30000.00),
(403, 'Ajay Naik', 'Cashier', 'Delhi', 35000.00),
(404, 'Divya Roy', 'Clerk', 'Hyderabad', 32000.00),
(405, 'Nikhil Jain', 'Manager', 'Chennai', 72000.00);

-- to display select data
select * from Employees;

  -- to remove complete records from table
truncate table Employees;

-- to remove complete records and attributes from table
drop table Employees;

-- --------------------------------------------------- Analysis of Database ------------------------------------------------
/*
Database Name -->Event_Management

Tables -->

1. (EventID,EventName,EventType,EventDate,Budget)
2.Clients(ClientID,ClientName,Email,Phone,City)
3.Venues(VenueID,VenueName,Location,Capacity,Rent)
4.Bookings (BookingID,EventID,ClientID,VenueID,BookingDate)
5.Staff(StaffID,Name,Role,Phone,AssignedEventID)
*/
   
   -- ---------------------------------------- Database queries ---------------------------------------------------------


-- create a database Event_Management;
create database Event_Management;

 -- to work on database, you need to use it first
 use Event_Management;
 
 -- --------------------------------------------------------- Table Queries ---------------------------------------------

-- 1. Events Table
CREATE TABLE Events (
    EventID INT PRIMARY KEY,
    EventName VARCHAR(100),
    EventType VARCHAR(50),
    EventDate DATE,
    Budget DECIMAL(10,2)
);

INSERT INTO Events (EventID,EventName,EventType,EventDate,Budget)VALUES
(1, 'Tech Conference', 'Conference', '2025-07-10', 100000.00),
(2, 'Wedding Reception', 'Wedding', '2025-08-05', 500000.00),
(3, 'Music Festival', 'Concert', '2025-09-15', 300000.00),
(4, 'Corporate Meeting', 'Meeting', '2025-06-20', 75000.00),
(5, 'Birthday Bash', 'Party', '2025-10-02', 45000.00);

-- to display select data
select * from Events;

  -- to remove complete records from table
truncate table Events;

-- to remove complete records and attributes from table
drop table Events;

-- 2. Clients Table
CREATE TABLE Clients (
    ClientID INT PRIMARY KEY,
    ClientName VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    City VARCHAR(50)
);

INSERT INTO Clients(ClientID,ClientName,Email,Phone,City) VALUES
(101, 'Rajesh Khanna', 'rajesh@example.com', '9876543210', 'Mumbai'),
(102, 'Priya Sharma', 'priya@example.com', '9876543211', 'Delhi'),
(103, 'Amit Verma', 'amit@example.com', '9876543212', 'Bangalore'),
(104, 'Sneha Patil', 'sneha@example.com', '9876543213', 'Pune'),
(105, 'Karan Mehta', 'karan@example.com', '9876543214', 'Chennai');

-- to display select data
select * from Clients;

  -- to remove complete records from table
truncate table Clients;

-- to remove complete records and attributes from table
drop table Clients;


-- 3. Venues Table
CREATE TABLE Venues (
    VenueID INT PRIMARY KEY,
    VenueName VARCHAR(100),
    Location VARCHAR(100),
    Capacity INT,
    Rent DECIMAL(10,2)
);

INSERT INTO Venues(VenueID,VenueName,Location,Capacity,Rent) VALUES
(201, 'Grand Palace Hall', 'Mumbai', 500, 100000.00),
(202, 'Lotus Banquets', 'Delhi', 300, 75000.00),
(203, 'Skyline Arena', 'Bangalore', 800, 150000.00),
(204, 'Royal Gardens', 'Pune', 400, 90000.00),
(205, 'City Lights Venue', 'Chennai', 350, 85000.00);

-- to display select data
select * from Venues;

  -- to remove complete records from table
truncate table Venues;

-- to remove complete records and attributes from table
drop table Venues;


-- 4. Bookings Table
CREATE TABLE Bookings (
    BookingID INT PRIMARY KEY,
    EventID INT,
    ClientID INT,
    VenueID INT,
    BookingDate DATE
);

INSERT INTO Bookings (BookingID,EventID,ClientID,VenueID,BookingDate)VALUES
(301, 1, 101, 201, '2025-06-01'),
(302, 2, 102, 202, '2025-06-02'),
(303, 3, 103, 203, '2025-06-03'),
(304, 4, 104, 204, '2025-06-04'),
(305, 5, 105, 205, '2025-06-05');

-- to display select data
select * from Bookings;

  -- to remove complete records from table
truncate table Bookings ;

-- to remove complete records and attributes from table
drop table Bookings ;


-- 5. Staff Table
CREATE TABLE Staff (
    StaffID INT PRIMARY KEY,
    Name VARCHAR(100),
    Role VARCHAR(50),
    Phone VARCHAR(15),
    AssignedEventID INT
);

INSERT INTO Staff(StaffID,Name,Role,Phone,AssignedEventID) VALUES
(401, 'Anjali Rao', 'Coordinator', '9123456780', 1),
(402, 'Manish Desai', 'Manager', '9123456781', 2),
(403, 'Neha Kulkarni', 'Technician', '9123456782', 3),
(404, 'Suresh Iyer', 'Caterer', '9123456783', 4),
(405, 'Ritika Sharma', 'Decorator', '9123456784', 5);

-- to display select data
select * from Staff;

  -- to remove complete records from table
truncate table Staff;

-- to remove complete records and attributes from table
drop table Staff;

-- --------------------------------------------------- Analysis of Database ------------------------------------------------
/*
Database Name --> Gym

Tables -->

1. Members(MemberID ,Name ,Age ,Gender,Phone)
2.Trainers (TrainerID ,Name ,Specialty,ExperienceYear,Contact )
3.MembershipPlans (PlanID ,PlanName,DurationMonths,Cost ,Benefits )
4.WorkoutSessions (SessionID ,MemberID ,TrainerID ,SessionDate,WorkoutType )
5.Equipments (EquipmentID ,EquipmentName ,Type ,PurchaseDate ,ConditionStatus )
*/   
   -- ---------------------------------------- Database queries ---------------------------------------------------------

-- Create a database Gym;
CREATE DATABASE Gym;

-- to work on database, you need to use it first
USE Gym;

-- --------------------------------------------------------- Table Queries ----------------------------------------------

CREATE TABLE Members (
    MemberID INT PRIMARY KEY,
    Name VARCHAR(100),
    Age INT,
    Gender VARCHAR(10),
    Phone VARCHAR(15)
);

INSERT INTO Members(MemberID ,Name ,Age ,Gender,Phone) VALUES
(1, 'Ravi Kumar', 25, 'Male', '9876543210'),
(2, 'Sneha Patil', 30, 'Female', '8765432109'),
(3, 'Amit Singh', 22, 'Male', '7654321098'),
(4, 'Priya Mehta', 28, 'Female', '6543210987'),
(5, 'Rahul Joshi', 35, 'Male', '5432109876');

-- to display select data
SELECT * FROM Members;

--  to remove complete records from table
TRUNCATE TABLE Members;

-- to remove complete records and attributes from table
DROP TABLE Members;


CREATE TABLE Trainers (
    TrainerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Specialty VARCHAR(50),
    ExperienceYears INT,
    Contact VARCHAR(15)
);

INSERT INTO Trainers (TrainerID ,Name ,Specialty,ExperienceYear,Contact )VALUES
(1, 'Arjun Sharma', 'Weight Training', 5, '9999999991'),
(2, 'Meera Iyer', 'Yoga', 7, '9999999992'),
(3, 'Vikram Desai', 'Cardio', 4, '9999999993'),
(4, 'Pooja Roy', 'Zumba', 6, '9999999994'),
(5, 'Rakesh Gupta', 'CrossFit', 3, '9999999995');

-- to display select data
SELECT * FROM Trainers;

--  to remove complete records from table
TRUNCATE TABLE Trainers;

-- to remove complete records and attributes from table
DROP TABLE Trainers;


CREATE TABLE MembershipPlans (
    PlanID INT PRIMARY KEY,
    PlanName VARCHAR(50),
    DurationMonths INT,
    Cost DECIMAL(10, 2),
    Benefits VARCHAR(200)
);

INSERT INTO MembershipPlans(PlanID ,PlanName,DurationMonths,Cost ,Benefits ) VALUES
(1, 'Basic', 1, 999.00, 'Gym access only'),
(2, 'Standard', 3, 2499.00, 'Access + 2 Trainer Sessions'),
(3, 'Premium', 6, 4499.00, 'All Access + 5 Trainer Sessions'),
(4, 'Annual', 12, 7999.00, 'All Facilities + Free Diet Plan'),
(5, 'Student', 6, 2999.00, 'Gym Access + 3 Classes Weekly');

-- to display select data
SELECT * FROM MembershipPlans;

--  to remove complete records from table
TRUNCATE TABLE MembershipPlans;

-- to remove complete records and attributes from table
DROP TABLE MembershipPlans;


CREATE TABLE WorkoutSessions (
    SessionID INT PRIMARY KEY,
    MemberID INT,
    TrainerID INT,
    SessionDate DATE,
    WorkoutType VARCHAR(50)
);
 INSERT INTO WorkoutSessions  (SessionID ,MemberID ,TrainerID ,SessionDate,WorkoutType )VALUES
(1, 1, 1, '2025-07-01', 'Weight Training'),
(2, 2, 2, '2025-07-02', 'Yoga'),
(3, 3, 3, '2025-07-03', 'Cardio'),
(4, 4, 4, '2025-07-04', 'Zumba'),
(5, 5, 5, '2025-07-05', 'CrossFit');

-- to display select data
SELECT * FROM WorkoutSessions;

--  to remove complete records from table
TRUNCATE TABLE WorkoutSessions;

-- to remove complete records and attributes from table
DROP TABLE WorkoutSessions;


CREATE TABLE Equipments (
    EquipmentID INT PRIMARY KEY,
    EquipmentName VARCHAR(100),
    Type VARCHAR(50),
    PurchaseDate DATE,
    ConditionStatus VARCHAR(50)
);

INSERT INTO Equipments (EquipmentID ,EquipmentName ,Type ,PurchaseDate ,ConditionStatus )VALUES
(1, 'Treadmill', 'Cardio', '2022-01-15', 'Good'),
(2, 'Dumbbells', 'Weight Training', '2021-11-10', 'Excellent'),
(3, 'Yoga Mats', 'Yoga', '2023-03-25', 'Good'),
(4, 'Bench Press', 'Weight Training', '2022-08-05', 'Fair'),
(5, 'Rowing Machine', 'Cardio', '2024-02-12', 'Good');

-- to display select data
SELECT * FROM Equipments;

--  to remove complete records from table
TRUNCATE TABLE Equipments;

-- to remove complete records and attributes from table
DROP TABLE Equipments;

-- --------------------------------------------------- Analysis of Database ------------------------------------------------
/*
Database Name --> Theater

Tables -->

1.Movies(MovieID,Title,Genre,Duration,Language)
2.Screens (ScreenID,ScreenName,Capacity,Type,Location)
3.Showtimes(ShowtimeID,MovieID,ScreenID,ShowDate,ShowTime)
4.Tickets(TickketID,ShowtimeID,SeatNumber,Price,Status)
5.Staff (StaffID,Name,Role,ShiftTime,Contact)
*/
   
   -- ---------------------------------------- Database queries ---------------------------------------------------------

-- Create a database Theater;
CREATE DATABASE Theater;

-- to work on database, you need to use it first
USE Theater;

-- --------------------------------------------------------- Table Queries ----------------------------------------------

-- Create Movies table
CREATE TABLE Movies (
    MovieID INT PRIMARY KEY,
    Title VARCHAR(100),
    Genre VARCHAR(50),
    Duration INT,
    Language VARCHAR(30)
);

-- Insert into Movies
INSERT INTO Movies(MovieID,Title,Genre,Duration,Language) VALUES
(1, 'Inception', 'Sci-Fi', 148, 'English'),
(2, '3 Idiots', 'Comedy-Drama', 170, 'Hindi'),
(3, 'Bahubali', 'Action', 159, 'Telugu'),
(4, 'Kantara', 'Thriller', 147, 'Kannada'),
(5, 'Dangal', 'Drama', 161, 'Hindi');

-- to display select data
select * from Movies;

  -- to remove complete records from table
truncate table Movies;

-- to remove complete records and attributes from table
drop table Movies;

-- Create Screens table
CREATE TABLE Screens (
    ScreenID INT PRIMARY KEY,
    ScreenName VARCHAR(50),
    Capacity INT,
    Type VARCHAR(50),
    Location VARCHAR(100)
);

-- Insert into Screens
INSERT INTO Screens (ScreenID,ScreenName,Capacity,Type,Location)VALUES
(1, 'Screen A', 200, 'IMAX', 'First Floor'),
(2, 'Screen B', 150, '2D', 'Second Floor'),
(3, 'Screen C', 100, '3D', 'Ground Floor'),
(4, 'Screen D', 180, 'Dolby', 'Basement'),
(5, 'Screen E', 120, 'Normal', 'Third Floor');

-- to display select data
select * from Screens;

  -- to remove complete records from table
truncate table Screens;

-- to remove complete records and attributes from table
drop table Screens;

-- Create Showtimes table
CREATE TABLE Showtimes (
    ShowtimeID INT PRIMARY KEY,
    MovieID INT,
    ScreenID INT,
    ShowDate DATE,
    ShowTime TIME
);

-- Insert into Showtimes
INSERT INTO Showtimes(ShowtimeID,MovieID,ScreenID,ShowDate,ShowTime) VALUES
(1, 1, 1, '2025-07-12', '18:00:00'),
(2, 2, 2, '2025-07-12', '15:30:00'),
(3, 3, 3, '2025-07-13', '19:00:00'),
(4, 4, 4, '2025-07-13', '20:30:00'),
(5, 5, 5, '2025-07-14', '14:00:00');

-- to display select data
select * from  Showtimes;

  -- to remove complete records from table
truncate table  Showtimes;

-- to remove complete records and attributes from table
drop table  Showtimes;

-- Create Tickets table
CREATE TABLE Tickets (
    TicketID INT PRIMARY KEY,
    ShowtimeID INT,
    SeatNumber VARCHAR(10),
    Price DECIMAL(6,2),
    Status VARCHAR(20)
);

-- Insert into Tickets
INSERT INTO Tickets(TickketID,ShowtimeID,SeatNumber,Price,Status) VALUES
(1, 1, 'A1', 250.00, 'Booked'),
(2, 1, 'A2', 250.00, 'Available'),
(3, 2, 'B1', 200.00, 'Booked'),
(4, 3, 'C1', 300.00, 'Available'),
(5, 4, 'D1', 180.00, 'Booked');

-- to display select data
select * from Tickets;

  -- to remove complete records from table
truncate table Tickets;

-- to remove complete records and attributes from table
drop table Tickets;

-- Create Staff table
CREATE TABLE Staff (
    StaffID INT PRIMARY KEY,
    Name VARCHAR(100),
    Role VARCHAR(50),
    ShiftTime VARCHAR(50),
    Contact VARCHAR(15)
);

-- Insert into Staff
INSERT INTO Staff (StaffID,Name,Role,ShiftTime,Contact)VALUES
(1, 'Rohit Sharma', 'Manager', '9AM-6PM', '9876543210'),
(2, 'Sita Reddy', 'Cleaner', '6AM-2PM', '8765432109'),
(3, 'Ajay Verma', 'Ticket Counter', '10AM-7PM', '7654321098'),
(4, 'Priya Nair', 'Usher', '2PM-10PM', '6543210987'),
(5, 'Kunal Joshi', 'Security', '6PM-2AM', '5432109876');

-- to display select data
select * from Staff;

  -- to remove complete records from table
truncate table Staff;

-- to remove complete records and attributes from table
drop table Staff;

-- --------------------------------------------------- Analysis of Database ------------------------------------------------
/*
Database Name --> Blood_Bank

Tables -->

1.Donors(DonarID,Nmae,BloodGroup,Age,Contact)
2.Recipients (RecipientID,Name,RequiredGroup,Age,Contact)
3.Blood_Stock(StockID,BloodGroup,UnitsAvailable,LastUpdated,Staus)
4.Donations (DonationID,DonarID,DonationDate,Volume,CenterName)
5.Staff (StaffID,Nmae,Role,Shift,Contact)
*/
   
   -- ---------------------------------------- Database queries ---------------------------------------------------------

-- Create databse Blood_Bank;
CREATE DATABASE Blood_Bank;

-- to work on database, you need to use it first
USE Blood_Bank;

-- --------------------------------------------------------- Table Queries ----------------------------------------------


-- Donors Table
CREATE TABLE Donors (
    DonorID INT PRIMARY KEY,
    Name VARCHAR(100),
    BloodGroup VARCHAR(5),
    Age INT,
    Contact VARCHAR(15)
);

-- Insert values into Donors
INSERT INTO Donors(DonarID,Nmae,BloodGroup,Age,Contact) VALUES
(1, 'Raj Mehta', 'A+', 29, '9876543210'),
(2, 'Sneha Patil', 'O-', 34, '8765432109'),
(3, 'Amit Sharma', 'B+', 22, '7654321098'),
(4, 'Neha Rao', 'AB+', 27, '6543210987'),
(5, 'Vikas Jain', 'O+', 31, '5432109876');

-- to display select data
select * from Donors;

  -- to remove complete records from table
truncate table Donors;

-- to remove complete records and attributes from table
drop table Donors;


-- Recipients Table
CREATE TABLE Recipients (
    RecipientID INT PRIMARY KEY,
    Name VARCHAR(100),
    RequiredGroup VARCHAR(5),
    Age INT,
    Contact VARCHAR(15)
);

-- Insert values into Recipients
INSERT INTO Recipients (RecipientID,Name,RequiredGroup,Age,Contact)VALUES
(1, 'Pooja Nair', 'A+', 40, '9988776655'),
(2, 'Ravi Kumar', 'O-', 50, '8899776655'),
(3, 'Ayesha Khan', 'B+', 28, '7788665544'),
(4, 'Vivek Desai', 'AB+', 36, '6677554433'),
(5, 'Meena Joshi', 'O+', 45, '5566443322');


-- to display select data
select * from Recipients;

  -- to remove complete records from table
truncate table Recipients;

-- to remove complete records and attributes from table
drop table Recipients;


-- Blood_Stock Table
CREATE TABLE Blood_Stock (
    StockID INT PRIMARY KEY,
    BloodGroup VARCHAR(5),
    UnitsAvailable INT,
    LastUpdated DATE,
    Status VARCHAR(20)
);

-- Insert values into Blood_Stock
INSERT INTO Blood_Stock(StockID,BloodGroup,UnitsAvailable,LastUpdated,Staus) VALUES
(1, 'A+', 12, '2025-07-11', 'Available'),
(2, 'O-', 5, '2025-07-10', 'Low'),
(3, 'B+', 8, '2025-07-09', 'Available'),
(4, 'AB+', 3, '2025-07-08', 'Critical'),
(5, 'O+', 15, '2025-07-11', 'Available');
 -- to display select data
select * from Blood_Stock;

  -- to remove complete records from table
truncate table Blood_Stock;

-- to remove complete records and attributes from table
drop table Blood_Stock;

-- Donations Table
CREATE TABLE Donations (
    DonationID INT PRIMARY KEY,
    DonorID INT,
    DonationDate DATE,
    Volume INT,
    CenterName VARCHAR(100)
);

-- Insert values into Donations
INSERT INTO Donations (DonationID,DonarID,DonationDate,Volume,CenterName)VALUES
(1, 1, '2025-07-10', 450, 'Mumbai Center'),
(2, 2, '2025-07-09', 500, 'Pune Center'),
(3, 3, '2025-07-08', 480, 'Delhi Center'),
(4, 4, '2025-07-07', 460, 'Nashik Center'),
(5, 5, '2025-07-06', 490, 'Nagpur Center');

-- to display select data
select * from Donations;

  -- to remove complete records from table
truncate table Donations;

-- to remove complete records and attributes from table
drop table Donations;

-- Staff Table
CREATE TABLE Staff (
    StaffID INT PRIMARY KEY,
    Name VARCHAR(100),
    Role VARCHAR(50),
    Shift VARCHAR(50),
    Contact VARCHAR(15)
);

-- Insert values into Staff
INSERT INTO Staff (StaffID,Nmae,Role,Shift,Contact)VALUES
(1, 'Dr. Rekha Singh', 'Doctor', 'Morning', '9012345678'),
(2, 'Anil Jadhav', 'Technician', 'Evening', '8123456789'),
(3, 'Poonam Verma', 'Nurse', 'Night', '7234567890'),
(4, 'Nikhil Shah', 'Receptionist', 'Morning', '6345678901'),
(5, 'Geeta Iyer', 'Manager', 'General', '5456789012');

-- to display select data
select * from Staff;

  -- to remove complete records from table
truncate table Staff;

-- to remove complete records and attributes from table
drop table Staff;

-- --------------------------------------------------- Analysis of Database ------------------------------------------------
/*
Database Name -->Pharmacy_Management

Tables -->

1. Medicines(MedicineID,Name,Category,Price,Stock)
2.Suppliers (SupplierID,Name,Contact,Address,City)
3.Customers(CustomerID,Name,Contact,Gender,City)
4.Sales(SaleID,MedicineID,CustomerID,Quantity,SaleDate)
5.Staff(StaffID,Name,Role,Shift,Conatact) 
*/
   
   -- ---------------------------------------- Database queries ---------------------------------------------------------
-- Create a database Pharmacy_Management;
CREATE DATABASE Pharmacy_Management;

-- to work on database, you need to use it first
USE Pharmacy_Management;

-- --------------------------------------------------------- Table Queries ----------------------------------------------

-- Medicines Table
CREATE TABLE Medicines (
    MedicineID INT PRIMARY KEY,
    Name VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(6,2),
    Stock INT
);

-- Insert values into Medicines table
INSERT INTO Medicines(MedicineID,Name,Category,Price,Stock) VALUES
(1, 'Paracetamol', 'Painkiller', 25.50, 100),
(2, 'Amoxicillin', 'Antibiotic', 49.00, 80),
(3, 'Cetirizine', 'Antihistamine', 15.00, 120),
(4, 'Metformin', 'Diabetes', 60.00, 75),
(5, 'Ibuprofen', 'Anti-inflammatory', 30.00, 90);

-- to display select data
select * from Medicines;

  -- to remove complete records from table
truncate table Medicines;

-- to remove complete records and attributes from table
drop table Medicines;


-- Suppliers Table
CREATE TABLE Suppliers (
    SupplierID INT PRIMARY KEY,
    Name VARCHAR(100),
    Contact VARCHAR(15),
    Address VARCHAR(150),
    City VARCHAR(50)
);

-- Insert values into Suppliers table
INSERT INTO Suppliers (SupplierID,Name,Contact,Address,City)VALUES
(1, 'HealthCare Ltd.', '9876543210', '123 MG Road', 'Mumbai'),
(2, 'PharmaPlus', '8765432109', '45 FC Road', 'Pune'),
(3, 'Wellness Co.', '7654321098', '12 Park Street', 'Kolkata'),
(4, 'MediZone Pvt Ltd', '6543210987', '88 Hill Road', 'Delhi'),
(5, 'LifeMed Pharma', '5432109876', '22 Station Road', 'Chennai');

-- to display select data
select * from Suppliers;

  -- to remove complete records from table
truncate table Suppliers;

-- to remove complete records and attributes from table
drop table Suppliers;


-- Customers Table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Contact VARCHAR(15),
    Gender VARCHAR(10),
    City VARCHAR(50)
);

-- Insert values into Customers table
INSERT INTO Customers(CustomerID,Name,Contact,Gender,City) VALUES
(1, 'Rohit Sharma', '9988776655', 'Male', 'Mumbai'),
(2, 'Sneha Patil', '8877665544', 'Female', 'Pune'),
(3, 'Amit Verma', '7766554433', 'Male', 'Delhi'),
(4, 'Neha Iyer', '6655443322', 'Female', 'Chennai'),
(5, 'Kunal Shah', '5544332211', 'Male', 'Ahmedabad');

-- to display select data
select * from Customers;

  -- to remove complete records from table
truncate table Customers;

-- to remove complete records and attributes from table
drop table Customers;


-- Sales Table
CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    MedicineID INT,
    CustomerID INT,
    Quantity INT,
    SaleDate DATE
);

-- Insert values into Sales table
INSERT INTO Sales(SaleID,MedicineID,CustomerID,Quantity,SaleDate) VALUES
(1, 1, 1, 2, '2025-07-11'),
(2, 2, 2, 1, '2025-07-10'),
(3, 3, 3, 3, '2025-07-09'),
(4, 4, 4, 1, '2025-07-08'),
(5, 5, 5, 2, '2025-07-07');

-- to display select data
select * from Sales;

  -- to remove complete records from table
truncate table Sales;

-- to remove complete records and attributes from table
drop table Sales;


-- Staff Table
CREATE TABLE Staff (
    StaffID INT PRIMARY KEY,
    Name VARCHAR(100),
    Role VARCHAR(50),
    Shift VARCHAR(50),
    Contact VARCHAR(15)
);

-- Insert values into Staff table
INSERT INTO Staff(StaffID,Name,Role,Shift,Conatact) VALUES
(1, 'Dr. Kavita Desai', 'Pharmacist', 'Morning', '9123456789'),
(2, 'Anil Kumar', 'Store Keeper', 'Evening', '8234567890'),
(3, 'Poonam Rao', 'Cashier', 'Afternoon', '7345678901'),
(4, 'Ramesh Jain', 'Manager', 'General', '6456789012'),
(5, 'Sita Verma', 'Helper', 'Night', '5567890123');

-- to display select data
select * from Staff;

  -- to remove complete records from table
truncate table Staff;

-- to remove complete records and attributes from table
drop table Staff;

-- --------------------------------------------------- Analysis of Database ------------------------------------------------
/*
Database Name --> Donation_Tracking

Tables -->

1. Donors (DonorID,Name,Contact,Email,City)
2.Recipients(RecipientID,Name,Contact,Reason,City)
3.Donations (DonationID,DonorID,Amount,DonationDate,Mode)
4.Campaigns (CampaginID,Title,TargetAmount,StartDate,EndDate)
5.Staff(StaffID,Name,Role,Shift,Contact)
*/
   
   -- ---------------------------------------- Database queries ---------------------------------------------------------

-- Create database Donation_Tracking;
CREATE DATABASE Donation_Tracking;

-- to work on database, you need to use it first
USE Donation_Tracking;

-- --------------------------------------------------------- Table Queries ----------------------------------------------

-- Donors Table
CREATE TABLE Donors (
    DonorID INT PRIMARY KEY,
    Name VARCHAR(100),
    Contact VARCHAR(15),
    Email VARCHAR(100),
    City VARCHAR(50)
);

-- Insert values into Donors
INSERT INTO Donors (DonorID,Name,Contact,Email,City)VALUES
(1, 'Amit Sharma', '9876543210', 'amit@gmail.com', 'Delhi'),
(2, 'Sneha Patil', '8765432109', 'sneha@gmail.com', 'Mumbai'),
(3, 'Ravi Kumar', '7654321098', 'ravi@gmail.com', 'Chennai'),
(4, 'Neha Singh', '6543210987', 'neha@gmail.com', 'Bangalore'),
(5, 'Kunal Mehta', '5432109876', 'kunal@gmail.com', 'Pune');

-- to display select data
select * from Donors;

  -- to remove complete records from table
truncate table Donors;

-- to remove complete records and attributes from table
drop table Donors;


-- Recipients Table
CREATE TABLE Recipients (
    RecipientID INT PRIMARY KEY,
    Name VARCHAR(100),
    Contact VARCHAR(15),
    Reason VARCHAR(100),
    City VARCHAR(50)
);

-- Insert values into Recipients
INSERT INTO Recipients(RecipientID,Name,Contact,Reason,City) VALUES
(1, 'Pooja Rane', '9988776655', 'Medical Help', 'Mumbai'),
(2, 'Raj Verma', '8877665544', 'Education Support', 'Delhi'),
(3, 'Anita Das', '7766554433', 'Flood Relief', 'Kolkata'),
(4, 'Vikas Yadav', '6655443322', 'Old Age Home', 'Lucknow'),
(5, 'Simran Kaur', '5544332211', 'Orphanage Aid', 'Chandigarh');

-- to display select data
select * from Recipients;

  -- to remove complete records from table
truncate table Recipients;

-- to remove complete records and attributes from table
drop table Recipients;


-- Donations Table
CREATE TABLE Donations (
    DonationID INT PRIMARY KEY,
    DonorID INT,
    Amount DECIMAL(10,2),
    DonationDate DATE,
    Mode VARCHAR(50)
);

-- Insert values into Donations
INSERT INTO Donations (DonationID,DonorID,Amount,DonationDate,Mode)VALUES
(1, 1, 1000.00, '2025-07-01', 'Online'),
(2, 2, 2500.00, '2025-07-03', 'Cheque'),
(3, 3, 1500.00, '2025-07-05', 'Cash'),
(4, 4, 3000.00, '2025-07-07', 'Online'),
(5, 5, 2000.00, '2025-07-10', 'Bank Transfer');

-- to display select data
select * from Donations;

  -- to remove complete records from table
truncate table Donations;

-- to remove complete records and attributes from table
drop table Donations;


-- Campaigns Table
CREATE TABLE Campaigns (
    CampaignID INT PRIMARY KEY,
    Title VARCHAR(100),
    TargetAmount DECIMAL(10,2),
    StartDate DATE,
    EndDate DATE
);

-- Insert values into Campaigns
INSERT INTO Campaigns (CampaginID,Title,TargetAmount,StartDate,EndDate)VALUES
(1, 'Flood Relief 2025', 50000.00, '2025-07-01', '2025-07-31'),
(2, 'Medical Aid Drive', 30000.00, '2025-07-05', '2025-08-05'),
(3, 'Back to School Fund', 40000.00, '2025-06-20', '2025-07-20'),
(4, 'Feed the Hungry', 60000.00, '2025-07-10', '2025-08-10'),
(5, 'Senior Support Campaign', 35000.00, '2025-07-15', '2025-08-15');

-- to display select data
select * from  Campaigns;

  -- to remove complete records from table
truncate table  Campaigns;

-- to remove complete records and attributes from table
drop table  Campaigns;


-- Staff Table
CREATE TABLE Staff (
    StaffID INT PRIMARY KEY,
    Name VARCHAR(100),
    Role VARCHAR(50),
    Shift VARCHAR(50),
    Contact VARCHAR(15)
);

-- Insert values into Staff
INSERT INTO Staff(StaffID,Name,Role,Shift,Contact) VALUES
(1, 'Dr. Renu Gupta', 'Coordinator', 'Morning', '9998887770'),
(2, 'Suresh Iyer', 'Accountant', 'Day', '8887776661'),
(3, 'Mansi Shah', 'Volunteer', 'Evening', '7776665552'),
(4, 'Alok Dubey', 'Manager', 'General', '6665554443'),
(5, 'Komal Patil', 'Assistant', 'Night', '5554443334');

-- to display select data
select * from Staff;

  -- to remove complete records from table
truncate table Staff;

-- to remove complete records and attributes from table
drop table Staff;

-- --------------------------------------------------- Analysis of Database ------------------------------------------------
/*
Database Name --> Online_Food_Delivery

Tables -->

1. Customers(CustomerID,Name,Contact,Addtess,City)
2. Restaurants(RestaurantID,Name,City,Contact,CuisineType)
3.MenuItems (ItemID,RestaurantID,ItemName,Price,Category)
4.Orders(OrderID,CustomerID,RestaurantID,OrderDate,TotalAmount) 
5.Delivery(DeliveryID,OrderID,DeliveryPerson,DeliveryTime,Status)
*/
   
   -- ---------------------------------------- Database queries ---------------------------------------------------------


-- Create a database Online_Food_Delivery;
CREATE DATABASE Online_Food_Delivery;

-- to work on database, you need to use it first
USE Online_Food_Delivery;

-- --------------------------------------------------------- Table Queries ----------------------------------------------

-- Customers Table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Contact VARCHAR(15),
    Address VARCHAR(200),
    City VARCHAR(50)
);

-- Insert values into Customers
INSERT INTO Customers(CustomerID,Name,Contact,Addtess,City) VALUES
(1, 'Amit Sharma', '9876543210', '101 MG Road', 'Mumbai'),
(2, 'Sneha Patil', '8765432109', '22 FC Lane', 'Pune'),
(3, 'Ravi Mehta', '7654321098', '45 Park Street', 'Delhi'),
(4, 'Neha Verma', '6543210987', '78 Hill View', 'Bangalore'),
(5, 'Kunal Rao', '5432109876', '12 Sea View', 'Chennai');

-- to display select data
select * from Customers;

  -- to remove complete records from table
truncate table Customers;

-- to remove complete records and attributes from table
drop table Customers;


-- Restaurants Table
CREATE TABLE Restaurants (
    RestaurantID INT PRIMARY KEY,
    Name VARCHAR(100),
    City VARCHAR(50),
    Contact VARCHAR(15),
    CuisineType VARCHAR(50)
);

-- Insert values into Restaurants
INSERT INTO Restaurants(RestaurantID,Name,City,Contact,CuisineType) VALUES
(1, 'Spice Garden', 'Mumbai', '9123456780', 'Indian'),
(2, 'Pasta Palace', 'Pune', '9234567890', 'Italian'),
(3, 'Burger Barn', 'Delhi', '9345678901', 'Fast Food'),
(4, 'Sushi Spot', 'Bangalore', '9456789012', 'Japanese'),
(5, 'Tandoori Treats', 'Chennai', '9567890123', 'Mughlai');

-- to display select data
select * from Restaurants;

  -- to remove complete records from table
truncate table Restaurants;

-- to remove complete records and attributes from table
drop table Restaurants;


-- MenuItems Table
CREATE TABLE MenuItems (
    ItemID INT PRIMARY KEY,
    RestaurantID INT,
    ItemName VARCHAR(100),
    Price DECIMAL(6,2),
    Category VARCHAR(50)
);

-- Insert values into MenuItems
INSERT INTO MenuItems (ItemID,RestaurantID,ItemName,Price,Category)VALUES
(1, 1, 'Paneer Butter Masala', 250.00, 'Main Course'),
(2, 2, 'Spaghetti Alfredo', 300.00, 'Main Course'),
(3, 3, 'Veg Burger', 120.00, 'Snacks'),
(4, 4, 'Sushi Roll', 350.00, 'Starters'),
(5, 5, 'Chicken Tandoori', 280.00, 'Starters');

-- to display select data
select * from MenuItems;

  -- to remove complete records from table
truncate table MenuItems;

-- to remove complete records and attributes from table
drop table MenuItems;


-- Orders Table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    RestaurantID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(7,2)
);

-- Insert values into Orders
INSERT INTO Orders(OrderID,CustomerID,RestaurantID,OrderDate,TotalAmount) VALUES
(1, 1, 1, '2025-07-01', 500.00),
(2, 2, 2, '2025-07-02', 320.00),
(3, 3, 3, '2025-07-03', 150.00),
(4, 4, 4, '2025-07-04', 400.00),
(5, 5, 5, '2025-07-05', 300.00);

-- to display select data
select * from Orders;

  -- to remove complete records from table
truncate table Orders;

-- to remove complete records and attributes from table
drop table Orders;


-- Delivery Table
CREATE TABLE Delivery (
    DeliveryID INT PRIMARY KEY,
    OrderID INT,
    DeliveryPerson VARCHAR(100),
    DeliveryTime TIME,
    Status VARCHAR(50)
);

-- Insert values into Delivery
INSERT INTO Delivery(DeliveryID,OrderID,DeliveryPerson,DeliveryTime,Status) VALUES
(1, 1, 'Rahul Kumar', '13:45:00', 'Delivered'),
(2, 2, 'Pooja Nair', '14:30:00', 'Delivered'),
(3, 3, 'Arjun Rao', '15:10:00', 'In Transit'),
(4, 4, 'Neha Shah', '16:00:00', 'Pending'),
(5, 5, 'Karan Iyer', '17:15:00', 'Delivered');

-- to display select data
select * from Delivery;

  -- to remove complete records from table
truncate table Delivery;

-- to remove complete records and attributes from table
drop table Delivery;

-- --------------------------------------------------- Analysis of Database ------------------------------------------------
/*
Database Name --> Wedding_Planner

Tables -->

1.Clients(ClientID,Name,Contact,Email,Address) 
2. Venues (VenueID,Mame,Location,Capacity,RentalCost)
3. Weddings (WedingID,ClientID,VenueID,WeddingDate,Budget)
4. Vendors (VendorID,Name,ServiceType,Contact,Rating)
5.Staff(StaffID,Name,Role,HireDate,Contact) 
*/
   
   -- ---------------------------------------- Database queries ---------------------------------------------------------

-- Create a database Wedding_Planner;
CREATE DATABASE Wedding_Planner;

-- to work on database, you need to use it first
USE Wedding_Planner;

-- --------------------------------------------------------- Table Queries ----------------------------------------------

-- Clients Table
CREATE TABLE Clients (
    ClientID INT PRIMARY KEY,
    Name VARCHAR(100),
    Contact VARCHAR(15),
    Email VARCHAR(100),
    Address VARCHAR(200)
);

INSERT INTO Clients(ClientID,Name,Contact,Email,Address) VALUES
(1, 'Aisha Kapoor', '9876543210', 'aisha.kapoor@example.com', '12 Rose St, Mumbai'),
(2, 'Rohan Mehta', '8765432109', 'rohan.mehta@example.com', '45 Lake Rd, Pune'),
(3, 'Priya Singh', '7654321098', 'priya.singh@example.com', '78 Hill Ave, Delhi'),
(4, 'Vikram Patel', '6543210987', 'vikram.patel@example.com', '23 Garden Ln, Bangalore'),
(5, 'Sneha Reddy', '5432109876', 'sneha.reddy@example.com', '89 Palm St, Chennai');

-- to display select data
select * from Clients;

  -- to remove complete records from table
truncate table Clients;

-- to remove complete records and attributes from table
drop table Clients;


-- Venues Table
CREATE TABLE Venues (
    VenueID INT PRIMARY KEY,
    Name VARCHAR(100),
    Location VARCHAR(100),
    Capacity INT,
    RentalCost DECIMAL(10,2)
);

INSERT INTO Venues (VenueID,Mame,Location,Capacity,RentalCost)VALUES
(1, 'Grand Ballroom', 'Mumbai', 500, 150000.00),
(2, 'Garden Terrace', 'Pune', 200, 80000.00),
(3, 'Beachside Pavilion', 'Goa', 300, 120000.00),
(4, 'Heritage Hall', 'Delhi', 400, 130000.00),
(5, 'Rooftop Oasis', 'Bangalore', 150, 90000.00);

-- to display select data
select * from  Venues;

  -- to remove complete records from table
truncate table Venues;

-- to remove complete records and attributes from table
drop table Venues;


-- Weddings Table
CREATE TABLE Weddings (
    WeddingID INT PRIMARY KEY,
    ClientID INT,
    VenueID INT,
    WeddingDate DATE,
    Budget DECIMAL(12,2)
);

INSERT INTO Weddings (WedingID,ClientID,VenueID,WeddingDate,Budget)VALUES
(1, 1, 1, '2025-12-15', 500000.00),
(2, 2, 2, '2026-01-20', 300000.00),
(3, 3, 4, '2026-02-14', 450000.00),
(4, 4, 3, '2025-11-10', 400000.00),
(5, 5, 5, '2026-03-05', 350000.00);

-- to display select data
select * from Weddings;

  -- to remove complete records from table
truncate table Weddings;

-- to remove complete records and attributes from table
drop table Weddings;


-- Vendors Table
CREATE TABLE Vendors (
    VendorID INT PRIMARY KEY,
    Name VARCHAR(100),
    ServiceType VARCHAR(50),
    Contact VARCHAR(15),
    Rating INT
);

INSERT INTO Vendors (VendorID,Name,ServiceType,Contact,Rating)VALUES
(1, 'Star Caterers', 'Catering', '9123456780', 5),
(2, 'Bloom Decor', 'Decoration', '9234567890', 4),
(3, 'Melody DJs', 'Entertainment', '9345678901', 5),
(4, 'Flash Photography', 'Photography', '9456789012', 4),
(5, 'Sweet Treats', 'Bakery', '9567890123', 5);

-- to display select data
select * from Vendors;

  -- to remove complete records from table
truncate table Vendors;

-- to remove complete records and attributes from table
drop table Vendors;


-- Staff Table
CREATE TABLE Staff (
    StaffID INT PRIMARY KEY,
    Name VARCHAR(100),
    Role VARCHAR(50),
    HireDate DATE,
    Contact VARCHAR(15)
);

INSERT INTO Staff(StaffID,Name,Role,HireDate,Contact) VALUES
(1, 'Anita Sharma', 'Event Coordinator', '2024-05-10', '9012345678'),
(2, 'Karan Patel', 'Logistics Manager', '2024-06-15', '8123456789'),
(3, 'Meera Joshi', 'Guest Relations', '2024-07-01', '7234567890'),
(4, 'Rajat Verma', 'Technical Lead', '2024-08-20', '6345678901'),
(5, 'Dhara Rao', 'Finance Officer', '2024-09-05', '5456789012');

-- to display select data
select * from Staff;

  -- to remove complete records from table
truncate table Staff;

-- to remove complete records and attributes from table
drop table Staff;

-- --------------------------------------------------- Analysis of Database ------------------------------------------------
/*
Database Name --> Digital_Wallet

Tables -->

1.  Users (UserID,Name,Email,Phone,City)
2. Wallets(WalletID,UserID,Balance,Status,LastUpdated) 
3.Transactions(TransactionID,WalletID,Amount,Type,TransDate)
4.Merchants(MerchantID,Name,Category,Contact,City) 
5.Payments (PaymentID,WalletID,MerchantID,Amount,PaymentDate)
*/
   
   -- ---------------------------------------- Database queries ---------------------------------------------------------

-- Create a database Digital_Wallet;
CREATE DATABASE Digital_Wallet;

-- to work on database, you need to use it first
USE Digital_Wallet;

-- --------------------------------------------------------- Table Queries ----------------------------------------------

-- Users Table
CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    City VARCHAR(50)
);

INSERT INTO Users (UserID,Name,Email,Phone,City)VALUES
(1, 'Ravi Sharma', 'ravi@gmail.com', '9876543210', 'Delhi'),
(2, 'Sneha Patil', 'sneha@gmail.com', '8765432109', 'Mumbai'),
(3, 'Amit Verma', 'amit@gmail.com', '7654321098', 'Pune'),
(4, 'Neha Mehta', 'neha@gmail.com', '6543210987', 'Bangalore'),
(5, 'Kunal Rao', 'kunal@gmail.com', '5432109876', 'Chennai');

-- to display select data
select * from Users;

  -- to remove complete records from table
truncate table Users;

-- to remove complete records and attributes from table
drop table Users;


-- Wallets Table
CREATE TABLE Wallets (
    WalletID INT PRIMARY KEY,
    UserID INT,
    Balance DECIMAL(10,2),
    Status VARCHAR(20),
    LastUpdated DATE
);

INSERT INTO Wallets(WalletID,UserID,Balance,Status,LastUpdated) VALUES
(1, 1, 5000.00, 'Active', '2025-07-01'),
(2, 2, 1500.50, 'Active', '2025-07-02'),
(3, 3, 0.00, 'Inactive', '2025-06-30'),
(4, 4, 3200.75, 'Active', '2025-07-03'),
(5, 5, 120.25, 'Suspended', '2025-07-04');

-- to display select data
select * from  Wallets;

  -- to remove complete records from table
truncate table  Wallets;

-- to remove complete records and attributes from table
drop table  Wallets;

-- Transactions Table
CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY,
    WalletID INT,
    Amount DECIMAL(10,2),
    Type VARCHAR(10),
    TransDate DATE
);

INSERT INTO Transactions(TransactionID,WalletID,Amount,Type,TransDate) VALUES
(1, 1, 500.00, 'Credit', '2025-07-01'),
(2, 2, 200.00, 'Debit', '2025-07-02'),
(3, 3, 150.00, 'Credit', '2025-06-29'),
(4, 4, 700.00, 'Debit', '2025-07-03'),
(5, 5, 120.25, 'Debit', '2025-07-04');

-- to display select data
select * from  Transactions;

  -- to remove complete records from table
truncate table  Transactions;

-- to remove complete records and attributes from table
drop table  Transactions;


-- Merchants Table
CREATE TABLE Merchants (
    MerchantID INT PRIMARY KEY,
    Name VARCHAR(100),
    Category VARCHAR(50),
    Contact VARCHAR(15),
    City VARCHAR(50)
);

INSERT INTO Merchants(MerchantID,Name,Category,Contact,City) VALUES
(1, 'Flipzon', 'E-commerce', '9998887770', 'Mumbai'),
(2, 'FreshMart', 'Groceries', '8887776661', 'Delhi'),
(3, 'RideNow', 'Transport', '7776665552', 'Bangalore'),
(4, 'FoodDash', 'Food Delivery', '6665554443', 'Pune'),
(5, 'BookBazar', 'Books', '5554443334', 'Hyderabad');

-- to display select data
select * from Merchants;

  -- to remove complete records from table
truncate table Merchants;

-- to remove complete records and attributes from table
drop table Merchants;


-- Payments Table
CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY,
    WalletID INT,
    MerchantID INT,
    Amount DECIMAL(10,2),
    PaymentDate DATE
);

INSERT INTO Payments (PaymentID,WalletID,MerchantID,Amount,PaymentDate)VALUES
(1, 1, 1, 1200.00, '2025-07-01'),
(2, 2, 2, 300.00, '2025-07-02'),
(3, 3, 3, 150.00, '2025-06-29'),
(4, 4, 4, 450.00, '2025-07-03'),
(5, 5, 5, 220.25, '2025-07-04');

-- to display select data
select * from  Payments;

  -- to remove complete records from table
truncate table  Payments;

-- to remove complete records and attributes from table
drop table  Payments;

-- --------------------------------------------------- Analysis of Database ------------------------------------------------
/*
Database Name --> AIRLINE

Tables -->

1. airline (id, name, country, year, size)
2.airport (id, name, city, country, code)
3.flight1 (flight_id, Airline_id, Originairport_id,Destinationairpport_id ,Flightnumber)
4. Passenger ( Passenger_id, FirstName, LastName , date, Gender )
5.  Booking (BookingID,  PassengerID, FlightID, BookingDate, SeatClass)

*/
 -- ---------------------------------------- Database queries ---------------------------------------------------------
-- create a database AIRLINE
CREATE DATABASE AIRLINE;

-- to work on database, you need to use it first
USE AIRLINE;

  -- --------------------------------------------------------- Table Queries ----------------------------------------------

-- TABLE 1 airline 
CREATE TABLE Airline (
    AirlineID INT PRIMARY KEY,
    AirlineName VARCHAR(100),
    Country VARCHAR(100),
    EstablishedYear INT,
    FleetSize INT
);

-- insert value in a table
INSERT INTO Airline (id, name, country, year, size)
VALUES
    (1, 'Air India', 'India', 1932, 150),
    (2, 'IndiGo', 'India', 2006, 280),
    (3, 'SpiceJet', 'India', 2005, 130),
    (4, 'GoAir', 'India', 2005, 60),
    (5, 'Vistara', 'India', 2013, 50);
    
    -- to display table data
    select * from Airline;
    
    -- to reamove complete records from table
    truncate table Airline;
    
    -- to remove complete records and attribute from table
    drop table Airline;
    
    
   -- Table 2  Airport 
CREATE TABLE Airport (
    AirportID INT PRIMARY KEY,
    AirportName VARCHAR(100),
    City VARCHAR(100),
    Country VARCHAR(100),
    IATA_Code VARCHAR(3)
);

-- insert value in a table
INSERT INTO Airport (id, name, city, country, code)
VALUES
    (1, 'Indira Gandhi International Airport', 'Delhi', 'India', 'DEL'),
    (2, 'Chhatrapati Shivaji Maharaj International Airport', 'Mumbai', 'India', 'BOM'),
    (3, 'Kempegowda International Airport', 'Bangalore', 'India', 'BLR'),
    (4, 'Netaji Subhas Chandra Bose International Airport', 'Kolkata', 'India', 'CCU'),
    (5, 'Chennai International Airport', 'Chennai', 'India', 'MAA');
   
   -- to display table data
    select * from Airport;
   
   -- to reamove complete records from table
   truncate table Airport;
    
    -- to remove complete records and attribute from table
    drop table Airport;
    
    
    -- Table 3 Flight1 
  CREATE TABLE Flight1 (
  flight_id INT PRIMARY KEY,
 Airline_id INT,
  Originairport_id INT,
  Destinationairpport_id INT,
  Flightnumber VARCHAR(10)
  );
  
  -- insert value in a table
 INSERT INTO Flight1 (flight_id, Airline_id, Originairport_id,Destinationairpport_id ,Flightnumber)
VALUES
    (1, 1, 1, 2, 'AI202'),
    (2, 2, 2, 3, '6E303'),
    (3, 3, 3, 4, 'SG404'),
    (4, 4, 4, 5, 'G505'),
    (5, 5, 5, 1, 'UK606');
    
   -- to display table data
    select * from Flight1;
    
    -- to reamove complete records from table
    truncate table Flight1;
    
   -- to remove complete records and attribute from table
    drop table Flight1;
    
    -- Table 4 Passenger 
    CREATE TABLE Passenger (
    PassengerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Gender CHAR(1)
);

 -- insert value in a table
INSERT INTO Passenger  ( Passenger_id, FirstName, LastName , date, Gender)
 VALUES
    (1, 'John', 'Doe', '1985-06-15', 'M'),
    (2, 'Jane', 'Smith', '1990-07-20', 'F'),
    (3, 'Robert', 'Johnson', '1978-03-25', 'M'),
    (4, 'Emily', 'Davis', '1995-11-30', 'F'),
    (5, 'Michael', 'Miller', '1982-01-10', 'M');

 -- to display table data
    select * from Passenger;
    
   -- to reamove complete records from table
   truncate table Passenger;
   
    -- to remove complete records and attribute from table
   drop table Passenger;
    
    -- Table 5  Booking
    CREATE TABLE Booking (
    BookingID INT PRIMARY KEY,
    PassengerID INT,
    FlightID INT,
    BookingDate DATE,
    SeatClass VARCHAR(20)
    );
    
-- insert value in a table
INSERT INTO Booking  (BookingID,  PassengerID, FlightID, BookingDate, SeatClass)
VALUES
    (1, 1, 1, '2025-06-01', 'Economy'),
    (2, 2, 2, '2025-06-02', 'Business'),
    (3, 3, 3, '2025-06-03', 'Economy'),
    (4, 4, 4, '2025-06-04', 'First Class'),
    (5, 5, 5, '2025-06-05', 'Economy');
 
    -- to display table data
    select * from Booking;
  
    -- to reamove complete records from table
  truncate table Booking;
   
    -- to remove complete records and attribute from table
   drop table Booking; 
    
    
   -- --------------------------------------------------- Analysis of Database ------------------------------------------------
/*
Database Name -->HOSPITALS

Tables -->

1. doctors (doctor_id, name, specialty, phone, hospital_id)
2. patients (patient_id, name, age,  gender,  Admission_date)
3. appointments (appointment_id ,patient_id ,doctor_id ,appointment_date,status )
4. departments (department_id ,name ,floor,head_doctor,hospital_id) 
5. Booking (BookingID,  PassengerID, FlightID, BookingDate, SeatClass)

*/
 -- ---------------------------------------- Database queries ---------------------------------------------------------
-- create a database  HOSPITALS
CREATE DATABASE  HOSPITALS;

-- to work on database, you need to use it first
USE  HOSPITALS;

  -- --------------------------------------------------------- Table Queries ----------------------------------------------
   
    -- Table 1 doctors 
   CREATE TABLE doctors (
    doctor_id INT PRIMARY KEY,
    name VARCHAR(100),
    specialty VARCHAR(100),
    phone VARCHAR(20),
    hospital_id INT
);

INSERT INTO doctors  (doctor_id, name, specialty, phone, hospital_id)VALUES 
(1, 'Dr. John Smith', 'Cardiology', '555-1234', 1),
(2, 'Dr. Jane Lee', 'Neurology', '555-5678', 2),
(3, 'Dr. Ahmed Khan', 'Orthopedics', '555-9012', 3),
(4, 'Dr. Maria Gomez', 'Pediatrics', '555-3456', 4),
(5, 'Dr. Chen Wei', 'Oncology', '555-7890', 5);

  -- to display table data
  select * from doctors;

  -- to reamove complete records from table
   truncate table doctors;
 
 -- to remove complete records and attribute from table
   drop table doctors;
   
  -- Table 2 patients 
  CREATE TABLE patients (
    patient_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
     Admission_date DATE
);

 -- insert value in a table
INSERT INTO patients (patient_id, name, age,  gender,  Admission_date)VALUES 
(1, 'Alice Brown', 34, 'Female', '2025-05-20'),
(2, 'Bob Carter', 45, 'Male', '2025-05-21'),
(3, 'Clara Evans', 29, 'Female', '2025-05-22'),
(4, 'David Foster', 52, 'Male', '2025-05-23'),
(5, 'Eva Green', 60, 'Female', '2025-05-24');

 -- to display table data
select * from patients;

-- to reamove complete records from table
   truncate table patients;

-- to remove complete records and attribute from table
drop table patients;


-- Table 3 appointments 
    CREATE TABLE appointments (
    appointment_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    status VARCHAR(20)
);

-- insert value in a table
INSERT INTO appointments (appointment_id ,patient_id ,doctor_id ,appointment_date,status )
VALUES 
(1, 1, 1, '2025-06-01', 'Scheduled'),
(2, 2, 2, '2025-06-02', 'Completed'),
(3, 3, 3, '2025-06-03', 'Cancelled'),
(4, 4, 4, '2025-06-04', 'Scheduled'),
(5, 5, 5, '2025-06-05', 'Completed');

 -- to display table data
select * from appointments;

-- to reamove complete records from table
truncate table appointments;

-- to remove complete records and attribute from table
drop table appointments;


-- Table 4  departments 
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    name VARCHAR(100),
    floor INT,
    head_doctor VARCHAR(100),
    hospital_id INT
);

-- insert value in a table
INSERT INTO departments (department_id ,name ,floor,head_doctor,hospital_id) 
VALUES
(1, 'Cardiology', 2, 'Dr. John Smith', 1),
(2, 'Neurology', 3, 'Dr. Jane Lee', 2),
(3, 'Orthopedics', 1, 'Dr. Ahmed Khan', 3),
(4, 'Pediatrics', 2, 'Dr. Maria Gomez', 4),
(5, 'Oncology', 4, 'Dr. Chen Wei', 5);

-- to display table data
select * from departments;

-- to reamove complete records from table
truncate table departments;

-- to remove complete records and attribute from table
drop table departments;

  -- --------------------------------------------------- Analysis of Database ------------------------------------------------
/*
Database Name -->AMAZON

Tables -->

1.  users (user_id ,name, email ,password ,address ,phone )
2. Products ( product_id ,name ,description,price,stock_quantity ,category )
3. Orders (order_id ,user_id ,order_date ,total_amount,status ,shipping_address)
4. OrderItems (order_item_id ,order_id ,product_id ,quantity ,unit_price ,total_price )
5. Payments (payment_id ,order_id ,payment_date ,amount,payment_method ,payment_status)

*/
 -- ---------------------------------------- Database queries ---------------------------------------------------------
-- create a database AMAZON
CREATE DATABASE  AMAZON;

-- to work on database, you need to use it first
USE  AMAZON;

  -- --------------------------------------------------------- Table Queries ----------------------------------------------
   


-- Table 1 users (user_id ,name, email ,password ,address ,phone )
CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    password VARCHAR(100),
    address VARCHAR(255),
    phone VARCHAR(15)
);

-- insert value in a table
INSERT INTO Users VALUES
(1, 'Alice Johnson', 'alice@example.com', 'alice123', '123 Main St, Mumbai', '9876543210'),
(2, 'Bob Smith', 'bob@example.com', 'bob123', '456 Park Ave, Delhi', '9123456780'),
(3, 'Charlie Brown', 'charlie@example.com', 'charlie123', '789 Elm St, Bangalore', '9988776655'),
(4, 'Diana Prince', 'diana@example.com', 'diana123', '321 Oak St, Hyderabad', '9871234560'),
(5, 'Ethan Hunt', 'ethan@example.com', 'ethan123', '654 Pine St, Chennai', '9765432109');

-- to display table data
select * from Users;

-- to reamove complete records from table
truncate table Users;

-- to remove complete records and attribute from table
drop table Users;


-- Table 2 Products ( product_id ,name ,description,price,stock_quantity ,category )
CREATE TABLE Products ( 
    product_id INT PRIMARY KEY,
    name VARCHAR(100),
    description TEXT,
    price DECIMAL(10,2),
    stock_quantity INT,
    category VARCHAR(50)
);

-- insert value in a table
INSERT INTO Products VALUES
(101, 'Wireless Mouse', 'Ergonomic wireless mouse', 25.99, 100, 'Electronics'),
(102, 'Bluetooth Headphones', 'Noise-cancelling over-ear headphones', 89.99, 50, 'Electronics'),
(103, 'Coffee Maker', '12-cup programmable coffee maker', 49.99, 30, 'Home Appliances'),
(104, 'Yoga Mat', 'Non-slip yoga mat', 19.99, 200, 'Fitness'),
(105, 'Smartphone', 'Latest model smartphone with 128GB storage', 699.99, 25, 'Electronics');

-- to display table data
select * from Products;

-- to reamove complete records from table
truncate table Products;

-- to remove complete records and attribute from table
drop table Products;

-- Table 3 Orders (order_id ,user_id ,order_date ,total_amount,status ,shipping_address)
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    user_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    status VARCHAR(20),
    shipping_address VARCHAR(255)
);

-- insert value in a table
INSERT INTO Orders VALUES
(1001, 1, '2025-06-01', 115.98, 'Shipped', '123 Main St, Mumbai'),
(1002, 2, '2025-06-02', 49.99, 'Processing', '456 Park Ave, Delhi'),
(1003, 3, '2025-06-03', 19.99, 'Delivered', '789 Elm St, Bangalore'),
(1004, 4, '2025-06-04', 699.99, 'Cancelled', '321 Oak St, Hyderabad'),
(1005, 5, '2025-06-05', 25.99, 'Shipped', '654 Pine St, Chennai');

select * from Orders;

truncate table Orders;

-- to remove complete records and attribute from table
drop table Orders;

 
 CREATE TABLE OrderItems (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    unit_price DECIMAL(10,2),
    total_price DECIMAL(10,2)
);
-- insert value in a table
INSERT INTO OrderItems  (order_item_id ,order_id ,product_id ,quantity ,unit_price ,total_price )
 values 
(1, 1001, 101, 2, 25.99, 51.98),
(2, 1001, 102, 1, 89.99, 89.99),
(3, 1002, 103, 1, 49.99, 49.99),
(4, 1003, 104, 1, 19.99, 19.99),
(5, 1004, 105, 1, 699.99, 699.99);

-- to display table data
select * from OrderItems;

truncate table  OrderItems;

-- to remove complete records and attribute from table
drop table  OrderItems;

CREATE TABLE Payments (
    payment_id INT PRIMARY KEY,
    order_id INT,
    payment_date DATE,
    amount DECIMAL(10,2),
    payment_method VARCHAR(50),
    payment_status VARCHAR(20)
);
-- insert value in a table
INSERT INTO Payments (payment_id ,order_id ,payment_date ,amount,payment_method ,payment_status)
VALUES
(501, 1001, '2025-06-01', 115.98, 'Credit Card', 'Completed'),
(502, 1002, '2025-06-02', 49.99, 'PayPal', 'Pending'),
(503, 1003, '2025-06-03', 19.99, 'Debit Card', 'Completed'),
(504, 1004, '2025-06-04', 699.99, 'Credit Card', 'Refunded'),
(505, 1005, '2025-06-05', 25.99, 'UPI', 'Completed');

-- to display table data
select * from  Payments;

-- to reamove complete records from table
truncate table  Payments;

-- to remove complete records and attribute from table
drop table  Payments;

CREATE TABLE Reviews (
    review_id INT PRIMARY KEY,
    user_id INT,
    product_id INT,
    rating INT,
    comment TEXT,
    review_date DATE
);
-- insert value in a table
INSERT INTO Reviews VALUES
(901, 1, 101, 5, 'Great mouse, very comfortable!', '2025-06-02'),
(902, 2, 102, 4, 'Good sound quality.', '2025-06-03'),
(903, 3, 103, 3, 'Decent coffee maker.', '2025-06-04'),
(904, 4, 104, 5, 'Excellent yoga mat!', '2025-06-05'),
(905, 5, 105, 2, 'Battery life could be better.', '2025-06-06');

-- to display table data
select * from  Reviews;

-- to reamove complete records from table
truncate table  Reviews;

-- to remove complete records and attribute from table
drop table  Reviews;

-- --------------------------------------------------- Analysis of Database ------------------------------------------------
/*
Database Name -->UBER

Tables -->

1. rides (ride_id, driver_name, passenger_name, pickup_location, drop_location)
2.  driver(driver_id , name ,phone ,email ,license_number ,rating )
3. passengers (passenger_id ,name,phone ,email,gender ,age )
4   payments (payment_id ,ride_id ,amount ,method ,status,paid_on)
5. feedback ( feedback_id ,ride_id ,passenger_id ,driver_id,rating ,comment)
 

*/
 -- ---------------------------------------- Database queries ---------------------------------------------------------
-- create a database UBER
CREATE DATABASE  UBER;

-- to work on database, you need to use it first
USE  UBER;

  -- --------------------------------------------------------- Table Queries ----------------------------------------------
   


-- TABLE 4

create database UBER;
use UBER;

CREATE TABLE rides (
    ride_id INT PRIMARY KEY,
    driver_name VARCHAR(50),
    passenger_name VARCHAR(50),
    pickup_location VARCHAR(100),
    drop_location VARCHAR(100)
);

INSERT INTO rides (ride_id, driver_name, passenger_name, pickup_location, drop_location) VALUES
(1, 'Amit Sharma', 'Ravi Verma', 'Andheri', 'Bandra'),
(2, 'Sunita Desai', 'Neha Kapoor', 'Powai', 'Dadar'),
(3, 'Rakesh Mehta', 'Anil Joshi', 'Borivali', 'Churchgate'),
(4, 'Kiran Yadav', 'Pooja Jain', 'Thane', 'Vashi'),
(5, 'Priya Singh', 'Raj Malhotra', 'Kandivali', 'Colaba');

-- to display table data
select * from rides ;

-- to reamove complete records from table
truncate table rides;

-- to remove complete records and attribute from table
drop table rides;


CREATE TABLE driver(
    driver_id INT PRIMARY KEY,
    name VARCHAR(50),
    phone VARCHAR(15),
    email VARCHAR(50),
    license_number VARCHAR(20),
    rating DECIMAL(2,1)
);
-- insert value in a table
INSERT INTO  driver(driver_id , name ,phone ,email ,license_number ,rating )
 VALUES
(101, 'Amit Sharma', '9876543210', 'amit@uber.com', 'MH12ABC1234', 4.8),
(102, 'Sunita Desai', '9876543211', 'sunita@uber.com', 'MH14XYZ5678', 4.5),
(103, 'Rakesh Mehta', '9876543212', 'rakesh@uber.com', 'MH01LMN9123', 4.9),
(104, 'Kiran Yadav', '9876543213', 'kiran@uber.com', 'MH02OPQ4567', 4.6),
(105, 'Priya Singh', '9876543214', 'priya@uber.com', 'MH15DEF7890', 4.7),
(106, 'Farhan Khan', '9876543215', 'farhan@uber.com', 'MH18TUV3333', 4.4);

-- to display table data
select * from  drivers;

-- to reamove complete records from table
truncate table driver;

-- to remove complete records and attribute from table
drop table driver;

CREATE TABLE passengers (
    passenger_id INT PRIMARY KEY,
    name VARCHAR(50),
    phone VARCHAR(15),
    email VARCHAR(50),
    gender VARCHAR(10),
    age INT
);
-- insert value in a table
INSERT INTO passengers (passenger_id ,name,phone ,email,gender ,age )
 VALUES
(201, 'Ravi Verma', '8888888880', 'ravi@uber.com', 'Male', 28),
(202, 'Neha Kapoor', '8888888881', 'neha@uber.com', 'Female', 32),
(203, 'Anil Joshi', '8888888882', 'anil@uber.com', 'Male', 45),
(204, 'Pooja Jain', '8888888883', 'pooja@uber.com', 'Female', 26),
(205, 'Raj Malhotra', '8888888884', 'raj@uber.com', 'Male', 30),
(206, 'Anita Das', '8888888885', 'anita@uber.com', 'Female', 27);

-- to display table data
select * from passengers;

-- to reamove complete records from table
truncate table passengers;

-- to remove complete records and attribute from table
drop table passengers;

CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    ride_id INT,
    amount DECIMAL(8,2),
    method VARCHAR(20),
    status VARCHAR(20),
    paid_on DATE
);
-- insert value in a table
INSERT INTO payments (payment_id ,ride_id ,amount ,method ,status,paid_on)
VALUES
(301, 1, 350.00, 'UPI', 'Completed', '2025-06-01'),
(302, 2, 290.00, 'Cash', 'Completed', '2025-06-02'),
(303, 3, 410.50, 'Card', 'Completed', '2025-06-03'),
(304, 4, 500.00, 'Wallet', 'Completed', '2025-06-04'),
(305, 5, 150.00, 'UPI', 'Completed', '2025-06-05'),
(306, 6, 275.75, 'Card', 'Completed', '2025-06-06');

-- to display table data
select * from  Payments;

-- to reamove complete records from table
truncate table  Payments;

-- to remove complete records and attribute from table
drop table  Payments;


CREATE TABLE feedback (
    feedback_id INT PRIMARY KEY,
    ride_id INT,
    passenger_id INT,
    driver_id INT,
    rating INT,
    comment VARCHAR(255)
);
-- insert value in a table
INSERT INTO feedback ( feedback_id ,ride_id ,passenger_id ,driver_id,rating ,comment)
 VALUES
(1, 1, 201, 101, 5, 'Great ride and polite driver'),
(2, 2, 202, 102, 4, 'Smooth experience'),
(3, 3, 203, 103, 5, 'Very professional'),
(4, 4, 204, 104, 3, 'Driver was late'),
(5, 5, 205, 105, 4, 'Clean car and friendly'),
(6, 6, 206, 106, 5, 'Excellent service!');

-- to display table data
select * from feedback;

-- to reamove complete records from table
truncate table feedback;

-- to remove complete records and attribute from table
drop table feedback;


-- --------------------------------------------------- Analysis of Database ------------------------------------------------
/*
Database Name -->RAILWAY

Tables -->

1. trains (train_id ,train_name,source_station,destination_station,total_coaches ,train_type)
2. stations (station_id ,station_name,city ,state,platforms,zone)
3. passengers ( passenger_id,name ,age ,gender,phone,city)
4  schedules (schedule_id ,train_id,station_id ,arrival_time,departure_time,stop_number)
5. employees (emp_id ,name ,designation ,station_id,salary ,doj )
 

*/
 -- ---------------------------------------- Database queries ---------------------------------------------------------
-- create a database RAILWAY
CREATE DATABASE  RAILWAY;

-- to work on database, you need to use it first
USE RAILWAY;

  -- --------------------------------------------------------- Table Queries ----------------------------------------------
   
-- TABLE 5
create database RAILWAY;
use RAILWAY;


CREATE TABLE trains (
    train_id INT PRIMARY KEY,
    train_name VARCHAR(50),
    source_station VARCHAR(50),
    destination_station VARCHAR(50),
    total_coaches INT,
    train_type VARCHAR(20)
);
-- insert value in a table
INSERT INTO trains (train_id ,train_name,source_station,destination_station,total_coaches ,train_type)
 VALUES
(1, 'Rajdhani Express', 'Mumbai', 'Delhi', 22, 'Express'),
(2, 'Shatabdi Express', 'Chennai', 'Bangalore', 18, 'Superfast'),
(3, 'Duronto Express', 'Pune', 'Kolkata', 20, 'Express'),
(4, 'Garib Rath', 'Delhi', 'Patna', 16, 'AC'),
(5, 'Tejas Express', 'Mumbai', 'Goa', 18, 'Luxury'),
(6, 'Intercity Express', 'Lucknow', 'Kanpur', 12, 'Passenger');

-- to display table data
select * from trains ;

-- to reamove complete records from table
truncate table trains ;

-- to remove complete records and attribute from table
drop table trains ;


CREATE TABLE stations (
    station_id INT PRIMARY KEY,
    station_name VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50),
    platforms INT,
    zone VARCHAR(50)
);
-- insert value in a table
INSERT INTO stations (station_id ,station_name,city ,state,platforms,zone)
 VALUES
(101, 'CST', 'Mumbai', 'Maharashtra', 18, 'Central'),
(102, 'NDLS', 'Delhi', 'Delhi', 16, 'Northern'),
(103, 'SBC', 'Bangalore', 'Karnataka', 10, 'South Western'),
(104, 'MAS', 'Chennai', 'Tamil Nadu', 12, 'Southern'),
(105, 'HWH', 'Kolkata', 'West Bengal', 15, 'Eastern'),
(106, 'BBS', 'Bhubaneswar', 'Odisha', 8, 'East Coast');

-- to display table data
select * from stations ;

-- to reamove complete records from table
truncate table stations ;

-- to remove complete records and attribute from table
drop table stations ;


CREATE TABLE passengers (
    passenger_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    phone VARCHAR(15),
    city VARCHAR(50)
);
-- insert value in a table
INSERT INTO passengers ( passenger_id,name ,age ,gender,phone,city)
 VALUES
(201, 'Amit Sharma', 30, 'Male', '9876543210', 'Mumbai'),
(202, 'Ritika Mehra', 25, 'Female', '9876543211', 'Delhi'),
(203, 'Raj Verma', 45, 'Male', '9876543212', 'Kolkata'),
(204, 'Sneha Rao', 28, 'Female', '9876543213', 'Bangalore'),
(205, 'Karan Yadav', 33, 'Male', '9876543214', 'Lucknow'),
(206, 'Priya Singh', 22, 'Female', '9876543215', 'Chennai');

-- to display table data
select * from passengers ;

-- to reamove complete records from table
truncate table passengers ;

-- to remove complete records and attribute from table
drop table passengers ;

CREATE TABLE schedules (
    schedule_id INT PRIMARY KEY,
    train_id INT,
    station_id INT,
    arrival_time TIME,
    departure_time TIME,
    stop_number INT
);
-- insert value in a table
INSERT INTO schedules (schedule_id ,train_id,station_id ,arrival_time,departure_time,stop_number)
 VALUES
(501, 1, 101, '08:00:00', '08:10:00', 1),
(502, 1, 102, '12:00:00', '12:05:00', 2),
(503, 2, 103, '10:00:00', '10:15:00', 1),
(504, 2, 104, '13:00:00', '13:10:00', 2),
(505, 3, 105, '09:30:00', '09:35:00', 1),
(506, 3, 106, '14:00:00', '14:10:00', 2);

-- to display table data
select * from schedules ;

-- to reamove complete records from table
truncate table schedules;

-- to remove complete records and attribute from table
drop table schedules ;


CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    designation VARCHAR(50),
    station_id INT,
    salary DECIMAL(10,2),
    doj DATE
);
-- insert value in a table
INSERT INTO employees (emp_id ,name ,designation ,station_id,salary ,doj )
VALUES
(401, 'Rakesh Kumar', 'Station Master', 101, 55000.00, '2015-04-15'),
(402, 'Sonal Gupta', 'Ticket Checker', 102, 35000.00, '2018-07-10'),
(403, 'Mukesh Verma', 'Driver', 103, 60000.00, '2012-01-12'),
(404, 'Anjali Sharma', 'Clerk', 104, 30000.00, '2019-03-25'),
(405, 'Vinod Singh', 'Guard', 105, 40000.00, '2016-11-20');

-- to display table data
select * from employees;

-- to reamove complete records from table
truncate table employees;

-- to remove complete records and attribute from table
drop table employees ;


-- --------------------------------------------------- Analysis of Database ------------------------------------------------
/*
Database Name --> EDUCATION

Tables -->

1. teachers  (teacher_id,name,subject,experience,city )
2. students( student_id ,name ,age ,gender,city )
3. courses (course_id ,course_name ,duration_months,fee,department)
4  classes (class_id ,class_name,room_no,strength,teacher_id)
5. expenses (expense_id INT PRIMARY KEY,account_id ,category ,amount,expense_date)
 

*/
 -- ---------------------------------------- Database queries ---------------------------------------------------------
-- create a database EDUCATION
CREATE DATABASE   EDUCATION;

-- to work on database, you need to use it first
USE  EDUCATION;

  -- --------------------------------------------------------- Table Queries ----------------------------------------------
   
-- TABLE 6
create database EDUCATION;
use EDUCATION;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    city VARCHAR(50)
);
-- insert value in a table
INSERT INTO students( student_id ,name ,age ,gender,city )
 VALUES
(1, 'Ravi Kumar', 18, 'Male', 'Delhi'),
(2, 'Anita Sharma', 19, 'Female', 'Mumbai'),
(3, 'Raj Patel', 20, 'Male', 'Ahmedabad'),
(4, 'Pooja Desai', 18, 'Female', 'Pune'),
(5, 'Karan Yadav', 21, 'Male', 'Lucknow');

-- to display table data
select * from students;

-- to reamove complete records from table
truncate table students;

-- to remove complete records and attribute from table
drop table students ;

CREATE TABLE teachers (
    teacher_id INT PRIMARY KEY,
    name VARCHAR(50),
    subject VARCHAR(50),
    experience INT,
    city VARCHAR(50)
);
-- insert value in a table
INSERT INTO teachers  (teacher_id,name,subject,experience,city )
 VALUES
(101, 'Meera Joshi', 'Mathematics', 5, 'Mumbai'),
(102, 'Suresh Iyer', 'Physics', 8, 'Chennai'),
(103, 'Anjali Sharma', 'English', 4, 'Delhi'),
(104, 'Rajesh Mehta', 'Biology', 6, 'Ahmedabad'),
(105, 'Nisha Rao', 'History', 7, 'Hyderabad');

-- to display table data
select * from teachers;

-- to reamove complete records from table
truncate table teachers;

-- to remove complete records and attribute from table
drop table teachers ;

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50),
    duration_months INT,
    fee DECIMAL(10,2),
    department VARCHAR(50)
);
-- insert value in a table
INSERT INTO courses (course_id ,course_name ,duration_months,fee,department)
 VALUES
(201, 'B.Sc Mathematics', 36, 30000.00, 'Science'),
(202, 'B.A English', 36, 25000.00, 'Arts'),
(203, 'B.Com', 36, 28000.00, 'Commerce'),
(204, 'B.Sc Physics', 36, 32000.00, 'Science'),
(205, 'B.A History', 36, 24000.00, 'Arts');

-- to display table data
select * from courses;

-- to reamove complete records from table
truncate table courses;

-- to remove complete records and attribute from table
drop table courses;

CREATE TABLE classes (
    class_id INT PRIMARY KEY,
    class_name VARCHAR(50),
    room_no VARCHAR(10),
    strength INT,
    teacher_id INT
);
-- insert value in a table
INSERT INTO classes (class_id ,class_name,room_no,strength,teacher_id)
 VALUES
(301, 'FYBSc Math A', 'A101', 45, 101),
(302, 'FYBA Eng B', 'B201', 40, 103),
(303, 'FYBCom C', 'C301', 50, 105),
(304, 'FYBSc Phy A', 'A202', 42, 102),
(305, 'FYBA Hist B', 'B203', 38, 105);

-- to display table data
select * from  classes ;

-- to reamove complete records from table
truncate table  classes ;

-- to remove complete records and attribute from table
drop table  classes ;


CREATE TABLE results (
    result_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    percentage DECIMAL(5,2),
    grade VARCHAR(2)
);
-- insert value in a table
INSERT INTO results VALUES
(401, 1, 201, 85.60, 'A'),
(402, 2, 202, 78.25, 'B'),
(403, 3, 203, 82.10, 'A'),
(404, 4, 204, 74.50, 'B'),
(405, 5, 205, 88.00, 'A');

-- to display table data
select * from  results ;

-- to reamove complete records from table
truncate table results  ;

-- to remove complete records and attribute from table
drop table  results ;


-- --------------------------------------------------- Analysis of Database ------------------------------------------------
/*
Database Name --> FINANCE

Tables -->

1. accounts (account_id,account_holder,account_type ,balance ,created_date)
2. transactions ( transaction_id,account_id,type ,amount ,transaction_date)
3. investments (investment_id ,investor_name ,investment_type ,amount ,invest_date)
4  loans (loan_id ,customer_name ,loan_type ,loan_amount,start_date)
5. expenses (expense_id INT PRIMARY KEY,account_id ,category ,amount,expense_date)
 

*/
 -- ---------------------------------------- Database queries ---------------------------------------------------------

-- create a database FINANCE
CREATE DATABASE FINANCE;

-- to work on database, you need to use it first
USE FINANCE;

  -- --------------------------------------------------------- Table Queries ----------------------------------------------


-- Table 7
create database FINANCE;
use FINANCE;

CREATE TABLE accounts (
    account_id INT PRIMARY KEY,
    account_holder VARCHAR(100),
    account_type VARCHAR(50),
    balance DECIMAL(10,2),
    created_date DATE
);
-- insert value in a table
INSERT INTO accounts (account_id,account_holder,account_type ,balance ,created_date)
 VALUES
(1, 'Ananya Mehta', 'Savings', 50000.00, '2024-01-10'),
(2, 'Rahul Sharma', 'Current', 120000.00, '2023-11-05'),
(3, 'Neha Joshi', 'Savings', 30000.00, '2024-03-21'),
(4, 'Amit Kumar', 'Fixed Deposit', 100000.00, '2024-02-15'),
(5, 'Sneha Shah', 'Savings', 75000.00, '2023-12-01');

  -- to display table data
  select * from  accounts;
  
  -- to reamove complete records from table
truncate table accounts;

-- to remove complete records and attribute from table
drop table  accounts ;
  
CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    account_id INT,
    type VARCHAR(50),
    amount DECIMAL(10,2),
    transaction_date DATE
);
-- insert value in a table
INSERT INTO transactions ( transaction_id,account_id,type ,amount ,transaction_date)
VALUES
(101, 1, 'Deposit', 10000.00, '2025-06-01'),
(102, 2, 'Withdrawal', 5000.00, '2025-06-02'),
(103, 3, 'Deposit', 15000.00, '2025-06-03'),
(104, 4, 'Withdrawal', 3000.00, '2025-06-04'),
(105, 5, 'Deposit', 20000.00, '2025-06-04');

-- to display table data
 select * from transactions;
 
 -- to reamove complete records from table
truncate table transactions;

-- to remove complete records and attribute from table
drop table  transactions;

CREATE TABLE loans (
    loan_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    loan_type VARCHAR(50),
    loan_amount DECIMAL(10,2),
    start_date DATE
);
-- insert value in a table
INSERT INTO loans (loan_id ,customer_name ,loan_type ,loan_amount,start_date)
VALUES
(201, 'Ananya Mehta', 'Home Loan', 2500000.00, '2024-05-01'),
(202, 'Rahul Sharma', 'Car Loan', 600000.00, '2024-06-01'),
(203, 'Neha Joshi', 'Personal Loan', 300000.00, '2024-03-15'),
(204, 'Amit Kumar', 'Education Loan', 400000.00, '2024-01-10'),
(205, 'Sneha Shah', 'Business Loan', 1500000.00, '2024-04-20');

-- to display table data
select * from  loans ;

-- to reamove complete records from table
truncate table  loans ;

-- to remove complete records and attribute from table
drop table   loans ;

CREATE TABLE investments (
    investment_id INT PRIMARY KEY,
    investor_name VARCHAR(100),
    investment_type VARCHAR(50),
    amount DECIMAL(10,2),
    invest_date DATE
);
-- insert value in a table
INSERT INTO investments (investment_id ,investor_name ,investment_type ,amount ,invest_date)
VALUES
(301, 'Ananya Mehta', 'Stocks', 100000.00, '2024-06-01'),
(302, 'Rahul Sharma', 'Mutual Funds', 150000.00, '2024-05-15'),
(303, 'Neha Joshi', 'Bonds', 75000.00, '2024-04-01'),
(304, 'Amit Kumar', 'Real Estate', 500000.00, '2024-03-20'),
(305, 'Sneha Shah', 'Gold', 80000.00, '2024-05-10');

-- to display table data
select * from  investments ;

-- to reamove complete records from table
truncate table investments ;

-- to remove complete records and attribute from table
drop table   investments ;


CREATE TABLE expenses (
    expense_id INT PRIMARY KEY,
    account_id INT,
    category VARCHAR(50),
    amount DECIMAL(10,2),
    expense_date DATE
);
-- insert value in a table
INSERT INTO expenses (expense_id , account_id ,category ,amount,expense_date)
 VALUES
(401, 1, 'Groceries', 4000.00, '2025-05-10'),
(402, 2, 'Utilities', 3000.00, '2025-05-12'),
(403, 3, 'Travel', 7000.00, '2025-05-14'),
(404, 4, 'Rent', 15000.00, '2025-05-01'),
(405, 5, 'Insurance', 5000.00, '2025-05-15');

-- to display table data
select * from  expenses;

-- to reamove complete records from table
truncate table expenses;

-- to remove complete records and attribute from table
drop table   expenses ;

-- TABLE 8
create  database HOSPITAL;

CREATE DATABASE hospital;
USE hospital;


CREATE TABLE patients (
    patient_id INT PRIMARY KEY,
    name VARCHAR(100),
    gender VARCHAR(10),
    age INT,
    phone VARCHAR(15)
);
-- insert value in a table
INSERT INTO patients VALUES
(1, 'Ravi Sharma', 'Male', 45, '9876543210'),
(2, 'Anita Desai', 'Female', 32, '9765432109'),
(3, 'Suresh Mehta', 'Male', 60, '9654321098'),
(4, 'Neha Kapoor', 'Female', 27, '9543210987'),
(5, 'Amit Kumar', 'Male', 39, '9432109876');

-- to display table data
select * from   patients ;


truncate table patients ;

-- to remove complete records and attribute from table
drop table  patients ;


CREATE TABLE doctors (
    doctor_id INT PRIMARY KEY,
    name VARCHAR(100),
    specialty VARCHAR(50),
    experience INT,
    contact VARCHAR(15)
);
-- insert value in a table
INSERT INTO doctors VALUES
(101, 'Dr. Renu Gupta', 'Cardiology', 15, '9988776655'),
(102, 'Dr. Arjun Mehta', 'Neurology', 12, '9877665544'),
(103, 'Dr. Priya Singh', 'Pediatrics', 8, '9766554433'),
(104, 'Dr. Mohan Rao', 'Orthopedics', 10, '9655443322'),
(105, 'Dr. Shalini Das', 'Dermatology', 7, '9544332211');

-- to display table data
select * from doctors ;

-- to reamove complete records from table
truncate table doctors ;

-- to remove complete records and attribute from table
drop table  doctors;


CREATE TABLE appointments (
    appointment_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    status VARCHAR(20)
);
-- insert value in a table
INSERT INTO appointments VALUES
(201, 1, 101, '2025-06-01', 'Confirmed'),
(202, 2, 102, '2025-06-02', 'Completed'),
(203, 3, 103, '2025-06-03', 'Cancelled'),
(204, 4, 104, '2025-06-04', 'Confirmed'),
(205, 5, 105, '2025-06-05', 'Pending');

-- to display table data
select * from appointments  ;

-- to reamove complete records from table
truncate table  appointments  ;

-- to remove complete records and attribute from table
drop table  appointments ;

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    name VARCHAR(50),
    head VARCHAR(100),
    floor INT,
    contact_number VARCHAR(15)
);
-- insert value in a table
INSERT INTO departments VALUES
(301, 'Cardiology', 'Dr. Renu Gupta', 2, '022-12345678'),
(302, 'Neurology', 'Dr. Arjun Mehta', 3, '022-22345678'),
(303, 'Pediatrics', 'Dr. Priya Singh', 1, '022-32345678'),
(304, 'Orthopedics', 'Dr. Mohan Rao', 4, '022-42345678'),
(305, 'Dermatology', 'Dr. Shalini Das', 5, '022-52345678');

-- to display table data
select * from departments ;

-- to reamove complete records from table
truncate table departments ;

-- to remove complete records and attribute from table
drop table departments ;


CREATE TABLE medications (
    medication_id INT PRIMARY KEY,
    name VARCHAR(100),
    patient_id INT,
    dosage VARCHAR(50),
    prescribed_date DATE
);
-- insert value in a table
INSERT INTO medications VALUES
(401, 'Paracetamol', 1, '500mg Twice a Day', '2025-06-01'),
(402, 'Aspirin', 2, '100mg Once a Day', '2025-06-02'),
(403, 'Amoxicillin', 3, '250mg Three Times a Day', '2025-06-03'),
(404, 'Cetirizine', 4, '10mg Once a Day', '2025-06-04'),
(405, 'Ibuprofen', 5, '400mg Twice a Day', '2025-06-05');

-- to display table data
select * from  medications;

-- to reamove complete records from table
truncate table  medications;

-- to remove complete records and attribute from table
drop table  medications;


-- --------------------------------------------------- Analysis of Database ------------------------------------------------
/*
Database Name --> FINANCE

Tables -->

1. Products (ProductID ,ProductName,Category ,Price ,Stock)
2. Customers ( CustomerID, Name, Email ,City ,SignupDate)
3. Employees (EmployeeID INT PRIMARY KEY,Name ,Position ,Salary ,JoinDate)
4  Campaigns (CampaignID,Name ,Client ,Budget ,LaunchDate)
5. Shipments ( ShipmentID,Origin ,Destination,Weight ,Status)
 

*/
 -- ---------------------------------------- Database queries ---------------------------------------------------------

-- create a database BUSINESS
CREATE DATABASE BUSINESS;

-- to work on database, you need to use it first
USE BUSINESS;

  -- --------------------------------------------------------- Table Queries ----------------------------------------------

-- Table 9
create database BUSINESS;
use BUSINESS;

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Category VARCHAR(30),
    Price DECIMAL(10, 2),
    Stock INT
);
-- insert value in a table
INSERT INTO Products (ProductID ,ProductName,Category ,Price ,Stock)
VALUES
(1, 'T-shirt', 'Clothing', 499.99, 150),
(2, 'Jeans', 'Clothing', 999.50, 80),
(3, 'Sneakers', 'Footwear', 1999.00, 60),
(4, 'Backpack', 'Accessories', 799.00, 40),
(5, 'Watch', 'Accessories', 1499.00, 30);

-- to display table data
select * from Products;

-- to reamove complete records from table
truncate table Products;

-- to remove complete records and attribute from table
drop table Products;


CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(50),
    Email VARCHAR(100),
    City VARCHAR(30),
    SignupDate DATE
);
-- insert value in a table
INSERT INTO Customers ( CustomerID, Name, Email ,City ,SignupDate)
 VALUES
(101, 'Ankit Sharma', 'ankit@gmail.com', 'Mumbai', '2023-01-15'),
(102, 'Riya Mehta', 'riya@yahoo.com', 'Delhi', '2023-03-22'),
(103, 'Sameer Khan', 'sameer@hotmail.com', 'Bangalore', '2023-02-10'),
(104, 'Neha Jain', 'neha@gmail.com', 'Chennai', '2023-05-05'),
(105, 'Raj Patel', 'raj@gmail.com', 'Pune', '2023-04-18');

-- to display table data
select * from Customers;

-- to reamove complete records from table
truncate table Customers;

-- to remove complete records and attribute from table
drop table Customers;


CREATE TABLE Shipments (
    ShipmentID INT PRIMARY KEY,
    Origin VARCHAR(50),
    Destination VARCHAR(50),
    Weight DECIMAL(6,2),
    Status VARCHAR(20)
);
-- insert value in a table
INSERT INTO Shipments ( ShipmentID,Origin ,Destination,Weight ,Status)
 VALUES
(201, 'Delhi', 'Mumbai', 150.75, 'In Transit'),
(202, 'Chennai', 'Hyderabad', 200.00, 'Delivered'),
(203, 'Pune', 'Kolkata', 175.25, 'Pending'),
(204, 'Bangalore', 'Ahmedabad', 300.00, 'In Transit'),
(205, 'Mumbai', 'Delhi', 100.50, 'Delivered');

-- to display table data
select * from Shipments;

-- to reamove complete records from table
truncate table Shipments;

-- to remove complete records and attribute from table
drop table Shipments;


CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    Position VARCHAR(30),
    Salary DECIMAL(10,2),
    JoinDate DATE
);
-- insert value in a table
INSERT INTO Employees (EmployeeID ,Name ,Position ,Salary ,JoinDate)
 VALUES
(301, 'Aditya Verma', 'Developer', 60000.00, '2023-02-01'),
(302, 'Pooja Singh', 'Designer', 55000.00, '2023-03-15'),
(303, 'Kunal Joshi', 'Manager', 75000.00, '2023-01-10'),
(304, 'Simran Kaur', 'HR', 50000.00, '2023-04-20'),
(305, 'Rohit Das', 'Tester', 52000.00, '2023-05-05');

-- to display table data
select * from Employees;

-- to reamove complete records from table
truncate table Employees;

-- to remove complete records and attribute from table
drop table Employees;

CREATE TABLE Campaigns (
    CampaignID INT PRIMARY KEY,
    Name VARCHAR(100),
    Client VARCHAR(50),
    Budget DECIMAL(10,2),
    LaunchDate DATE
);
-- insert value in a table
INSERT INTO Campaigns (CampaignID,Name ,Client ,Budget ,LaunchDate)
VALUES
(401, 'Summer Sale 2024', 'Flipkart', 200000.00, '2024-06-01'),
(402, 'Monsoon Bonanza', 'Amazon', 150000.00, '2024-07-10'),
(403, 'Festive Lights', 'Reliance', 300000.00, '2024-09-25'),
(404, 'Winter Warmers', 'Myntra', 180000.00, '2024-11-15'),
(405, 'New Year Blitz', 'TataCliq', 250000.00, '2024-12-28');

-- to display table data
select * from Campaigns ;

-- to reamove complete records from table
truncate table Campaigns ;

-- to remove complete records and attribute from table
drop table Campaigns ;


-- --------------------------------------------------- Analysis of Database ------------------------------------------------
/*
Database Name --> ECOMMERCE

Tables -->

1. Users ( UserID,UserName,Email ,City ,RegistrationDate)
2. Products ( ProductID ,ProductName,Category ,Price ,InStock)
3. Orders (OrderID INT PRIMARY KEY,UserID,ProductID ,OrderDate,Status )
4  Reviews (ReviewID,ProductID ,UserID ,Rating ,Comment)
5. Payments (PaymentID,OrderID,Amount,PaymentMode,PaymentDate)
 

*/
 -- ---------------------------------------- Database queries ---------------------------------------------------------

-- create a database ECOMMERCE
CREATE DATABASE ECOMMERCE;

-- to work on database, you need to use it first
USE ECOMMERCE;

  -- --------------------------------------------------------- Table Queries ----------------------------------------------

-- Table 10
create database ECOMMERCE;
use ECOMMERCE;

CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    UserName VARCHAR(50),
    Email VARCHAR(100),
    City VARCHAR(50),
    RegistrationDate DATE
);
-- insert value in a table
INSERT INTO Users ( UserID,UserName,Email ,City ,RegistrationDate)
 VALUES
(1, 'Aman Gupta', 'aman@gmail.com', 'Delhi', '2023-01-15'),
(2, 'Riya Sen', 'riya@yahoo.com', 'Mumbai', '2023-02-10'),
(3, 'Vikram Das', 'vikram@hotmail.com', 'Kolkata', '2023-03-05'),
(4, 'Neha Yadav', 'neha@gmail.com', 'Bangalore', '2023-04-12'),
(5, 'Suresh Rao', 'suresh@gmail.com', 'Chennai', '2023-05-20');

-- to display table data
select * from Users ;

-- to reamove complete records from table
truncate table Users ;

-- to remove complete records and attribute from table
drop table Users ;


CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    InStock INT
);
-- insert value in a table
INSERT INTO Products ( ProductID ,ProductName,Category ,Price ,InStock)
VALUES
(101, 'iPhone 14', 'Mobiles', 79999.00, 50),
(102, 'Sony Headphones', 'Electronics', 4999.00, 200),
(103, 'Nike Shoes', 'Footwear', 2999.00, 120),
(104, 'Dell Laptop', 'Computers', 59999.00, 30),
(105, 'T-shirt Combo', 'Clothing', 999.00, 300);

-- to display table data
select * from Products;

-- to reamove complete records from table
truncate table Products;

-- to remove complete records and attribute from table
drop table Products;


CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    UserID INT,
    ProductID INT,
    OrderDate DATE,
    Status VARCHAR(20)
);
-- insert value in a table
INSERT INTO Orders (OrderID ,UserID,ProductID ,OrderDate,Status )
 VALUES
(201, 1, 101, '2023-06-01', 'Shipped'),
(202, 2, 102, '2023-06-03', 'Delivered'),
(203, 3, 104, '2023-06-04', 'Pending'),
(204, 4, 105, '2023-06-05', 'Cancelled'),
(205, 5, 103, '2023-06-06', 'Shipped');

-- to display table data
select * from  Orders ;

-- to reamove complete records from table
truncate table  Orders;

-- to remove complete records and attribute from table
drop table  Orders ;


CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY,
    OrderID INT,
    Amount DECIMAL(10,2),
    PaymentMode VARCHAR(20),
    PaymentDate DATE
);
-- insert value in a table
INSERT INTO Payments (PaymentID,OrderID,Amount,PaymentMode,PaymentDate)
 VALUES
(301, 201, 79999.00, 'Credit Card', '2023-06-01'),
(302, 202, 4999.00, 'UPI', '2023-06-03'),
(303, 203, 59999.00, 'Net Banking', '2023-06-04'),
(304, 204, 999.00, 'Debit Card', '2023-06-05'),
(305, 205, 2999.00, 'Wallet', '2023-06-06');

-- to display table data
select * from   Payments;

-- to reamove complete records from table
truncate table  Payments;

-- to remove complete records and attribute from table
drop table   Payments;


CREATE TABLE Reviews (
    ReviewID INT PRIMARY KEY,
    ProductID INT,
    UserID INT,
    Rating INT,
    Comment VARCHAR(255)
);
-- insert value in a table
INSERT INTO Reviews (ReviewID,ProductID ,UserID ,Rating ,Comment)
VALUES
(401, 101, 1, 5, 'Excellent phone with great performance'),
(402, 102, 2, 4, 'Good sound quality'),
(403, 103, 5, 3, 'Average comfort'),
(404, 104, 3, 5, 'Very fast and reliable'),
(405, 105, 4, 2, 'Material quality not great');

-- to display table data
select * from  Reviews;

-- to reamove complete records from table
truncate table Reviews;

-- to remove complete records and attribute from table
drop table  Reviews;




