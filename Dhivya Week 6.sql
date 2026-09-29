USE GROCERY_SHOP;

CREATE TABLE Review
(
    ReviewID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    ProductID INT,
    ReviewText VARCHAR(200),
    ReviewDate DATE,

    FOREIGN KEY (ProductID)
    REFERENCES Product(ProductID)
);

CREATE TABLE Rating
(
    RatingID INT PRIMARY KEY,
    ReviewID INT,
    Rating INT,

    FOREIGN KEY (ReviewID)
    REFERENCES Review(ReviewID)
);


INSERT INTO Review VALUES
(701, 'ANU',     101, 'GOOD PRODUCT',       '2026-09-01'),
(702, 'RAJEE',   102, 'GOOD QUALITY',       '2026-09-02'),
(703, 'DHIVYA',  103, 'FRESH PRODUCT',      '2026-09-03'),
(704, 'POOJA',   104, 'VERY GOOD PRODUCT',  '2026-09-04'),
(705, 'HEMA',    105, 'GOOD QUALITY',       '2026-09-05'),
(706, 'ARUN',    106, 'GOOD PRODUCT',       '2026-09-06'),
(707, 'MEENA',   107, 'AVERAGE PRODUCT',    '2026-09-07'),
(708, 'KARTHIK', 109, 'GOOD QUALITY',       '2026-09-08'),
(709, 'NITHYA',  110, 'VERY GOOD PRODUCT',  '2026-09-09'),
(710, 'VISHAL',  111, 'EXCELLENT PRODUCT',  '2026-09-10');


SELECT * FROM Review;


-- INSERT RATING DETAILS
INSERT INTO Rating VALUES
(801, 701, 5),
(802, 702, 4),
(803, 703, 5),
(804, 704, 5),
(805, 705, 4),
(806, 706, 5),
(807, 707, 3),
(808, 708, 4),
(809, 709, 5),
(810, 710, 5);


SELECT * FROM Rating;

SELECT * FROM Review
WHERE ReviewText LIKE '%GOOD%';


SELECT * FROM Review
WHERE CustomerName = 'ANU';


SELECT * FROM Review
WHERE ReviewDate >= '2026-09-05';


SELECT * FROM Review
ORDER BY ReviewDate DESC;


SELECT * FROM Rating
WHERE Rating = 5;


SELECT * FROM Rating
WHERE Rating >= 4;


SELECT * FROM Rating
WHERE Rating < 4;


SELECT COUNT(*) AS TotalReviews
FROM Review;


SELECT COUNT(*) AS TotalRatings
FROM Rating;


SELECT AVG(Rating) AS AverageRating
FROM Rating;


SELECT MAX(Rating) AS HighestRating
FROM Rating;


SELECT MIN(Rating) AS LowestRating
FROM Rating;

SELECT Rating, COUNT(*) AS RatingCount
FROM Rating
GROUP BY Rating
ORDER BY Rating;

SELECT CustomerName, COUNT(*) AS ReviewCount
FROM Review
GROUP BY CustomerName
ORDER BY ReviewCount DESC;

SELECT * FROM Rating;
SELECT * FROM Review;