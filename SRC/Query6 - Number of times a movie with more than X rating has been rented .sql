

select z.title , count(z.title) as Times_rental
from (select f.title, f.rental_rate 
from rental as r
left join inventory as i
on r.inventory_id = i.inventory_id
left join film as f
on i.film_id = f.film_id
where rental_rate >=1.99) as z
group by z.title
order by Times_rental desc
limit 20;