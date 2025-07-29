-- ----------------------------------- Database Queries --------------------------------------
-- Create SBI Bank database
CREATE DATABASE SBI_Bank;

-- Select the database for use
USE SBI_Bank;

-- ---------------------------------- Table Queries -----------------------------------------

-- Table-1 : Customers

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FullName VARCHAR(100),
    DOB DATE,
    Gender VARCHAR(10),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    AadharNumber VARCHAR(16),
    PANNumber VARCHAR(12),
    Address TEXT,
    BranchCode VARCHAR(10)
);

INSERT INTO Customers VALUES
(1, 'Rahul Sharma', '1988-06-12', 'Male', 'rahul88@gmail.com', '9876543210', '123412341234', 'ABCDE1234F', 'Delhi, India', 'SBI001'),
(2, 'Anjali Mehta', '1992-03-25', 'Female', 'anjali25@gmail.com', '9856432109', '987698769876', 'GHYTR5678G', 'Mumbai, India', 'SBI002'),
(3, 'Amit Roy', '1985-01-10', 'Male', 'amitroy@gmail.com', '9871122334', '123456781234', 'DFGTR1234E', 'Kolkata, India', 'SBI003'),
(4, 'Pooja Nair', '1990-09-17', 'Female', 'pooja.n@gmail.com', '9934567890', '567812341234', 'POIUY6789H', 'Chennai, India', 'SBI004'),
(5, 'Vikram Sinha', '1982-12-04', 'Male', 'vikram.sinha@gmail.com', '9765432101', '345612341234', 'PLMNB2345J', 'Bangalore, India', 'SBI005'),
(6, 'Riya Sen', '1994-11-30', 'Female', 'riya.sen@gmail.com', '9823456781', '876543218765', 'LKJHG8765K', 'Hyderabad, India', 'SBI006'),
(7, 'Neeraj Das', '1987-07-23', 'Male', 'neeraj.das@gmail.com', '9812345672', '765412349876', 'MNBVC2345L', 'Ahmedabad, India', 'SBI007'),
(8, 'Seema Agarwal', '1993-04-15', 'Female', 'seema.a@gmail.com', '9743124567', '234512347654', 'QWERT1234P', 'Surat, India', 'SBI008'),
(9, 'Anil Kumar', '1989-08-12', 'Male', 'anil.k@gmail.com', '9687654321', '112233445566', 'ZXCVB3456M', 'Jaipur, India', 'SBI009'),
(10, 'Sneha Das', '1991-02-22', 'Female', 'sneha.d@gmail.com', '9765123890', '667788990011', 'ASDFG5678T', 'Bhopal, India', 'SBI010'),
(11, 'Aditya Mehra', '1990-03-11', 'Male', 'aditya.m@gmail.com', '9845000001', '123400000123', 'PQWER6789Z', 'Lucknow, India', 'SBI011'),
(12, 'Divya Thakur', '1995-06-19', 'Female', 'divya.t@gmail.com', '9789456123', '234500000123', 'LKJHG0001A', 'Kanpur, India', 'SBI012'),
(13, 'Manish Tiwari', '1984-05-15', 'Male', 'manish.t@gmail.com', '9876541290', '321654987000', 'ZMXNB7890D', 'Nagpur, India', 'SBI013'),
(14, 'Priya Kaur', '1987-07-21', 'Female', 'priya.k@gmail.com', '9712314567', '654321009876', 'REWQ1234AS', 'Amritsar, India', 'SBI014'),
(15, 'Kunal Ghosh', '1992-10-01', 'Male', 'kunal.g@gmail.com', '9834567890', '223344556677', 'IUYTRE4321Z', 'Guwahati, India', 'SBI015'),
(16, 'Rachna Pathak', '1989-12-12', 'Female', 'rachna.p@gmail.com', '9854123987', '334455667788', 'OIUYT5678B', 'Indore, India', 'SBI016'),
(17, 'Saurabh Jain', '1985-08-08', 'Male', 'saurabh.j@gmail.com', '9723456789', '445566778899', 'XCVBN2345U', 'Kota, India', 'SBI017'),
(18, 'Meera Joshi', '1991-09-09', 'Female', 'meera.j@gmail.com', '9745123467', '556677889900', 'TREWQ3456N', 'Raipur, India', 'SBI018'),
(19, 'Arun Verma', '1993-06-06', 'Male', 'arun.v@gmail.com', '9887654321', '667788990011', 'NBVCX9876P', 'Agra, India', 'SBI019'),
(20, 'Meena Kapoor', '1991-08-09', 'Female', 'meenak@gmail.com', '9945362819', '673498761234', 'FHTRE7865J', 'Pune, India', 'SBI020');

-- Display all customers
SELECT * FROM Customers;

-- Delete all customer records but keep the table structure
TRUNCATE TABLE Customers;

-- Completely remove the Customers table from the database
DROP TABLE Customers;

-- 1. Create Customers table (already given)
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FullName VARCHAR(100),
    DOB DATE,
    Gender VARCHAR(10),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    AadharNumber VARCHAR(16),
    PANNumber VARCHAR(12),
    Address TEXT,
    BranchCode VARCHAR(10)
);

-- 2. Add a new column for AccountType
ALTER TABLE Customers ADD AccountType VARCHAR(20);

-- 3. Modify Phone number column to support international format
ALTER TABLE Customers MODIFY Phone VARCHAR(20);

-- 4. Drop the newly added column
ALTER TABLE Customers DROP COLUMN AccountType;

-- 5. Rename column FullName to CustomerName
ALTER TABLE Customers RENAME COLUMN FullName TO CustomerName;

-- 6. Insert a new customer
INSERT INTO Customers VALUES (21, 'Tina Roy', '1996-10-15', 'Female', 'tina.r@gmail.com', '9901234567', '678901234567', 'BNMLO1234V', 'Nashik, India', 'SBI021');

-- 7. Update customer email
UPDATE Customers SET Email = 'rahul.sharma88@gmail.com' WHERE CustomerID = 1;

-- 8. Delete customer who moved to another bank
DELETE FROM Customers WHERE CustomerID = 20;

-- 9. Update address for all Mumbai customers
UPDATE Customers SET Address = 'Mumbai, Maharashtra, India' WHERE Address LIKE '%Mumbai%';

-- 10. Revert a wrongly updated email (simulate update)
UPDATE Customers SET Email = 'rahul88@gmail.com' WHERE CustomerID = 1;

-- 11. Retrieve all customers
SELECT * FROM Customers;

-- 12. Get names and emails of female customers
SELECT CustomerName, Email FROM Customers WHERE Gender = 'Female';

-- 13. Find customers born after 1990
SELECT * FROM Customers WHERE DOB > '1990-01-01';

-- 14. List customers from 'Chennai'
SELECT * FROM Customers WHERE Address LIKE '%Chennai%';

-- 15. Count total male and female customers
SELECT Gender, COUNT(*) AS Total FROM Customers GROUP BY Gender;

-- 16. Try inserting duplicate Aadhar (should fail due to missing constraint)
-- To enforce uniqueness:
ALTER TABLE Customers ADD CONSTRAINT unique_aadhar UNIQUE (AadharNumber);

-- 17. Check primary key uniqueness
SELECT COUNT(*), COUNT(DISTINCT CustomerID) FROM Customers;

-- 18. Attempt inserting NULL PAN (should succeed if no NOT NULL)
INSERT INTO Customers (CustomerID, CustomerName, DOB, Gender, Email, Phone, AadharNumber, PANNumber, Address, BranchCode)
VALUES (22, 'Fake Entry', '2000-01-01', 'Male', 'fake@mail.com', '0000000000', '111122223333', NULL, 'Nowhere', 'SBI022');

-- 19. Check NOT NULL constraints
DESC Customers;

-- 20. Add NOT NULL to PANNumber (if allowed)
ALTER TABLE Customers MODIFY PANNumber VARCHAR(12) NOT NULL;

-- 21. ORDER BY date of birth descending
SELECT * FROM Customers ORDER BY DOB DESC;

