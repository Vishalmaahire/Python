--Date 13/14 sept
--DDL(Data Definition Language)-Create table
-- create table table_name(col_1 datatype, col_2 datatype);
create table study
(Roll_No int, name varchar (10),dept varchar(10),salary int,city varchar(10));

create table Employee
(Roll_No int, name varchar (10),dept varchar(10),salary int,city varchar(10),age int);
-- how to fetch the table
select * from study;
select name,city from study;
--how to insert data
--insert into table name values(values)
insert into Employee values (1,'Amit','Mech',50000,'Pune',23);
insert into Employee values (2,'Vishal','Elect',20000,'Mumbai',25);
insert into Employee values (3,'John','IT',76000,'London'28);
insert into Employee values (4, 'vishal','IT',30000,'',30);

create table Employee
(Roll_No int, name varchar (10),dept varchar(10),salary int,city varchar(10),age int);
insert into Employee values (1,'Amit','Mech',50000,'Pune',23);
insert into Employee values (2,'Vishal','Elect',20000,'Mumbai',25);
insert into Employee values (3,'John','IT',76000,'London',28);
insert into Employee values (4,'vishal','IT',30000,'',30);
insert into Employee values (5,'Ramadhir','IT',30000,'Mumbai',30);
select*from Employee








--Date 15 sept
--SQL Clauses
-- 1.Where
--2.Group by 
--3.Order by
--4.Having


--1.Where

--a.comparitive operator =,!=,<,>,<=,>=
select * from study where city = 'mumbai'
select * from study where city != 'mumbai'
select * from study where salary = 50000
select * from study where salary != 50000
select * from study where salary < 50000
select * from study where salary > 50000
select * from study where salary <= 50000  
select * from study where salary >= 50000

--b.Logical And/Or
select * from Employee where city = 'mumbai' and age = 30;
select * from Employee where city = 'mumbai' and salary = 30000;
select * from Employee where city = 'mumbai' and age = 30;


create table python (sr_no int ,roll_no int,name varchar(10),salary int,city varchar(10));
select * from python;
insert into python values(1,23,'John',75000,'Mumbai');
insert into python values(1,23,'John',75000,'Mumbai');
insert into python values(2,24,'Ram',55000,'New York');
insert into python values(3,25,'Vishal',25000,'Banglore');
insert into python values(4,26,'Ali',35000,'Pune');
insert into python values(5,27,'P.Raju',85000,'London');
insert into python values(5,27,'Prabhas','','London');
insert into python values(5,29,'Navin',85000,'');



--where

select * from python where city = 'Mumbai';
select * from python where city != 'Mumbai';
select * from python where salary <50000;
select * from python where salary >15000;
select * from python where salary <=15000;
select * from python where salary >=15000;

-- and /or

select * from python where city = 'Mumbai' and salary=75000;
select * from python where city = 'Mumbai' or salary=85000;



-- in / not in
select * from python where city in ('mumbai','london');
select * from python where city not in ('Mumbai','new york');
select * from python where city in ('Mumbai','new york') or roll_no= 27;


--between

create table SQLJOHN (Sr_no int ,Name varchar(10),Dept varchar(10),Salary int,City varchar(10),
age int);
select * from SQLJOHN;
insert into SQLJOHN values(1,'John','IT',100000,'London',28);
insert into SQLJOHN values(2,'Rahul','Textile',35000,'Dhule',29);
insert into SQLJOHN values(3,'Juhi','IT',120000,'Berlin',25);
insert into SQLJOHN values(4,'John','IT',100000,'London',28);
insert into SQLJOHN values(5,'Firdaus','Comp',80000,'Singapor',23);
insert into SQLJOHN values(5,'Steve','Mech',65000,'New York',26);
insert into SQLJOHN values(6,'Ali','Elect',55000,'Noida',30);
insert into SQLJOHN values(7,'Jenifer','E&TC',65000,'Dubai',28);
insert into SQLJOHN values(8,'Krushna','Civil',95000,'Kolkata',32);
insert into SQLJOHN values(9,'Ram','Mech',180000,'Delhi',35);
insert into SQLJOHN values(10,'Neel','E&TC',75000,'Mumbai',21);
insert into SQLJOHN values(11,'Arya','TECH','','Banglore',23);
-- between 
select * from SQLJOHN where Salary between 10000 and 100000;
select * from SQLJOHN where name between 'a' and 'z';

--like
select * from SQLJOHN where city like 'm%'; --starts with m
select * from SQLJOHN where city like '%i'; -- ends with i
select * from SQLJOHN where city like 'm%i'; --start with m ends with i
select * from SQLJOHN where city like '%b%'; -- anywhere in coloumn
select * from SQLJOHN where city like '_u%'; -- second char known(_ defines no of char __=2,___=3 etc)
select * from SQLJOHN where city like '%r_'; -- second last char is known(_ defines no of char __=2,___=3 etc)
select * from SQLJOHN where city like '[mn]%'; --two char known
select * from SQLJOHN where city like '[^mn]';  -- not mn
select * from SQLJOHN where city like '[a-p]%';  -- a to p








