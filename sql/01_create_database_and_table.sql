-- =====================================================
-- File: 01_create_database_and_table.sql
-- Purpose: Create database and sales table
-- =====================================================

CREATE DATABASE IF NOT EXISTS sales_analysis_project;
USE sales_analysis_project;

CREATE TABLE IF NOT EXISTS sales (
    order_id INT PRIMARY KEY,
    order_date DATE,
    customer_id INT,
    customer_name VARCHAR(100),
    product_id INT,
    product_name VARCHAR(100),
    quantity INT,
    unit_price DECIMAL(10, 2)
);
