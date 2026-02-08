CREATE TABLE customer (
    customer_id INT IDENTITY(1,1) PRIMARY KEY,
    customer_name VARCHAR(100)
);

CREATE TABLE visits (
    visit_id INT IDENTITY(1,1) PRIMARY KEY,
    customer_id INT,
    visit_date DATE
);

CREATE TABLE orders (
    order_id INT IDENTITY(1,1) PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    order_amount DECIMAL(10,2)
);
