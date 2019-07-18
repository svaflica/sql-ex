SELECT maker, COUNT(model)
FROM Product
WHERE type = 'pc'
GROUP BY maker
HAVING COUNT(DISTINCT model) >= 3