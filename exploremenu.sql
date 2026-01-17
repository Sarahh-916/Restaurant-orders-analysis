-- 1. View the menu_items Table
SELECT * FROM menu_items;

-- 2. Find the number of items on the menu
SELECT count(*) FROM menu_items;

-- 3. What are the least and most expensive items on the menu?
SELECT * FROM menu_items
ORDER by price;

SELECT * FROM menu_items
ORDER by price DESC;

-- 4. How many italian dishes are on the menu?
SELECT count(*) FROM menu_items
WHERE category = 'Italian';

-- 5. What are the least and most expensive Italian dishes on the menu?
SELECT * FROM menu_items
WHERE category = 'Italian'
ORDER by price;

SELECT * FROM menu_items
WHERE category = 'Italian'
ORDER by price DESC;

-- 6. How many dishes are in each category?
SELECT category,count(menu_item_id) AS num_dishes
FROM menu_items
GROUP by category;

-- 7. What is the average dish price within each category?
SELECT category, avg(price) as avg_dish_price
FROM menu_items
GROUP by category;