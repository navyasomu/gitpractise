show databases;

create database sale;

drop database sale;
use sale;
create table customer_info(
id int auto_increment not null,
first_name varchar(30),
last_name varchar(30),
salary int,
primary key(id));

select * from customer_info;

describe customer_info;

insert into customer_info values(5,'navya','somu',2000000);
insert into customer_info(first_name,last_name,salary) values('surender','jadi',400000),("ramya",'yerra',75000);

insert into customer_info values(5,'som','dkcs',60060);
drop table customer_info;

create table customer_info(
id int auto_increment not null,
first_name varchar(30),
last_name varchar(30),
salary int,
primary key(id));

insert into customer_info(first_name,last_name,salary) values
('Navya','sravani',50000),
('surender','jadi',89000),
('hema','sai',30000),
('chinna','somu',Null);

select * from customer_info;

alter table customer_info
modify column salary float not null;
desc customer_info;


# SQL constraint unique

/* primary key is one in a table but unique key can be multiple in a table
	unique key dont have null values where as unique can have null values */
drop table employee;
create table employee(
id int auto_increment not null,
housenumber int unique,
pancard int unique,
first_name varchar(20),
last_name varchar(30),
salary int not null,
primary key(id));

desc employee;

alter table employee
add constraint uc_employee unique(pancard,last_name);

desc employee;

insert into employee values(1,1,1,'navya','somu',45000);

insert into employee values(2,2,2,'navy','s',4500000);

select * from employee;


create table surender_fam(
wife_no int auto_increment not null , 
first_name varchar(40), 
last_name varchar(50),
primary key(wife_no));

desc surender_fam;

alter table surender_fam
add constraint uc_surender_fam unique(first_name,last_name);
select * from surender_fam;

insert into surender_fam(first_name,last_name) values
('shabina','shaik'),
('keerthi','xx'),
('mardal','pilla');
select * from surender_fam order by wife_no;
desc surender_fam;
alter table surender_fam
drop index uc_surender_fam;

## Primary key

drop table person;
create table person(
id int ,
first_name varchar(40),
last_name varchar(40),
age int,
primary key(id));

desc person;

alter table person 
drop primary key;

alter table person
add constraint pk_person primary key(id,last_name);

alter table person
add constraint uc_person unique(first_name,age);

desc person;

alter table person
drop constraint uc_person;

alter table person
drop primary key;


drop table orders;
create table orders(
orderid int not null,
ordernumber int not null,
id int,
primary key(orderid),
foreign key(id) references person(id)
);

select * from person;

insert into person values
(1,'navya','sravani',22),
(2,'priya','nka',27),
(3,'ramya','priya',29),
(4,'sowmya','kmr',20);

select * from person;

insert into orders values(1,1,2);

select * from orders;
select * from person as pd inner join orders as od on pd.id=od.id;
select * from person as pd left join orders as od on pd.id=od.id order by age desc;
select * from person as pd right join orders as od on pd.id = od.id ;
select * from person as pd cross join orders as od on pd.id = od.id order by age desc;





























































































