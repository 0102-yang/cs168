with result as (
    select p.name as name, round(avg(r.rating), 2) as rating
    from people as p
    join crew as c on p.person_id = c.person_id
    join titles as t on t.title_id = c.title_id
    join ratings as r on r.title_id = t.title_id
    where p.born = "1955" and t.type = "movie"
    group by name
)

select r.name, r.rating from (
    select ntile(10) over(order by rating asc) as ntile_rating, * 
    from result
) as r
where r.ntile_rating = 9
order by rating desc, name asc;