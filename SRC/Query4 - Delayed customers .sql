

select z.customer_id, count(customer_id) as Number_delays , sum(z.rental_time - z.rental_duration) as Total_days_delay
from (select * from rental
where rental_time > rental_duration) as z
group by z.customer_id
order by Total_days_delay desc
limit 20;