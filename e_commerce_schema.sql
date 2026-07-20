-- customers

CREATE TABLE `customers` (
  `customer_id` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL
);

-- orderdetails 

CREATE TABLE `orderdetails` (
  `order_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `price_per_unit` int DEFAULT NULL
);

-- orders

CREATE TABLE `orders` (
  `order_id` int DEFAULT NULL,
  `order_date` varchar(255) DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `total_amount` int DEFAULT NULL
)
;
-- products

CREATE TABLE `products` (
  `product_id` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `price` int DEFAULT NULL
) 





