select name, strftime("%Y", "now")-born as age
from people
where died is null
and born >= 1900
order by age desc, name asc
limit 20;

C. Dickerman Williams|123
Charles Sherrin|123
Clint Denn|123
Eugênia Brasão|123
George Kuma|123
Hasso Price|123
Jaime Contreras|123
John Arthur Stockton|123
Kaoru Wakaba|123
Kichimatsu Nakamura|123
Léonide Azar|123
Manuel Díaz|123
Miklós Beck|123
Nikolay Solovyev|123
Olga Belajeff|123
Tatsuo Tomonari|123
Abdolhossein Sepenta|122
Annie Hémery|122
Bronislava Livia|122
Clemence Groves|122