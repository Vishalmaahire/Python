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






--21 sept--

---------------CONSTRAINTS---------
----1.Primary Key---Duplicate and Null ARE NOT ALLOWED
----2.Unique----Not Null--
----3.Not Null--Null------
----4.Check------
----5.Default------
--Foreign Key----


create table JOBS (ID int primary key,Name varchar(20));

insert into JOBS values (1,'Jerry');
insert into JOBS values (2,'Tom');
insert into JOBS values (3,'Rey');
insert into JOBS values (4,'Rey');
---------WE CAN USE ONLY ONE PRIMARY KEY IN ONE TABLE ALWAYS-------

--2 Unique
create table P2 (id int unique, name varchar (10));
insert into P2 values(1,'A');
insert into P2 values(null,'A');

----IT WILL NOT ACCEPT DUPLICATE -------

--3 Not Null
create table P3(id int, name varchar (10) not null);
insert into P3 values (1,'a');

create table P4(id int primary key, name varchar(10) unique not null);

select*from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME='P4';
--RUN AND SEE WHAT IT DOES--IT SHOWS WHOLE DATA INFO TOO

select*from INFORMATION_SCHEMA.TABLE_CONSTRAINTS 
--RUN AND SEE WHAT IT DOES--IT SHOWS DATA INFO TOO

select*from INFORMATION_SCHEMA.TABLE_CONSTRAINTS where TABLE_NAME='P4';
--RUN AND SEE WHAT IT DOES--IT SHOWS DATA INFO TOO FOR PERTICULAR TABLE---


--4 Check
create table P5 (id int, marks int check(marks>40));
insert into P5 values (1,50);
--it will not take marks under 40 it will show error

--gender m/f -- homework

--5 Default

create table P7(id int,city varchar(10) default 'pune');

insert into P7 values (1, default);
insert into P7 (id) values (2);
insert into P7 values (1,'Mumbai');

select * from P7;



--22 sept--

 -- Foreign key 
-- Auto increment--

create table p8 (id int identity , name varchar(10));
insert into p8 values ('Amit');
select* from p8;

create table p9(id int identity (1000,1),name varchar(10));
select*from p9;
insert into p9 values ('Amir');
--NOTE IT WILL CREATE NUMBERS FROM 1-10 LIKEWISE ----RUN AND SEE

create table p1(id int identity (1000,10),name varchar(10));
insert into p1 values ('Atul');
select * from p1
--NOTE IT WILL CREATE NUMBERS AND 10 GAP IN NUMBERS  LIKEWISE ----RUN AND SEE
-- This is command is not possible for varchar


--DBMS-Database Management System
--RDBMS- Relational Database Management System

-- For RDBMS we need primary key and foreign key
--primary key-- parent key
--foreign key -- child key

create table dept(DID int primary key identity , dept varchar(20))
insert into dept values ('civil')
insert into dept values ('Mech')
insert into dept values ('Elect')

select * from dept

create table student
					(S_id int, name varchar	(10),
					DID int foreign key references dept (DID));

insert into student values(101,'amit',2);
insert into student values(101,'John',2);

select *from student

-- set operator
 
--1 union 
--2 union all
--3 intersect
--4 except/minus 

A-[1,2,3,4]
B-[3,4,5,6]

A union B -[1,2,3,4,5,6]
A union all B-[1,2,3,4,3,4,5,6]
A intersect B-[3,4]
A except B-[1,2]
B except A-[5,6]

select* from set1 union select* from set2;
select* from set1 union all select* from set2;
select* from set1 intersect select* from set2;
select* from set1 except  select* from set2;

select S_id from set1 except select S_id from set2;
select * from set1  except select * from set2;

---end--




--23 sept--
--join --

create table R (Rid int, name varchar(20));
insert into  R  values (1,'Sid')
insert into  R  values (2,'Tom')
insert into  R  values (3,'Jon')
insert into  R  values (4,'Harry')
insert into  R  values (5,'Kate')


create table J (Jid int, name varchar(20),Rid int);
insert into  J  values (11,'Harry',3)
insert into  J  values (12,'Jon',4)
insert into  J  values (13,'Kate',5)
insert into  J  values (14,'Mat',6)
insert into  J  values (15,'Sid',7)

select * from R
select * from J

-- inner join or simply join

select * from R join J on R.Rid=J.Rid;
select Jid from R join J on R.Rid=J.Rid;

select * from R left join J on R.Rid=J.Rid;
select R.Rid,R.name from R left join J on R.Rid=J.Rid;
 
select * from R right join J on R.Rid=J.Rid;
select R.Rid,R.name from R right join J on R.Rid=J.Rid;

--NOTE- WHEN U PERFORM INNER JOIN IT DOESN'T SHOW NULL (UNIVERSAL TRUTH) BUT IT SHOWS IN LEFT,RIGHT AND FULL--
--WHY---'CAUSE NULL IS NOT VALUE WHICH IS SAME TO MACHINE---WE KNOW NULL IS SIMILAR BUT MACHINE CAN'T SEPERATE THE VALUES BETWEEN THEM--


create table M (Mid int, name varchar(20));
insert into  M  values (2,'Tom')
insert into  M	  values (3,'Jon')
insert into  M  values (4,'Harry')
insert into  M  values ('','Kate')


create table N (Nid int, name varchar(20),Mid int);
insert into  N  values (11,'Harry',4)
insert into  N  values (12,'Jon',6)
insert into  N  values (13,'Kate',8)
insert into  N  values (14,'Mat',9)
insert into  N  values (15,'Sid',null)
insert into  N  values (16,'Sansa',null)

