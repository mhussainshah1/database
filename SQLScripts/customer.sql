drop database customers;

create database customers;
use customers;

select count(*) as 'customer count' from customer;

select count(distinct company) as 'distinct companies' from customer;

alter table customer add customerid int not null primary key auto_increment;

select * from customer;

ALTER TABLE customer 
change customerid CustomerId int;

select companyid, company from customer;

create table Company(CompanyID int NOT NULL AUTO_INCREMENT,
Company varchar(255),
primary key (companyID)
);

select * from company;

select distinct company from Customer where length(company)>0 and company is not null order by company;

insert into company(company) select distinct company from Customer where length(company)>0 and company is not null order by company;

select * from company;

select companyID, company from company;

truncate company;

update Customer c set c.companyID = (select t.companyID from company t where t.company = c.company);

alter table customer drop column company;

alter table customer drop column fulname;

select CONCAT(`FirstName`, ' ', `LastName`) as `Full Name` from Customer;

select * from customer;

select * from company;

select CONCAT(`FirstName`, ' ', `LastName`) as `Full Name` from Customer inner join Company on customer.companyid=company.companyid;