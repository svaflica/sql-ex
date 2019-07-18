SELECT DISTINCT p1.model AS model_1, p2.model AS model_2, p1.speed, p1.ram
FROM PC p1, PC p2
WHERE p1.model > p2.model AND p1.speed = p2.speed AND p1.ram = p2.ram