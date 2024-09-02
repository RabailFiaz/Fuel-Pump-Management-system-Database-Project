create database project;

use project;

CREATE TABLE Fuel_type (
    Fuel_type_ID INT(5) PRIMARY KEY,
    Type_name CHAR(10),
    Supplier_ID INT(5)
);

-- Create Supplier table
CREATE TABLE Supplier (
    Supplier_ID INT(5) PRIMARY KEY,
    Name CHAR(20),
    Contact_Number BIGINT(15),
    Email VARCHAR(50),
    Address VARCHAR(50)
);

-- Create Fuel_pump table
CREATE TABLE Fuel_pump (
    Pump_ID INT(5) PRIMARY KEY,
    Location VARCHAR(20),
    Capacity FLOAT(20),
    Fuel_type CHAR(10),
    Status CHAR(20),
    Fuel_type_ID INT(5)
);

-- Create Customer table
CREATE TABLE Customer (
    Customer_ID INT(5) PRIMARY KEY,
    Name CHAR(20),
    Contact_Number BIGINT(15),
    Email VARCHAR(50),
    Address VARCHAR(50)
);

-- Create Employee table
CREATE TABLE Employee (
    Employee_ID INT(5) PRIMARY KEY,
    Name CHAR(20),
    Contact_Number BIGINT(15),
    Email VARCHAR(50),
    Position VARCHAR(20)
);

-- Create Fuel_Tank table
CREATE TABLE Fuel_Tank (
    Tank_ID INT(5) PRIMARY KEY,
    Location CHAR(20),
    Capacity FLOAT(20),
    Fuel_Type CHAR(10),
    Current_level FLOAT(20)
);

-- Create Transaction table
CREATE TABLE Transaction (
    Transaction_ID INT(5) PRIMARY KEY,
    Date_time DATE,
    Fuel_Amount FLOAT(20),
    Payment_method CHAR(10),
    Customer_ID INT(5),
    Pump_ID INT(5),
    Fuel_Type_ID INT(5),
    M_Employee_ID INT(5)
);

-- Create Payment table
CREATE TABLE Payment (
    Payment_ID INT(5) PRIMARY KEY,
    Amount FLOAT(20),
    Payment_method CHAR(10),
    Date_time DATETIME,
    Transaction_ID INT(5)
);

-- Create Tank_Refill table
CREATE TABLE Tank_Refill (
    Refill_ID INT(5) PRIMARY KEY,
    Date_time DATETIME,
    Refill_Amount FLOAT(10),
    Tank_ID INT(5),
    Supplier_ID INT(5),
    Fuel_type_ID INT(5)
);

-- Create Maintenance_Record table
CREATE TABLE Maintenance_Record (
    Maintenance_ID INT(5) PRIMARY KEY,
    Date_time DATETIME,
    Description VARCHAR(50),
    Cost FLOAT(20),
    Pump_ID INT(5),
    Employee_ID INT(5),
    Supplier_ID INT(5)
);


insert into Fuel_pump (Pump_ID, Location, Capacity, Fuel_type, Status) values
(1, 'Location_1', 892.95, 'Diesel', 'Inactive'),
(2, 'Location_2', 695.61, 'Petrol', 'Inactive'),
(3, 'Location_3', 704.34, 'Petrol', 'Inactive'),
(4, 'Location_4', 701.52, 'Gas', 'Inactive'),
(5, 'Location_5', 828.62, 'Diesel', 'Active'),
(6, 'Location_6', 544.03, 'Gas', 'Active'),
(7, 'Location_7', 952.81, 'Gas', 'Active'),
(8, 'Location_8', 615.62, 'Petrol', 'Active'),
(9, 'Location_9', 584.34, 'Petrol', 'Inactive'),
(10, 'Location_10', 831.40, 'Diesel', 'Inactive');
select*from Fuel_pump;

