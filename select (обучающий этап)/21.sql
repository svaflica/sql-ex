SELECT maker, MAX(PC.price)
FROM Product, PC
WHERE Product.type = 'pc' AND Product.model = PC.model
GROUP BY maker
