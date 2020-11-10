## Tasks

--1. Get all customers and their addresses.
SELECT * from "customers"
JOIN "addresses" ON "customers".id = "addresses".customer_id;

--2. Get all orders and their line items (orders, quantity and product).
SELECT * FROM "orders"
JOIN "line_items" ON "orders".id = "line_items".id;

--3. Which warehouses have cheetos?
SELECT "warehouse" FROM "warehouse"
JOIN "warehouse_product" ON "warehouse".id = "warehouse_product".warehouse_id
JOIN "products" ON "products".id = "warehouse_product".product_id
WHERE "products".id = 5; 
--4. Which warehouses have diet pepsi?
SELECT "warehouse" FROM "warehouse"
JOIN "warehouse_product" ON "warehouse".id = "warehouse_product".warehouse_id
JOIN "products" ON "products".id = "warehouse_product".product_id
WHERE "products".id = 6; 

--5. Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
SELECT "address_id" FROM "orders"
JOIN "addresses" ON "customers".id = "addresses".customer_id
GROUP BY 
;  

--6. How many customers do we have?
SELECT count(*) from "customers";

--7. How many products do we carry?
SELECT count(*) FROM "products";

--8. What is the total available on-hand quantity of diet pepsi?
SELECT sum(warehouse_product.on_hand) FROM "warehouse_product"
WHERE "product_id" = 6;