USE GROCERY_SHOP;

SELECT 
    Orders.OrderID,
    Order_Details.ProductID,
    Order_Details.Quantity
FROM Orders
INNER JOIN Order_Details
ON Orders.OrderID = Order_Details.OrderID;



SELECT 
    Orders.OrderID,
    Order_Details.ProductID,
    Order_Details.Quantity
FROM Orders
LEFT JOIN Order_Details
ON Orders.OrderID = Order_Details.OrderID;

SELECT 
    Orders.OrderID,
    Orders.CustomerName,
    Order_Details.ProductID,
    Order_Details.Quantity
FROM Orders
RIGHT JOIN Order_Details
ON Orders.OrderID = Order_Details.OrderID;



SELECT 
    Orders.OrderID,
    Orders.TotalAmount,
    Payment.PaymentMode,
    Payment.PaymentAmount
FROM Orders
INNER JOIN Payment
ON Orders.OrderID = Payment.OrderID;

SELECT 
    Orders.OrderID,
    Orders.CustomerName,
    Orders.TotalAmount,
    Payment.PaymentMode,
    Payment.PaymentAmount,
    Payment.PaymentStatus
FROM Orders
LEFT JOIN Payment
ON Orders.OrderID = Payment.OrderID;

SELECT 
    Product.ProductName,
    Category.CategoryName
FROM Product
INNER JOIN Category
ON Product.CategoryID = Category.CategoryID;

SELECT 
    Orders.OrderID,
    Product.ProductName,
    Order_Details.Quantity,
    Payment.PaymentStatus
FROM Orders
INNER JOIN Order_Details
ON Orders.OrderID = Order_Details.OrderID
INNER JOIN Product
ON Order_Details.ProductID = Product.ProductID
LEFT JOIN Payment
ON Orders.OrderID = Payment.OrderID;