/*
1. Drop column picture from staff.
2. A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly.
3. Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1. You can use current date for the rental_date column in the rental table. Hint: Check the columns in the table rental and see what information you would need to add there. You can query those pieces of information. For eg., you would notice that you need customer_id information as well. To get that you can use the following query:
select customer_id from sakila.customer
where first_name = 'CHARLOTTE' and last_name = 'HUNTER';
*/
use sakila;
-- 1. Drop column picture from staff.
select * from sakila.staff;

alter table staff
DROP COLUMN picture;

-- 2. A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly.
select * from sakila.staff;
select * from sakila.customer
where last_name = "sanders";

INSERT INTO staff(staff_id, first_name, last_name, address_id, email, store_id, active, username, password, last_update)
VALUES
(3,'Tammy','Sanders', 79, 'Tammy.Sanders@sakilastaff.org', 1, 1, 'Tammy', 'password1', '2022-10-17 18:00');

select * from sakila.staff;

/*
3. Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1. 
You can use current date for the rental_date column in the rental table. 
Hint: Check the columns in the table rental and see what information you would need to add there. 
You can query those pieces of information. For eg., you would notice that you need customer_id information as well. 
To get that you can use the following query:
select customer_id from sakila.customer where first_name = 'CHARLOTTE' and last_name = 'HUNTER';
*/
select * from sakila.rental;
select * from sakila.film where title ="Academy Dinosaur";

Insert into sakila.rental values(16050, NOW(), 1, 130, NULL, 1, NOW());