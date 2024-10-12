Use pizza_sale;
select * from pizzas;
select * from pizza_types;
select * from orders;
select * from order_details;

-- Basic:
-- Retrieve the total number of orders placed.
select count(order_id) as Total_order from orders;


-- Calculate the total revenue generated from pizza sales.
SELECT 
    ROUND(SUM(price * quantity), 2) AS total_sale
FROM
    order_details
        JOIN
    pizzas ON order_details.prizza_id = pizzas.pizza_id;


-- Identify the highest-priced pizza.
SELECT 
    pizza_types.name, pizzas.price
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
ORDER BY price DESC limit 1;


-- Identify the most common pizza size ordered.
select size,count(*) as common_size from pizzas group by size;

-- List the top 5 most ordered pizza types along with their quantities.
select pizza_id,pizza_type_id from pizzas join orders on pizzas.pi

-- Intermediate:
-- Join the necessary tables to find the total quantity of each pizza category ordered.
-- Determine the distribution of orders by hour of the day.
-- Join relevant tables to find the category-wise distribution of pizzas.
-- Group the orders by date and calculate the average number of pizzas ordered per day.
-- Determine the top 3 most ordered pizza types based on revenue.

-- Advanced:
-- Calculate the percentage contribution of each pizza type to total revenue.
-- Analyze the cumulative revenue generated over time.
-- Determine the top 3 most ordered pizza types based on revenue for each pizza category.
