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
