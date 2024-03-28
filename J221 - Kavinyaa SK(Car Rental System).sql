
create database CS;
use CS;
-- Vehicle table
Create table Vehicle(VehicleID int primary key,Make varchar(35),Model varchar(35),
Year int,DailyRate decimal(10,2),Status int,PassengerCapacity int,EngineCapacity int);

-- Customer table
Create table Customer(CustomerID int primary key,FirstName varchar(35),LastName varchar(35),Email varchar(35),Phone int);

-- Lease table

Create table Lease (LeaseID int primary key, VehicleID int, CustomerID int, SDate date, EDate date, Type varchar(35), 
foreign key (VehicleID) references Vehicle(VehicleID),foreign key (CustomerID) references Customer(CustomerID));

-- Payment table
Create table Payment(PaymentID int primary key, LeaseID int, PDate date, Amount decimal(10, 2),
foreign key (LeaseID) references Lease(LeaseID));


INSERT INTO Vehicle (VehicleID, Make, Model, Year, DR, Status, PC, EC) VALUES 
  (1, 'Toyota', 'Camry', 2022, 50.00, 1, 4,1450),
  (2, 'Honda', 'Civic', 2023, 45.00, 1, 7,1400),
  (3, 'Ford', 'Focus', 2022, 48.00, 0,4,1400),
  (4, 'Nissan', 'Altima', 2023, 52.00,1, 7,1200), 
  (5, 'Chevrolet', 'Malibu', 2022,47.00,1, 4,1800);
select * from Vehicle;

INSERT INTO Customer (CustomerID, FirstName, LastName, Email, Phone)VALUES 
(1, 'John', 'Doe', 'johndoe@example.com', 1234567890), 
(2, 'Jane', 'Smith', 'janesmith@example.com', 9876543210), 
(3, 'Michael', 'Johnson', 'michaeljohnson@example.com', 4567890123), 
(4, 'Emily', 'Davis', 'emilydavis@example.com', 7890123456), 
(5, 'David', 'Wilson', 'davidwilson@example.com', 2345678901);
select * from Customer;

INSERT INTO Lease (LeaseID, VehicleID, CustomerID, SDate, EDate, Type ) values
(1,1,1,'2023-01-01','2023-01-05','Daily'),
(2,2,2,'2023-02-15','2023-02,28','Monthly'),
(3,3,3,'2023-03-10','2023-03-15','Daily'),
(4,4,4,'2023-04-20','2023-04-30','Monthly'),
(5,5,5,'2023-05-05','2023-05-10','Daily');
select * from Lease;


INSERT INTO Payment (PaymentID, LeaseID, PDate, Amount) values
(1,1,'2023-01-03',200.00),
(2,2,'2023-02-20',1000.00),
(3,3,'2023-03-12',75.00),
(4,4,'2023-04-25',900.00),
(5,5,'2023-05-07',60.00);
select * from Payment;