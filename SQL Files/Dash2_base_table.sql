use pizza;

CREATE VIEW `Dash2_base` 
AS
SELECT
pt.name,
count(od.order_details_id) as Tot_Orders,
sum(od.quantity) as Tot_Quant,
sum(p.price) as Tot_Cost
FROM 
order_details od
LEFT JOIN pizzas p ON od.pizza_id=p.pizza_id
LEFT JOIN pizza_types pt ON pt.pizza_type_id=p.pizza_type_id
LEFT JOIN orders o ON od.order_id=o.order_id
GROUP BY
pt.name