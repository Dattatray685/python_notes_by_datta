-- what is SQL or define sql?
-- Structutre  query language is programming language used to communicate with database
-- what is database?
-- the place where we can store the data 
-- what is data?
-- raw form of information is known as  data 
-- descrete (fixed wholenumber) or continous ( infinity values with in a range ) values is known
-- to communicate with database or to store data in database or to manipulate data in database
-- we use different database languages so there 5 different database languages used for CRUD
-- create the data, update the data, retrive the data , delete the data
-- 1.Data defination language -- DDL -- CREATE,DROP,ALTER, TRUNCATE
-- 2.Data Mnaipulation Language -- DML -- UPDATE,DELETE,INSERT
-- 3.Data Query Language -- DQL -- SELECT
-- 4.Data control language -- DCL -- GRANT, REVOKE
-- 5.Transaction control language -- TCL -- ROLLBACK, COMMIT, SAVEPOINT
-- what is schemas?
-- schemas are the blue-print of your database
-- Q)create a database "sql_training_12"
CREATE DATABASE SQL_TARNING_12;
-- ; SEMI COLON indicate the completion of your query 
-- q) use the SQL_TARNING_12;
USE SQL_TARNING_12;
-- Q)create table customers with attributes(columns)cust_id, first_name,last_name, country,phone
CREATE TABLE CUSTOMERS(
cust_id int,
first_name varchar(60),
last_name varchar(60),
country varchar(60),
phone int
);
-- Q)Insert some data into table customers
INSERT INTO CUSTOMERS(cust_id,first_name,last_name,country,phone)values
(1,"datta","salunke","india",969929539),
(2,"sai","pawar","pakistan",992235197);
-- Q)check the data of customers
select * from CUSTOMERS;
-- INT --> can takes the numbers upto 9 digits
-- Bigint --> can takes the more then 9 digits
-- Varchar is a string type of data
-- Diff b/w drop and truncate?
-- Drop delete all the table or datbase
-- where truncate remove only the rows and returns empty table
-- Q)remove all the data from customers
TRUNCATE TABLE CUSTOMERS;
SELECT * FROM CUSTOMERS;
-- Q)remove customer table
DROP table CUSTOMERS;
-- 07-05-2026
-- use the database SQL_TARNING_12
USE SQL_TARNING_12;
-- CREATE A TABLE students having attribute sid , sname , smarks 
create table students(
sid int primary key,
sname varchar(60),
smarks varchar(60));
-- insert information in to table students 
insert into students(sid,sname,smarks)values
(101,"datta",67),
(102,"sai",72),
(103,"shivam",64),
(104,"shiv",80),
(105,"shivu",77),
(106,"kumar",90),
(107,"pranav",85),
(108,"ram",54),
(109,"piu",60),
(110,"abhi",75);
-- Q) get the records of students id 101
-- '*' --> default all the coulmn
select * from students
where sid=101;
-- 'where' is clause used to apply condition or filter the data
-- what is clause ? -- cluase  are used to retrive, filter and organize the  data in sql query
-- how many types of cluase --> 6types
-- where ,having groupby, order by, form, distinct
-- comaperision operrator or reletional operators --> 6types -- =,!=,>=,<=,>,<
-- Q) write a query to get roecords of student whose marks is >= 80
select * from students where smarks >=80;
-- logical oprerator --> IN,BETWEEN,AND,OR,NOT,IS
-- Q) get the records of  students whose marks between 60 to 75
select * from students where smarks>=60 and smarks<=75;
select * from students where smarks between 60  and 75;
-- string  matching --> reguler expression --> like, %(to mutch remaining  character
-- Q) get records of the student whose name starts with "d"
select * from students  where sname like "d%";
-- Q) get the records of the students whose name having "aa"
select *from students where sname like "%a%";
-- Q) dont konw the first 2 letter and known next 2 letter "iv" get  the records of students
-- for unknown character use "_" to match with the string 
select * from students where sname  like "--v%"; 
-- get the records of the students  use name ends with letter "n"
select * from students where sname like "%a";
-- get the records of students with sid 101,102,
select * from students where sid in(101,102);
USE SQL_TARNING_12;
create table products(
product_id integer primary key,
product_type_id integer references product_types(product_type_id),
name varchar(30) not null,
description varchar(50),
price decimal(5,2)
);

