SELECT DISTINCT Product.maker
FROM PC
INNER JOIN Product ON PC.model = Product.model
WHERE PC.speed >= 450
