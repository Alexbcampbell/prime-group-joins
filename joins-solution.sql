## Tasks

1. Get all customers and their addresses.
-- SELECT * from "customers"
-- Join "addresses" ON "customers".id = "addresses".customer_id;
2. Get all orders and their line items (orders, quantity and product).
-- SELECT * FROM "orders"
-- JOIN "line_items" ON "orders".id = "line_items".id;
3. Which warehouses have cheetos?

4. Which warehouses have diet pepsi?

5. Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.

6. How many customers do we have?
-- SELECT count(*) from "customers";
7. How many products do we carry?
--SELECT count(*) FROM "products";
8. What is the total available on-hand quantity of diet pepsi?

## Stretch
9. How much was the total cost for each order?
10. How much has each customer spent in total?
11. How much has each customer spent in total? Customers who have spent $0 should still show up in the table. It should say 0, not NULL (research coalesce).
