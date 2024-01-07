#В рамках БД "песочница" напишите след/запросы:
#(1) Вывести данные о товарах (проекция: названиетовара, цена, названиекатегории, названиекомпаниипоставщика)

SELECT Products.ProductName, Products.Price, Categories.CategoryName, Suppliers.SupplierName
FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID;

#(2) Вывести список стран, которые поставляют морепродукты

SELECT Suppliers.Country
FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE Categories.CategoryName='Seafood'
GROUP BY Suppliers.Country

#(3) Вывести два самых дорогих товара из категории Beverages из USA

SELECT Products.ProductName
FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE Categories.CategoryName='Beverages' AND Suppliers.Country = 'USA'
ORDER BY Products.Price DESC
LIMIT 2;

#(4) Вывести название и стоимость в USD одного самого дорогого проданного товара

SELECT Products.ProductName, Products.Price AS 'Price,USD'
FROM OrderDetails
JOIN Products ON OrderDetails.ProductID = Products.ProductID
ORDER BY Products.Price DESC
LIMIT 1;

#(5) Дайте короткий ответ на вопрос: в чем отличие БД от СУБД

БД - это место, где хранятся данные (посути это файл(ы) с данными на диске).
СУБД - система управления этими данными(ПО), которая позволяет обрабатывать наши запросы
и производить манипуляции с данными (CRUD).

