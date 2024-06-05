-- Create Users Table
CREATE TABLE Users (
    UserID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255) NOT NULL,
    Gender VARCHAR(50),
    DOB DATE,
    Username VARCHAR(255) UNIQUE NOT NULL,
    Password VARCHAR(255) NOT NULL
);

-- Create Orders Table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    UserID INT,
    OrderDate DATETIME NOT NULL,
    Status VARCHAR(100),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

-- Create OrderDetails Table
CREATE TABLE OrderDetails (
    DetailID INT PRIMARY KEY AUTO_INCREMENT,
    OrderID INT,
    FoodDescription TEXT,
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

-- Insert sample data into Users Table
INSERT INTO Users (Name, Gender, DOB, Username, Password) VALUES
('Alice Johnson', 'Female', '1990-05-14', 'alicejohn', 'hashed_password1'),
('Bob Smith', 'Male', '1985-08-23', 'bobsmith', 'hashed_password2'),
('Charlie Brown', 'Male', '1992-12-01', 'charlieb', 'hashed_password3');

-- Insert sample data into Orders Table
INSERT INTO Orders (UserID, OrderDate, Status) VALUES
(1, '2024-05-29 12:34:56', 'Pending'),
(2, '2024-05-30 15:45:12', 'Delivered'),
(1, '2024-05-30 17:22:45', 'Pending');

-- Insert sample data into OrderDetails Table
INSERT INTO OrderDetails (OrderID, FoodDescription, Quantity) VALUES
(1, 'Cheeseburger', 2),
(1, 'French Fries', 1),
(2, 'Margherita Pizza', 1),
(3, 'Veggie Burger', 1),
(3, 'Caesar Salad', 2);
