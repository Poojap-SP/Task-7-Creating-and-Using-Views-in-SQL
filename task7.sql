-- Customers table
CREATE TABLE Customers (
    customer_id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    age INTEGER,
    country TEXT
);

-- Orders table
CREATE TABLE Orders (
    order_id INTEGER PRIMARY KEY,
    item TEXT,
    amount INTEGER,
    customer_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Insert sample data
INSERT INTO Customers VALUES
(1, 'John', 'Doe', 28, 'USA'),
(2, 'Jane', 'Smith', 35, 'UK'),
(3, 'Amit', 'Sharma', 40, 'India');

INSERT INTO Orders VALUES
(101, 'Laptop', 800, 1),
(102, 'Phone', 500, 1),
(103, 'Tablet', 300, 2),
(104, 'Monitor', 150, 3);
-- View to show customer full name with orders
CREATE VIEW CustomerOrders AS
SELECT 
    c.customer_id,
    c.first_name || ' ' || c.last_name AS full_name,
    o.item,
    o.amount
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id;

-- View to show total spending per customer
CREATE VIEW CustomerSpending AS
SELECT 
    c.customer_id,
    c.first_name || ' ' || c.last_name AS full_name,
    SUM(o.amount) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id;
-- Get all customer orders
SELECT * FROM CustomerOrders;

-- Get customers who spent more than $500
SELECT * FROM CustomerSpending
WHERE total_spent > 500;
DROP VIEW CustomerOrders;
DROP VIEW CustomerSpending;
