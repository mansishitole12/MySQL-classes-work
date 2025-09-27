-- create database
create database Electricity_Department;
use  Electricity_Department;

-- Customer table
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(50),
    Address VARCHAR(100),
    City VARCHAR(50),
    Contact VARCHAR(15),
    ConnectionDate DATE,
    Status VARCHAR(20)
);

-- Customer Records
INSERT INTO Customer VALUES
(1, 'Rohit Sharma', '123 MG Road', 'Mumbai', '9876543210', '2021-05-10', 'Active'),
(2, 'Sneha Patil', '45 Park Street', 'Pune', '9123456780', '2022-03-12', 'Active'),
(3, 'Amit Deshmukh', '78 Hill Road', 'Mumbai', '9988776655', '2020-07-01', 'Inactive'),
(4, 'Pooja Kulkarni', '12 Main Street', 'Nagpur', '9876123456', '2023-01-20', 'Active'),
(5, 'Kiran More', '56 Lake View', 'Pune', '9123987654', '2022-11-15', 'Active');

-- Meter table
CREATE TABLE Meter (
    MeterID INT PRIMARY KEY,
    CustomerID INT,
    MeterType VARCHAR(20),
    InstallationDate DATE,
    Status VARCHAR(20),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

-- Meter Records
INSERT INTO Meter VALUES
(101, 1, 'Smart', '2021-05-11', 'Active'), 
(102, 2, 'Analog', '2022-03-15', 'Active'),
(103, 3, 'Smart', '2020-07-02', 'Inactive'),
(104, 4, 'Digital', '2023-01-25', 'Active'),
(105, 5, 'Smart', '2022-11-16', 'Active');


-- Bill table
CREATE TABLE Bill (
    BillID INT PRIMARY KEY,
    CustomerID INT,
    MeterID INT,
    BillMonth VARCHAR(20),
    UnitsConsumed INT,
    Amount DECIMAL(10,2),
    DueDate DATE,
    Status VARCHAR(20),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (MeterID) REFERENCES Meter(MeterID)
);

-- Bill Records
INSERT INTO Bill VALUES
(201, 1, 101, 'August 2025', 250, 3000.00, '2025-09-10', 'Unpaid'),
(202, 2, 102, 'August 2025', 180, 2160.00, '2025-09-12', 'Paid'),
(203, 3, 103, 'August 2025', 300, 3600.00, '2025-09-15', 'Unpaid'),
(204, 4, 104, 'August 2025', 150, 1800.00, '2025-09-18', 'Paid'),
(205, 5, 105, 'August 2025', 200, 2400.00, '2025-09-20', 'Unpaid'); 

-- Payment table
CREATE TABLE Payment (
    PaymentID INT PRIMARY KEY,
    BillID INT,
    PaymentDate DATE,
    AmountPaid DECIMAL(10,2),
    Mode VARCHAR(20),
    Status VARCHAR(20),
    FOREIGN KEY (BillID) REFERENCES Bill(BillID)
    );

-- Payment Records
INSERT INTO Payment VALUES
(301, 202, '2025-09-10', 2160.00, 'Credit Card', 'Completed'),
(302, 204, '2025-09-15', 1800.00, 'Cash', 'Completed'),
(303, 201, '2025-09-12', 0.00, 'Pending', 'Pending'),
(304, 203, '2025-09-14', 0.00, 'Pending', 'Pending'),
(305, 205, '2025-09-18', 0.00, 'Pending', 'Pending');

-- Section A – Commands (DDL, DML, DQL, DCL, TCL) (Q1–Q7)
-- 1. (DDL) Write a query to create a Customer table with appropriate constraints for CustomerID (Primary Key), Contact (Unique), and Status (Default = 'Active').
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,          
    Name VARCHAR(50) NOT NULL,
    Address VARCHAR(100),
    City VARCHAR(50),
    Contact VARCHAR(15) UNIQUE,          
    Status VARCHAR(20) DEFAULT 'Active'  
);

-- 2. (DDL) Alter the Bill table to add a column LateFee DECIMAL(8,2).
ALTER TABLE Bill
ADD LateFee DECIMAL(8,2);

-- 3. (DML) Insert a new record of a customer “Rahul Sharma” from Lucknow with contact 9876543210.
INSERT INTO Customer (CustomerID, CustomerName, Contact, Email, Status)
VALUES (1, 'Rahul Sharma', '9876543210', 'rahul.sharma@example.com', 'Active');