INSERT INTO products (  product_id, product_type_id, name, description, price) VALUES (1, 1, 'Modern Science', 'A description of modern science', 19.95);
INSERT INTO products (  product_id, product_type_id, name, description, price) VALUES (2, 1, 'Chemistry', 'Introduction to Chemistry', 30.00);
INSERT INTO products (  product_id, product_type_id, name, description, price) VALUES (3, 2, 'Supernova', 'A star explodes', 25.99);
INSERT INTO products (  product_id, product_type_id, name, description, price) VALUES (4, 2, 'Tank War', 'Action movie about a future war', 13.95);
INSERT INTO products (  product_id, product_type_id, name, description, price) VALUES (5, 2, 'Z Files', 'Series on mysterious activities', 49.99);
INSERT INTO products (  product_id, product_type_id, name, description, price) VALUES (6, 2, '2412: The Return', 'Aliens return', 14.95);
INSERT INTO products (  product_id, product_type_id, name, description, price) VALUES (7, 3, 'Space Force 9', 'Adventures of heroes', 13.49);
INSERT INTO products (  product_id, product_type_id, name, description, price) VALUES (8, 3, 'From Another Planet', 'Alien from another planet lands on Earth', 12.99);
INSERT INTO products (  product_id, product_type_id, name, description, price) VALUES (9, 4, 'Classical Music', 'The best classical music', 10.99);
INSERT INTO products (  product_id, product_type_id, name, description, price) VALUES (10, 4, 'Pop 3', 'The best popular music', 15.99);
INSERT INTO products (  product_id, product_type_id, name, description, price) VALUES (11, 4, 'Creative Yell', 'Debut album', 14.99);
INSERT INTO products (  product_id, product_type_id, name, description, price) VALUES (12, NULL, 'My Front Line', 'Their greatest hits', 13.49);

-- aggrigate function :-  sum ,min,max,count
-- 
-- Q) 
select * from products;
-- Q) get the minimum price from the product table 
select min(price) from products;
-- Q) get the records of product_type_id with minimum price?
select product_type_id,min(price) from products
GROUP BY product_type_id;
-- Q) print all the minimum price of product_type_id without null values 
select product_type_id,min(price) from products
where product_type_id is not null -- FILTER THE DATA WITHOUT NULL VALUES
GROUP BY product_type_id; -- PRINT THE RECORDS ALONG WITH product_type_id
-- Q) PRINT
select  product_type_id, min(price)  from products
where product_type_id is not null
group by product_type_id
having min(price) < 15;
-- Q) assending 
select  product_type_id, min(price)  from products
where product_type_id is not null
group by product_type_id
having min(price) < 15
order by min(price) asc limit 1;
-- Q) get the  top 2 product_type_id having the highest average price without null values
select  product_type_id, avg(price)  from products
where product_type_id is not null
group by product_type_id
order by avg(price) desc limit 2;
-- Q) get the top 2 highest price of product type id 
select  product_type_id, max(price)  from products
where product_type_id is not null
group by product_type_id
order by max(price) desc limit 2;




----- assingment-----
USE sql_training_12;
create table student 
(id integer primary key, 
course varchar(10),
location varchar(10),
batch integer,
marks integer
);

insert into student values(1,'Mtech','Bangalore',1,70);
insert into student values(2,'Mtech','Bangalore',1,85);
insert into student values(3,'Mtech','Bangalore',1,71);
insert into student values(4,'Mtech','Bangalore',1,64);
insert into student values(5,'Mtech','Bangalore',2,55);
insert into student values(6,'Mtech','Bangalore',2,74);
insert into student values(7,'Mtech','Bangalore',2,84);
insert into student values(8,'Mtech','Bangalore',2,63);
insert into student values(9,'Mtech','Chennai',1,50);
insert into student values(10,'Mtech','Chennai',1,98);
insert into student values(11,'Mtech','Chennai',1,67);
insert into student values(12,'Mtech','Chennai',1,20);
insert into student values(13,'Dse','Bangalore',1,64);
insert into student values(14,'Dse','Bangalore',1,88);
insert into student values(15,'Dse','Bangalore',1,79);
insert into student values(16,'Dse','Bangalore',1,69);
insert into student values(17,'Dse','Chennai',1,80);
insert into student values(18,'Dse','Chennai',1,61);
insert into student values(19,'Dse','Chennai',1,39);
insert into student values(20,'Dse','Chennai',1,48);
insert into student values(21,'Dse','Chennai',1,96);
insert into student values(22,'Dse','Chennai',2,78);
insert into student values(23,'Dse','Chennai',2,69);
insert into student values(24,'Dse','Chennai',2,86);
insert into student values(25,'Dse','Chennai',2,93);
insert into student values(26,'Dse','Chennai',2,66);
insert into student values(27,'Dse','Chennai',1,80);
insert into student values(28,'Mtech','Bangalore',1,85);