--date 16 sept
--arithmatic  +,-,*,/.

select * from SQLJOHN;
select * , new_sal = Salary + 5000 from SQLJOHN;
select * , new_sal = Salary/2 from SQLJOHN;

select * , new_sal = Salary+5000
		 ,minus_sal = Salary-2000
		 ,new = Salary*2
		 ,divide_sal = Salary/2 from SQLJOHN;	

select * , new_sal = Salary+5000
		 ,minus_sal = Salary-2000
		 ,new = Salary*2
		 ,divide_sal = Salary/2 from SQLJOHN where Name = 'John'; -- only to certain person	

---1 salary 15% increase


---1 loss of pay for 2 days 


select * from SQLJOHN where Salary is null;
select * from SQLJOHN where Salary  is not null;

--order
select * from SQLJOHN order by Salary --simple just order
select * from SQLJOHN order by Salary asc -- ascending
select * from SQLJOHN order by Salary desc -- descending
-- NOTE-- always use chronology like where first group by second having third order by fourth
--1 where
--2 group by
--3 having
--4 order by


--where  order by 
select * from SQLJOHN where city = 'london';
select * from SQLJOHN where city = 'london' order by salary desc

select * from SQLJOHN where city = 'Mumbai' order by name desc

select * from SQLJOHN order by dept asc,city desc; ---dept will be ascending and a/c to that city will be descending 






--date 17 sept


--create, insert,select
--DDL -- drop ,alter,truncate
--DML -- update,delete


-- update, delete			#these are data related commands 
--# we can delete whole data or only column wise row wise etc


-- alter,truncate,drop		#these are stucture related commands
--# drop whole with structure
--# truncate whole data without stucture(Schema or structure remains) and not available row wise or column wise


create table johnny (Sr_no int ,Name varchar(10),Dept varchar(10),Salary int,City varchar(10),
age int);
select * from johnny;
insert into johnny values(1,'Megha','IT',100000,'Madrid',28);
insert into johnny values(2,'Jenifer','Architect',135000,'LA',29);
insert into johnny values(3,'phoebe','IT',120000,'Berlin',25);
insert into johnny values(4,'Vishal','IT',100000,'London',28);
insert into johnny values(5,'Firdaus','Comp',80000,'Singapor',23);
insert into johnny values(5,'Steve','Mech',65000,'New York',26);
insert into johnny values(6,'Hayat','Elect',55000,'Istanbul',30);
insert into johnny values(7,'Jayesh','E&TC',65000,'Dubai',28);
insert into johnny values(8,'Sansa','Civil',95000,'Paris',32);
insert into johnny values(9,'Ram','Mech',180000,'Delhi',35);
insert into johnny values(10,'John','IT',175000,'Mumbai',28);
insert into johnny values(11,'Arya','TECH','','Banglore',23);

select * from johnny; 
delete Dept;

delete Salary where OID=5; -- delete the row 5

select * from johnny; 
drop table johnny; -- to delete the table



--DDL
--Truncate and Alter

create table Marvel (Sr_no int ,Name varchar(10),Character varchar(10),Salary int,City varchar(10),
age int);
select * from Marvel;
insert into Marvel values(1,'Tony','IT',100000,'Madrid',28);
insert into Marvel values(2,'Thor','Architect',135000,'LA',29);
insert into Marvel values(3,'Vanda','IT',120000,'Berlin',25);
insert into Marvel values(4,'Vishal','IT',100000,'London',28);
insert into Marvel values(5,'Natasha','Comp',80000,'Singapor',23);
insert into Marvel values(5,'Steve','Mech',65000,'New York',26);
insert into Marvel values(6,'Banner','Elect',55000,'Istanbul',30);
insert into Marvel values(7,'Racoon','E&TC',65000,'Dubai',28);
insert into Marvel values(8,'Groot','Civil',95000,'Paris',32);
insert into Marvel values(9,'Peter','Mech',180000,'Delhi',35);
insert into Marvel values(10,'Strange','IT',175000,'Mumbai',28);
insert into Marvel values(1,'Lord Krushna','Bramhand','','Universe',1);

truncate table Marvel; -- delete data only not structure

select * from Marvel;


create table World (Sr_no int ,Name varchar(10),Character varchar(10),Salary int,City varchar(10),
age int);
select * from World;
insert into World values(1,'Tony','IT',100000,'Madrid',28);
insert into World values(2,'Thor','Architect',135000,'LA',29);
insert into World values(3,'Vanda','IT',120000,'Berlin',25);
insert into World values(4,'Vishal','IT',100000,'London',28);
insert into World values(5,'Natasha','Comp',80000,'Singapor',23);
insert into World values(5,'Steve','Mech',65000,'New York',26);
insert into World values(6,'Banner','Elect',55000,'Istanbul',30);
insert into World values(7,'Racoon','E&TC',65000,'Dubai',28);
insert into World values(8,'Groot','Civil',95000,'Paris',32);
insert into World values(9,'Peter','Mech',180000,'Delhi',35);
insert into World values(10,'Strange','IT',175000,'Mumbai',28);
insert into World values(11,'Lord Krushna','Bramhand','','Universe',1);