-- 22. GROUP BY branch code
SELECT BranchCode, COUNT(*) FROM Customers GROUP BY BranchCode;

-- 23. HAVING clause (branches with more than 1 customer)
SELECT BranchCode, COUNT(*) AS cnt
FROM Customers
GROUP BY BranchCode
HAVING COUNT(*) > 1; 

-- 24. LIMIT only first 5 entries
SELECT * FROM Customers LIMIT 5;

-- 25. BETWEEN two birth years
SELECT * FROM Customers WHERE DOB BETWEEN '1985-01-01' AND '1990-12-31';

-- 26. LIKE operator for Gmail users
SELECT * FROM Customers WHERE Email LIKE '%gmail.com';

-- 27. IN operator for selected branches
SELECT * FROM Customers WHERE BranchCode IN ('SBI001', 'SBI005', 'SBI010');

-- 28. NOT operator (excluding females)
SELECT * FROM Customers WHERE NOT Gender = 'Female';

-- 29. IS NULL check
SELECT * FROM Customers WHERE PANNumber IS NULL;

-- 30. Logical AND & OR
SELECT * FROM Customers WHERE Gender = 'Male' AND DOB < '1990-01-01';

-- 31. INNER JOIN with Branches table
SELECT c.CustomerName, b.BranchName FROM Customers c
JOIN Branches b ON c.BranchCode = b.BranchCode;

-- 32. LEFT JOIN for all customers even if branch missing
SELECT c.CustomerName, b.BranchName FROM Customers c
LEFT JOIN Branches b ON c.BranchCode = b.BranchCode;

-- 33. RIGHT JOIN (if needed)
SELECT c.CustomerName, b.BranchName FROM Customers c
RIGHT JOIN Branches b ON c.BranchCode = b.BranchCode;

-- 34. CROSS JOIN
SELECT c.CustomerName, b.BranchName FROM Customers c
CROSS JOIN Branches b;

-- 35. Self join (match customers with same city)
SELECT A.CustomerName AS Customer1, B.CustomerName AS Customer2
FROM Customers A, Customers B
WHERE A.Address = B.Address AND A.CustomerID <> B.CustomerID;

-- 36. UPPER case of customer names
SELECT UPPER(CustomerName) FROM Customers;

-- 37. LENGTH of address
SELECT CustomerName, LENGTH(Address) FROM Customers;

-- 38. CONCAT customer name and email
SELECT CONCAT(CustomerName, ' <', Email, '>') AS Contact FROM Customers;

-- 39. DATEDIFF from today
SELECT CustomerName, DATEDIFF(CURDATE(), DOB)/365 AS Age FROM Customers;

-- 40. Substring on PAN number
SELECT SUBSTRING(PANNumber, 1, 5) AS PAN_Prefix FROM Customers;

-- 41. Customers in oldest branch (assuming Branch table)
SELECT * FROM Customers
WHERE BranchCode = (SELECT BranchCode FROM Branches ORDER BY EstablishedYear ASC LIMIT 1);

-- 42. Customers younger than average age
SELECT * FROM Customers
WHERE DATEDIFF(CURDATE(), DOB)/365 < (
    SELECT AVG(DATEDIFF(CURDATE(), DOB)/365) FROM Customers
);

-- 43. Emails of customers from top 3 populated cities
SELECT Email FROM Customers
WHERE Address IN (
    SELECT Address FROM Customers GROUP BY Address ORDER BY COUNT(*) DESC LIMIT 3
);

-- 44. Rank customers by DOB (youngest first)
SELECT CustomerName, DOB, RANK() OVER (ORDER BY DOB DESC) AS Rank_Youngest FROM Customers;

-- 45. Count of customers per branch with window function
SELECT CustomerName, BranchCode, COUNT(*) OVER (PARTITION BY BranchCode) AS BranchCustomerCount FROM Customers;

-- 46. Create a trigger to log deletions (Assume Customer_Log table exists)
CREATE TRIGGER log_delete_customer
BEFORE DELETE ON Customers
FOR EACH ROW
INSERT INTO Customer_Log (CustomerID, Action, ActionDate)
VALUES (OLD.CustomerID, 'DELETE', NOW());

-- 47. Trigger to auto-format email to lowercase
CREATE TRIGGER lowercase_email
BEFORE INSERT ON Customers
FOR EACH ROW
SET NEW.Email = LOWER(NEW.Email);

-- 48. Procedure to fetch customer by PAN
DELIMITER //
CREATE PROCEDURE GetCustomerByPAN(IN pan_input VARCHAR(12))
BEGIN
    SELECT * FROM Customers WHERE PANNumber = pan_input;
END;
//
DELIMITER ;

-- 49. Procedure to count customers by branch
DELIMITER //
CREATE PROCEDURE CountCustomersByBranch(IN branch VARCHAR(10))
BEGIN
    SELECT COUNT(*) AS Total FROM Customers WHERE BranchCode = branch;
END;
//
DELIMITER ;

-- 50. Procedure to insert new customer
DELIMITER //
CREATE PROCEDURE AddCustomer(
    IN id INT, IN name VARCHAR(100), IN dob DATE, IN gender VARCHAR(10),
    IN email VARCHAR(100), IN phone VARCHAR(15), IN aadhar VARCHAR(16),
    IN pan VARCHAR(12), IN address TEXT, IN branch VARCHAR(10)
)
BEGIN
    INSERT INTO Customers VALUES (id, name, dob, gender, email, phone, aadhar, pan, address, branch);
END;
//
DELIMITER ;

-- Table-2: Accounts

