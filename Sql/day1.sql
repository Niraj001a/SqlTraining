create DATABASE LearningMysql;
use LearningMysql;

Create table employee(empid int, Name varchar(30));
desc employee;

Desc student;
Alter table student add column TotMarks int;

insert into student values(1,'Niraj',90);
insert into student(Sid,Sname) values(2,'ABC'),(3,'XYZ');

select * from student;

create table members (Member_Id int(5) primary key,Member_Name varchar(20),Member_address varchar(10),Acc_Open_Date date,Membership_type enum('Lifetime','Annual','Half Yearly','Quarterly'),Fees_paid int(5),Max_Books_Allowed int(2),Penalty_Amount double)

create table shirts (name varchar(30),size enum('xsmall','small','medium','large'));
desc shirts;
insert into shirts values('peter England','xsmall');

insert into shirts values('peter England','small');
Select * from shirts;

#Books assignment
Create table books(Book_No int,Book_Name varchar(30),Author_Name Varchar(30),Cost float, Category varchar(10));
insert into books values(101,'Let us C','Denis Ritchie', 450, 'System'),(102,'Oracle-complete Ref','Loni', 550, 'Database'),(103,'Mastering SQL','Loni', 250, 'Database'),(104,'SQL-Ref','Scott Urman', 750, 'Database');
SET SQL_SAFE_UPDATES = 0;
#1
Select * from books;
#2
select * from books where cost>=500 and cost<=700;
#3
select * from books where Book_Name like 'o%';
#4
Select * from books where Cost<(select avg(Cost) from books);
#5
Create table Book_supp like books;
#6
Create table Book_copy as select * from books;
#7
Create table Book_Catogey as select * from books where Book_Name='Database';
#8
Select * from books where Cost=(select Max(Cost) from books);
#9
Select * from books where Cost=(select Min(Cost) from books);
#10
select Author_Name from books group by Author_Name having count(*)>1;
#11
Update books set cost=cost+150 where Book_Name='let us C';
#12
Select Book_Name from books where Category= 'Database'; 
#13
Select Book_Name,cost from books where Category in ('Database','System'); 
Select Book_Name,cost from books where Category ='Database' Or Category ='System'; 
#14
select * from books where cost<500;
#15
alter table books add  pub_Year int ;
#16
Alter table books add Subscriber int after Author_Name;

#Entering value to new column
Update books set pub_year=2011,Subscriber=700 where Book_No=101;
Update books set pub_year=2013,Subscriber=200 where Book_No=102;
Update books set pub_year=2016,Subscriber=500 where Book_No=103;
Update books set pub_year=2019,Subscriber=680 where Book_No=104;

