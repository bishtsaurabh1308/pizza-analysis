select * from pizza_sales

SELECT COUNT(*) FROM pizza_sales;  --- (48620)

-- check total revenue   --  (817860.05)
select sum(revenue) as total_revenue from pizza;

-- check total orders  -- (21350)
select count(distinct(order_id)) from pizza;

-- check top 10 pizzas
select pizza_name, sum(quantity) as total_sold from pizza
group by pizza_name
order by total_sold desc
limit 10

-- pizza_name	                  "total_sold"
-- "The Classic Deluxe Pizza"	     2453
-- "The Barbecue Chicken Pizza"	     2432
-- "The Hawaiian Pizza"	             2422
-- "The Pepperoni Pizza"	         2418
-- "The Thai Chicken Pizza"	         2371
-- "The California Chicken Pizza"	 2370
-- "The Sicilian Pizza"	             1938
-- "The Spicy Italian Pizza"	     1924
-- "The Southwest Chicken Pizza"	 1917
-- "The Big Meat Pizza"	             1914


-- check bottom 10 pizzas
select pizza_name, sum(quantity) as total_sold from pizza
group by pizza_name
order by total_sold asc
limit 10

-- "pizza_name"	                   "total_sold"
-- "The Brie Carre Pizza"	           490
-- "The Mediterranean Pizza"	       934
-- "The Calabrese Pizza"	           937
-- "The Spinach Supreme Pizza"	       950
-- "The Soppressata Pizza"	           961
-- "The Spinach Pesto Pizza"	       970
-- "The Chicken Pesto Pizza"	       973
-- "The Italian Vegetables Pizza"	   981
-- "The Chicken Alfredo Pizza"	       987
-- "The Green Garden Pizza"	           997


-- check monthly sales or trend
select month_name, count(distinct order_id) as total_orders from pizza
group by month, month_name
order by month

-- "month_name"	  "total_orders"
-- "January"	       1845
-- "February"	       1685
-- "March"	           1840
-- "April"	           1799
-- "May"	           1853
-- "June"	           1773
-- "July"	           1935
-- "August"	           1841
-- "September"	       1661
-- "October"	       1646
-- "November"	       1792
-- "December"	       1680


-- check category wise revenue
select category, sum(revenue) as total_revenue from pizza
group by category
order by total_revenue desc

-- "category"	   "total_revenue"
-- "Classic"	     220053.10
-- "Supreme"	     208197.00
-- "Chicken"	     195919.50
-- "Veggie"	         193690.45

select * from pizza_sales