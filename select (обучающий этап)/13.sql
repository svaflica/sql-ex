SELECT AVG(speed)
FROM PC INNER JOIN
Product ON Product.maker = 'A' AND Product.model = PC.model
