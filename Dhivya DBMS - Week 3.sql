USE GROCERY_SHOP;

CREATE TABLE Seller
(
    SellerID INT PRIMARY KEY,
    SellerName VARCHAR(100),
    ContactNo VARCHAR(15),
    Email VARCHAR(100),
    Address VARCHAR(150)
);

INSERT INTO Seller VALUES
(201, 'FRESH MART', '9876100001', 'freshmart@gmail.com', 'Chennai'),
(202, 'GREEN GROCERS', '9876100002', 'greengrocers@gmail.com', 'Madurai'),
(203, 'DAILY NEEDS', '9876100003', 'dailyneeds@gmail.com', 'Coimbatore'),
(204, 'FAMILY MART', '9876100004', 'familymart@gmail.com', 'Salem'),
(205, 'SMART GROCERY', '9876100005', 'smartgrocery@gmail.com', 'Trichy'),
(206, 'FRESH CHOICE', '9876100006', 'freshchoice@gmail.com', 'Chennai'),
(207, 'GREEN VALLEY', '9876100007', 'greenvalley@gmail.com', 'Madurai'),
(208, 'GROCERY WORLD', '9876100008', 'groceryworld@gmail.com', 'Coimbatore'),
(209, 'FRESH BASKET', '9876100009', 'freshbasket@gmail.com', 'Salem'),
(210, 'DAILY MART', '9876100010', 'dailymart@gmail.com', 'Trichy'),
(211, 'NATURE FRESH', '9876100011', 'naturefresh@gmail.com', 'Chennai'),
(212, 'VALUE MART', '9876100012', 'valuemart@gmail.com', 'Madurai'),
(213, 'FRESH HOUSE', '9876100013', 'freshhouse@gmail.com', 'Coimbatore'),
(214, 'GROCERY ZONE', '9876100014', 'groceryzone@gmail.com', 'Salem'),
(215, 'PURE FOODS', '9876100015', 'purefoods@gmail.com', 'Trichy'),
(216, 'FRESH WORLD', '9876100016', 'freshworld@gmail.com', 'Chennai'),
(217, 'GREEN MART', '9876100017', 'greenmart@gmail.com', 'Madurai'),
(218, 'FOOD ESSENTIALS', '9876100018', 'foodessentials@gmail.com', 'Coimbatore'),
(219, 'FAMILY GROCERS', '9876100019', 'familygrocers@gmail.com', 'Salem'),
(220, 'DAILY FRESH', '9876100020', 'dailyfresh@gmail.com', 'Trichy'),
(221, 'GROCERY POINT', '9876100021', 'grocerypoint@gmail.com', 'Chennai'),
(222, 'GREEN CHOICE', '9876100022', 'greenchoice@gmail.com', 'Madurai'),
(223, 'FRESH EXPRESS', '9876100023', 'freshexpress@gmail.com', 'Coimbatore'),
(224, 'FOOD CARE', '9876100024', 'foodcare@gmail.com', 'Salem'),
(225, 'GROCERY HUB', '9876100025', 'groceryhub@gmail.com', 'Trichy'),
(226, 'FRESH CARE', '9876100026', 'freshcare@gmail.com', 'Chennai'),
(227, 'FOOD WORLD', '9876100027', 'foodworld@gmail.com', 'Madurai'),
(228, 'GREEN GROCERY', '9876100028', 'greengrocery@gmail.com', 'Coimbatore'),
(229, 'PURE MART', '9876100029', 'puremart@gmail.com', 'Salem'),
(230, 'SMART FOODS', '9876100030', 'smartfoods@gmail.com', 'Trichy');

SELECT * FROM Seller;


CREATE TABLE Inventory
(
    InventoryID INT PRIMARY KEY,
    ProductID INT,
    SellerID INT,
    AvailabilityStatus VARCHAR(20),
    Stock INT,

    FOREIGN KEY (ProductID)
    REFERENCES Product(ProductID),

    FOREIGN KEY (SellerID)
    REFERENCES Seller(SellerID)
);

INSERT INTO Inventory VALUES
(301, 101, 201, 'AVAILABLE', 45),
(302, 102, 202, 'UNAVAILABLE', 0),
(303, 103, 203, 'AVAILABLE', 25),
(304, 104, 204, 'AVAILABLE', 20),
(305, 105, 205, 'AVAILABLE', 35),

(306, 106, 206, 'AVAILABLE', 25),
(307, 107, 207, 'UNAVAILABLE', 0),

(308, 109, 209, 'AVAILABLE', 35),
(309, 110, 210, 'AVAILABLE', 25),

(310, 111, 211, 'AVAILABLE', 35),
(311, 112, 212, 'AVAILABLE', 30),
(312, 113, 213, 'AVAILABLE', 25),
(313, 114, 214, 'AVAILABLE', 20),
(314, 115, 215, 'AVAILABLE', 40),

(315, 116, 216, 'AVAILABLE', 35),
(316, 117, 217, 'AVAILABLE', 30),
(317, 118, 218, 'AVAILABLE', 25),
(318, 119, 219, 'AVAILABLE', 40),
(319, 120, 220, 'AVAILABLE', 25),

(320, 126, 226, 'AVAILABLE', 20),
(321, 127, 227, 'AVAILABLE', 30),
(322, 128, 228, 'AVAILABLE', 35),
(323, 129, 229, 'AVAILABLE', 20),
(324, 130, 230, 'AVAILABLE', 15);

SELECT * FROM Inventory;
SELECT * FROM Seller;
SELECT * FROM Product;


UPDATE Inventory
SET Stock = 20,
    AvailabilityStatus = 'AVAILABLE'
WHERE InventoryID = 307;

SELECT * FROM Inventory
WHERE InventoryID = 307;


UPDATE Inventory
SET Stock = 0,
    AvailabilityStatus = 'UNAVAILABLE'
WHERE InventoryID = 311;

SELECT * FROM Inventory
WHERE InventoryID = 311;


UPDATE Inventory
SET Stock = 50,
    AvailabilityStatus = 'AVAILABLE'
WHERE InventoryID = 302;

SELECT * FROM Inventory
WHERE InventoryID = 302;


UPDATE Seller
SET ContactNo = '9876543210'
WHERE SellerID = 215;

SELECT * FROM Seller
WHERE SellerID = 215;


DELETE FROM Inventory
WHERE InventoryID = 325;

SELECT * FROM Inventory;


SELECT * FROM Inventory
WHERE AvailabilityStatus = 'AVAILABLE';

SELECT * FROM Inventory
WHERE AvailabilityStatus = 'UNAVAILABLE';


SELECT COUNT(*) FROM Inventory
WHERE AvailabilityStatus = 'AVAILABLE';

SELECT COUNT(*) FROM Inventory
WHERE AvailabilityStatus = 'UNAVAILABLE';


SELECT * FROM Inventory
ORDER BY Stock DESC;


SELECT * FROM Inventory;
SELECT * FROM Seller;


DROP TABLE IF EXISTS Inventory;
DROP TABLE IF EXISTS Seller;