CREATE TABLE Accounts (
    AccountID INT PRIMARY KEY,
    CustomerID INT,
    AccountType VARCHAR(20),
    OpenDate DATE,
    Balance DECIMAL(12,2),
    IFSCCode VARCHAR(11),
    BranchCode VARCHAR(10),
    Status VARCHAR(10),
    NomineeName VARCHAR(100),
    Currency VARCHAR(5),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Accounts VALUES
(101, 1, 'Savings', '2020-01-15', 55000.75, 'SBIN000001', 'SBI001', 'Active', 'Reena Sharma', 'INR'),
(102, 2, 'Current', '2019-05-22', 125000.00, 'SBIN000002', 'SBI002', 'Active', 'Vijay Mehta', 'INR'),
(103, 3, 'Savings', '2021-11-10', 67000.00, 'SBIN000003', 'SBI003', 'Active', 'Asha Roy', 'INR'),
(104, 4, 'Savings', '2018-07-09', 89000.00, 'SBIN000004', 'SBI004', 'Active', 'Pritam Nair', 'INR'),
(105, 5, 'Current', '2022-01-01', 32000.00, 'SBIN000005', 'SBI005', 'Active', 'Kiran Sinha', 'INR'),
(106, 6, 'Savings', '2020-06-15', 47000.90, 'SBIN000006', 'SBI006', 'Active', 'Aman Sen', 'INR'),
(107, 7, 'Savings', '2021-02-25', 51000.50, 'SBIN000007', 'SBI007', 'Active', 'Sonal Das', 'INR'),
(108, 8, 'Current', '2017-09-10', 95000.00, 'SBIN000008', 'SBI008', 'Active', 'Vivek Agarwal', 'INR'),
(109, 9, 'Savings', '2023-04-20', 22000.00, 'SBIN000009', 'SBI009', 'Active', 'Rina Kumar', 'INR'),
(110, 10, 'Savings', '2019-12-12', 34000.00, 'SBIN000010', 'SBI010', 'Active', 'Neeraj Das', 'INR'),
(111, 11, 'Savings', '2021-08-12', 78000.45, 'SBIN000011', 'SBI011', 'Active', 'Priya Mehra', 'INR'),
(112, 12, 'Current', '2022-03-19', 125000.00, 'SBIN000012', 'SBI012', 'Active', 'Ajay Thakur', 'INR'),
(113, 13, 'Savings', '2023-01-23', 33000.00, 'SBIN000013', 'SBI013', 'Active', 'Anita Tiwari', 'INR'),
(114, 14, 'Savings', '2020-10-14', 59000.00, 'SBIN000014', 'SBI014', 'Active', 'Karan Kaur', 'INR'),
(115, 15, 'Current', '2021-04-18', 40500.00, 'SBIN000015', 'SBI015', 'Active', 'Deepak Ghosh', 'INR'),
(116, 16, 'Savings', '2019-11-11', 22000.00, 'SBIN000016', 'SBI016', 'Active', 'Nidhi Pathak', 'INR'),
(117, 17, 'Savings', '2020-05-30', 47000.50, 'SBIN000017', 'SBI017', 'Active', 'Tarun Jain', 'INR'),
(118, 18, 'Current', '2022-06-22', 110000.00, 'SBIN000018', 'SBI018', 'Active', 'Ankit Joshi', 'INR'),
(119, 19, 'Savings', '2023-03-03', 56000.00, 'SBIN000019', 'SBI019', 'Active', 'Radhika Verma', 'INR'),
(120, 20, 'Savings', '2023-07-07', 43250.50, 'SBIN000020', 'SBI020', 'Active', 'Amit Kapoor', 'INR');

-- Show all accounts
SELECT * FROM Accounts;

-- Delete all account records but keep the structure
TRUNCATE TABLE Accounts;

-- Completely remove the Accounts table
DROP TABLE Accounts;

-- 1. Create Accounts table (already done, for reference)
CREATE TABLE Accounts (
    AccountID INT PRIMARY KEY,
    CustomerID INT,
    AccountType VARCHAR(20),
    OpenDate DATE,
    Balance DECIMAL(12,2),
    IFSCCode VARCHAR(11),
    BranchCode VARCHAR(10),
    Status VARCHAR(10),
    NomineeName VARCHAR(100),
    Currency VARCHAR(5),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- 2. Add a new column for InterestRate
ALTER TABLE Accounts ADD InterestRate DECIMAL(5,2);

-- 3. Modify Balance datatype to store larger values
ALTER TABLE Accounts MODIFY Balance DECIMAL(15,2);

-- 4. Rename column Status to AccountStatus
ALTER TABLE Accounts RENAME COLUMN Status TO AccountStatus;

-- 5. Drop column InterestRate
ALTER TABLE Accounts DROP COLUMN InterestRate;

-- 6. Insert a new account
INSERT INTO Accounts VALUES 
(121, 1, 'Savings', '2024-02-10', 30000.00, 'SBIN000001', 'SBI001', 'Active', 'Riya Sharma', 'INR');

-- 7. Update balance for an account
UPDATE Accounts SET Balance = 60000.00 WHERE AccountID = 101;

-- 8. Deactivate a closed account
UPDATE Accounts SET AccountStatus = 'Inactive' WHERE AccountID = 104;

-- 9. Delete an account that was created by mistake
DELETE FROM Accounts WHERE AccountID = 121;

-- 10. Add ₹1000 to all active savings accounts
UPDATE Accounts 
SET Balance = Balance + 1000 
WHERE AccountType = 'Savings' AND AccountStatus = 'Active';

-- 11. View all accounts
SELECT * FROM Accounts;

-- 12. List only active current accounts
SELECT * FROM Accounts WHERE AccountType = 'Current' AND AccountStatus = 'Active';

-- 13. Accounts with balance above ₹1,00,000
SELECT * FROM Accounts WHERE Balance > 100000;

-- 14. List all accounts from branch 'SBI005'
SELECT * FROM Accounts WHERE BranchCode = 'SBI005';

-- 15. Count of each account type
SELECT AccountType, COUNT(*) AS Total FROM Accounts GROUP BY AccountType;

-- 16. Check for any duplicate AccountIDs (shouldn't exist due to PK)
SELECT AccountID, COUNT(*) FROM Accounts GROUP BY AccountID HAVING COUNT(*) > 1;

-- 17. Add a UNIQUE constraint to IFSCCode + AccountID combo (composite)
ALTER TABLE Accounts ADD CONSTRAINT unique_ifsc_account UNIQUE (IFSCCode, AccountID);

-- 18. Try inserting NULL into primary key (will fail)
-- INSERT INTO Accounts (AccountID, ...) VALUES (NULL, ...) -- Fails

-- 19. Enforce AccountStatus NOT NULL
ALTER TABLE Accounts MODIFY AccountStatus VARCHAR(10) NOT NULL;

-- 20. Add CHECK to ensure Balance >= 0
ALTER TABLE Accounts ADD CONSTRAINT chk_balance CHECK (Balance >= 0);

-- 21. ORDER BY balance descending
SELECT * FROM Accounts ORDER BY Balance DESC;

-- 22. GROUP BY BranchCode
SELECT BranchCode, COUNT(*) AS TotalAccounts FROM Accounts GROUP BY BranchCode;

-- 23. HAVING clause: branches with more than 2 accounts
SELECT BranchCode, COUNT(*) FROM Accounts GROUP BY BranchCode HAVING COUNT(*) > 2;

-- 24. LIMIT top 5 accounts with highest balance
SELECT * FROM Accounts ORDER BY Balance DESC LIMIT 5;

-- 25. BETWEEN 2020 and 2022 accounts
SELECT * FROM Accounts WHERE OpenDate BETWEEN '2020-01-01' AND '2022-12-31';

-- 26. LIKE: All accounts with IFSC codes starting with 'SBIN00001'
SELECT * FROM Accounts WHERE IFSCCode LIKE 'SBIN00001%';

-- 27. IN: List accounts from selected branches
SELECT * FROM Accounts WHERE BranchCode IN ('SBI001', 'SBI002', 'SBI003');

-- 28. NOT: Accounts that are not active
SELECT * FROM Accounts WHERE NOT AccountStatus = 'Active';

-- 29. IS NULL: (assuming optional nominee)
SELECT * FROM Accounts WHERE NomineeName IS NULL;

-- 30. Logical AND: Savings accounts with high balance
SELECT * FROM Accounts WHERE AccountType = 'Savings' AND Balance > 70000;

-- 31. INNER JOIN with Customers
SELECT a.AccountID, c.CustomerName, a.Balance 
FROM Accounts a
JOIN Customers c ON a.CustomerID = c.CustomerID;

-- 32. LEFT JOIN with Customers
SELECT a.*, c.CustomerName 
FROM Accounts a
LEFT JOIN Customers c ON a.CustomerID = c.CustomerID;

-- 33. RIGHT JOIN with Customers
SELECT a.AccountID, c.CustomerName 
FROM Accounts a
RIGHT JOIN Customers c ON a.CustomerID = c.CustomerID;

-- 34. CROSS JOIN with Customers (cartesian product)
SELECT a.AccountID, c.CustomerName 
FROM Accounts a
CROSS JOIN Customers c;

-- 35. JOIN to find customers who opened accounts after 2022
SELECT c.CustomerName, a.OpenDate
FROM Accounts a
JOIN Customers c ON a.CustomerID = c.CustomerID
WHERE a.OpenDate > '2022-01-01';

-- 36. UPPER case for account types
SELECT UPPER(AccountType) FROM Accounts;

-- 37. ROUND balance to nearest hundred
SELECT AccountID, ROUND(Balance, -2) AS RoundedBalance FROM Accounts;

-- 38. CONCAT customer and account info
SELECT CONCAT('ID-', AccountID, ': ₹', Balance) AS Summary FROM Accounts;

-- 39. DATEDIFF in days since account opened
SELECT AccountID, DATEDIFF(CURDATE(), OpenDate) AS DaysActive FROM Accounts;

-- 40. FORMAT balance with commas
SELECT AccountID, FORMAT(Balance, 2) AS FormattedBalance FROM Accounts;

-- 41. Accounts from branch with highest total balance
SELECT * FROM Accounts
WHERE BranchCode = (
  SELECT BranchCode FROM Accounts GROUP BY BranchCode ORDER BY SUM(Balance) DESC LIMIT 1
);

-- 42. Customers with more than one account
SELECT CustomerID FROM Accounts GROUP BY CustomerID HAVING COUNT(*) > 1;

-- 43. Accounts with balance above average
SELECT * FROM Accounts 
WHERE Balance > (SELECT AVG(Balance) FROM Accounts);

-- 44. Rank accounts by balance
SELECT AccountID, Balance, RANK() OVER (ORDER BY Balance DESC) AS BalanceRank FROM Accounts;

-- 45. Running total of balance by branch
SELECT BranchCode, AccountID, Balance,
SUM(Balance) OVER (PARTITION BY BranchCode ORDER BY AccountID) AS RunningBalance
FROM Accounts;

-- 46. Trigger to log account deletions (requires Account_Log table)
CREATE TRIGGER log_account_deletion
BEFORE DELETE ON Accounts
FOR EACH ROW
INSERT INTO Account_Log(AccountID, DeletedOn)
VALUES (OLD.AccountID, NOW());

-- 47. Trigger to auto-capitalize AccountType on insert
CREATE TRIGGER capitalize_account_type
BEFORE INSERT ON Accounts
FOR EACH ROW
SET NEW.AccountType = UPPER(NEW.AccountType);

-- 48. Procedure to fetch account by ID
DELIMITER //
CREATE PROCEDURE GetAccountByID(IN acc_id INT)
BEGIN
    SELECT * FROM Accounts WHERE AccountID = acc_id;
END;
//
DELIMITER ;

-- 49. Procedure to update account status
DELIMITER //
CREATE PROCEDURE UpdateAccountStatus(IN acc_id INT, IN new_status VARCHAR(10))
BEGIN
    UPDATE Accounts SET AccountStatus = new_status WHERE AccountID = acc_id;
END;
//
DELIMITER ;

-- 50. Procedure to transfer funds between accounts (simplified)
DELIMITER //
CREATE PROCEDURE TransferFunds(IN from_acc INT, IN to_acc INT, IN amt DECIMAL(10,2))
BEGIN
    UPDATE Accounts SET Balance = Balance - amt WHERE AccountID = from_acc;
    UPDATE Accounts SET Balance = Balance + amt WHERE AccountID = to_acc;
END;
//
DELIMITER ;

--  Table-3: Transactions

CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY,
    AccountID INT,
    TransactionDate DATE,
    Type VARCHAR(10),
    Amount DECIMAL(10,2),
    Description TEXT,
    Mode VARCHAR(20),
    Status VARCHAR(10),
    BalanceAfter DECIMAL(12,2),
    BranchCode VARCHAR(10),
    FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID)
);

INSERT INTO Transactions VALUES
(1001, 101, '2024-06-10', 'Credit', 5000.00, 'Salary credited', 'NEFT', 'Success', 60000.75, 'SBI001'),
(1002, 101, '2024-06-15', 'Debit', 2000.00, 'Mobile recharge', 'UPI', 'Success', 58000.75, 'SBI001'),
(1003, 102, '2024-05-22', 'Debit', 1500.00, 'Electricity bill', 'Net Banking', 'Success', 123500.00, 'SBI002'),
(1004, 103, '2024-07-01', 'Credit', 20000.00, 'Cheque deposit', 'Cheque', 'Success', 87000.00, 'SBI003'),
(1005, 104, '2024-07-02', 'Debit', 500.00, 'ATM Withdrawal', 'ATM', 'Success', 88500.00, 'SBI004'),
(1006, 105, '2024-06-20', 'Credit', 10000.00, 'UPI received', 'UPI', 'Success', 42000.00, 'SBI005'),
(1007, 106, '2024-05-10', 'Debit', 1500.00, 'Online shopping', 'UPI', 'Success', 45500.90, 'SBI006'),
(1008, 107, '2024-07-15', 'Debit', 2500.00, 'Fuel payment', 'Card', 'Success', 48500.50, 'SBI007'),
(1009, 108, '2024-06-30', 'Credit', 7000.00, 'Client payment', 'IMPS', 'Success', 102000.00, 'SBI008'),
(1010, 109, '2024-05-18', 'Debit', 1000.00, 'Recharge', 'UPI', 'Success', 21000.00, 'SBI009'),
(1011, 110, '2024-07-05', 'Credit', 5000.00, 'Salary', 'NEFT', 'Success', 39000.00, 'SBI010'),
(1012, 111, '2024-06-12', 'Debit', 2000.00, 'Shopping', 'UPI', 'Success', 76000.45, 'SBI011'),
(1013, 112, '2024-05-25', 'Credit', 15000.00, 'Cheque', 'Cheque', 'Success', 140000.00, 'SBI012'),
(1014, 113, '2024-06-07', 'Debit', 2000.00, 'Rent', 'NEFT', 'Success', 31000.00, 'SBI013'),
(1015, 114, '2024-05-29', 'Debit', 1000.00, 'Petrol', 'UPI', 'Success', 58000.00, 'SBI014'),
(1016, 115, '2024-07-18', 'Credit', 10000.00, 'Client Payment', 'IMPS', 'Success', 50500.00, 'SBI015'),
(1017, 116, '2024-06-25', 'Debit', 500.00, 'Bill Payment', 'Net Banking', 'Success', 21500.00, 'SBI016'),
(1018, 117, '2024-07-03', 'Credit', 12000.00, 'Cash Deposit', 'Cash', 'Success', 59000.50, 'SBI017'),
(1019, 118, '2024-06-17', 'Debit', 1000.00, 'Restaurant', 'Card', 'Success', 109000.00, 'SBI018'),
(1020, 119, '2024-07-21', 'Credit', 8000.00, 'Transfer from friend', 'UPI', 'Success', 64000.00, 'SBI019');

-- Show all transactions
SELECT * FROM Transactions;

-- Remove all transaction records (preserves structure)
TRUNCATE TABLE Transactions;

-- Delete the Transactions table permanently
DROP TABLE Transactions;

-- 1. Create the Transactions table (already provided, listed for reference)
CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY,
    AccountID INT,
    TransactionDate DATE,
    Type VARCHAR(10),
    Amount DECIMAL(10,2),
    Description TEXT,
    Mode VARCHAR(20),
    Status VARCHAR(10),
    BalanceAfter DECIMAL(12,2),
    BranchCode VARCHAR(10),
    FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID)
);

