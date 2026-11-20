USE GROCERY_SHOP;

SELECT COUNT(*) AS TotalProducts
FROM Product;

SELECT SUM(TotalAmount) AS TotalSalesAmount
FROM Orders;

SELECT AVG(TotalAmount) AS AverageSalesAmount
FROM Orders;

SELECT
    MIN(TotalAmount) AS MinimumSalesAmount,
    MAX(TotalAmount) AS MaximumSalesAmount
FROM Orders;

SELECT
    OrderID,
    CustomerName,
    OrderDate,
    TotalAmount,
    OrderStatus
FROM Orders
ORDER BY OrderDate;

SELECT
    CustomerName,
    SUM(TotalAmount) AS TotalPurchaseAmount
FROM Orders
GROUP BY CustomerName
ORDER BY TotalPurchaseAmount DESC
LIMIT 5;

SELECT
    Product.ProductID,
    Product.ProductName,
    SUM(Order_Details.Quantity) AS TotalQuantitySold
FROM Product
INNER JOIN Order_Details
ON Product.ProductID = Order_Details.ProductID
GROUP BY Product.ProductID, Product.ProductName
ORDER BY TotalQuantitySold DESC;

SELECT
    Category.CategoryName,
    SUM(Order_Details.Quantity) AS TotalQuantitySold,
    SUM(Order_Details.Quantity * Order_Details.UnitPrice)
    AS TotalSalesAmount
FROM Category
INNER JOIN Product
ON Category.CategoryID = Product.CategoryID
INNER JOIN Order_Details
ON Product.ProductID = Order_Details.ProductID
GROUP BY Category.CategoryID, Category.CategoryName
ORDER BY TotalSalesAmount DESC;

SELECT
    SUM(Quantity) AS TotalQuantitySold
FROM Order_Details;

SELECT
    Product.ProductID,
    Product.ProductName,
    SUM(Order_Details.Quantity * Order_Details.UnitPrice)
    AS TotalSalesAmount
FROM Product
INNER JOIN Order_Details
ON Product.ProductID = Order_Details.ProductID
GROUP BY Product.ProductID, Product.ProductName
ORDER BY TotalSalesAmount DESC;