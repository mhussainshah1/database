-- create database Customers;
use Customers;

CREATE TABLE PersonsTest (
 ID int NOT NULL AUTO_INCREMENT,
 LastName varchar(255) NOT NULL,
 FirstName varchar(255),
 PRIMARY KEY (ID)
);

insert into PersonsTest (LastName,FirstName) values('simpson','bart');
insert into PersonsTest (LastName,FirstName) values('simpson','lisa');
insert into PersonsTest (LastName,FirstName) values('simpson','homer');

select * from PersonsTest;

drop table PersonsTest;