-- 4. (DML) Update all bills where DueDate < CURRENT_DATE and set Status = 'Overdue'.
UPDATE Bill
SET Status = 'Overdue'
WHERE DueDate < CURRENT_DATE;

-- 5. (DQL) Write a query to display CustomerName, City, and ConnectionDate of all customers connected after 2020.
SELECT CustomerName, City, ConnectionDate
FROM Customer
WHERE ConnectionDate > '2020-12-31';

-- 6. (DCL) Grant SELECT and UPDATE privilege on the Bill table to staff member ‘clerk1’.
GRANT SELECT, UPDATE
ON Bill
TO 'clerk1';

-- 7. (TCL) Demonstrate how you will rollback a bill payment insertion in case of wrong entry.
INSERT INTO Bill (BillID, CustomerID, Amount, DueDate, Status)
VALUES (101, 1, 5000.00, '2025-09-25', 'Pending');

-- Realize the entry is wrong, rollback
ROLLBACK;

-- Optional: Check the table to confirm insertion was not saved
SELECT * FROM Bill WHERE BillID = 101;

-- Section B – Clauses (Q8–Q13)
-- 8. Retrieve all customers from “Delhi” using the WHERE clause.
SELECT *
FROM Customer
WHERE City = 'Delhi';

-- 9. Display customers grouped by city and count the number of connections in each city.
SELECT City, COUNT(CustomerID) AS NumberOfConnections
FROM Customer
GROUP BY City;

-- 10. Find the maximum bill amount city-wise using GROUP BY and MAX().
SELECT c.City, MAX(b.Amount) AS MaxBillAmount
FROM Customer c
JOIN Bill b ON c.CustomerID = b.CustomerID
GROUP BY c.City;

-- 11. Display customers whose name starts with ‘A’ using the LIKE clause.
SELECT *
FROM Customer
WHERE Name LIKE 'A%';

-- 12. Show the top 5 highest bill amounts using ORDER BY and LIMIT.
SELECT BillID, CustomerID, BillAmount, BillDate
FROM Bill
ORDER BY BillAmount DESC
LIMIT 5;

-- 13. Find the average units consumed by customers having consumption more than 200 units (HAVING clause).
SELECT CustomerID, AVG(UnitsConsumed) AS AvgUnits
FROM Bill
GROUP BY CustomerID
HAVING AVG(UnitsConsumed) > 200;

-- Section C – Constraints (Q14–Q16)
-- 14. Create the Meter table with a CHECK constraint to allow only MeterType IN ('Domestic','Commercial').
CREATE TABLE Meter (
    MeterID INT PRIMARY KEY,
    CustomerID INT NOT NULL,
    MeterType VARCHAR(20) NOT NULL,
    InstallationDate DATE,
    Status VARCHAR(20) DEFAULT 'Active',
    CONSTRAINT chk_meter_type CHECK (MeterType IN ('Domestic','Commercial')),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

-- 15. Ensure that the BillID in the Bill table is Auto Increment Primary Key.
CREATE TABLE Bill (
    BillID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT NOT NULL,
    MeterID INT NOT NULL,
    BillAmount DECIMAL(10,2) NOT NULL,
    UnitsConsumed INT,
    BillDate DATE,
    DueDate DATE,
    Status VARCHAR(20) DEFAULT 'Pending',
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (MeterID) REFERENCES Meter(MeterID)
);

-- 16. Add a FOREIGN KEY(CustomerID) in the Bill table referencing the Customer table.
ALTER TABLE Bill
ADD CONSTRAINT fk_customer
FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID);

-- Section D – Joins (Q17–Q22)
-- 17. Display CustomerName, MeterType, InstallationDate of all customers using an INNER JOIN.
SELECT C.Name AS CustomerName,
       M.MeterType,
       M.InstallationDate
FROM Customer C
INNER JOIN Meter M
ON C.CustomerID = M.CustomerID;

-- 18. Show all customers and their bills (if any) using a LEFT JOIN.
SELECT C.CustomerID,
       C.Name AS CustomerName,
       B.BillID,
       B.BillAmount,
       B.BillDate,
       B.Status AS BillStatus
FROM Customer C
LEFT JOIN Bill B
ON C.CustomerID = B.CustomerID;

-- 19. Display all staff members who have not handled any complaints using a LEFT JOIN.
SELECT S.StaffID,
       S.Name AS StaffName,
       S.Department,
       S.Contact
