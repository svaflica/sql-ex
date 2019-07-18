select p.maker, avg(hd)
from pc
join product p on pc.model = p.model
where p.maker in (select maker from product where type = 'Printer')
group by maker