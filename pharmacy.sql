create database akshay;
use akshay;
create table Adminlogin(username varchar(100),password varchar(50));
select* from adminlogin;
create table stafflogin(username varchar(100),password varchar(50));
select* from stafflogin;

Insert into adminlogin values('Akshay','98765');
select * from adminlogin;
select * from Adminlogin;

use akshay;
create table employee(Employee_id int(10) NOT NULL,
First_name varchar(20) DEFAULT NULL,
Last_name varchar(20) DEFAULT NULL,
Email_id varchar(30) DEFAULT NULL,
Contact_Number varchar(20) DEFAULT NULL,
Gender varchar(10) DEFAULT NULL,
Age int(3) DEFAULT NULL,
Job_location varchar(20) DEFAULT NULL,
Business_Unit varchar(10) DEFAULT NULL,
Project_id int(20),
Job_title varchar(10) DEFAULT NULL,
DateOfJoining date DEFAULT NULL,
Salary numeric(7,2) DEFAULT NULL,
primary key(Employee_id));
drop table employee;
select * from employee;

create table employee_management(employee_id int(10) NOT NULL,
firstName varchar(30),
lastName varchar(30),
mail_id varchar(40),
contact_number varchar(20),
gender varchar(10),
age int(4),
job_location varchar(30),
Business_Unit varchar(20),
project_id int(10),
Job_title varchar(30),
DateOfJoining date,
Salary double(7,2),

select * from employee_management;
insert into employee_management values(1003,'Samuel','George','samuelgeorge@gmail.com','9867543219','Male',28,'Chennai','Insurance',83513,'Manager','2014-04-12',30000.0);
insert into employee_management values(1004,'Jenifer','Winget','jeniferwinget@gmail.com','9862546543','Female',32,'Kochi','Healthcare',83502,'Developer','2012-04-12',32000.0);


create table customer_management(customer_id int(10) NOT NULL,
firstName varchar(30),
lastName varchar(30),
mail_id varchar(40),
contact_number varchar(20),
gender varchar(10),
primary key(customer_id));
select * from customer_management;
insert into customer_management values(1003,'Samuel','George','samuelgeorge@gmail.com','9867543219','Male');
insert into customer_management values(1004,'Jenifer','Winget','jeniferwinget@gmail.com','9862546543','Female');



create table pharma_management(med_id int(10) NOT NULL,
medName varchar(30),
price int(10),
manName varchar(30),
stock int(10),
manDate date,

primary key(med_id));
drop table pharma_management;
insert into pharma_management values(1003,'Paracetamol',2,'Cipla',500,'2019-04-12');
select * from pharma_management;


select now();
create table pharmacy_management(
med_id int(10) NOT NULL,
med_name varchar(30),
man_name varchar(30),
price double,
man_date date,
exp_date date,
med_type varchar(30),
stock double,
primary key(med_id));
select* from pharmacy_management;
drop table pharma_management;
insert into pharmacy_management values(1,'Paracetamol','Cipla',2.0,'2019-04-12','2020-11-12','tablet',500.0);


use pharma;
create table pharma_management(med_id int(10) NOT NULL,
medName varchar(30),
price int(5),
manName varchar(30),
stock int(8),
manDate date,
expDate date,

primary key(med_id));
insert into pharma_management values(1003,'Paracetamol',2,'Cipla',500,'2019-04-12','2020-04-11');
insert into pharma_management values(1004,'Ranitidine',5,'Cipla',500,'2019-06-12','2020-06-11');
select * from pharma_management;




insert into pharma_management values (1109, 'MEGLIPRIDE',49, 'Lifecare',99,  '2019-07-11', '2021-07-06');
insert into pharma_management values (2128, 'CAPRIL',80, 'Cutigen', 201,  '2018-02-12-', '2020-05-11');
insert into pharma_management values (7564, 'EMPERIDE', 39, 'Emcure', 78, '2019-11-04-', '2020-02-08');
insert into pharma_management values (5439, 'CADPRES', 36,'Cadila', 176,  '2020-01-01', '2023-01-02');

use pharma;
create table sales(
med_id int(10) NOT NULL,
medName varchar(30),
price int(5),
manName varchar(30),
billedDate date,
primary key(med_id));
select * from sales;

use pharma;
create table supplier(
companyName varchar(30),
medName varchar(30),
price int(5),
purchaseAmount int(7),
purchaseDate date);

insert into supplier values('Medsoft','Ranitidine',3500,700,'2019-09-09');
select * from supplier;

drop table pharmacy_management;