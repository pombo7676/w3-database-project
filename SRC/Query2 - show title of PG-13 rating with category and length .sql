select f.title, c.name as category, f.length
from film as f
left join old_hdd as ol
on f.film_id = ol.film_id
left join category as c
on ol.category_id = c.category_id
where f.rating = 'PG-13' and c.name is not Null;