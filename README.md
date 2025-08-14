# Task 7 – Creating and Using Views in SQL

## 📌 Objective
Learn to create and use **SQL Views** for data abstraction and reusable query logic.

## 🛠 Tools Used
- SQLite (DB Browser) / MySQL Workbench

## 📚 Key Concepts
- **View:** A stored query that acts as a virtual table.
- **Benefits:** Data abstraction, security, reusability, and cleaner queries.

## 📂 Files Included
- `task7.sql` → SQL script containing table creation, sample data, and views.
- `README.md` → Explanation and usage guide.

## 🗃 Sample Tables
- **Customers** – Stores customer information.
- **Orders** – Stores customer orders and amounts.

## 🔍 Created Views
1. **CustomerOrders** – Shows customer full name with their orders.
2. **CustomerSpending** – Shows total amount spent by each customer.

## 📊 Usage Examples
```sql
-- Fetch all customer orders
SELECT * FROM CustomerOrders;

-- Fetch customers who spent more than $500
SELECT * FROM CustomerSpending WHERE total_spent > 500;
