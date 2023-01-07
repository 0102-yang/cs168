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