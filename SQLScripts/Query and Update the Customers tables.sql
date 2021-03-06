use customers;

-- List all the people in the customer's table who's last name is Smith.
select * from customer 
where lastname = 'smith';

-- List all the customers and their employers and positions that live in Toledo
select concat(`FirstName`,' ',`LastName`) as 'Full Name', Company , positions, city from customer 
	inner join company on customer.companyid = company.companyid
	inner join positions on customer.positionid = positions.positionid 
	inner join city on customer.cityid = city.cityid
	where city ='Toledo';

-- List all the customers and their employers and positions that live in Virginia Beach
select concat(`FirstName`,' ',`LastName`) as 'Full Name', Company , positions, city from customer 
	join company on customer.companyid = company.companyid
	inner join positions on customer.positionid = positions.positionid 
	inner join city on customer.cityid = city.cityid
	where city ='Virginia Beach';

-- Which is the most popular employer in our database? (hint: use select count(*) ....)
select company, count(*) as num_employees from customer 
	inner join company on customer.companyid = company.companyid
	GROUP BY customer.companyid
	order by num_employees desc;

-- Which is the most populated state in our database?
SELECT State, COUNT(State) AS Popularity from Customer
	inner join State on customer.stateid = state.stateid 
	GROUP BY state.State 
	ORDER BY popularity DESC;

-- Change the name of Paula Hill of Anaheim, CA. She just got married to Mr. Smith so she is now Paula Smith.
select concat(`FirstName`,' ',`LastName`) as 'Full Name', city, state from customer
	inner join city on customer.cityid = city.cityid
	inner join State on customer.stateid = state.stateid 
	where firstname= 'Paula' and lastname = 'Hill' and City = 'Anaheim' and State = 'CA';

UPDATE customer
		INNER JOIN city ON customer.cityid = city.cityid
		INNER JOIN State ON customer.stateid = state.stateid 
SET 	lastname = 'Smith'
WHERE 	firstname= 'Paula' AND lastname = 'Hill' AND City = 'Anaheim' AND State = 'CA';

-- Vanessa Brown also married Mr. Smith (not the same guy). Update her record as well.
select * from customer 
where firstname= 'Vanessa' and lastname = 'Brown';

update customer
inner join city on customer.cityid = city.cityid
inner join State on customer.stateid = state.stateid 
set lastname = 'Smith'
where firstname= 'Vanessa' and lastname = 'Brown';

select * from customer 
where firstname= 'Vanessa';

-- Now I want to know how many people in the database are named Smith?
select concat(`FirstName`,' ',`LastName`) as 'Full Name' from customer 
where firstname = 'Smith' or lastname = 'Smith';

-- How many people have last names beginning with S? We can use the LIKE operator to determine this. 
-- The following statement will work: Select * from customers where LastName like 'S%'; 
-- The percent sign is a wildcard in most databases.
Select * from customer 
where LastName like 'S%';

SELECT LastName, COUNT(LastName) AS Popularity from Customer 
GROUP BY LastName 
having count(*) >1 
ORDER BY popularity DESC ;