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