select * from student;

-- 1. List the average marks of dse students
select avg(marks) from student
where course in ('Dse')
group by course;
-- 2. List the average marks of dse students for each location
select location,avg(marks) from student
where course in ('Dse')
group by location;
-- 3. list the average marks of students in bangalore for different courses
select location,course,avg(marks) from student
where location in ('bangalore')
group by location,course
order by avg(marks) desc;
-- 4. List the average marks of dse students for each location,batch
select batch,location,avg(marks) from student
where course in ('Dse')
group by batch,location;
-- 5. list the highest mark in each course, location wise
select course,location,max(marks) from student
group by course,location;
-- 6. list the highest mark in each course, location,batch wise
select batch,course,location,max(marks) from student
group by batch,course,location;
-- 7. List the highest mark in each location
select location,max(marks) from student
group by location;
 -- 8. List students who have got more than 75 marks
 select* from student
where marks > 75
order by marks desc;
-- 9 List the number of mtech student in Chennai
select count(*) from student
where course in ('mtech') and location in ('chennai');

-- 10. List students who have got less than 40 in Chennai
select * from student
where marks < 40 and location in ("chennai");

-- 11. List the top 3 performers in DSE and Mtech
select * from student
where course in ('mtech','Dse')
order by marks desc limit 3;

--- ##### 12-05-2026 ########
-- joins :- are used to comibed records from 2 or more tables based on  releted columns 
-- RDBMS :- has related information in other tables based on  common column (foreign key) we joins
-- normalize the table by sperating the data in to logical tables
-- normalizatios is a backend desing used to reduce the data redundency (empty values, duplicate )
use sql_tarning_12;
-- create 
create table empolyees(
emp_id int primary key,
emp_name varchar(50),
dept_id int);
insert into empolyees (emp_id,emp_name,dept_id) values
(1,"sai",10),
(2,"datta",20),
(3,"shiv",null),
(4,"shivu",30);

create table department(
dept_id int primary key,
dept_name varchar(60));
insert into department(dept_id,dept_name)values
(10,"hr"),
(20,"it"),
(30,"finanace"),
(40,"marketing");



-- 1. left join (left outer join): get all recrods  from  left table and matched records form right 
select e.emp_name,d.dept_name
from empolyees e left join department d
on e.dept_id = d.dept_id;
-- 2. right join
select e.emp_name,d.dept_name
from empolyees e right join department d
on e.dept_id = d.dept_id;

-- 3.inner join
select e.emp_name,d.dept_name
from empolyees e inner join department d
on e.dept_id = d.dept_id;

-- 4.full join 
select e.emp_name,d.dept_name
from empolyees e left join department d
on e.dept_id = d.dept_id
union 
select e.emp_name,d.dept_name
from empolyees e right join department d
on e.dept_id = d.dept_id;

-- 5. cross join
select e.emp_name,d.dept_name
from empolyees e cross join department d;
-- 6. self join --> left join --> a table can join by itself
-- ######13-05-2026############
use sql_tarning_12;
-- stored produceres: in my sql is a saved sql program sotred inside the database
-- Q) why we use the stored produceres?
-- instead of writing a query again and again we create a produceres once and call it whenever needed.
-- syntax to create the stored produceres
-- DELIMITER $$
-- create procedure procedure_name()
-- begin
-- 	sql statements;
-- END $$
-- DELIMITER;
-- check tHE STUDENT 
SELECT * FROM student;
DELIMITER $$
CREATE PROCEDURE GETstudent()
begin
	select * from student;
end $$
DELIMITER ;
-- CALL STORED PROCEDUER
CALL GETstudent();
-- $$ indicated temporarily delimiter
-- so mysql query ends with; but procedure cotanins multiple ; so we temporarly change delimiter to $$
-- Q) create a procedure to get the student marks above 70 --> topstudent
SELECT * FROM student;
DELIMITER $$
CREATE PROCEDURE topstudent()
begin
	select * from student
    where smarks > 70;
end $$
DELIMITER ;
call topstudent();
-- parameter ; a variable created when we define a procedure  is konwn as parameter
-- Q) create procedure with an parameter where get the student  info based on student id
SELECT * FROM student;
DELIMITER $$
CREATE PROCEDURE GETstudentbyid(in student_id int)
begin
	select * from student
    where sid = student_id;
end $$
DELIMITER ;
call GETstudentbyid(25);

use sql_tarning_12;
select * from python_sql;