insert into Transaction (Transaction_ID, Date_time, Fuel_Amount, Payment_method) values
(1, '2023-01-22', 86.40, 'Cash'),
(2, '2023-09-01', 96.64, 'Cash'),
(3, '2023-11-23', 82.48, 'Card'),
(4, '2023-10-09', 65.46, 'Cash'),
(5, '2023-05-10', 17.39, 'Card'),
(6, '2023-08-07', 82.46, 'Cash'),
(7, '2023-07-01', 41.96, 'Cash'),
(8, '2023-10-25', 31.30, 'Card'),
(9, '2023-08-08', 45.02, 'Cash'),
(10, '2023-10-02', 61.36, 'Card');
select*from Transaction;

insert into Customer (Customer_ID, Name, Contact_Number, Email, Address) values
(1, 'Customer_1', 619993791, 'email1@example.com', 'Address_1'),
(2, 'Customer_2', 356731234, 'email2@example.com', 'Address_2'),
(3, 'Customer_3', 578755580, 'email3@example.com', 'Address_3'),
(4, 'Customer_4', 626374693, 'email4@example.com', 'Address_4'),
(5, 'Customer_5', 722520902, 'email5@example.com', 'Address_5'),
(6, 'Customer_6', 343480754, 'email6@example.com', 'Address_6'),
(7, 'Customer_7', 833398957, 'email7@example.com', 'Address_7'),
(8, 'Customer_8', 430518438, 'email8@example.com', 'Address_8'),
(9, 'Customer_9', 732227830, 'email9@example.com', 'Address_9'),
(10, 'Customer_10',436676712, 'email10@example.com', 'Address_10');
select*from customer;

insert into Employee (Employee_ID, Name, Contact_Number, Email, Position) values
(1, 'Employee_1', 270863327, 'email1@company.com', 'Clerk'),
(2, 'Employee_2', 133568672, 'email2@company.com', 'Manager'),
(3, 'Employee_3', 191005173, 'email3@company.com', 'Clerk'),
(4, 'Employee_4', 151017849, 'email4@company.com', 'Attendant'),
(5, 'Employee_5', 254715837, 'email5@company.com', 'Clerk'),
(6, 'Employee_6', 130657187, 'email6@company.com', 'Attendant'),
(7, 'Employee_7', 030846552, 'email7@company.com', 'Manager'),
(8, 'Employee_8',857032973, 'email8@company.com', 'Manager'),
(9, 'Employee_9', 856267391, 'email9@company.com', 'Clerk'),
(10, 'Employee_10', 933766050, 'email10@company.com', 'Manager');
select*from Employee;

insert into Fuel_Tank (Tank_ID, Location, Capacity, Fuel_Type, Current_level) values
(1, 'Location_1', 4851.44, 'Petrol', 2110.15),
(2, 'Location_2', 4033.89, 'Gas', 1053.55),
(3, 'Location_3', 2924.48, 'Diesel', 456.83),
(4, 'Location_4', 1190.37, 'Diesel', 509.62),
(5, 'Location_5', 3762.69, 'Gas', 1859.54),
(6, 'Location_6', 4126.03, 'Petrol', 1933.62),
(7, 'Location_7', 2455.72, 'Petrol', 2425.74),
(8, 'Location_8', 2843.82, 'Diesel', 1964.91),
(9, 'Location_9', 2781.35, 'Gas', 1488.78),
(10, 'Location_10', 2673.50, 'Petrol', 493.72);
select*from Fuel_Tank;

insert into Payment (Payment_ID, Amount, Payment_method, Date_time) values
(1, 203.72, 'Cash', '2023-04-19 08:17:25'),
(2, 255.48, 'Card', '2023-06-08 14:43:15'),
(3, 73.98, 'Cash', '2023-10-28 05:01:11'),
(4, 276.20, 'Cash', '2023-02-13 10:30:47'),
(5, 475.72, 'Card', '2023-01-27 03:04:48'),
(6, 109.80, 'Card', '2023-11-03 11:32:01'),
(7, 438.24, 'Card', '2023-03-18 02:09:54'),
(8, 64.86, 'Cash', '2023-07-13 00:06:52'),
(9, 390.33, 'Cash', '2023-04-11 23:19:07'),
(10, 199.71, 'Card', '2023-09-16 00:51:57');
select*from Payment;

