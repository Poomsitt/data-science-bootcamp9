-- create_cutomers_table -- 
create table customers (
  customer_id int unique,
  customer_name varchar(30),
  customer_email varchar(50)
);

-- insert_data_to_customer_table --

insert into customers values
 (1,'poom','poom@gmail.com'),
 (2,'mook','mook@gmail.com'),
 (3,'toey','toey@outlook.com'),
 (4,'joey','joey@outlook.com'),
 (5,'tar','tar@yahoo.com');

-- create_orders_table -- 
create table orders (
  customer_id int unique,
  order_id int unique,
  order_date date,
  order_menus_id int
);

-- insert_data_to_order_table --
insert into orders values
 (1,001,'2023-11-01',1),
 (2,002,'2023-11-02',3),
 (3,003,'2023-11-03',2),
 (4,004,'2023-11-04',2),
 (5,005,'2023-11-05',1);

-- create_table_menus_table --
create table menus (
  menus_id int,
  menus_name varchar (30),
  price real
);


-- insert_data_to_menus --
insert into menus values
  (1,'Hawaiian',300),
  (2,'seafood',500),
  (3, 'spicy_chicken',200);

.mode box
/*select * from customers;
select * from orders;
select * from menus;*/

-- joind table -- 
select 
  customers.customer_name,
  orders.order_date,
  menus.menus_name,
  menus.price

  from customers
  join orders
  on customers.customer_id = orders.customer_id
  join menus 
  on orders.order_menus_id = menus.menus_id
  order by 4 DESC;

-- subquery --
select customer_id,customer_name from 
  (select * from customers)
where customer_id = 1;

-- with -- 

with pizza_order as
(select 
  customers.customer_name,
  orders.order_date,
  menus.menus_name,
  menus.price

  from customers
  join orders
  on customers.customer_id = orders.customer_id
  join menus 
  on orders.order_menus_id = menus.menus_id)

select * from pizza_order;

-- aggregate function -- 
with pizza_order as 
  (select 
  customers.customer_name,
  orders.order_date,
  menus.menus_name,
  menus.price

  from customers
  join orders
  on customers.customer_id = orders.customer_id
  join menus 
  on orders.order_menus_id = menus.menus_id)
select menus_name, 
  MIN(price)
from pizza_order;
