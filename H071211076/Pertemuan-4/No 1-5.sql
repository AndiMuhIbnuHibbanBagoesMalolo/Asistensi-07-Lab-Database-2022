-- USE classicmodels;

-- Nomor 1
-- SELECT * FROM products;
-- SELECT * FROM orderdetails;
-- SELECT * FROM orders;
-- -- 
-- SELECT orderdetails.productCode, orders.orderDate, products.productName
-- FROM products
-- INNER JOIN orderdetails
-- ON products.productCode = orderdetails.productCode
-- INNER JOIN orders
-- ON orderdetails.orderNumber = orders.orderNumber
-- WHERE productName='1940 Ford Pickup Truck' ORDER BY orderDate DESC;
-- 
-- Nomor 2
SELECT products.productName, orderdetails.priceEach, 0.8 * products.MSRP
FROM products
INNER JOIN orderdetails
ON products.productCode = orderdetails.productCode
WHERE orderdetails.priceEach < 0.8 * products.MSRP;appseminar

-- No 3
-- USE appseminar;
-- 
-- SELECT * FROM ss_pembimbing;
-- SELECT * FROM ss_mahasiswa;

-- SELECT ss_dosen.nama, ss_mahasiswa.nama 
-- FROM ss_pembimbing
-- INNER JOIN ss_mahasiswa ON ss_pembimbing.id_mahasiswa = ss_mahasiswa.id_mahasiswa
-- INNER JOIN ss_dosen ON ss_dosen.id_dosen = ss_pembimbing.id_pembimbing_utama
-- WHERE ss_mahasiswa.nama='Sulaeman'
-- 
-- No 4
-- USE classicmodels;
-- 
-- ALTER TABLE customers
-- ADD 'STATUS' VARCHAR(255) NOT NULL;
-- 
-- SELECT * FROM customers;
-- SELECT * FROM payments;
-- SELECT * FROM orders;
-- SELECT * FROM orderdetails;classicmodels
-- -- 
-- UPDATE customers
-- INNER JOIN payments
-- ON customers.customerNumber = payments.customerNumber
-- INNER JOIN orders
-- ON orders.customerNumber =  payments.customerNumber
-- INNER JOIN orderdetails
-- ON orderdetails.orderNumber = orders.orderNumber
-- SET customers.status ='VIP'
-- WHERE quantityOrdered>50 or amount>100000;
-- UPDATE customers
-- SET customers.status= 'reguler'
-- WHERE customers.status IS null
-- 
-- No 5
-- ALTER TABLE orders DROP FOREIGN KEY orders_ibfk_1;
-- ALTER TABLE orderdetails DROP FOREIGN KEY orderdetails_ibfk_1;
-- ALTER TABLE payments DROP FOREIGN KEY payments_ibfk_1;
-- ALTER TABLE customers DROP FOREIGN KEY customers_ibfk1;
-- ALTER TABLE orderdetails DROP FOREIGN KEY orderdetails_ibfk_2;
-- DELETE customers 
-- FROM customers
-- JOIN orders 
-- ON customers.customerNumber = orders.customerNumber
-- WHERE orders.status = "Cancelled";
-- 
-- DELETE FROM orders WHERE status = "Cancelled";

SELECT * FROM orders WHERE STATUS = "cancelled";
ACTION