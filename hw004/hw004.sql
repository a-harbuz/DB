//В рамках БД "песочница" напишите след/запросы:
//Вывести заказы со стоимостью от 5000 EUR (проекция: номер_заказа, стоимость_заказа)

SELECT Orders.OrderID, SUM(Products.Price) AS sum_order
FROM OrderDetails
JOIN Products ON OrderDetails.ProductID = Products.ProductID
JOIN Orders ON Orders.OrderID = OrderDetails.OrderID
GROUP BY OrderDetails.OrderID
HAVING sum_order>5000

//Вывести страны, в которые было отправлено 3 и более заказов

SELECT Customers.Country
FROM Orders
JOIN Customers ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.Country
HAVING COUNT(Orders.OrderID)>3

//Вывести ТОП-10 самых продаваемых товаров (проекция: название_товара, ко_во_проданных_единиц)

SELECT Products.ProductName, COUNT(OrderDetails.Quantity) as count_product
FROM OrderDetails
JOIN Products ON OrderDetails.ProductID = Products.ProductID
GROUP BY ProductName
ORDER BY count_product DESC
LIMIT 10;

//Расчитать З/П менеджеров (ставка - 5% от суммы проданных заказов)

SELECT Employees.LastName, Employees.FirstName, SUM(Products.Price)*0.05 AS Salary_EUR
FROM Employees
JOIN Orders ON Orders.EmployeeID = Employees.EmployeeID
JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
JOIN Products ON Products.ProductID = OrderDetails.ProductID
GROUP BY Employees.EmployeeID;
