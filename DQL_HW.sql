-- Question 1
select * from actor
select count(last_name) from actor
where last_name = 'Wahlberg';
-- Answer: 2

-- Question 2
select * from payment;
select count(amount) from payment
where amount between 3.99 and 5.99;
-- Answer: 5,607

-- Question 3
select * from inventory;
select film_id, count(film_id) as c from inventory
group by film_id
order by c desc;
-- Answer: See table below


-- Question 4
select * from customer;
select count(last_name) from customer
where last_name = 'William';
-- Answer: 0

-- Question 5
select * from rental;
select count(*), staff_id from rental
group by staff_id;
-- Answer: staff_id 1 with 8,040 rentals

-- Question 6
select * from address;
select count(distinct district) from address;
-- Answer: 378

-- Question 7
select * from film_actor;
select film_id, count(distinct actor_id) as c from film_actor
group by film_id
order by c desc
limit 1;
-- Answer: film_id 508

-- Question 8:
select * from customer;
select store_id, count(last_name) from customer
where last_name like '%es' and store_id = 1
group by store_id
-- Answer: 13

-- Question 9:
select * from payment;
select distinct amount, count(customer_id) from payment
where customer_id between 380 and 430
group by amount
having count(customer_id) > 250;
-- Answer: 3

-- Question 10:
select * from film;
select rating, count(*) from film
group by rating;
-- Answer: 5 categories, PG-13 with the most