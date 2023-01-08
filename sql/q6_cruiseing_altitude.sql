select t.primary_title as name, r.votes as votes
from titles as t join ratings as r
on t.title_id = r.title_id
where t.title_id in (
    select title_id from crew where person_id in (
        select person_id from people
        where (name like "%Cruise%" or name like "%cruise%")
        and born = "1962"
    )
)
order by votes desc
limit 10;

/* Oblivion|520383
Mission: Impossible|423228
Top Gun|408389
Magnolia|311030
Born on the Fourth of July|106667
Days of Thunder|88698
Lions for Lambs|50257
Without Limits|7127
Space Station 3D|1693
Nickelodeon Kids' Choice Awards 2012|212 */