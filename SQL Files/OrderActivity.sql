use pizza;

create table Dash1
as
SELECT
od.order_id,
# od.pizza_id,
pt.pizza_type_id,
od.quantity,
p.price,
p.size,
pt.category,
o.time,
o.date
FROM 
order_details od
LEFT JOIN pizzas p ON od.pizza_id=p.pizza_id
LEFT JOIN pizza_types pt ON pt.pizza_type_id=p.pizza_type_id
LEFT JOIN orders o ON od.order_id=o.order_id