insert into Fuel_type (Fuel_type_ID, Type_name) values
(1, 'Gas'),
(2, 'Petrol'),
(3, 'Petrol'),
(4, 'Petrol'),
(5, 'Diesel'),
(6, 'Gas'),
(7, 'Gas'),
(8, 'Diesel'),
(9, 'Diesel'),
(10, 'Gas');
select*from Fuel_type;

insert into Tank_Refill (Refill_ID, Date_time, Refill_Amount) values
(1, '2023-11-25 19:00:37', 117.12),
(2, '2023-04-04 12:49:12', 567.15),
(3, '2023-08-12 10:21:25', 527.34),
(4, '2023-01-31 03:57:15', 406.93),
(5, '2023-08-23 01:37:21', 433.05),
(6, '2023-04-15 10:46:04', 468.33),
(7, '2023-01-14 22:28:51', 798.16),
(8, '2023-07-25 13:23:40', 112.49),
(9, '2023-06-04 17:25:58', 766.26),
(10, '2023-03-09 16:08:47', 637.31);
select*from Tank_Refill;

insert into Maintenance_Record (Maintenance_ID, Date_time, Description, Cost) values
(1, '2023-09-01 19:00:02', 'Description_1', 909.85),
(2, '2023-11-22 04:33:49', 'Description_2', 310.92),
(3, '2023-07-19 02:45:46', 'Description_3', 495.51),
(4, '2023-05-18 07:44:41', 'Description_4', 678.57),
(5, '2023-04-27 21:28:46', 'Description_5', 586.72),
(6, '2023-09-14 11:32:51', 'Description_6', 864.85),
(7, '2023-12-19 15:29:04', 'Description_7', 498.55),
(8, '2023-06-19 13:28:17', 'Description_8', 273.12),
(9, '2023-11-30 06:06:25', 'Description_9', 364.54),
(10, '2023-04-18 15:47:51', 'Description_10', 831.34);
select*from Maintenance_Record;

insert into Supplier (Supplier_ID, Name, Contact_Number, Email, Address) values
(1, 'Supplier_1', 518149973, 'supplier1@mail.com', 'Address_1'),
(2, 'Supplier_2', 745876443, 'supplier2@mail.com', 'Address_2'),
(3, 'Supplier_3', 209385859, 'supplier3@mail.com', 'Address_3'),
(4, 'Supplier_4', 755352322, 'supplier4@mail.com', 'Address_4'),
(5, 'Supplier_5', 839647875, 'supplier5@mail.com', 'Address_5'),
(6, 'Supplier_6', 608036272, 'supplier6@mail.com', 'Address_6'),
(7, 'Supplier_7', 890998849, 'supplier7@mail.com', 'Address_7'),
(8, 'Supplier_8', 421819594, 'supplier8@mail.com', 'Address_8'),
(9, 'Supplier_9', 958091141, 'supplier9@mail.com', 'Address_9'),
(10, 'Suppler_10', 66812936, 'supplier10@mail.com', 'Address_10');
select*from Supplier;




-- Transaction and Fuel Pump: Many-to-One with Fuel Pump
alter table Transaction
add foreign key (Pump_ID) references Fuel_pump(Pump_ID);

-- Transaction and Customer: Many-to-One with Customer
alter table Transaction
add foreign key (Customer_ID) references Customer(Customer_ID);

-- Transaction and Payment: One-to-One with Payment
alter table Payment
add foreign key (Transaction_ID) references Transaction(Transaction_ID);

-- Transaction and Fuel Type: Many-to-One with Fuel Type
alter table Transaction
add foreign key (Fuel_Type_ID) references Fuel_type(Fuel_type_ID);

-- Employee and Transaction: One-to-Many with Transaction
ALTER TABLE Transaction
ADD Employee_ID INT(5),
ADD FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID);


-- Employee and Maintenance Record: One-to-Many with Maintenance Record
alter table Maintenance_Record
ADD M_Employee_ID INT(5),
add foreign key (M_Employee_ID) references Employee(Employee_ID);

-- Supplier and Tank Refill: One-to-Many with Tank Refill
alter table Tank_Refill
add foreign key (Supplier_ID) references Supplier(Supplier_ID);

