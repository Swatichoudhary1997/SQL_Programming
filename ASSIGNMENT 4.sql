create database company4;
use company4;
Create table sales(
SaleID int,
ProductID int,
CustomerID int,
Saledate varchar(51),
Quantity int,
UnitPrice int,
Region varchar(52));
select * from sales;
Insert into sales(SaleID,ProductID,CustomerID,Saledate,Quantity,UnitPrice,Region)values
(1,101,1001,2024-01-05,5,200,"North"),
(2,102,1002,2024-01-10,10,150,"East"),
(3,103,1003,2024-02-15,2,300,"North"),
(4,104,1001,2024-02-20,7,250,"West"),
(5,101,1004,2024-03-05,1,200,"East");
select * from sales;
/*1.Write a query to calculate the total sales(Quantity*UnitPrice) for each product.*/
select ProductID, SUM(Quantity*UnitPrice) AS Totalsales from sales group by ProductID;
/*2.Write a query to find the total number of products sold in each region.*/
select region, sum(Quantity) as totalproductssold from sales group by region;
/*3.Write a query to get the average sales amount per product.*/
select ProductID, AVG(Quantity*Unitprice) as averagesalesamount from sales group by ProductID;
/*4.Find the regions where total sales are more than 3000.*/
select region, sum(Quantity*Unitprice) as totalsales from sales group by region having totalsales>3000;
/*5.Write a query to get the maximum quantity sold for each product.*/
select ProductID, MAX(Quantity) as maximumquantitysold from sales group by productID;
/*6.Write a query to calculate the average quantity of products sold per region.*/
select region, AVG(Quantity) as averagequantitysold from sales group by region;
/*7.Find the product IDs that have generated a total sales amount of more than 1000.*/
select ProductID, sum(Quantity*Unitprice) as totalsales from sales group by ProductID having totalsales>1000;
/*8.Write a query to get the total number of sales(rows) made for each customer.*/
select customerID, count(*) as totalsalesrows from sales group by customerID;
/*9.Find the products for which the average quantity sold is less than5.*/
select productID, AVG(Quantity) as averagequantitysold from sales group by productID having averagequantitysold<5;
/*10.Write a query to find the sum of total sales for each customer in each region.*/
select customerID,region, sum(Quantity*Unitprice) as totalsales from sales group by region,customerID;
/*11.Write a query to calculate the total sales for each month.*/
select date_format(saledate,'%Y-%M') AS Month, sum(Quantity*Unitprice) as totalsales from sales group by date_format(saledate,'%Y-%M');
/*12.Find the regions where the average unit price is more than 200.*/
select region, avg(unitprice) as averageunitprice from sales group by region having averageunitprice>200;
/*13.Write a query to get the minimum and maximum quantity sold for each region.*/
select region, min(Quantity) as minquantitysold, max(Quantity) as maxquantitysold from sales group by region;
/*14.Find the customers who have made more than 2 purchases.*/
select customerID, COUNT(*) as purchasecount from sales group by customerID having purchasecount>2;
/*15.Write a query to find the total sales for each product and filter only those products
where the total sales exceed 1500.*/
select productID, sum(Quantity*Unitprice) as totalsales from sales group by ProductID having totalsales>1500;
