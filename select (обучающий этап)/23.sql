SELECT DISTINCT maker
FROM Product INNER JOIN
PC ON PC.speed >= 750 AND Product.model = PC.model
INTERSECT
SELECT DISTINCT maker
FROM Product INNER JOIN
Laptop ON Laptop.speed >= 750 AND Product.model = Laptop.model