-- Supplier and Maintenance Record: One-to-Many with Maintenance Record
ALTER TABLE Maintenance_Record
ADD M_Supplier_ID INT(5),
ADD FOREIGN KEY (M_Supplier_ID) REFERENCES Supplier(Supplier_ID);



-- inner join
SELECT Transaction.Transaction_ID,Customer.Name AS Customer_Name, Employee.Name AS Employee_Name, Transaction.Fuel_Amount
FROM Transaction
INNER JOIN Customer ON Transaction.Customer_ID = Customer.Customer_ID
INNER JOIN Employee ON Transaction.Employee_ID = Employee.Employee_ID;


SELECT Tank_Refill.Refill_ID,Supplier.Name AS Supplier_Name, Fuel_Tank.Location AS Tank_Location, Tank_Refill.Refill_Amount
FROM Tank_Refill
INNER JOIN Supplier ON Tank_Refill.Supplier_ID = Supplier.Supplier_ID
INNER JOIN Fuel_Tank ON Tank_Refill.Tank_ID = Fuel_Tank.Tank_ID;


SELECT Payment.Payment_ID,Payment.Amount,Transaction.Fuel_Amount,Customer.Name AS Customer_Name
FROM Payment
INNER JOIN Transaction ON Payment.Transaction_ID = Transaction.Transaction_ID
INNER JOIN Customer ON Transaction.Customer_ID = Customer.Customer_ID;

SELECT Maintenance_Record.Maintenance_ID,Employee.Name AS Employee_Name, Fuel_pump.Location AS Pump_Location,Maintenance_Record.Description
FROM Maintenance_Record
INNER JOIN Employee ON Maintenance_Record.M_Employee_ID = Employee.Employee_ID
INNER JOIN Fuel_pump ON Maintenance_Record.Pump_ID = Fuel_pump.Pump_ID;

SELECT Fuel_type.Type_name,Supplier.Name AS Supplier_Name
FROM Fuel_type
INNER JOIN Supplier ON Fuel_type.Supplier_ID = Supplier.Supplier_ID;


-- left outer join
SELECT Customer.Name AS Customer_Name,Transaction.Transaction_ID,Transaction.Fuel_Amount
FROM Customer
LEFT JOIN Transaction ON Customer.Customer_ID = Transaction.Customer_ID;

SELECT Fuel_pump.Location AS Pump_Location,Maintenance_Record.Maintenance_ID,Maintenance_Record.Description
FROM Fuel_pump
LEFT JOIN Maintenance_Record ON Fuel_pump.Pump_ID = Maintenance_Record.Pump_ID;

SELECT Supplier.Name AS Supplier_Name,Tank_Refill.Refill_ID,Tank_Refill.Refill_Amount
FROM Supplier
LEFT JOIN Tank_Refill ON Supplier.Supplier_ID = Tank_Refill.Supplier_ID;

SELECT Employee.Name AS Employee_Name,Transaction.Transaction_ID,Transaction.Fuel_Amount
FROM Employee
LEFT JOIN Transaction ON Employee.Employee_ID = Transaction.Employee_ID;

SELECT Fuel_Tank.Location AS Tank_Location,Tank_Refill.Refill_ID,Tank_Refill.Refill_Amount
FROM Fuel_Tank
LEFT JOIN Tank_Refill ON Fuel_Tank.Tank_ID = Tank_Refill.Tank_ID;


-- right outer join

SELECT Transaction.Transaction_ID,Transaction.Fuel_Amount,Customer.Name AS Customer_Name
FROM Transaction
RIGHT JOIN Customer ON Transaction.Customer_ID = Customer.Customer_ID;

SELECT Fuel_pump.Location AS Pump_Location,Maintenance_Record.Maintenance_ID,Maintenance_Record.Description
FROM Maintenance_Record
RIGHT JOIN Fuel_pump ON Maintenance_Record.Pump_ID = Fuel_pump.Pump_ID;

SELECT Tank_Refill.Refill_ID,Tank_Refill.Refill_Amount,Supplier.Name AS Supplier_Name
FROM Tank_Refill
RIGHT JOIN Supplier ON Tank_Refill.Supplier_ID = Supplier.Supplier_ID;


