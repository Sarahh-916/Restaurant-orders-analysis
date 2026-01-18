-- 1. Combine the menu_items and order_details tables into a single table.
SELECT * FROM menu_items;
SELECT * FROM order_details;

SELECT * 
FROM order_details od LEFT JOIN menu_items mi
on od.item_id=mi.menu_item_id;

-- 2. What were the least and most ordered items ? What categories were they in?
SELECT item_name,category,count(order_details_id) as num_purchases 
FROM order_details od LEFT JOIN menu_items mi
on od.item_id=mi.menu_item_id
GROUP by item_name,category
ORDER by num_purchases;

SELECT item_name,category,count(order_details_id) as num_purchases 
FROM order_details od LEFT JOIN menu_items mi
on od.item_id=mi.menu_item_id
GROUP by item_name,category
ORDER by num_purchases DESC;

-- 3. What were the top 5 orders thst spent the most money?
SELECT order_id,sum(price) as tot_spent
FROM order_details od LEFT JOIN menu_items mi
on od.item_id=mi.menu_item_id
GROUP by order_id
ORDER by tot_spent DESC
LIMIT 5;

-- 4. View the details of the highest spend order. What insights can you gather from that?
SELECT order_id,category,count(item_id) as num_items 
FROM order_details od LEFT JOIN menu_items mi
on od.item_id=mi.menu_item_id
WHERE order_id IN (440,2075,1957,330,2675)
GROUP by order_id,category;








