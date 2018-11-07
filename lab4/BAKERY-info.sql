/*
    Victor Wei - vywei@calpoly.edu
    Edward Kesicki - ekesicki@calpoly.edu
*/

/* Get all chocolate flavored items less than $5
   Output flavor, food type, and price, by desc price
*/

SELECT Flavor, Food, Price
FROM goods
WHERE price < 5.0
    AND Flavor = 'Chocolate'
ORDER BY PRICE DESC;

/* Get prices for the following
    any cookie over $1.10
    any lemon flavored items
    any apple flavored items except for the pie
   Output flavor, food type and price. Sory by flavor then food type
*/

SELECT Flavor, Food, Price
FROM goods
WHERE (Food = 'Cookie' AND Price < 1.10) 
    OR (Flavor = 'Lemon')
    OR (Flavor = 'Apple' AND Food <> 'Pie')
ORDER BY Flavor, Food;

/* Get distinct customers who ordered something on oct 3, 2007
   Output first and last name, order by last name
*/

SELECT c.LastName, c.FirstName
FROM customers c, receipts r
WHERE DATE(r.saleDate) = '2007-10-03'  AND r.Customer = c.CId
ORDER BY c.LastName;

/* Get all different cakes purchased on oct 4, 2007
   Output Flavor and Food ordered by Flavor
*/

SELECT DISTINCT g.Flavor, g.Food
FROM goods g, receipts r, items i
WHERE g.Food = 'Cake' 
    AND g.GId = i.Item 
    AND i.Receipt = r.RNumber
    AND DATE(r.saleDate) = '2007-10-04'
ORDER BY g.Flavor;

/* Get all pastries purchased by ARIANE CRUZEN on oct 25, 2007
   Specify flavor and type and price
   Output y the order they appear on the receipt
*/

SELECT DISTINCT g.Flavor, g.Food, g.Price, i.Ordinal
FROM goods g, receipts r, items i, customers c
WHERE c.FirstName = 'ARIANE' AND c.LastName = 'CRUZEN'
    AND c.CId = r.Customer
    AND DATE(r.saleDate) = '2007-10-25'
    AND r.RNumber = i.Receipt
    AND g.GId = i.Item
ORDER BY i.Ordinal;

/* Get all pastries purchased by KIP ARNN during Oct 2007
   Output Flavor and Food ordered by Flavor
*/

SELECT DISTINCT g.Flavor, g.Food
FROM goods g, receipts r, items i, customers c
WHERE c.FirstName = 'KIP' AND c.LastName = 'ARNN'
    AND c.CId = r.Customer
    AND DATE(r.saleDate) LIKE '2007-10-%'
    AND r.RNumber = i.Receipt
    AND g.GId = i.Item
ORDER BY Flavor;
