USE GROCERY_SHOP;

SELECT * FROM Category;

SELECT DISTINCT CategoryName
FROM Category;

SELECT *
FROM Category
WHERE CategoryID = 1;

SELECT *
FROM Category
ORDER BY CategoryName;

SELECT * FROM Product;

SELECT DISTINCT CategoryID
FROM Product;

SELECT *
FROM Product
WHERE Price > 100;

SELECT *
FROM Product
ORDER BY Price DESC;

SELECT * FROM Seller;

SELECT DISTINCT Address
FROM Seller;

SELECT *
FROM Seller
WHERE Address = 'Chennai';

SELECT *
FROM Seller
ORDER BY SellerName;

SELECT * FROM Inventory;

SELECT DISTINCT AvailabilityStatus
FROM Inventory;

SELECT *
FROM Inventory
WHERE AvailabilityStatus = 'AVAILABLE';

SELECT *
FROM Inventory
ORDER BY Stock DESC;

SELECT * FROM Orders;

SELECT DISTINCT OrderStatus
FROM Orders;

SELECT *
FROM Orders
WHERE OrderStatus = 'Pending';

SELECT *
FROM Orders
ORDER BY TotalAmount DESC;

SELECT * FROM Order_Details;

SELECT DISTINCT ProductID
FROM Order_Details;

SELECT *
FROM Order_Details
WHERE Quantity >= 2;

SELECT *
FROM Order_Details
ORDER BY UnitPrice DESC;

SELECT * FROM Payment;

SELECT DISTINCT PaymentMode
FROM Payment;

SELECT *
FROM Payment
WHERE PaymentStatus = 'SUCCESS';

SELECT *
FROM Payment
ORDER BY PaymentAmount DESC;

SELECT * FROM Review;

SELECT DISTINCT CustomerName
FROM Review;

SELECT *
FROM Review
WHERE ReviewText LIKE '%GOOD%';

SELECT *
FROM Review
ORDER BY ReviewDate DESC;


SELECT * FROM Rating;

SELECT DISTINCT Rating
FROM Rating;

SELECT *
FROM Rating
WHERE Rating >= 4;

SELECT *
FROM Rating
ORDER BY Rating DESC;
```
