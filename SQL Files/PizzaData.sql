create database if not exists pizza;

use pizza;

#drop table if exists order_details;

CREATE TABLE `order_details` (
    `order_details_id` int  NOT NULL ,
    `order_id` int  NOT NULL ,
    `pizza_id` varchar(30)  NOT NULL ,
    `quantity` int  NOT NULL ,
    PRIMARY KEY (
        `order_details_id`
    )
);

CREATE TABLE `orders` (
    `order_id` int  NOT NULL ,
    `date` date  NOT NULL ,
    `time` time  NOT NULL ,
    PRIMARY KEY (
        `order_id`
    )
);

CREATE TABLE `pizza_types` (
    `pizza_type_id` varchar(20)  NOT NULL ,
    `name` text  NOT NULL ,
    `category` text  NOT NULL ,
    `ingredients` text  NOT NULL ,
    PRIMARY KEY (
        `pizza_type_id`
    )
);

CREATE TABLE `pizzas` (
    `pizza_id` varchar(30)  NOT NULL ,
    `pizza_type_id` varchar(20)  NOT NULL ,
    `size` text  NOT NULL ,
    `price` float  NOT NULL ,
    PRIMARY KEY (
        `pizza_id`
    )
);

ALTER TABLE `orders` ADD CONSTRAINT `fk_orders_order_id` FOREIGN KEY(`order_id`)
REFERENCES `order_details` (`order_id`);

ALTER TABLE `pizza_types` ADD CONSTRAINT `fk_pizza_types_pizza_type_id` FOREIGN KEY(`pizza_type_id`)
REFERENCES `pizzas` (`pizza_type_id`);

ALTER TABLE `pizzas` ADD CONSTRAINT `fk_pizzas_pizza_id` FOREIGN KEY(`pizza_id`)
REFERENCES `order_details` (`pizza_id`);