-- 2. Add a column for TransactionTime (for precise time logs)
ALTER TABLE Transactions ADD TransactionTime TIME;

-- 3. Modify Description column size
ALTER TABLE Transactions MODIFY Description VARCHAR(255);

-- 4. Rename column Mode to PaymentMode
ALTER TABLE Transactions RENAME COLUMN Mode TO PaymentMode;

-- 5. Drop column TransactionTime (cleanup)
ALTER TABLE Transactions DROP COLUMN TransactionTime;

-- 6. Insert a new transaction
INSERT INTO Transactions VALUES 
(1021, 120, '2024-07-29', 'Debit', 2000.00, 'Online Course Payment', 'Net Banking', 'Success', 41250.50, 'SBI020');

-- 7. Update status of a failed transaction
UPDATE Transactions SET Status = 'Success' WHERE TransactionID = 1015;

-- 8. Delete a transaction that was logged twice
DELETE FROM Transactions WHERE TransactionID = 1021;

-- 9. Increase amount by 10% for all UPI transactions for cashback tracking
UPDATE Transactions SET Amount = Amount * 1.10 WHERE PaymentMode = 'UPI';

-- 10. Set 'Pending' status for all transactions above ₹20,000 (simulation)
UPDATE Transactions SET Status = 'Pending' WHERE Amount > 20000;

-- 11. Retrieve all transactions
SELECT * FROM Transactions;

-- 12. List all Debit transactions
SELECT * FROM Transactions WHERE Type = 'Debit';

-- 13. Find transactions made on a specific date
SELECT * FROM Transactions WHERE TransactionDate = '2024-07-01';

-- 14. Total credited amount in SBI001 branch
SELECT SUM(Amount) AS TotalCredited FROM Transactions 
WHERE Type = 'Credit' AND BranchCode = 'SBI001';

-- 15. Count of transactions grouped by mode
SELECT PaymentMode, COUNT(*) AS Total FROM Transactions GROUP BY PaymentMode;