SELECT Maintenance_Record.Maintenance_ID,Maintenance_Record.Description,Employee.Name AS Employee_Name
FROM Maintenance_Record
RIGHT JOIN Employee ON Maintenance_Record.M_Employee_ID = Employee.Employee_ID;

SELECT Transaction.Transaction_ID, Transaction.Fuel_Amount,Fuel_pump.Location AS Pump_Location
FROM Transaction
RIGHT JOIN Fuel_pump ON Transaction.Pump_ID = Fuel_pump.Pump_ID;



-- natural join

SELECT Supplier.Name AS Supplier_Name,Tank_Refill.Refill_ID,Tank_Refill.Refill_Amount
FROM Supplier
NATURAL JOIN Tank_Refill;

SELECT Maintenance_Record.Maintenance_ID,Maintenance_Record.Description,Supplier.Name AS Supplier_Name
FROM Maintenance_Record
NATURAL JOIN Supplier;

SELECT Employee.Name AS Employee_Name, Transaction.Transaction_ID,Transaction.Fuel_Amount
FROM Employee
NATURAL JOIN Transaction;

SELECT Transaction.Transaction_ID,Customer.Name AS Customer_Name, Transaction.Fuel_Amount
FROM Transaction
NATURAL JOIN Customer;

SELECT Fuel_type.Type_name,Supplier.Name AS Supplier_Name
FROM Fuel_type
NATURAL JOIN Supplier;


-- self join

SELECT C1.Customer_ID AS Customer1_ID,C1.Name AS Customer1_Name,C2.Customer_ID AS Customer2_ID,C2.Name AS Customer2_Name,C1.Address
FROM Customer C1
JOIN Customer C2 ON C1.Address = C2.Address AND C1.Customer_ID < C2.Customer_ID;

SELECT E1.Employee_ID AS Employee1_ID,E1.Name AS Employee1_Name,E2.Employee_ID AS Employee2_ID,E2.Name AS Employee2_Name,E1.Contact_Number
FROM Employee E1
JOIN Employee E2 ON E1.Contact_Number = E2.Contact_Number AND E1.Employee_ID < E2.Employee_ID;

SELECT T1.Transaction_ID AS Transaction1_ID,T2.Transaction_ID AS Transaction2_ID,T1.Date_time
FROM Transaction T1
JOIN Transaction T2 ON T1.Date_time = T2.Date_time AND T1.Transaction_ID < T2.Transaction_ID;

SELECT FT1.Tank_ID AS Tank1_ID,FT2.Tank_ID AS Tank2_ID,FT1.Capacity
FROM Fuel_Tank FT1
JOIN Fuel_Tank FT2 ON FT1.Capacity = FT2.Capacity AND FT1.Tank_ID < FT2.Tank_ID;


SELECT FP1.Pump_ID AS Pump1_ID,FP2.Pump_ID AS Pump2_ID,FP1.Location
FROM Fuel_pump FP1
JOIN Fuel_pump FP2 ON FP1.Location = FP2.Location AND FP1.Pump_ID < FP2.Pump_ID;


-- Nested Queries
-- 1. Select FuelType with a specific ID:
SELECT * FROM Fuel_type WHERE Fuel_type_ID = (SELECT Fuel_type_ID FROM Fuel_type WHERE Fuel_type_ID = 1);

-- 2. Select SupplierInfo where the name is not 'Supplier_5':
SELECT * FROM Supplier WHERE Name IN (SELECT Name FROM Supplier WHERE Name <> 'Supplier_5');

-- 3. Select FuelPump with a capacity greater than 800:
SELECT * FROM Fuel_pump WHERE Capacity > (SELECT MIN(Capacity) FROM Fuel_pump WHERE Capacity > 800);

-- 4. Select CustomerInfo where the Contact_Number is less than 500000000:
SELECT * FROM Customer WHERE Contact_Number < (SELECT MAX(Contact_Number) FROM Customer WHERE Contact_Number < 500000000);

-- 5. Select EmployeeInfo where the position is 'Manager':
SELECT * FROM Employee WHERE Position IN (SELECT Position FROM Employee WHERE Position = 'Manager');

