SELECT person.first_name, pet.id, pet.name, pet.age, pet.dead 
-- I only want some columns from pet so I specify them in the select. 
-- In the last exercise you used '*' to say "every column" but that's going to be a bad idea here. 
-- Instead, you want to be explicit and say what column from each table you want, and you do that by using table.column as in pet.name.
	FROM pet, person_pet, person
    -- To connect pet to person I need to go through the person_pet relation table. 
    -- In SQL that means I need to list all three tables after the FROM.
	WHERE  -- Start the WHERE clause.
	pet.id = person_pet.pet_id AND
    -- First I connect pet to person_pet by the related id columns pet.id and person_pet.id.
	person_pet.person_id = person.id AND 
    -- AND I need to connect person to person_pet in the same way. 
    -- Now the database can search for only the rows where the id columns all match up, and those are the ones that are connected.
	person.first_name = 'Dave';
	-- AND I finally ask for only the pets that I own by adding a person.first_name test for my first name.

-- This may be a mind blowing weird way to look at data if you already know a language like Python or Ruby. 
-- Take the time to model the same relationships using classes and objects then map it to this setup.

-- Do a query that finds your pets you've added thus far.

-- Change the queries to use your person.id instead of the person.name like I've been doing.

DELETE FROM person_pet WHERE pet_id = 0;
