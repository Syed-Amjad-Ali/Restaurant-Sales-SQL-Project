USE restaurant_db ;

-- Objective 1 Exploring the items table

-- View the menu_items table and write a query to find the number of items on the menu
SELECT * From menu_items;


SELECT COUNT(*) FROM menu_items;


-- What are the least and most expensive items on the menu?

SELECT * FROM menu_items
ORDER BY price; 

SELECT * FROM menu_items
ORDER BY price DESC;

-- How many Italian dishes are on the menu? What are the least and most expensive Italian dishes on the menu?alter

SELECT COUNT(*) FROM menu_items
WHERE category = 'Italian';

SELECT * 
FROM menu_items
WHERE category = 'Italian'
ORDER BY price;



SELECT * 
FROM menu_items
WHERE category = 'Italian'
ORDER BY price DESC;

-- How many dishes are in each category? What is the average dish price within each category?

SELECT category, COUNT(menu_item_id) AS num_dishes
FROM menu_items
GROUP BY category;
 
SELECT category, AVG(price) AS avg_price
FROM menu_items
GROUP BY category; 
 




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








USE restaurant_db;

-- Combine the menu_items and order_details tables into a single table
SELECT * FROM menu_items;
SELECT * FROM order_details;

SELECT * 
FROM order_details od LEFT JOIN menu_items mi
	ON od.item_id = mi.menu_item_id;


-- What were the least and most ordered items? What categories were they in?

SELECT item_name, COUNT(order_details_id) AS num_purchases
FROM order_details od LEFT JOIN menu_items mi
	ON od.item_id = mi.menu_item_id
    
GROUP BY item_name
ORDER BY num_purchases DESC; -- or without desc for least ordered
    
    
  SELECT item_name, category, COUNT(order_details_id) AS num_purchases
FROM order_details od LEFT JOIN menu_items mi
	ON od.item_id = mi.menu_item_id
    
GROUP BY item_name, category
ORDER BY num_purchases DESC ;  -- American is mostly ordered


-- What were the top 5 orders that spent the most money?

SELECT order_id, SUM(price) AS total_spend
FROM order_details od LEFT JOIN menu_items mi
	ON od.item_id = mi.menu_item_id
GROUP BY order_id 
ORDER BY total_spend DESC
LIMIT 5; 



-- View the details of the highest spend order. Which specific items were purchased?
SELECT *
FROM order_details od LEFT JOIN menu_items mi
	ON od.item_id = mi.menu_item_id
WHERE order_id = 440;



-- they are buying a lot of italian foods which happen to be expensive as well


-- BONUS: View the details of the top 5 highest spend orders
SELECT category, COUNT(item_id) AS num_items
FROM order_details od LEFT JOIN menu_items mi
	ON od.item_id = mi.menu_item_id
WHERE order_id = 440
GROUP BY category;



SELECT category, COUNT(item_id) AS num_items
FROM order_details od LEFT JOIN menu_items mi
	ON od.item_id = mi.menu_item_id
WHERE order_id IN (440,2075,1957,330,2675)
GROUP BY category;


SELECT order_id,category, COUNT(item_id) AS num_items
FROM order_details od LEFT JOIN menu_items mi
	ON od.item_id = mi.menu_item_id
WHERE order_id IN (440,2075,1957,330,2675)
GROUP BY order_id,category;



