select (t.premiered / 10 * 10) || "s" as decade, round(avg(r.rating), 2) as avg_rating,
round(max(r.rating), 2), round(min(r.rating), 2), count(1)
from titles as t join ratings as r
on t.title_id = r.title_id
where t.premiered is not null
group by decade
order by avg_rating desc, decade asc;

/* 2020s|7.08|10.0|1.0|18825
2010s|7.05|10.0|1.0|73097
1960s|6.88|10.0|1.0|7423
2000s|6.85|10.0|1.0|39267
1990s|6.81|10.0|1.0|18177
1950s|6.77|10.0|1.0|4346
1970s|6.72|10.0|1.0|8929
1980s|6.72|10.0|1.0|11856
1940s|6.21|9.7|1.9|1872
1920s|6.04|8.9|1.0|915
1930s|6.0|9.4|1.1|1901
1910s|5.69|9.2|1.2|647
1870s|5.25|5.3|5.2|2
1880s|5.15|6.5|4.4|13
1900s|5.05|8.8|2.5|417
1890s|4.41|7.6|2.0|437 */