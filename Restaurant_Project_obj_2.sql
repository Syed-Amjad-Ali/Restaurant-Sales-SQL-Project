
USE restaurant_db;
-- Objective 2 Exploring the orders table


-- View the order_details table. What is the date range of the table?

SELECT * FROM order_details;

SELECT * FROM order_details
ORDER BY order_date;
;

SELECT MIN(order_date),MAX(order_date) FROM order_details;


-- How many orders were made within this date range? How many items were ordered within this date range?

SELECT COUNT(DISTINCT order_id) FROM order_details;

SELECT COUNT(*) FROM order_details;

-- Which orders had the most number of items?

SELECT order_id, COUNT(item_id) AS num_items
 FROM order_details
GROUP BY order_id
ORDER by num_items DESC;


-- How many orders had more than 12 items?
SELECT COUNT(*) FROM
-- using the below as a subquery 

(SELECT order_id, COUNT(item_id) AS num_items
 FROM order_details
GROUP BY order_id
HAVING num_items >12) AS num_orders;




