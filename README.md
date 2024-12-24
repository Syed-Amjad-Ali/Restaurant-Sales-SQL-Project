# Restaurant-Sales-SQL-Project

## Overview

This project demonstrates fundamental SQL skills using an imaginary restaurant's sales data. It consists of two main components:
1. **Data Creation**: A script to create and populate tables with fake restaurant sales data.
2. **Data Analysis**: A script to query the data for insights into menu performance, order trends, and customer preferences.

The project is ideal for showcasing SQL table creation, data insertion, and querying skills.



## Database Schema

### Tables

1. **menu_items**
   - Contains details about menu items, including their name, category, and price.
   - **Columns**:
     - `menu_item_id` (Primary Key): Unique identifier for each menu item.
     - `item_name`: Name of the menu item.
     - `category`: Type of cuisine or dish.
     - `price`: Cost of the menu item.

2. **order_details**
   - Contains details about customer orders, including items ordered and their timestamps.
   - **Columns**:
     - `order_details_id` (Primary Key): Unique identifier for each order detail.
     - `order_id`: Identifier for a specific order.
     - `order_date`: Date of the order.
     - `order_time`: Time of the order.
     - `item_id`: Identifier for the ordered menu item (Foreign Key linked to `menu_items.menu_item_id`).

## Skills Demonstrated

- **Database Design**: Creating and populating tables.
- **Data Manipulation**: Writing and running SQL queries to extract insights.
- **Joins and Aggregations**: Combining data from multiple tables and performing aggregations.
- **Advanced Querying**: Using subqueries, filters, and grouping for deeper analysis.


## Questions Answered

### Menu Analysis
- How many items are on the menu?
- What are the least and most expensive items on the menu?
- How many Italian dishes are on the menu? What are the least and most expensive Italian dishes?
- How many dishes are in each category?
- What is the average price of dishes in each category?

### Order Trends
- What is the date range of the orders in the dataset?
- How many orders and items were made within this date range?
- Which orders had the most number of items?
- How many orders had more than 12 items?

### Combined Analysis (Menu + Orders)
- What were the least and most ordered items? What categories were they in?
- What were the top 5 orders that spent the most money?
- What specific items were purchased in the highest spending order?
- Which categories were most popular in the top 5 highest spending orders?

