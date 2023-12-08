SELECT ProductName, Price FROM Products WHERE Price>=20 AND Price<=150;

SELECT DISTINCT Country FROM Suppliers WHERE NOT Country = "USA";

SELECT ShipperName FROM Shippers WHERE ShipperID = 1;

SELECT ContactName FROM Customers WHERE NOT Country="France" AND NOT Country="USA";

SELECT Country, City, Address FROM Suppliers WHERE NOT Country="Japan" AND NOT Country="Brazil";
