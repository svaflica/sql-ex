select point, date, sum(ou), sum(inn)
from(select point, date, sum(inc) as inn, null as ou from Income Group by point, date
union
select point, date, null as inn, SUM(out) as ou from Outcome Group by point, date ) as t
group by point, date order by point