-- 16. Ensure Amount is always positive
ALTER TABLE Transactions ADD CONSTRAINT chk_amount_positive CHECK (Amount > 0);

-- 17. Add NOT NULL to Status column
ALTER TABLE Transactions MODIFY Status VARCHAR(10) NOT NULL;

-- 18. Add UNIQUE constraint on TransactionID and Date (composite)
ALTER TABLE Transactions ADD CONSTRAINT uniq_transaction UNIQUE (TransactionID, TransactionDate);

-- 19. Check if any null BalanceAfter (data quality)
SELECT * FROM Transactions WHERE BalanceAfter IS NULL;

-- 20. Try inserting NULL in AccountID (should fail)
-- INSERT INTO Transactions (TransactionID, AccountID, ...) VALUES (1022, NULL, ...) -- Should error if NOT NULL

-- 21. ORDER BY amount descending
SELECT * FROM Transactions ORDER BY Amount DESC;

-- 22. GROUP BY BranchCode and count
SELECT BranchCode, COUNT(*) AS TransactionCount FROM Transactions GROUP BY BranchCode;

-- 23. HAVING clause – branches with more than 2 transactions
SELECT BranchCode, COUNT(*) AS txn_count
FROM Transactions
GROUP BY BranchCode
HAVING COUNT(*) > 2; 

-- 24. LIMIT 5 most recent transactions
SELECT * FROM Transactions ORDER BY TransactionDate DESC LIMIT 5;

-- 25. BETWEEN two dates
SELECT * FROM Transactions WHERE TransactionDate BETWEEN '2024-06-01' AND '2024-07-15';

-- 26. LIKE operator – find UPI-related descriptions
SELECT * FROM Transactions WHERE Description LIKE '%UPI%';

-- 27. IN operator – transactions from selected accounts
SELECT * FROM Transactions WHERE AccountID IN (101, 102, 103);

-- 28. NOT operator – exclude successful transactions
SELECT * FROM Transactions WHERE NOT Status = 'Success';

-- 29. IS NULL – check for incomplete descriptions
SELECT * FROM Transactions WHERE Description IS NULL;

-- 30. Combine AND/OR for filtering
SELECT * FROM Transactions WHERE Type = 'Credit' AND Amount > 5000 OR PaymentMode = 'Cheque';

-- 31. INNER JOIN Transactions with Accounts
SELECT t.TransactionID, a.AccountType, t.Amount
FROM Transactions t
JOIN Accounts a ON t.AccountID = a.AccountID;

-- 32. LEFT JOIN to get account info even if transaction is missing
SELECT a.AccountID, t.TransactionID, t.Amount
FROM Accounts a
LEFT JOIN Transactions t ON a.AccountID = t.AccountID;

-- 33. RIGHT JOIN (less common, used here for completeness)
SELECT t.TransactionID, a.AccountID, a.Balance
FROM Transactions t
RIGHT JOIN Accounts a ON t.AccountID = a.AccountID;

-- 34. CROSS JOIN example
SELECT t.TransactionID, a.AccountType 
FROM Transactions t
CROSS JOIN Accounts a;

-- 35. JOIN to get customer name for each transaction
SELECT t.TransactionID, c.CustomerName, t.Amount
FROM Transactions t
JOIN Accounts a ON t.AccountID = a.AccountID
JOIN Customers c ON a.CustomerID = c.CustomerID;

-- 36. Use UPPER to standardize mode names
SELECT UPPER(PaymentMode) AS ModeUpper FROM Transactions;

-- 37. LENGTH of each description
SELECT TransactionID, LENGTH(Description) AS DescLength FROM Transactions;

-- 38. CONCAT transaction summary
SELECT CONCAT(Type, ' of ₹', Amount, ' on ', TransactionDate) AS Summary FROM Transactions;

-- 39. DATEDIFF between transaction date and today
SELECT TransactionID, DATEDIFF(CURDATE(), TransactionDate) AS DaysAgo FROM Transactions;

-- 40. ROUND amount to nearest 100
SELECT TransactionID, ROUND(Amount, -2) AS Rounded FROM Transactions;

-- 41. Transactions from account with highest balance
SELECT * FROM Transactions 
WHERE AccountID = (
  SELECT AccountID FROM Accounts ORDER BY Balance DESC LIMIT 1
);

-- 42. Transactions above average amount
SELECT * FROM Transactions 
WHERE Amount > (SELECT AVG(Amount) FROM Transactions);

-- 43. Accounts with more than 2 transactions
SELECT AccountID FROM Transactions 
GROUP BY AccountID HAVING COUNT(*) > 2;

-- 44. Rank transactions by amount within branch
SELECT BranchCode, TransactionID, Amount,
RANK() OVER (PARTITION BY BranchCode ORDER BY Amount DESC) AS RankWithinBranch
FROM Transactions;

-- 45. Running total of debit transactions by account
SELECT AccountID, TransactionDate, Type, Amount,
SUM(Amount) OVER (PARTITION BY AccountID ORDER BY TransactionDate) AS RunningTotal
FROM Transactions
WHERE Type = 'Debit';

-- 46. Trigger to log deleted transactions (assume Transaction_Log exists)
CREATE TRIGGER log_transaction_delete
BEFORE DELETE ON Transactions
FOR EACH ROW
INSERT INTO Transaction_Log (TransactionID, DeletedAt)
VALUES (OLD.TransactionID, NOW());

-- 47. Trigger to auto-uppercase payment mode
CREATE TRIGGER uppercase_mode
BEFORE INSERT ON Transactions
FOR EACH ROW
SET NEW.PaymentMode = UPPER(NEW.PaymentMode);

-- 48. Procedure to get transaction by ID
DELIMITER //
CREATE PROCEDURE GetTransactionByID(IN tid INT)
BEGIN
  SELECT * FROM Transactions WHERE TransactionID = tid;
END;
//
DELIMITER ;

-- 49. Procedure to get total transactions for account
DELIMITER //
CREATE PROCEDURE CountTransactionsForAccount(IN acc_id INT)
BEGIN
  SELECT COUNT(*) FROM Transactions WHERE AccountID = acc_id;
END;
//
DELIMITER ;

-- 50. Procedure to insert a new transaction
DELIMITER //
CREATE PROCEDURE InsertTransaction(
  IN tid INT, IN accid INT, IN tdate DATE, IN ttype VARCHAR(10),
  IN amt DECIMAL(10,2), IN descr TEXT, IN mode VARCHAR(20),
  IN stat VARCHAR(10), IN balafter DECIMAL(12,2), IN branch VARCHAR(10)
)
BEGIN
  INSERT INTO Transactions VALUES (tid, accid, tdate, ttype, amt, descr, mode, stat, balafter, branch);
END;
//
DELIMITER ;

-- Table-4: Loans

