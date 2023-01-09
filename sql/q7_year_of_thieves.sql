select count(1)
from titles
where premiered in (
    select premiered
    from titles
    where primary_title = "Army of Thieves"
);