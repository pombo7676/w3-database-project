SELECT f.title as Film, c.name as Genre, f.length 
from film as f
left join old_hdd as ol
on f.film_id = ol.film_id
left join category as c
on ol.category_id = c.category_id
where length > 100 and c.name is not Null
order by length desc
limit 20