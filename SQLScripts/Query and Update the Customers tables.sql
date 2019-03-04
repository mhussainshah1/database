select * from customer;

select * from company;

-- List all the people in the customer's table who's last name is Smith.
select * from customer where lastname = 'smith';

-- List all the customers and their employers and positions that live in Toledo
select concat(`FirstName`,' ',`LastName`) as 'Full Name', Company ,position from customer 
inner join company on customer.companyid = company.companyid
where city ='Toledo';

-- List all the customers and their employers and positions that live in Virginia Beach
select concat(`FirstName`,' ',`LastName`) as 'Full Name', Company , position from customer 
inner join company on customer.companyid = company.companyid
where city ='Virginia Beach';

-- Which is the most popular employer in our database? (hint: use select count(*) ....)
select company, count(*) as num_employees from customer 
inner join company on customer.companyid = company.companyid
GROUP BY customer.companyid
order by num_employees desc;

-- Which is the most populated state in our database?
select city, count(*) as cities from customer 
GROUP BY count(*) desc;

select * from customer where city = 'jackson';
-- Change the name of Paula Hill of Anaheim, CA. She just got married to Mr. Smith so she is now Paula Smith.

-- Vanessa Brown also married Mr. Smith (not the same guy). Update her record as well.

-- Now I want to know how many people in the database are named Smith?

-- How many people have last names beginning with S? We can use the LIKE operator to determine this. 
-- The following statement will work: Select * from customers where LastName like 'S%'; The percent sign is a wildcard in most databases.