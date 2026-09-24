USE GROCERY_SHOP;

CREATE TABLE Payment
(
    PaymentID INT PRIMARY KEY,
    OrderID INT,
    PaymentMode VARCHAR(20),
    PaymentDate DATE,
    PaymentAmount DECIMAL(10,2),
    PaymentStatus VARCHAR(20),

    FOREIGN KEY (OrderID)
    REFERENCES `Order`(OrderID)
);


INSERT INTO Payment VALUES
(601, 401, 'UPI',  '2026-09-01', 50.00,  'SUCCESS'),
(602, 402, 'CARD', '2026-09-01', 220.00, 'SUCCESS'),
(603, 403, 'CASH', '2026-09-02', 85.00,  'FAILED'),
(604, 404, 'UPI',  '2026-09-02', 190.00, 'SUCCESS'),
(605, 405, 'CARD', '2026-09-03', 280.00, 'SUCCESS'),
(606, 406, 'CASH', '2026-09-03', 150.00, 'SUCCESS'),
(607, 407, 'UPI',  '2026-09-04', 120.00, 'FAILED'),
(608, 408, 'CARD', '2026-09-04', 345.00, 'SUCCESS'),
(609, 409, 'CASH', '2026-09-05', 60.00,  'SUCCESS'),
(610, 410, 'UPI',  '2026-09-05', 190.00, 'SUCCESS'),
(611, 411, 'CARD', '2026-09-06', 240.00, 'FAILED'),
(612, 412, 'CASH', '2026-09-06', 250.00, 'SUCCESS'),
(613, 413, 'UPI',  '2026-09-07', 300.00, 'SUCCESS'),
(614, 414, 'CARD', '2026-09-07', 95.00,  'SUCCESS'),
(615, 415, 'CASH', '2026-09-08', 320.00, 'FAILED'),
(616, 416, 'UPI',  '2026-09-08', 170.00, 'SUCCESS'),
(617, 417, 'CARD', '2026-09-09', 75.00,  'SUCCESS'),
(618, 418, 'CASH', '2026-09-09', 270.00, 'SUCCESS'),
(619, 419, 'UPI',  '2026-09-10', 200.00, 'FAILED'),
(620, 420, 'CARD', '2026-09-10', 500.00, 'SUCCESS');


SELECT * FROM Payment;

UPDATE Payment
SET PaymentStatus = 'SUCCESS'
WHERE PaymentID = 603;

SELECT * FROM Payment
WHERE PaymentID = 603;


UPDATE Payment
SET PaymentStatus = 'FAILED'
WHERE PaymentID = 602;

SELECT * FROM Payment
WHERE PaymentID = 602;



SELECT * FROM Payment
WHERE PaymentStatus = 'SUCCESS';


SELECT * FROM Payment
WHERE PaymentStatus = 'FAILED';


SELECT * FROM Payment
WHERE PaymentMode = 'UPI';


SELECT * FROM Payment
WHERE PaymentMode = 'CARD';

SELECT * FROM Payment
WHERE PaymentMode = 'CASH';


SELECT PaymentMode, COUNT(*) AS TotalTransactions
FROM Payment
GROUP BY PaymentMode;

SELECT PaymentMode,SUM(PaymentAmount) AS TotalAmountReceived
FROM Payment
WHERE PaymentStatus = 'SUCCESS'
GROUP BY PaymentMode;