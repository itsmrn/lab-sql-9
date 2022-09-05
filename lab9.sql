-- Lab 9
use sakila;

-- Create a table rentals_may to store the data from rental table with information for the month of May.
-- Insert values in the table rentals_may using the table rental, filtering values only for the month of May.

select * from rental;
drop table if exists rentals_may;

create table rentals_may
AS SELECT
*
from rental
where rental_date between ("2005-05-01") and ("2005-05-31");

select * from rentals_may;


-- Create a table rentals_june to store the data from rental table with information for the month of June.
-- Insert values in the table rentals_june using the table rental, filtering values only for the month of June.

select * from rental;
drop table if exists rentals_june;

create table rentals_june
AS SELECT
*
from rental
where rental_date between ("2005-06-01") and ("2005-06-30");

select * from rentals_june;

-- Check the number of rentals for each customer for May.

select count(*), customer_id from rentals_may group by customer_id;

-- Check the number of rentals for each customer for June.

select count(*), customer_id from rentals_june group by customer_id;

-- Create a Python connection with SQL database and retrieve the results of the last two queries (also mentioned below) as dataframes:
-- SEE PYTHON NOTEBOOK



