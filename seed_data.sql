-- Sample seed data for e-commerce analysis
-- Synthetic data for learning purposes only

-- Customers
INSERT INTO customers (customer_id, customer_name, signup_date) VALUES
(1, 'Alice', '2024-01-05'),
(2, 'Bob', '2024-01-10'),
(3, 'Charlie', '2024-01-15'),
(4, 'Diana', '2024-02-01'),
(5, 'Eve', '2024-02-10'),
(6, 'Frank', '2024-02-20');

-- Visits
INSERT INTO visits (visit_id, customer_id, visit_date) VALUES
(1, 1, '2024-03-01'),
(2, 1, '2024-03-05'),
(3, 2, '2024-03-02'),
(4, 3, '2024-03-03'),
(5, 3, '2024-03-10'),
(6, 4, '2024-03-04'),
(7, 5, '2024-03-06');

-- Orders
INSERT INTO orders (order_id, customer_id, order_amount, order_date) VALUES
(1, 1, 120.50, '2024-03-01'),
(2, 1, 80.00,  '2024-03-05'),
(3, 3, 200.00, '2024-03-10'),
(4, 5, 50.00,  '2024-03-06');
