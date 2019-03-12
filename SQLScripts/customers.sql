drop database Customers; -- only run this if you're starting over

create database Customers;
-- switch to the customers database (It's case sensitive)
use Customers;

-- Download the customer.csvPreview the document file
-- Import the customers file into Workbench.Hint: Right-click on the database name and select table import option from the menu.

-- import customers.csv into a table called Customer (case-sensitive)
-- Right-click on tables and select import, use the wizard to import the csv file
-- see how many customers are in our table: (use back ticks for strings)
select count(*) as `Customer Count` from Customer;

-- how many unique companies are in our table?
-- Write a query to find the number of unique companies in the table.
select count(distinct company)as 'Distinct Companies' from Customer;

-- add an Id to the customer table
alter table Customer add CustomerId int not null primary key auto_increment;

-- add a column for the CompanyID to the customers table
alter table Customer add CompanyID int;

-- notice that the companyId is null
select companyID, company from Customer;

-- Create a new table for companies and move that data to the new table. Only move the unique companies. 
-- Then add a column to your customers table and update the the new column which is called CompanyID.

-- create a table for the companies
-- this statement will also create a companyID column which will
-- increment when you insert a new record
create table Company (
companyID int NOT NULL AUTO_INCREMENT,
Company varchar(255),
primary key (companyID)
);

-- see what's in your company table now
select * from Company;

-- generate a sql statement which shows which companies will be added to the new customer table
select distinct company from Customer where length(company)>0 and company is not null  order by company;

-- add the above companies from customers to the company table
insert into Company (company) 
	select distinct company from Customer 
	where length(company)>0 and company is not null  
	order by company;

-- look at what you've done
select * from Company;

-- another way to select is to list the fields
select companyID, Company from Company;

/*
If you get ...
Error Code: 1175. You are using safe update mode and you tried 
to update a table without a WHERE that uses a KEY column 
To disable safe mode, toggle the option in 
Preferences -> SQL Editor and reconnect.

To reconnect: Query Menu -> Reconnect to Server
*/

-- update the compnayId in the customers table
update Customer c 
set c.companyID = (
	select t.companyID from Company t 
	where t.company=c.company
);

-- query to check your data
select c.companyID,c.company,t.companyID,t.Company from Customer c 
inner join Company t on c.CompanyID=t.CompanyID;

-- remove the company column from the customers table. It is no longer needed
alter table Customer 
drop column company;

-- also remove fullname, we don't need calculated columns. They're a maintenance headache
alter table Customer 
drop column fullname;

-- You can generate fullname more efficiently as:
select CONCAT(`FirstName`,' ',`LastName`) as `Full Name` from Customer;

-- notice you won't see the company (or fullname) column
select * from Customer;

-- the company column and the id are in Company
select * from Company;

-- a query to bring it all back together
select CONCAT(`FirstName`,' ',`LastName`) as `Full Name`, company from Customer 
inner join Company on customer.companyid=Company.companyid;


-- Create a new table for cities and a new table for states and positions. 
-- Move that data to the new tables in the same way you did above. Move unique cities and unique states to the two new tables.

-- Delete those columns from this table and add keys to link to the new tables.

-- Create a query that recreates the original data set using joined tables.

-- Export the data as SQL import statements (optional).

select * from customer;

select count(distinct city)as 'Distinct Cities' from Customer;

alter table Customer add CityID int;

select cityid, city from customer;

create table City (
cityID int NOT NULL AUTO_INCREMENT,
City varchar(255),
primary key (cityID)
);

select * from City;

select distinct city from Customer 
where length(city)>0 and city is not null
order by city;

insert into City (city) 
	select distinct city from Customer 
	where length(city)>0 and city is not null  
	order by city;
    
select * from City;
select cityID, City from City;

update Customer 
set customer.cityID = (
	select city.cityID from City 
	where city.city = customer.city
);

select customer.cityID, customer.city, city.cityID, city.City from Customer 
inner join City on customer.CityID = city.CityID;

alter table Customer 
drop column city;

select * from Customer;
select * from City;

select CONCAT(`FirstName`,' ',`LastName`) as `Full Name`, city from Customer 
inner join City on customer.cityid = City.cityid;

-- ---------------------------------------
select * from Customer;

select count(distinct state)as 'Distinct States' from Customer;

alter table Customer add StateID int;

select stateid, state from customer;

create table State (
StateID int NOT NULL AUTO_INCREMENT,
State varchar(255),
primary key (stateID)
);

select * from state;

select distinct state from Customer 
where length(state)>0 and state is not null
order by state;

insert into state (state) 
	select distinct state from Customer 
	where length(state)>0 and state is not null  
	order by state;
    
select stateID, state from state;

update Customer 
set customer.stateID = (
	select state.stateID from state 
	where state.state = customer.state
);

select customer.stateID, customer.state, state.stateID, state.state from Customer 
inner join state on customer.stateID = state.stateID;

alter table Customer 
drop column state;

select * from Customer;
select * from state;

select CONCAT(`FirstName`,' ',`LastName`) as `Full Name`, state from Customer 
inner join state on customer.stateid = state.stateid;
-- ------------------------------------------------------
select * from Customer;

select count(distinct Position)as 'Distinct Positions' from Customer;

alter table Customer add PositionID int;

select Positionid, Position from customer;

create table Positions (
PositionID int NOT NULL AUTO_INCREMENT,
Positions varchar(255),
primary key (PositionID)
);

select * from Positions;

select distinct Position from Customer 
where length(Position)>0 and Position is not null
order by Position;

insert into Positions (Positions) 
	select distinct Position from Customer 
	where length(Position)>0 and Position is not null  
	order by Position;
    
select PositionID, Positions from Positions;

update Customer 
set customer.PositionID = (
	select Positions.PositionID from Positions 
	where Positions.Positions = customer.Position
);

select customer.PositionID, customer.Position, Positions.PositionID, Positions.Positions from Customer 
inner join Positions on customer.PositionID = Positions.PositionID;

alter table Customer 
drop column Position;

select * from Customer;
select * from Positions;

select CONCAT(`FirstName`,' ',`LastName`) as `Full Name`, Positions from Customer 
inner join Positions on customer.Positionid = Positions.Positionid;