select * from M
select * from N

-- inner join or simply join

select * from M join N on M.Mid=N.Mid;

select Mid from M join N on M.Mid=N.Mid;

select * from M left join N on M.Mid=N.Mid;

select * from M right join N on M.Mid=N.Mid;




create table G (Gid int, name varchar(20));
insert into  G  values (1,'Tom')
insert into  G	  values (1,'Jon')
insert into  G  values (1,'Harry')
insert into  G  values ('','Kate')


create table H (Hid int, name varchar(20),Gid int);
insert into  H  values (1,'Harry',4)
insert into  H  values (1,'Jon',6)
insert into  H  values (1,'Kate',8)
insert into  H  values (1,'Mat',9)
insert into  H  values (null,'Sid',null)
insert into  H  values (null,'Sansa',null)

select * from G
select * from H

-- inner join or simply join

select * from G join H on G.Gid=H.Gid; --------no values

select Gid from G join H on G.Gid=H.Gid;

select * from G left join H on G.Gid=H.Gid;---1,1,1 and 0 tom,jon,harry,kate resp--

select * from G right join H on G.Gid=H.Gid;---1,1,1,1, null, null 

-------THIS LECT IS REMIANING WATCH IT AGAIN-------








--24 sept--

--4 Equi--

select * from G,H where G.Gid=H.Gid; 

create table emp_new(id int,name varchar(10),company varchar(10),work varchar(10));
insert into emp_new values (1,'John','wipro','Mumbai')
insert into emp_new values (2,'Sansa','info','pune')
insert into emp_new values (3,'Arya','tcs','pune')
insert into emp_new values (4,'Ross','accenture','London')
insert into emp_new values (5,'Bran','google','CA')

select * from emp_new
create table job (salary int, base varchar(10),id int)
insert into job values (10000,'pune',1)
insert into job values(20)

select * from emp_new join job on emp_new.id= job.id where work=base 



-----------------------NOTE := THIS(FOLLOWING) QUE IS MUST FOR INTERVIEW------------------------------------
--GIVEN VALUES

--TABLE 1				--TABLE 2
--ID                    --ID
--1						--1	
--1						--1
--1						--1
--NULL					--1	
						--NULL	
						--NULL


----------FIND OUT FROM NET----- 
-------THIS LECT IS REMIANING WATCH IT AGAIN-------










---26 SEPT---
--DATE
date/datetime

select getdate(); --yyyy/mm/dd hh:mm:ss:ms---hh:n:ss:ms-----mm is also called as n
select getdate()+1; ----yyyy/mm/dd------hh:n:ss:ms
select getdate()-1;----yyyy/mm/dd------hh:n:ss:ms

--year=yy/yyyy	
--month=mm
--date=dd	
--day=dy
--hour=hh
--min=n
--sec=s/ss
--msec=ms
--wk=wk

--1 datediff
--2 dateadd
--3 datepart

--select datediff (interval,date1/col,date2/col);

select datediff (yy,'1993-07-27',getdate());--result in years 
select datediff (mm,'1993-07-27',getdate());--result in months 

select datediff (yy,'1996-8-28',getdate()); 


select datediff (yy,'1993-07-27',getdate()) as diff;

create table account_details(
acct_number int primary key identity (11112881,1),
acct_name varchar(20),
acct_open_date date,
branch varchar(20))

insert into account_details values ('shubham','2015/12/09','Mumbai')
insert into account_details values ('Rihan','2016/01/12','Jaipur')
insert into account_details values ('Seetal','2015/12/11','Goa')
insert into account_details values ('Priyanka','2015/12/01','Chennai')
insert into account_details values ('Manik','2015/12/08','Agra')
insert into account_details values ('Veena','2015/12/01','Patna')
insert into account_details values ('Rohan','2015/12/01','Pune')
insert into account_details values ('Laxmi',getdate(),'Rohtak')
insert into account_details values ('Minal',getdate(),'Indore')

select * from account_details

select*, datediff(mm,acct_open_date,getdate()) as acct_diff from account_details -----age of the account

select dateadd(interval,value,date/col);

select dateadd(yy,15,getdate());
	
select*, datediff(dy,acct_open_date,getdate()) as acct_diff from account_details 

select datediff(mm,24,acct_open_date) as add_new from account_details;

select acct_open_date,datediff(mm,24,acct_open_date) as add_new from account_details;

select*, datepart(dy,acct_open_date) as part from account_details 


create table account_new (
acct_number int primary key identity (11112881,1),
acct_name varchar(20),
acct_open_date datetime,
branch varchar(20));

insert into account_new values ('Amit','2015/12/02','07:24:32:455','Pune');
insert into account_new values ('Amit','2022/12/02','08:24:32:455','Pune');

select *, datepart(hh,acct_open_date) as part from account_new;


-- subquery,corelational --exist / not exist

select * from INFORMATION_SCHEMA.TABLES	

select max(salary) from DC;		

-- HOW TO FIND OUT SECOND MAX SALARY

select max(salary) from DC where salary < 
									(select max(salary) from DC);		
select* from DC;


-- HOW TO FIND OUT MAX SALARY excluding first max salary

select * from DC where salary < 
							(select max(salary) from DC);		

--H>W 
--NAME THOSE LIVING OUT OF PUNE CITY AND USING LANG MARATHI-HINDI
--------------------------THE END-------------------------