-- 6. Select FuelTank where the capacity is between 3000 and 5000:
SELECT * FROM Fuel_Tank WHERE Capacity BETWEEN (SELECT MIN(Capacity) FROM Fuel_Tank WHERE Capacity BETWEEN 3000 AND 5000) AND (SELECT MAX(Capacity) FROM Fuel_Tank WHERE Capacity BETWEEN 3000 AND 5000);

-- 7. Select TransactionRecord where the transaction has a corresponding payment in PaymentInfo:
SELECT * FROM Transaction t1 WHERE EXISTS (SELECT * FROM Payment p1 WHERE p1.Transaction_ID = t1.Transaction_ID);

-- 8. Select PaymentInfo where the amount is greater than or equal to 200:
SELECT * FROM Payment WHERE Amount >= (SELECT MIN(Amount) FROM Payment WHERE Amount >= 200);

-- 9. Select TankRefill where the Refill_Amount is less than or equal to 500:
SELECT * FROM Tank_Refill WHERE Refill_Amount <= (SELECT MAX(Refill_Amount) FROM Tank_Refill WHERE Refill_Amount <= 500);

-- 10. Select MaintenanceRecord where the cost is not equal to 600:
SELECT * FROM Maintenance_Record WHERE Cost <> (SELECT Cost FROM Maintenance_Record WHERE Cost = 600 LIMIT 1);

-- Correlated Subqueries
-- 1. Select FuelType with a specific ID:
SELECT * FROM Fuel_type t1 WHERE EXISTS (SELECT * FROM Fuel_type t2 WHERE t1.Fuel_type_ID = t2.Fuel_type_ID AND t2.Fuel_type_ID = 1);

-- 2. Select SupplierInfo where the name is not 'Supplier_5':
SELECT * FROM Supplier s1 WHERE NOT EXISTS (SELECT * FROM Supplier s2 WHERE s2.Name = 'Supplier_5' AND s1.Supplier_ID = s2.Supplier_ID);

-- 3. Select FuelPump with a capacity greater than 800:
SELECT * FROM Fuel_pump f1 WHERE EXISTS (SELECT * FROM Fuel_pump f2 WHERE f1.Pump_ID = f2.Pump_ID AND f2.Capacity > 800);

-- 4. Select CustomerInfo where the Contact_Number is less than 500000000:
SELECT * FROM Customer c1 WHERE EXISTS (SELECT * FROM Customer c2 WHERE c1.Customer_ID = c2.Customer_ID AND c2.Contact_Number < 500000000);

-- 5. Select EmployeeInfo where the position is 'Manager':
SELECT * FROM Employee e1 WHERE EXISTS (SELECT * FROM Employee e2 WHERE e1.Employee_ID = e2.Employee_ID AND e2.Position = 'Manager');

-- 6. Select FuelTank where the capacity is between 3000 and 5000:
SELECT * FROM Fuel_Tank ft1 WHERE EXISTS (SELECT * FROM Fuel_Tank ft2 WHERE ft1.Tank_ID = ft2.Tank_ID AND ft2.Capacity BETWEEN 3000 AND 5000);

-- 7. Select TransactionRecord where the transaction has a corresponding payment in PaymentInfo:
SELECT * FROM Transaction tr1 WHERE EXISTS (SELECT * FROM Payment p1 WHERE p1.Transaction_ID = tr1.Transaction_ID);

-- 8. Select PaymentInfo where the amount is greater than or equal to 200:
SELECT * FROM Payment p1 WHERE EXISTS (SELECT * FROM Payment p2 WHERE p1.Payment_ID = p2.Payment_ID AND p2.Amount >= 200);

-- 9. Select TankRefill where the Refill_Amount is less than or equal to 500:
SELECT * FROM Tank_Refill tr1 WHERE EXISTS (SELECT * FROM Tank_Refill tr2 WHERE tr1.Refill_ID = tr2.Refill_ID AND tr2.Refill_Amount <= 500);

-- 10. Select MaintenanceRecord where the cost is not equal to 600:
SELECT * FROM Maintenance_Record mr1 WHERE EXISTS (SELECT * FROM Maintenance_Record mr2 WHERE mr1.Maintenance_ID = mr2.Maintenance_ID AND mr2.Cost <> 600);











