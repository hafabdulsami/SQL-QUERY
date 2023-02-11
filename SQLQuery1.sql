/* Query 1(List name of all the products whose price is above average.)*/
Select ProductName From Products where unitPrice > (select avg(UnitPrice) from Products) ;
/* Query 2(Write a query to generate report showing date wise orders shipped.)*/
Select * from Orders where ShippedDate is not null  Order by ShippedDate ;
/* Query 3(List name of all countries from where two or more suppliers belong to.) */
Select Country,Count(SupplierID) As C_count from Suppliers group by country having count(SupplierID) >=2;
/* Query 4(Write a query to generate report showing month wise orders delayed shipped)*/
Select MONTH(ShippedDate) AS MONTH, COUNT(OrderID) AS ORDERDELAYED from Orders where ShippedDate > RequiredDate group by(MONTH(ShippedDate))
/* Query 5(Report all the orders which have been discounted)*/
Select OrderId , SUM(Discount) from [Order Details]  group by OrderID having Discount != 0 ;
/* Query 6(Write a query to list the number of orders which were shipped in the cities of USA in 1997. Show the
number of order against each city. )*/
Select ShipCountry ,count(OrderID) AS TotalOrder from Orders where YEAR(ShippedDate) = 1997 Group by(ShipCountry); 
/* Query 7(Write a query to generate report showing country wise orders delayed shipped)*/
Select ShipCountry ,Count(OrderID) from Orders where ShippedDate>RequiredDate Group by(ShipCountry);
/* Query 8(Report all the orders which have been discounted with total price of order)*/
Select OrderID , SUM(Discount) AS Discount, SUM(Quantity*UnitPrice) As TotalBill from [Order Details]  group by (OrderID) having SUM(Discount) != 0 ;
/* Query 9(Write a query to list the number of orders which were shipped in the cities of each region in 1997)*/
Select ShipRegion,ShipCity,count(OrderID) AS TotalOrder from Orders where YEAR(ShippedDate) = 1997 AND ShipRegion is not null Group by ShipRegion,ShipCity ;


