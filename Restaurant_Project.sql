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
 
