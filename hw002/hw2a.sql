SELECT ProductName, Price*0.995 As 'Price with discont'
FROM Products;

SELECT ProductName
FROM Products
WHERE Price<100
ORDER BY Price DESC
LIMIT 1;

SELECT ProductName
FROM Products
WHERE CategoryID = 4
ORDER BY Price ASC
LIMIT 2;

SELECT ProductName
FROM Products
ORDER BY Price DESC
LIMIT 1 OFFSET 4;


# Вывести данные о товарах (название, цена со скидкой в 0.5%).
# Вывести самый дорогой товар в диапазоне до 100 EUR.
# Вывести два самых дешевых товара из категории 4.
# Вывести один товар, который находится на пятом месте среди самых дорогих.