FROM Staff S
LEFT JOIN Complaints C
ON S.StaffID = C.StaffID
WHERE C.StaffID IS NULL;

-- 20. Find the total amount collected by each staff member who handled payments using JOIN.
SELECT 
    S.StaffID,
    S.Name AS StaffName,
    SUM(B.BillAmount) AS TotalCollected
FROM
    Staff S
        INNER JOIN
    Bill B ON S.StaffID = B.StaffID
GROUP BY S.StaffID , S.Name;

-- 21. List all customers who paid after the due date using JOIN between Bill and Payment.
SELECT C.CustomerID,
       C.Name AS CustomerName,
       B.BillID,
       B.DueDate,
       P.PaymentDate,
       P.AmountPaid
FROM Customer C
INNER JOIN Bill B
ON C.CustomerID = B.CustomerID
INNER JOIN Payment P
ON B.BillID = P.BillID
WHERE P.PaymentDate > B.DueDate;

-- 22. Show CustomerName, ComplaintDescription, StaffName using JOIN on Complaint and Staff.
SELECT C.Name AS CustomerName,
       CMP.Description AS ComplaintDescription,
       S.Name AS StaffName
FROM Complaint CMP
INNER JOIN Customer C
ON CMP.CustomerID = C.CustomerID
INNER JOIN Staff S
ON CMP.StaffID = S.StaffID;
  
-- Section E – Subqueries (Q23–Q28)
-- 23. Find the customer with the highest bill amount (subquery in WHERE).
SELECT C.CustomerID,
       C.Name AS CustomerName,
       B.BillID,
       B.BillAmount
FROM Customer C
INNER JOIN Bill B
ON C.CustomerID = B.CustomerID
WHERE B.BillAmount = (
    SELECT MAX(BillAmount)
    FROM Bill
);

-- 24. Retrieve customers whose units consumed > average units consumed (subquery).
SELECT C.CustomerID,
       C.Name AS CustomerName,
       B.UnitsConsumed
FROM Customer C
INNER JOIN Bill B
ON C.CustomerID = B.CustomerID
WHERE B.UnitsConsumed > (
    SELECT AVG(UnitsConsumed)
    FROM Bill
);

-- 25. Find the second highest bill amount using subquery with LIMIT.
SELECT MAX(BillAmount) AS SecondHighestBill
FROM Bill
WHERE BillAmount < (
    SELECT MAX(BillAmount) 
    FROM Bill
);

-- 26. Display customers who have never made a payment (subquery with NOT IN).
SELECT CustomerID,
       Name AS CustomerName
FROM Customer
WHERE CustomerID NOT IN (
    SELECT CustomerID
    FROM Bill
    WHERE BillID IN (
        SELECT BillID
        FROM Payment
    )
);

-- 27. List customers whose due bills are more than the maximum salary of staff.
SELECT C.CustomerID,
       C.Name AS CustomerName,
       B.BillID,
       B.BillAmount
FROM Customer C
INNER JOIN Bill B
ON C.CustomerID = B.CustomerID
WHERE B.Status = 'Due'
  AND B.BillAmount > (
      SELECT MAX(Salary)
      FROM Staff
  );

-- 28. Show the oldest connection date using subquery in SELECT.
SELECT Name AS CustomerName,
       ConnectionDate,
       (SELECT MIN(ConnectionDate) FROM Customer) AS OldestConnectionDate
FROM Customer;

-- Section F – Built-in & User-Defined Functions (Q29–Q33)
-- 29. Display the current date and time using a built-in function.
SELECT NOW() AS CurrentDateTime;

-- 30. Show the first 5 characters of customer names using string functions.
SELECT CustomerID, Name, LEFT(Name, 5) AS Name_First5Chars
FROM Customer;

-- 31. Create a UDF GetFullName(CustomerID) that returns FirstName + ' ' + LastName.
DELIMITER $$

CREATE FUNCTION GetFullName(p_CustomerID INT)
RETURNS VARCHAR(200)
DETERMINISTIC
BEGIN
    DECLARE fullName VARCHAR(200);

    SELECT CONCAT(FirstName, ' ', LastName)
    INTO fullName
    FROM Customer
    WHERE CustomerID = p_CustomerID;

    RETURN fullName;
END$$

DELIMITER ;

-- 32. Use a built-in function to find the difference in days between DueDate and PaymentDate.
SELECT 
    BillID,
    CustomerID,
    DATEDIFF(PaymentDate, DueDate) AS DaysDifference
FROM Bill;

