select ships.class, name, country
from ships
join classes on classes.class=ships.class
where classes.numGuns >= 10