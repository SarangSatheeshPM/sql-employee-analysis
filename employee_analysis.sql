CREATE DATABASE company_analysis;
USE company_analysis;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(30),
    age INT,
    gender CHAR(1),
    department VARCHAR(20),
    city VARCHAR(20),
    salary FLOAT,
    join_date DATE,
    experience_years INT
);

INSERT INTO employees VALUES
(1,'Rahul Sharma',28,'M','Engineering','Bangalore',75000,'2021-03-15',3),
(2,'Priya Nair',25,'F','Marketing','Mumbai',55000,'2022-06-01',2),
(3,'Amit Verma',32,'M','Sales','Delhi',62000,'2019-08-20',5),
(4,'Sneha Rao',29,'F','Engineering','Bangalore',85000,'2020-11-10',4),
(5,'Vikram Singh',35,'M','Finance','Chennai',95000,'2018-01-05',7),
(6,'Anjali Mehta',27,'F','HR','Pune',48000,'2022-09-15',2),
(7,'Rohan Gupta',31,'M','Engineering','Hyderabad',78000,'2020-04-22',5),
(8,'Deepa Pillai',26,'F','Marketing','Bangalore',52000,'2023-01-10',1),
(9,'Karthik Raj',34,'M','Sales','Chennai',68000,'2018-07-30',6),
(10,'Meena Iyer',30,'F','Finance','Mumbai',88000,'2019-12-15',5),
(11,'Arjun Patel',33,'M','Engineering','Bangalore',92000,'2017-05-18',8),
(12,'Kavya Reddy',24,'F','HR','Hyderabad',44000,'2023-06-01',1),
(13,'Suresh Kumar',36,'M','Sales','Delhi',71000,'2016-09-10',9),
(14,'Nisha Joshi',28,'F','Engineering','Pune',79000,'2021-07-20',3),
(15,'Rajesh Menon',38,'M','Finance','Bangalore',105000,'2015-03-25',10);

select * from employees;
select avg(salary), department from employees group by department order by avg(salary) desc;
select * from employees where salary > (select avg(salary) from employees);
select * from employees order by salary desc
limit 5;

select gender , sum(salary) as total_salary from employees
group by gender order by sum(salary);

select count(emp_id) as total_employees ,  year(join_date)  from employees
group by year(join_date)
order by count(emp_id);

select department, min(age) as youngest, max(age) as oldest
from employees
group by department;

select city , avg(salary) as average_salary from employees group by city having avg(salary) > 70000 ;
select * from employees where year(join_date)  > 2015 and salary > 70000 ;
select count(distinct department) from employees;

select department, avg(salary) from employees
group by department
order by avg(age)
limit 1;