-- 33. Create a UDF CalculateBill(units INT) that returns units*5 if units ≤ 200, else 200*5 + (units-200)*7.
DELIMITER $$

CREATE FUNCTION CalculateBill(units INT)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE totalAmount DECIMAL(10,2);

    IF units <= 200 THEN
        SET totalAmount = units * 5;
    ELSE
        SET totalAmount = 200 * 5 + (units - 200) * 7;
    END IF;

    RETURN totalAmount;
END$$

DELIMITER ;

-- Section G – Stored Procedures (Q34–Q37)
-- 34. Write a stored procedure to insert a new customer record.
DELIMITER $$

CREATE PROCEDURE InsertCustomer (
    IN p_Name VARCHAR(100),
    IN p_Address VARCHAR(255),
    IN p_City VARCHAR(50),
    IN p_Contact VARCHAR(15),
    IN p_Status VARCHAR(20)
)
BEGIN
    INSERT INTO Customer (Name, Address, City, Contact, Status)
    VALUES (p_Name, p_Address, p_City, p_Contact, p_Status);
END$$

DELIMITER ;

-- 35. Create a stored procedure to generate monthly bills automatically for each customer.
DELIMITER $$

CREATE PROCEDURE GenerateMonthlyBills(
    IN p_BillDate DATE
)
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE c_CustomerID INT;
    
    -- Cursor to loop through all customers
    DECLARE customer_cursor CURSOR FOR
        SELECT CustomerID FROM Customer WHERE Status = 'Active';
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;
    
    OPEN customer_cursor;
    
    customer_loop: LOOP
        FETCH customer_cursor INTO c_CustomerID;
        IF done THEN
            LEAVE customer_loop;
        END IF;
        
        -- Insert a bill record for the customer
        INSERT INTO Bill (CustomerID, BillDate, UnitsConsumed, Amount, Status, DueDate)
        VALUES (
            c_CustomerID,
            p_BillDate,
            0,                  
            0.00,               
            'Pending',          
            DATE_ADD(p_BillDate, INTERVAL 15 DAY)  
        );
    END LOOP;
    
    CLOSE customer_cursor;
END$$

DELIMITER ;

-- 36. Create a procedure to display pending bills for a given CustomerID.
DELIMITER $$

CREATE PROCEDURE GetPendingBills (
    IN p_CustomerID INT
)
BEGIN
    SELECT BillID, BillDate, UnitsConsumed, Amount, Status, DueDate
    FROM Bill
    WHERE CustomerID = p_CustomerID
      AND Status = 'Pending'
    ORDER BY BillDate;
END$$

DELIMITER ;

-- 37. Write a procedure to apply late fees of 50 for all bills overdue more than 10 days.
DELIMITER $$

CREATE PROCEDURE ApplyLateFees()
BEGIN
    UPDATE Bill
    SET Amount = Amount + 50,
        Status = 'Overdue'
    WHERE Status = 'Pending'
      AND DATEDIFF(CURDATE(), DueDate) > 10;
END$$

DELIMITER ;


-- Section H – Triggers (Q38–Q41)
-- 38. Write a trigger to update Bill.Status = ‘Paid’ after a payment is inserted.
DELIMITER $$

CREATE TRIGGER trg_UpdateBillStatus
AFTER INSERT ON Payment
FOR EACH ROW
BEGIN
    UPDATE Bill
    SET Status = 'Paid'
    WHERE BillID = NEW.BillID;
END$$

DELIMITER ;

 -- 39. Create a trigger to prevent deletion of a customer if they have pending bills.
DELIMITER $$

CREATE TRIGGER trg_PreventCustomerDeletion
BEFORE DELETE ON Customer
FOR EACH ROW
BEGIN
    IF EXISTS (
        SELECT 1 
        FROM Bill 
        WHERE CustomerID = OLD.CustomerID AND Status = 'Pending'
    ) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cannot delete customer with pending bills';
    END IF;
END$$

DELIMITER ;

-- 40. Create a trigger to log complaint updates into an Audit table.
CREATE TABLE IF NOT EXISTS ComplaintAudit (
    AuditID INT PRIMARY KEY AUTO_INCREMENT,
    ComplaintID INT,
    UpdatedBy VARCHAR(50),
    OldStatus VARCHAR(20),
    NewStatus VARCHAR(20),
    UpdatedOn DATETIME DEFAULT CURRENT_TIMESTAMP
);

DELIMITER $$

