SELECT DISTINCT Product.maker as maker, speed
FROM Laptop INNER JOIN
Product ON Product.model = Laptop.model
WHERE hd >= 10
