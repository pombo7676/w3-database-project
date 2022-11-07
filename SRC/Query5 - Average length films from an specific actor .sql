

select z.first_name, z.last_name,z.title, avg(z.length) as Average_length
from (select a.first_name, a.last_name, f.title, f.length
from actors as a
inner join old_hdd as ol
on a.actor_id = ol.actor_id
inner join film as f
on ol.film_id = f.film_id
where a.first_name = 'zero' and  a.last_name = 'cage') as z