CREATE TRIGGER trg_LogComplaintUpdate
AFTER UPDATE ON Complaint
FOR EACH ROW
BEGIN
    INSERT INTO ComplaintAudit (ComplaintID, UpdatedBy, OldStatus, NewStatus)
    VALUES (OLD.ComplaintID, USER(), OLD.Status, NEW.Status);
END$$

DELIMITER ;

-- 41. Write a trigger that automatically updates LastPaymentDate in Customer table when a payment is made
DELIMITER $$

CREATE TRIGGER trg_UpdateLastPaymentDate
AFTER INSERT ON Payment
FOR EACH ROW
BEGIN
    UPDATE Customer
    SET LastPaymentDate = NEW.PaymentDate
    WHERE CustomerID = NEW.CustomerID;
END$$

DELIMITER ;

-- Section I – Window Functions (Q42–Q46)
-- 42. Show the rank of customers based on total bill amount using RANK().
SELECT 
    C.CustomerID,
    C.Name,
    SUM(B.Amount) AS TotalBillAmount,
    RANK() OVER (ORDER BY SUM(B.Amount) DESC) AS CustomerRank
FROM Customer C
JOIN Bill B ON C.CustomerID = B.CustomerID
GROUP BY C.CustomerID, C.Name
ORDER BY CustomerRank;

-- 43. Display cumulative units consumed for each customer using SUM() OVER().
SELECT 
    CustomerID,
    BillID,
    UnitsConsumed,
    SUM(UnitsConsumed) OVER (PARTITION BY CustomerID ORDER BY BillDate) AS CumulativeUnits
FROM Bill
ORDER BY CustomerID, BillDate;

-- 44. Find the average bill amount partitioned by city using AVG() OVER(PARTITION BY City).
SELECT 
    C.CustomerID,
    C.Name,
    C.City,
    B.BillID,
    B.Amount,
    AVG(B.Amount) OVER (PARTITION BY C.City) AS AvgBillByCity
FROM Customer C
JOIN Bill B ON C.CustomerID = B.CustomerID
ORDER BY C.City, B.BillID;

-- 45. Use LEAD() to show each customer’s current and next month’s units consumed.
SELECT 
    CustomerID,
    BillDate,
    UnitsConsumed AS CurrentUnits,
    LEAD(UnitsConsumed) OVER (PARTITION BY CustomerID ORDER BY BillDate) AS NextMonthUnits
FROM Bill
ORDER BY CustomerID, BillDate;

-- 46. use ROW_NUMBER() to list the first bill of every customer.
SELECT 
    CustomerID,
    BillID,
    BillDate,
    UnitsConsumed,
    Amount
FROM (
    SELECT 
        CustomerID,
        BillID,
        BillDate,
        UnitsConsumed,
        Amount,
        ROW_NUMBER() OVER (PARTITION BY CustomerID ORDER BY BillDate) AS rn
    FROM Bill
) AS sub
WHERE rn = 1
ORDER BY CustomerID;

-- Section J – Miscellaneous Queries (Q47–Q50)
-- 47. Find customers who have complaints but no bill overdue.
SELECT DISTINCT C.CustomerID, C.Name, C.City
FROM Customer C
JOIN Complaint CP ON C.CustomerID = CP.CustomerID
WHERE C.CustomerID NOT IN (
    SELECT CustomerID
    FROM Bill
    WHERE Status = 'Overdue'
);

-- 48. Display the customer with the maximum number of complaints.
SELECT C.CustomerID, C.Name, COUNT(CP.ComplaintID) AS TotalComplaints
FROM Customer C
JOIN Complaint CP ON C.CustomerID = CP.CustomerID
GROUP BY C.CustomerID, C.Name
ORDER BY TotalComplaints DESC
LIMIT 1;

-- 49. Find the percentage of customers who paid on time vs total customers.
SELECT 
    ROUND(
        (COUNT(DISTINCT CASE WHEN Status = 'Paid' AND BillDate <= DueDate THEN CustomerID END) * 100.0) 
        / COUNT(DISTINCT CustomerID), 2
    ) AS OnTimePaymentPercentage
FROM Bill;

-- 50. Show the total revenue collected month-wise for the past year.
SELECT 
    DATE_FORMAT(BillDate, '%Y-%m') AS YearMonth,
    SUM(Amount) AS TotalRevenue
FROM Bill
WHERE BillDate >= DATE_SUB(CURDATE(), INTERVAL 1 YEAR)
GROUP BY YearMonth
ORDER BY YearMonth;





