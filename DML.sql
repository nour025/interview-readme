





CREATE TABLE Customer (
    Customer_id VARCHAR(10) PRIMARY KEY,
    customer_Name VARCHAR(50),
    customer_Tel VARCHAR(20)
);

CREATE TABLE Product (
    Product_id VARCHAR(10) PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(20),
    CREATE TABLE Customer (
    Customer_id VARCHAR(10) PRIMARY KEY,
    customer_Name VARCHAR(50),
    customer_Tel VARCHAR(20)
);

CREATE TABLE Product (
    Product_id VARCHAR(10) PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(20),
    Price DECIMAL(10,2)
);

CREATE TABLE Orders (
    Customer_id VARCHAR(10),
    Product_id VARCHAR(10),
    OrderDate DATE,
    quantity INT,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (Customer_id) REFERENCES Customer(Customer_id),
    FOREIGN KEY (Product_id) REFERENCES Product(Product_id)
);

);

CREATE TABLE Orders (
    Customer_id VARCHAR(10),
    Product_id VARCHAR(10),
    OrderDate DATE,
    quantity INT,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (Customer_id) REFERENCES Customer(Customer_id),
    FOREIGN KEY (Product_id) REFERENCES Product(Product_id)
);




INSERT INTO Customer (Customer_id, customer_Name, customer_Tel)
VALUES 
('C01', 'Ali', '71321009'),
('C02', 'Asma', '77345823');

INSERT INTO Product (Product_id, product_name, category, Price)
VALUES
('P01', 'Smartphone', 'Samsung galagcy S20', 3299),
('P02', 'PC', 'ASUS notebook', 4599);

INSERT INTO Orders (Customer_id, Product_id, OrderDate, quantity, total_amount)
VALUES
('C01', 'P01', '2025-08-01', 1, 9198),
('C02', 'P02', '2025-08-02', 2, 3299);
