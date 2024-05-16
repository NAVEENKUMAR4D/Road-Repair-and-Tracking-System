/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/SQLTemplate.sql to edit this template
 */
/**
 * Author:  apiiit123
 * Created: 13-Apr-2024
 */


CREATE TABLE ADMINISTRATOR (
    Adminid INT AUTO_INCREMENT PRIMARY KEY,
    Username VARCHAR(255) NOT NULL,
    Password VARCHAR(255) NOT NULL
);


INSERT INTO ADMINISTRATOR (Username, Password)
VALUES ('Admin1', 'Password1'), ('Admin2', 'Password2'), ('Admin3', 'Password3');



-- Create the CLERK table and insert sample values
CREATE TABLE CLERK (
    ClerkID INT AUTO_INCREMENT PRIMARY KEY,
    Username VARCHAR(255) NOT NULL,
    Password VARCHAR(255) NOT NULL
) ENGINE=InnoDB;

INSERT INTO CLERK (Username, Password)
VALUES ('Clerk1', 'ClerkPass1'), ('Clerk2', 'ClerkPass2'), ('Clerk3', 'ClerkPass3');



CREATE TABLE COMPLAINTS (
    ComplaintID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    Telephone VARCHAR(20) NOT NULL,
    RoadName VARCHAR(255) NOT NULL,
    Location VARCHAR(255) NOT NULL,
    Area VARCHAR(255) NOT NULL,
    Description TEXT NOT NULL,
    Comments TEXT,
    Status VARCHAR(50), -- Allow NULL values
    CreatedTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO COMPLAINTS (Name, Email, Telephone, RoadName, Location, Area, Description, Comments, Status)
VALUES 
('John Doe', 'john@example.com', '1234567890', 'Main Street', 'City Center', 'Downtown', 'Pothole on the road', 'None', 'Pending'),
('Jane Smith', 'jane@example.com', '0987654321', 'Broadway Avenue', 'Near Park', 'Westside', 'Street light not working', 'Awaiting repair', NULL),
('Robert Johnson', 'robert@example.com', '5555555555', 'Oak Street', 'Near School', 'Suburb', 'Garbage dumped on roadside', 'Urgent action required', 'In Progress');



CREATE TABLE MAYOR (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    Username VARCHAR(255) NOT NULL,
    Password VARCHAR(255) NOT NULL
);

INSERT INTO MAYOR (Username, Password)
VALUES 
('mayor1', 'MayorPass1'),
('mayor2', 'MayorPass2'),
('mayor3', 'MayorPass3');



CREATE TABLE PRIORITY (
    PRIORITY_ORDER INT,
    CEMENT INT,
    SAND_TRIPS INT,
    WATER INT,
    LABOURERS INT,
    MACHINES INT,
    ComplaintID INT,
    AREA VARCHAR(255),
    STATUS VARCHAR(20),
    created_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
 
INSERT INTO PRIORITY (PRIORITY_ORDER, CEMENT, SAND_TRIPS, WATER, LABOURERS, MACHINES, ComplaintID, AREA)
VALUES 
(1, 10, 5, 20, 15, 3, 1001, 'Area A'),
(2, 8, 4, 18, 12, 2, 1002, 'Area B'),
(3, 12, 6, 25, 18, 4, 1003, 'Area C');



CREATE TABLE RESOURCES (
    CEMENT INT,
    SAND_TRIPS INT,
    WATER INT,
    LABOURERS INT,
    MACHINES INT
);

INSERT INTO RESOURCES (CEMENT, SAND_TRIPS, WATER, LABOURERS, MACHINES)
VALUES 
(100, 50, 200, 30, 5),
(150, 70, 250, 40, 8),
(120, 60, 220, 35, 6);


CREATE TABLE SUPERVISOR (
    Username VARCHAR(255) NOT NULL,
    Area VARCHAR(255) NOT NULL,
    Password VARCHAR(255) NOT NULL
);
INSERT INTO SUPERVISOR (Username, Area, Password)
VALUES 
('supervisor1', 'Area A', 'SupervisorPass1'),
('supervisor2', 'Area B', 'SupervisorPass2'),
('supervisor3', 'Area C', 'SupervisorPass3');





CREATE TABLE USERS (
    User_id INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    Mobile VARCHAR(20) NOT NULL,
    Password VARCHAR(255) NOT NULL
);
INSERT INTO USERS (Name, Email, Mobile, Password)
VALUES 
('John Doe', 'john@example.com', '1234567890', 'password1'),
('Jane Smith', 'jane@example.com', '9876543210', 'password2'),
('Robert Johnson', 'robert@example.com', '5555555555', 'password3');


CREATE TABLE WORK (
    WorkID INT AUTO_INCREMENT PRIMARY KEY,
    CEMENT_USED INT,
    SAND_TRIPS_USED INT,
    WATER_USED INT,
    LABOURERS_USED INT,
    Area VARCHAR(255),
    CEMENT_REQUIRED INT,
    SAND_TRIPS_REQUIRED INT,
    WATER_REQUIRED INT,
    LABOURERS_REQUIRED INT,
    ComplaintID INT,
    PercentDone INT
);
INSERT INTO WORK (CEMENT_USED, SAND_TRIPS_USED, WATER_USED, LABOURERS_USED, Area, CEMENT_REQUIRED, SAND_TRIPS_REQUIRED, WATER_REQUIRED, LABOURERS_REQUIRED, ComplaintID, PercentDone )
VALUES 
(50, 20, 100, 10, 'Area A', 100, 50, 200, 20, 1001, 75),
(80, 30, 150, 15, 'Area B', 120, 60, 250, 25, 1002, 60),
(60, 25, 120, 12, 'Area C', 80, 40, 180, 18, 1003, 90);


