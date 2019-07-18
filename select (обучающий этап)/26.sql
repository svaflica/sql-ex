select avg(d.price) AS AVG_Price from
((Select pc.price from pc JOIN Product p ON p.model=pc.model where p.maker='A')
union all
(select price from laptop JOIN Product p ON p.model=laptop.model where  maker='A')) d