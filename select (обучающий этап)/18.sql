SELECT DISTINCT Product.maker, Printer.price
FROM Product, Printer
WHERE Printer.price = (SELECT MIN(price)
                       FROM Printer WHERE Printer.color = 'y')
AND   Printer.color = 'y' AND Product.model = Printer.model