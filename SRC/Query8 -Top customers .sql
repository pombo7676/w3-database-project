SELECT customer_id as Customer, Count(customer_id) as Number_of_rentals from rental
group by customer_id
order by Number_of_rentals desc
limit 20