CREATE TABLE Loans (
    LoanID INT PRIMARY KEY,
    CustomerID INT,
    LoanType VARCHAR(20),
    Amount DECIMAL(12,2),
    StartDate DATE,
    TenureMonths INT,
    InterestRate FLOAT,
    EMI DECIMAL(10,2),
    Status VARCHAR(10),
    BranchCode VARCHAR(10),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Loans VALUES
(201, 1, 'Home', 2500000.00, '2023-01-01', 240, 7.5, 22345.67, 'Active', 'SBI001'),
(202, 2, 'Car', 800000.00, '2023-05-10', 60, 9.2, 16543.00, 'Active', 'SBI002'),
(203, 3, 'Personal', 200000.00, '2024-01-15', 36, 11.5, 6720.45, 'Active', 'SBI003'),
(204, 4, 'Education', 400000.00, '2022-06-01', 48, 10.0, 10450.30, 'Active', 'SBI004'),
(205, 5, 'Home', 1500000.00, '2023-04-20', 180, 8.0, 15400.00, 'Active', 'SBI005'),
(206, 6, 'Car', 950000.00, '2022-03-01', 60, 9.5, 17250.20, 'Active', 'SBI006'),
(207, 7, 'Business', 1200000.00, '2023-07-10', 84, 8.9, 19300.00, 'Active', 'SBI007'),
(208, 8, 'Education', 350000.00, '2021-08-15', 48, 10.2, 9450.00, 'Active', 'SBI008'),
(209, 9, 'Home', 1800000.00, '2023-09-01', 240, 7.0, 19800.50, 'Active', 'SBI009'),
(210, 10, 'Car', 600000.00, '2022-02-20', 60, 9.1, 13450.00, 'Active', 'SBI010'),
(211, 11, 'Personal', 250000.00, '2023-11-10', 36, 11.2, 7300.00, 'Active', 'SBI011'),
(212, 12, 'Home', 3000000.00, '2022-12-12', 240, 6.9, 24500.00, 'Active', 'SBI012'),
(213, 13, 'Education', 420000.00, '2023-05-01', 60, 10.4, 9900.00, 'Active', 'SBI013'),
(214, 14, 'Car', 700000.00, '2021-10-10', 48, 9.3, 15000.00, 'Active', 'SBI014'),
(215, 15, 'Home', 2200000.00, '2022-01-05', 240, 7.2, 21400.00, 'Active', 'SBI015'),
(216, 16, 'Business', 1000000.00, '2022-06-25', 120, 8.8, 19500.00, 'Active', 'SBI016'),
(217, 17, 'Personal', 300000.00, '2023-04-14', 36, 11.0, 8800.00, 'Active', 'SBI017'),
(218, 18, 'Education', 250000.00, '2022-07-07', 48, 10.5, 7800.00, 'Active', 'SBI018'),
(219, 19, 'Car', 850000.00, '2023-03-03', 60, 9.0, 15800.00, 'Active', 'SBI019'),
(220, 20, 'Personal', 200000.00, '2024-03-20', 36, 11.5, 6720.45, 'Active', 'SBI020');

-- List all home loans above ₹20 lakhs
SELECT * FROM Loans;

-- Clear all loan records
TRUNCATE TABLE Loans;

-- Delete the Loans table from database
DROP TABLE Loans;

-- 1. Show structure of Loans table
DESC Loans;

-- 2. Add a new column for LoanPurpose
ALTER TABLE Loans ADD LoanPurpose VARCHAR(50);

-- 3. Modify EMI to allow more precision
ALTER TABLE Loans MODIFY EMI DECIMAL(12,2);

-- 4. Drop LoanPurpose column
ALTER TABLE Loans DROP COLUMN LoanPurpose;

-- 5. Rename the table to LoanDetails
RENAME TABLE Loans TO LoanDetails;

-- (Rename it back)
RENAME TABLE LoanDetails TO Loans;

-- 6. Update interest rate for education loans to 9.8
UPDATE Loans SET InterestRate = 9.8 WHERE LoanType = 'Education';

-- 7. Delete loans with status 'Closed'
DELETE FROM Loans WHERE Status = 'Closed';

-- 8. Insert a new Business loan
INSERT INTO Loans VALUES (221, 21, 'Business', 1250000, '2025-01-01', 96, 9.0, 21500.00, 'Active', 'SBI021');

-- 9. Set loan status to 'Closed' for completed tenure
UPDATE Loans SET Status = 'Closed' WHERE StartDate < '2015-01-01';

-- 10. Increase EMI by 500 for all Car loans
UPDATE Loans SET EMI = EMI + 500 WHERE LoanType = 'Car';

-- 11. Display all loans
SELECT * FROM Loans;

-- 12. Get only Home Loans
SELECT * FROM Loans WHERE LoanType = 'Home';

-- 13. Show loans above 10 lakh
SELECT * FROM Loans WHERE Amount > 1000000;

-- 14. Get distinct loan types
SELECT DISTINCT LoanType FROM Loans;

-- 15. Order loans by StartDate descending
SELECT * FROM Loans ORDER BY StartDate DESC;

-- 16. Get top 5 highest loan amounts
SELECT * FROM Loans ORDER BY Amount DESC LIMIT 5;

-- 17. Get loans started between 2022 and 2023
SELECT * FROM Loans WHERE StartDate BETWEEN '2022-01-01' AND '2023-12-31';

-- 18. Loans with 'Active' or 'Pending' status
SELECT * FROM Loans WHERE Status IN ('Active', 'Pending');

-- 19. Loan types not Personal or Car
SELECT * FROM Loans WHERE LoanType NOT IN ('Personal', 'Car');

-- 20. Check for null values in EMI
SELECT * FROM Loans WHERE EMI IS NULL;

-- 21. Show foreign key relationship
SELECT CONSTRAINT_NAME, TABLE_NAME FROM information_schema.KEY_COLUMN_USAGE WHERE TABLE_NAME='Loans';

-- 22. Check valid CustomerIDs (assuming Customers exists)
SELECT * FROM Loans WHERE CustomerID NOT IN (SELECT CustomerID FROM Customers);

-- 23. Add NOT NULL constraint on EMI (if not already)
ALTER TABLE Loans MODIFY EMI DECIMAL(10,2) NOT NULL;

-- 24. Add default status as 'Active' (if Status column allows)
ALTER TABLE Loans ALTER COLUMN Status SET DEFAULT 'Active';

-- 25. Check if LoanID is unique
SELECT LoanID, COUNT(*) FROM Loans GROUP BY LoanID HAVING COUNT(*) > 1;

-- 26. Count total number of loans
SELECT COUNT(*) AS TotalLoans FROM Loans;

-- 27. Total loan disbursed
SELECT SUM(Amount) AS TotalLoanAmount FROM Loans;

-- 28. Average interest rate
SELECT AVG(InterestRate) AS AvgRate FROM Loans;

-- 29. Maximum EMI
SELECT MAX(EMI) AS MaxEMI FROM Loans;

-- 30. Minimum tenure
SELECT MIN(TenureMonths) AS MinTenure FROM Loans;

-- 31. Show customer name with loan details
SELECT C.CustomerName, L.*
FROM Loans L
JOIN Customers C ON L.CustomerID = C.CustomerID;

-- 32. Loans with customer email
SELECT L.LoanID, C.Email, L.Amount
FROM Loans L
JOIN Customers C ON L.CustomerID = C.CustomerID;

-- 33. Customers who took Personal loans
SELECT C.CustomerName FROM Loans L
JOIN Customers C ON L.CustomerID = C.CustomerID
WHERE L.LoanType = 'Personal';

-- 34. Get loans with amount > average
SELECT * FROM Loans
WHERE Amount > (SELECT AVG(Amount) FROM Loans);

-- 35. Get customers who took highest EMI
SELECT * FROM Loans
WHERE EMI = (SELECT MAX(EMI) FROM Loans);

-- 36. Branch with maximum home loan disbursed
SELECT BranchCode FROM Loans
WHERE LoanType = 'Home'
GROUP BY BranchCode
ORDER BY SUM(Amount) DESC
LIMIT 1;

-- 37. Create a view of active personal loans
CREATE VIEW ActivePersonalLoans AS
SELECT * FROM Loans WHERE LoanType = 'Personal' AND Status = 'Active';

-- 38. Query from view
SELECT * FROM ActivePersonalLoans;

-- 39. CTE to calculate monthly interest
WITH InterestCalc AS (
  SELECT LoanID, Amount, InterestRate,
  (Amount * InterestRate / 100) AS MonthlyInterest
  FROM Loans
)
SELECT * FROM InterestCalc;

-- 40. Rank loans by amount
SELECT LoanID, Amount,
RANK() OVER (ORDER BY Amount DESC) AS AmountRank
FROM Loans;

-- 41. Running total of loan amount
SELECT LoanID, Amount,
SUM(Amount) OVER (ORDER BY LoanID) AS RunningTotal
FROM Loans;

-- 42. Partition loan count by branch
SELECT BranchCode, COUNT(*) OVER (PARTITION BY BranchCode) AS LoanCount
FROM Loans;

-- 43. Trigger to log new loan insert
CREATE TRIGGER LogLoanInsert
AFTER INSERT ON Loans
FOR EACH ROW
INSERT INTO LoanLog(LoanID, Action, ActionDate)
VALUES (NEW.LoanID, 'INSERT', NOW());

-- 44. Procedure to get loan details by type
DELIMITER //
CREATE PROCEDURE GetLoansByType(IN type VARCHAR(20))
BEGIN
  SELECT * FROM Loans WHERE LoanType = type;
END;
//
DELIMITER ;

-- 45. Call procedure
CALL GetLoansByType('Home');

-- 46. EMI between 10k and 20k
SELECT * FROM Loans WHERE EMI BETWEEN 10000 AND 20000;

-- 47. Branches issuing Business loans
SELECT DISTINCT BranchCode FROM Loans WHERE LoanType = 'Business';

-- 48. Loans starting in 2023
SELECT * FROM Loans WHERE YEAR(StartDate) = 2023;

-- 49. Use alias to rename columns
SELECT LoanID AS ID, EMI AS MonthlyInstallment FROM Loans;

-- 50. Use CASE to categorize loan size
SELECT LoanID, Amount,
CASE 
  WHEN Amount < 500000 THEN 'Small'
  WHEN Amount BETWEEN 500000 AND 1500000 THEN 'Medium'
  ELSE 'Large'
END AS LoanSize
FROM Loans;

--  Table-5: Branches

CREATE TABLE Branches (
    BranchCode VARCHAR(10) PRIMARY KEY,
    BranchName VARCHAR(100),
    IFSCCode VARCHAR(11),
    MICRCode VARCHAR(10),
    Address TEXT,
    City VARCHAR(50),
    State VARCHAR(50),
    Contact VARCHAR(15),
    ManagerName VARCHAR(100),
    WorkingHours VARCHAR(50)
);

INSERT INTO Branches VALUES
('SBI001', 'SBI Delhi Main Branch', 'SBIN000001', '110002001', 'Connaught Place, Delhi', 'Delhi', 'Delhi', '01123456789', 'Rajeev Khanna', '9 AM - 4 PM'),
('SBI002', 'SBI Mumbai West Branch', 'SBIN000002', '400002002', 'Bandra, Mumbai', 'Mumbai', 'Maharashtra', '02245678901', 'Sonal Rane', '9 AM - 4 PM'),
('SBI003', 'SBI Kolkata Branch', 'SBIN000003', '700002003', 'Salt Lake, Kolkata', 'Kolkata', 'West Bengal', '03312345678', 'Rakesh Roy', '9 AM - 4 PM'),
('SBI004', 'SBI Chennai Branch', 'SBIN000004', '600002004', 'T Nagar, Chennai', 'Chennai', 'Tamil Nadu', '04423456789', 'Meena Nair', '9 AM - 4 PM'),
('SBI005', 'SBI Bangalore Branch', 'SBIN000005', '560002005', 'MG Road, Bangalore', 'Bangalore', 'Karnataka', '08034567891', 'Anil Sinha', '9 AM - 4 PM'),
('SBI006', 'SBI Hyderabad Branch', 'SBIN000006', '500002006', 'Banjara Hills, Hyderabad', 'Hyderabad', 'Telangana', '04067891234', 'Preeti Rao', '9 AM - 4 PM'),
('SBI007', 'SBI Ahmedabad Branch', 'SBIN000007', '380002007', 'Navrangpura, Ahmedabad', 'Ahmedabad', 'Gujarat', '07945678912', 'Karan Patel', '9 AM - 4 PM'),
('SBI008', 'SBI Surat Branch', 'SBIN000008', '395002008', 'Ring Road, Surat', 'Surat', 'Gujarat', '02612345678', 'Anjali Desai', '9 AM - 4 PM'),
('SBI009', 'SBI Jaipur Branch', 'SBIN000009', '302002009', 'MI Road, Jaipur', 'Jaipur', 'Rajasthan', '01414567890', 'Ravi Sharma', '9 AM - 4 PM'),
('SBI010', 'SBI Bhopal Branch', 'SBIN000010', '462002010', 'New Market, Bhopal', 'Bhopal', 'Madhya Pradesh', '07552678901', 'Neha Joshi', '9 AM - 4 PM'),
('SBI011', 'SBI Lucknow Branch', 'SBIN000011', '226002011', 'Hazratganj, Lucknow', 'Lucknow', 'Uttar Pradesh', '05221234567', 'Saurabh Pandey', '9 AM - 4 PM'),
('SBI012', 'SBI Kanpur Branch', 'SBIN000012', '208002012', 'Mall Road, Kanpur', 'Kanpur', 'Uttar Pradesh', '05122345678', 'Anita Yadav', '9 AM - 4 PM'),
('SBI013', 'SBI Nagpur Branch', 'SBIN000013', '440002013', 'Sitabuldi, Nagpur', 'Nagpur', 'Maharashtra', '07122456789', 'Manoj Deshmukh', '9 AM - 4 PM'),
('SBI014', 'SBI Amritsar Branch', 'SBIN000014', '143002014', 'GT Road, Amritsar', 'Amritsar', 'Punjab', '01832456789', 'Gurpreet Singh', '9 AM - 4 PM'),
('SBI015', 'SBI Guwahati Branch', 'SBIN000015', '781002015', 'Zoo Road, Guwahati', 'Guwahati', 'Assam', '03612456789', 'Bipin Choudhary', '9 AM - 4 PM'),
('SBI016', 'SBI Indore Branch', 'SBIN000016', '452002016', 'Rajwada, Indore', 'Indore', 'Madhya Pradesh', '07312456789', 'Isha Tripathi', '9 AM - 4 PM'),
('SBI017', 'SBI Kota Branch', 'SBIN000017', '324002017', 'Chambal Road, Kota', 'Kota', 'Rajasthan', '07442456789', 'Deepak Verma', '9 AM - 4 PM'),
('SBI018', 'SBI Raipur Branch', 'SBIN000018', '492002018', 'Pandri, Raipur', 'Raipur', 'Chhattisgarh', '07712456789', 'Shweta Chauhan', '9 AM - 4 PM'),
('SBI019', 'SBI Agra Branch', 'SBIN000019', '282002019', 'Sadar Bazar, Agra', 'Agra', 'Uttar Pradesh', '05622456789', 'Abhay Dixit', '9 AM - 4 PM'),
('SBI020', 'SBI Pune Branch', 'SBIN000020', '411002020', 'Kalyani Nagar, Pune', 'Pune', 'Maharashtra', '02024567890', 'Ajay Pawar', '9 AM - 4 PM');

-- View all branches located in Maharashtra
SELECT * FROM Branches;

-- Remove all records from Branches
TRUNCATE TABLE Branches;

-- Drop the entire Branches table
DROP TABLE Branches;

-- 1. Ensure unique IFSCCode across branches
ALTER TABLE Branches ADD CONSTRAINT uq_ifsc UNIQUE (IFSCCode);

-- 2. Change MICRCode datatype to CHAR for fixed length
ALTER TABLE Branches
  MODIFY COLUMN MICRCode CHAR(10);

-- 3. Add CHECK constraint on Contact to start with country code '0'
ALTER TABLE Branches ADD CONSTRAINT chk_contact CHECK (Contact LIKE '0%');

-- 4. Add default WorkingHours to '9 AM - 4 PM'
ALTER TABLE Branches ALTER COLUMN WorkingHours SET DEFAULT '9 AM - 4 PM';

-- 5. Drop state column if city-level only tracking
ALTER TABLE Branches DROP COLUMN State;

-- 6. Create a view for Gujarat-based branches
CREATE VIEW GujaratBranches AS SELECT * FROM Branches WHERE State = 'Gujarat';

-- 7. Add index on City and ManagerName for quick lookups
CREATE INDEX idx_city_manager ON Branches (City, ManagerName);

-- 8. Comment to document purpose of the Branches table
CREATE TABLE Branches (
  BranchCode VARCHAR(10) PRIMARY KEY
) COMMENT = 'Stores IFSC/MICR-coded branch details across India';

-- 9. Create a table for auditing branch changes
CREATE TABLE BranchAudit (
  AuditID INT PRIMARY KEY AUTO_INCREMENT,
  BranchCode VARCHAR(10),
  OldManager VARCHAR(100),
  NewManager VARCHAR(100),
  ChangeDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 10. Alter BranchName length to varchar(150)
ALTER TABLE Branches MODIFY BranchName VARCHAR(150);

-- 11. Insert a new Pune branch
INSERT INTO Branches (BranchCode, BranchName, IFSCCode, MICRCode, Address, City, State, Contact, ManagerName)
VALUES ('SBI021','SBI Pune New','SBIN000021','411002021','Hinjewadi, Pune','Pune','Maharashtra','02034567012','Neha Patel');

-- 12. Update contact for Jaipur branch
UPDATE Branches SET Contact = '01414567891' WHERE BranchCode = 'SBI009';

-- 13. Delete branches in Assam
DELETE FROM Branches WHERE State = 'Assam';

-- 14. Select all branches in Maharashtra
SELECT * FROM Branches WHERE State = 'Maharashtra';

-- 15. List branches with 'SBI' in name
SELECT * FROM Branches WHERE BranchName LIKE '%SBI%';

-- 16. Find branches managed by names starting 'A'
SELECT * FROM Branches WHERE ManagerName BETWEEN 'A%' AND 'Azz';

-- 17. Filter branches in cities 'Delhi' or 'Mumbai'
SELECT * FROM Branches WHERE City IN ('Delhi','Mumbai');

-- 18. Use CASE to label urban vs semi-urban
SELECT BranchCode,
CASE WHEN City IN ('Delhi','Mumbai','Bangalore') THEN 'Urban' ELSE 'SemiUrban' END AS AreaType
FROM Branches;

-- 19. Use LENGTH to find contact numbers shorter than 10 digits
SELECT * FROM Branches WHERE LENGTH(Contact) < 10;

-- 20.  Extract city prefix from address
SELECT BranchCode, SUBSTR(Address,1,5) AS AddrPrefix FROM Branches;

-- 21. Count branches per state
SELECT State, COUNT(*) FROM Branches GROUP BY State;

-- 22. List states with more than one branch
SELECT State, COUNT(*) AS BranchCount from Branches GROUP BY State HAVING COUNT(*) > 1;

-- 23. Max MICRCode per state
SELECT State, MAX(MICRCode) FROM Branches GROUP BY State;

-- 24. Display first 3 branches alphabetically per state using window function
SELECT BranchCode, City, State
FROM (
  SELECT BranchCode, City, State,
    ROW_NUMBER() OVER (PARTITION BY State ORDER BY BranchName) AS rn
  FROM Branches
) t WHERE rn <= 3;

-- 25. Concatenate branch codes per city
SELECT City, GROUP_CONCAT(BranchCode) AS BranchList
FROM Branches GROUP BY City;

-- 26. Count branches per manager initial using LEFT
SELECT LEFT(ManagerName,1) AS Initial, COUNT(*) FROM Branches GROUP BY Initial;
-- Days since audit created (hypothetical date column)
SELECT BranchCode, DATEDIFF(CURRENT_DATE, ChangeDate) AS DaysAgo FROM BranchAudit;

-- 27. Using COALESCE on nullable manager
SELECT BranchCode, COALESCE(ManagerName, 'TBD') AS Manager FROM Branches;

-- 28. Second highest MICRCode globally using DENSE_RANK
SELECT BranchCode, MICRCode FROM (
  SELECT BranchCode, MICRCode, DENSE_RANK() OVER (ORDER BY MICRCode DESC) AS rnk
  FROM Branches
) t WHERE rnk = 2;

-- 29. Branch counts per state with percent share
SELECT State, 
COUNT(*) AS BranchCount,
ROUND(100 * COUNT(*) / SUM(COUNT(*)) OVER (),2) AS PctShare
FROM Branches GROUP BY State;

-- 30. Join Accounts with Branches on BranchCode
SELECT a.AccountID, b.BranchName, a.Balance
FROM Accounts a JOIN Branches b ON a.BranchCode = b.BranchCode;

-- 31. Left join to show all branches, even without accounts
SELECT b.BranchCode, b.BranchName, a.AccountID
FROM Branches b LEFT JOIN Accounts a ON b.BranchCode = a.BranchCode;

-- 32. Subquery: branches with more than 3 accounts
SELECT BranchCode FROM Accounts GROUP BY BranchCode HAVING COUNT(*) > 3;

-- 33. Correlated: branches with average balance per branch listed
SELECT DISTINCT BranchCode, 
  (SELECT AVG(Balance) FROM Accounts WHERE BranchCode = b.BranchCode) AS AvgBal
FROM Branches b;

-- 34.  CTE: find branch-most active accounts
WITH acctcounts AS (
  SELECT BranchCode, COUNT(*) AS cnt FROM Accounts GROUP BY BranchCode
)
SELECT b.BranchCode, b.BranchName, cnt FROM Branches b
JOIN acctcounts a ON a.BranchCode = b.BranchCode;

-- 35. Recursive CTE example for hypothetical branch hierarchy
WITH RECURSIVE branch_hierarchy AS (
  SELECT BranchCode, ManagerName, 0 AS lvl FROM Branches WHERE ManagerName = 'Rajeev Khanna'
  UNION ALL
  SELECT b.BranchCode, b.ManagerName, bh.lvl + 1
  FROM Branches b JOIN branch_hierarchy bh ON b.ManagerName = bh.ManagerName
)
SELECT * FROM branch_hierarchy;

-- 36. Self-join to find two branches in same city
SELECT b1.BranchCode, b2.BranchCode, b1.City
FROM Branches b1 JOIN Branches b2 
  ON b1.City = b2.City AND b1.BranchCode < b2.BranchCode;

-- 37.  Subquery: branches without accounts
SELECT BranchCode, BranchName FROM Branches
WHERE BranchCode NOT IN (SELECT DISTINCT BranchCode FROM Accounts);

-- 38. Using EXISTS to check branches with active accounts
SELECT BranchCode, BranchName FROM Branches b
WHERE EXISTS (
  SELECT 1 FROM Accounts a WHERE a.BranchCode = b.BranchCode AND Status='Active'
);

-- 39. UNION ALL of current and savings separate lists
SELECT AccountID, 'Savings' AS Type FROM Accounts WHERE AccountType='Savings'
UNION ALL
SELECT AccountID, 'Current' FROM Accounts WHERE AccountType='Current';

-- 40. Ensure IFSCCode is unique for branches
ALTER TABLE Branches ADD CONSTRAINT uq_ifsc UNIQUE (IFSCCode);

-- 41. Enforce Contact number starts with '0'
ALTER TABLE Branches ADD CONSTRAINT chk_contact CHECK (Contact LIKE '0%');

-- 42. Default working hours to '9 AM - 4 PM' for new branch entries
ALTER TABLE Branches ALTER COLUMN WorkingHours SET DEFAULT '9 AM - 4 PM';

-- 43. Drop State column if only city-level data is tracked
ALTER TABLE Branches DROP COLUMN State;

-- 44.  Add documentation for Branches table
CREATE TABLE Branches (
  BranchCode VARCHAR(10) PRIMARY KEY
) COMMENT = 'Stores IFSC/MICR‑coded branch details across India';

-- 45. Insert a new branch in Pune
INSERT INTO Branches VALUES ('SBI021','SBI Pune Sector 20','SBIN000021','411002021','Hinjewadi, Pune','Pune','Maharashtra','02034567012','Neha Patel','9 AM - 4 PM');

-- 46. Update contact number for Jaipur branch
UPDATE Branches SET Contact = '01414567891' WHERE BranchCode = 'SBI009';

-- 47. Delete Guwahati branch record
DELETE FROM Branches WHERE BranchCode = 'SBI015';

-- 48. Retrieve all branches in Maharashtra
SELECT * FROM Branches WHERE State = 'Maharashtra';

-- 49. Show branches with names containing 'SBI'
SELECT * FROM Branches WHERE BranchName LIKE '%SBI%';

-- 50. Count branches per state
SELECT State, COUNT(*) AS BranchCount FROM Branches GROUP BY State HAVING COUNT(*) > 1;


