select rating, count(rating) as Number_of_films from film
group by rating