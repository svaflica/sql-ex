SELECT model
FROM PC
WHERE price = (SELECT MAX(t1.price) FROM (
SELECT price FROM PC
UNION
SELECT price FROM Laptop
UNION
SELECT price FROM Printer
) t1)
UNION
SELECT model
FROM Laptop
WHERE price = (SELECT MAX(t1.price) FROM (
SELECT price FROM PC
UNION
SELECT price FROM Laptop
UNION
SELECT price FROM Printer
) t1)
UNION
SELECT model
FROM Printer
WHERE price = (SELECT MAX(t1.price) FROM (
SELECT price FROM PC
UNION
SELECT price FROM Laptop
UNION
SELECT price FROM Printer
) t1)