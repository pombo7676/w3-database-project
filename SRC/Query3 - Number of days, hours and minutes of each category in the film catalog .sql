

select z.category, FLOOR(sum(z.length)/1440) as Days, FLOOR(MOD(sum(z.length),1440)/60) as Hours, MOD(MOD(sum(z.length),1440),60) as Minutes
from(select f.title, c.name as category, f.length
from film as f
left join old_hdd as ol
on f.film_id = ol.film_id
left join category as c
on ol.category_id = c.category_id) as z
where category is not null
group by category;

