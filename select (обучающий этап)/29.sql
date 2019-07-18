select inn.point, inn.date, inc as inc,  out as out
from income_o inn
left join outcome_o on (outcome_o.date=inn.date and outcome_o.point=inn.point)
union
select ou.point, ou.date, inc as inc, out as out
from outcome_o ou
left join income_o on (ou.date=income_o.date and ou.point=income_o.point)