delete World where IOD=11;


create table A (Sr_no int ,Name varchar(10),Field varchar(10),Salary int,City varchar(10),
age int);
select * from A;
insert into A values(1,'Tony','IT',100000,'Madrid',28);
insert into A values(2,'Thor','Architect',135000,'LA',29);
insert into A values(3,'Vanda','IT',120000,'Berlin',25);
insert into A values(4,'Vishal','IT',100000,'London',28);
insert into A values(5,'Natasha','Comp',80000,'Singapor',23);
insert into A values(6,'Steve','Mech',65000,'New York',26);
insert into A values(7,'Banner','Elect',55000,'Istanbul',30);
insert into A values(8,'Krushna','Bramhand',2000000,'Universe',1);
insert into A values(9,'Groot','Civil',95000,'Paris',32);
insert into A values(10,'Peter','Mech',180000,'Delhi',35);


--update --- DML
--Alter ---DDL
--update table_name set col_name= value

update set1 set name = "Groot";
-------------------NOTE THIS LECT IS REMAINING WATCH IT LATER-----------------




--20 sept--


create table DC (Sr_no int ,Name varchar(10),Field varchar(10),Salary int,City varchar(10),
age int);
select * from DC;
insert into DC values(1,'Tony','IT',100000,'Madrid',28);
insert into DC values(2,'Thor','Architect',135000,'LA',29);
insert into DC values(3,'Vanda','IT',120000,'Berlin',25);
insert into DC values(4,'Vishal','IT',100000,'London',28);
insert into DC values(5,'Natasha','Comp',80000,'Singapor',23);
insert into DC values(6,'Steve','Mech',65000,'New York',26);
insert into DC values(7,'Banner','Elect',55000,'Istanbul',30);
insert into DC values(8,'Krushna','Bramhand',2000000,'Universe',1);
insert into DC values(9,'Groot','Civil',95000,'Paris',32);
insert into DC values(10,'Peter','Mech',180000,'Delhi',35);
insert into DC values(11,'Zeus','Architect',135000,'LA',29);
insert into DC values('','','Architect',135000,'LA',29);
insert into DC values(13,'Achilles','Killer',51135000,'LA','');

--Aggregate fuctions--

--1 Min 
--2 Max
--3 Avg
--4 Sum

select * from DC;
select min (salary) from DC;

select max (salary) from DC;

select avg (salary) from DC; --int

select sum (salary) from DC; --int

--5 Count (no of things)

select count(salary)from DC; -- exclude null

select count(*)from DC; 

select count(Name)from DC; -- exclude null

-- 6 Distinct

select distinct (salary)from DC; -- exclude null

select count (distinct(salary)) from DC; 

select distinct (age) from DC;

--7 Top -- 

select top 2 Name from DC;

select top 2 * from DC;

select top 5 salary from DC;

---3 group by (clause)
-----------NOTE WE CAN NEVER USE * IN GROUP BY CLAUSE ------------------

--select col_name, agg_function from table group by col_name;-------
select *from DC;

select Name,max(salary) from DC group by Name; 

select *from Marvel;
select Character,max(salary) from Marvel group by Character; 

-- count of employee working in same Field

select Field,count(Name) from DC group by Field;

select Field,count(*) from DC group by Field;

select Field, max (Salary) from DC group by dept order by

select Field ,max(Salary)   from DC 
							where Field is not null
							group by Field 
							order by max (salary) desc;
 
select Field ,max(Salary)   from DC 
							where Field in ('IT','Comp')
							group by Field 
							order by max (salary) desc;
 
---------------NOTE HAVING CLAUSE IS TOTALLY DEPEND ON GROUP BY CLAUSE--------------------------------- 
---------------WITHOUT GROUP BY THERE IS NO HAVING CLAUSE---------------------------------


---------Lect upto having is completed-----------------


select*from DC;

select City,count(Sr_no)from DC group by City having count(Sr_no)>2;

-------NOTE IF U HAVE TO FILTER AGGREGATE FUNCTION IT POSSIBLE ONLY USING HAVING ------
-------FOR NORMAL (FIELD)IT IS POSSIBLE BY NORMAL WHERE CLAUSE--------------

select city, sum(salary) from DC group by city having sum(salary)>55000;

--How to fetch duplicate records from table?



--21 sept--

---------------CONSTRAINTS---------
----1.Primary Key---Duplicate and Null-----------
----2.Unique----Not Null--
----3.Not Null--Null------



