select a.first_name as First_Name, a.last_name as Last_Name, count(c.name) as Number_of_comedy_films
from actors as a
left join old_hdd as ol
on a.actor_id = ol.actor_id
left join category as c
on ol.category_id = c.category_id
where c.name = 'Comedy' 
group by a.first_name, a.last_name
order by Number_of_comedy_films desc
 