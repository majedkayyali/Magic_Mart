CREATE TABLE Customers (
    ID INT PRIMARY KEY,
    Username VARCHAR(255) NOT NULL,
    Password VARCHAR(255) NOT NULL,
    City VARCHAR(100),
    State VARCHAR(100)
);

CREATE TABLE Orders (
    ID INT PRIMARY KEY,
    CustomerID INT,
    Order_Status VARCHAR(50),
    Order_Date DATE,
    Total_Price DECIMAL(10,2),
    Delivery_Date DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(ID)
);

CREATE TABLE Product_Catalog (
    ID INT PRIMARY KEY,
    Category_Name VARCHAR(255),
    Category_Description TEXT
);

CREATE TABLE Inventory (
    ID INT PRIMARY KEY,
    Category INT,
    Quantity INT,
    SKU VARCHAR(50),
    Image VARCHAR(255),
    Retail_Price DECIMAL(10,2),
    Landing_Cost_Per_Unit DECIMAL(10,2),
    FOREIGN KEY (Category) REFERENCES Product_Catalog(ID)
);

CREATE TABLE Order_Items (
    OrderID INT,
    ProductID INT,
    Shipping_Date DATE,
    Sale_Price DECIMAL(10,2),
    Freight_Value DECIMAL(10,2),
    Order_Item_Quantity INT,
    PRIMARY KEY (OrderID, ProductID),
    FOREIGN KEY (OrderID) REFERENCES Orders(ID),
    FOREIGN KEY (ProductID) REFERENCES Inventory(ID)
);

CREATE TABLE Payments (
    OrderID INT,
    PaymentID INT,
    Payment_Type VARCHAR(50),
    Payment_Value DECIMAL(10,2),
    PRIMARY KEY (OrderID, PaymentID),
    FOREIGN KEY (OrderID) REFERENCES Orders(ID)
);
