-- first query, we will select all the records from the actor table
select * from actor

-- query for first_name and last_name in the actor table 
select first_name,last_name
from actor;

-- query for a first_name that equals nick using the where clause
select first_name,last_name
from actor
where first_name like 'Nick';

-- query for all first_name data that starts with a j using like and where clause and a wildcard
select first_name,actor_id
from actor
where first_name like 'J%'

-- query for all first_name data that starts with a k and has two letters after the k again using like and where 
-- clauses and the underscore
select first_name,actor_id
from actor
where first_name like 'K__';

-- query for all first_name data that starts with a k and ends with th
-- we will use the like and where clauses using both wildcard and the underscore
select first_name,last_name,actor_id
from actor
where first_name like 'K__%th';

-- comparing operators 
-- >, <, >=, <=,<>

-- explore data with select all query so that we can change into a new table
select * from payment

-- query for data that shows customers who paid an amount greater than $2
select customer_id, amount
from payment
where amount > 2.00;

-- query for data that shows customers who paid an amount less than 7.99
select customer_id,amount
from payment
where amount < 7.99;

-- query for less than or equal to 7.99
select customer_id,amount
from payment
where amount <=7.99;

-- greater than or equal to 2.00
select customer_id, amount
from payment
where amount >= 2.00;

-- query for data that shows customers who paid an amount not equal to 0.00 ordered in descending order
select customer_id,amount
from payment 
where amount <> 0.00
order by amount desc;

-- sql aggregate functions sum, avg, count, distinct, min, max
-- query to display the sum of amounts paid that are greater than 5.99
select sum(amount)
from payment 
where amount > 5.99;

-- query to display the aveage of amounts paid greater than 5.99
select avg(amount)
from payment 
where amount > 5.99;

-- query to display the count of amounts paid greater than 5.99
select count(amount) from payment where amount > 5.99;

-- query to display the count of distinct amounts paid greater than 5.99
select count(distinct amount)
from payment 
where amount > 5.99;

-- query to display the min of amounts paid greater than 7.99
select min(amount) as min_num_payments
from payment 
where amount > 7.99;

-- query to display the max of amounts paid grearter than 7.99
select max(amount) as max_num_payments
from payment 
where amount > 7.99;

-- demo of groupby
select amount
from payment 
where amount = 7.99;

-- query to display different amounts grouped together and count the amounts
select amount, count(amount)
from payment 
group by amount 
order by amount;

-- query to display customer ids with the summed amounts for each customer id
select customer_id, sum(amount)
from payment 
group by customer_id 
order by customer_id desc;

-- question 1
select count(last_name)
from actor 
where last_name like 'Wahlberg';

-- question 2
select count(amount)
from payment
where amount > 3.99 and amount < 5.99;

-- question 3
select count(film_id), film_id 
from inventory 
group by film_id 
order by count(film_id) desc; 

-- question 4
select count(last_name)
from Customers
where last_name like 'William';

-- question 5
select count(staff_id),staff_id 
from rental
group by staff_id 
order by count(staff_id) desc;

-- question 6
select count(distinct district), district
from address 
group by district
order by district;

-- question 7 
select sum(distinct actor_id),film_id 
from film_actor
group by film_id
order by sum(actor_id) desc;

-- question 8
select store_id, count(last_name)
from customer
where last_name like '%es'
group by store_id;

-- question 9
select count(amount), customer_id 
from payment 
where customer_id > 380 and customer_id < 430
group by customer_id having count(amount) > 250

-- question 10 
select count(distinct rating), rating, count(film_id)
from film
group by rating
order by count(film_id) desc




