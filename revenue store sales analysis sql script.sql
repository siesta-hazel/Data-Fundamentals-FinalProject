CREATE TABLE sales_data (
    order_id NUMBER PRIMARY KEY,
    order_date DATE,
    city VARCHAR2(50),
    product VARCHAR2(50),
    category VARCHAR2(50),
    quantity NUMBER,
    price NUMBER(10,2)
);

INSERT ALL
    INTO sales_data VALUES (1001, TO_DATE('2025-01-10','YYYY-MM-DD'), 'Pune', 'Laptop', 'Electronics', 2, 50000)
    INTO sales_data VALUES (1002, TO_DATE('2025-01-11','YYYY-MM-DD'), 'Mumbai', 'Mobile', 'Electronics', 3, 20000)
    INTO sales_data VALUES (1003, TO_DATE('2025-01-11','YYYY-MM-DD'), 'Pune', 'Headphones', 'Accessories', 5, 2000)
    INTO sales_data VALUES (1004, TO_DATE('2025-01-12','YYYY-MM-DD'), 'Nagpur', 'Keyboard', 'Accessories', 4, 1500)
    INTO sales_data VALUES (1005, TO_DATE('2025-01-13','YYYY-MM-DD'), 'Mumbai', 'Laptop', 'Electronics', 1, 50000)

    INTO sales_data VALUES (1006, TO_DATE('2025-01-14','YYYY-MM-DD'), 'Pune', 'Mobile', 'Electronics', 2, 22000)
    INTO sales_data VALUES (1007, TO_DATE('2025-01-14','YYYY-MM-DD'), 'Nagpur', 'Laptop', 'Electronics', 1, 52000)
    INTO sales_data VALUES (1008, TO_DATE('2025-01-15','YYYY-MM-DD'), 'Mumbai', 'Headphones', 'Accessories', 6, 1800)
    INTO sales_data VALUES (1009, TO_DATE('2025-01-15','YYYY-MM-DD'), 'Pune', 'Keyboard', 'Accessories', 3, 1700)
    INTO sales_data VALUES (1010, TO_DATE('2025-01-16','YYYY-MM-DD'), 'Mumbai', 'Mobile', 'Electronics', 4, 21000)
    INTO sales_data VALUES (1011, TO_DATE('2025-01-16','YYYY-MM-DD'), 'Nagpur', 'Headphones', 'Accessories', 7, 1500)
    INTO sales_data VALUES (1012, TO_DATE('2025-01-17','YYYY-MM-DD'), 'Pune', 'Laptop', 'Electronics', 1, 48000)
    INTO sales_data VALUES (1013, TO_DATE('2025-01-17','YYYY-MM-DD'), 'Mumbai', 'Keyboard', 'Accessories', 5, 1600)
    INTO sales_data VALUES (1014, TO_DATE('2025-01-18','YYYY-MM-DD'), 'Nagpur', 'Mobile', 'Electronics', 2, 19500)
    INTO sales_data VALUES (1015, TO_DATE('2025-01-18','YYYY-MM-DD'), 'Pune', 'Headphones', 'Accessories', 4, 2200)
SELECT * FROM dual;

SELECT * FROM sales_data;

SELECT SUM(quantity * price) AS total_revenue
FROM sales_data;

SELECT product, SUM(quantity) AS total_quantity
FROM sales_data
GROUP BY product
ORDER BY total_quantity DESC
FETCH FIRST 1 ROW ONLY;

SELECT city, SUM(quantity * price) AS city_revenue
FROM sales_data
GROUP BY city;

SELECT category, SUM(quantity * price) AS category_revenue
FROM sales_data
GROUP BY category;

SELECT order_id, (quantity * price) AS order_value
FROM sales_data
ORDER BY order_value DESC
FETCH FIRST 1 ROW ONLY;

SELECT AVG(price) AS avg_price
FROM sales_data;