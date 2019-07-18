SELECT DISTINCT Product.type, Laptop.model, Laptop.speed
FROM Laptop, Product
WHERE Laptop.speed < (SELECT MIN(speed) FROM PC) AND Product.type = 'Laptop'