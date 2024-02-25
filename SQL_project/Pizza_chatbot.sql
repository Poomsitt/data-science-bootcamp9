-- customers_tble --

create table customers 
  (
  customers_id int unique,
  customers_name varchar (30),
  customers_brithdat date,
  customers_email varchar (50)
  );

-- insert_into_customers_tble --

insert into customers values
  (1,'poom','1998-01-02','poom@gmail.com'),
  (2,'mook','1995-05-15','mook@gmail.com'),
  (3,'petch','1999-03-16','petch@outlook.com'),
  (4,'ing','2015-10-02','ing@yahoo.com'),
  (5,'bood','2000-12-06','toey@gmail.com');
-- create_order_table --
create table orders
  (
  orders_id int unique,
  orders_date date,
  orders_set int
  );

-- insert_orders_table --
insert into orders values
  (1,'2023-01-01',003),
  (2,'2023-03-15',001),
  (3,'2023-03-25',002),
  (4,'2023-05-15',002),
  (5,'2023-12-11',001);

-- create_menus_table --
create table menus (
  menus_id int unique,
  menus_name varchar (50),
  menus_price real
);

-- insert_menus_table --
insert into menus values
  (001,'pizza,Coke,French fries',299),
  (002,'chicken,coke',199),
  (003,'pizza,Coke,French fries,chicken',499);


-- Join_table -- 
.mode box
/*select * from customers as cus
  join orders as od
  on cus.customers_id = od.orders_id
  join menus as mnu
  on od.orders_set = mnu.menus_id;*/

-- select_table_from_joind --
.mode box
select 
  cus.customers_name,
  od.orders_date,
  mnu.menus_name,
  mnu.menus_price 
from
  customers as cus
join orders as od
on cus.customers_id = od.orders_id
join menus as mnu
on od.orders_set = mnu.menus_id;

-- Aggregate Functions --
.mode box
select 
  count (Customers_id) as number_of_customer,
  SUM (menus_price) as total_revenue,
  AVG (menus_price) as average_menus_price,
  MAX (menus_price) as max_menus_price,
  MIN (menus_price) as min_menus_price
from
  customers as cus
join orders as od
on cus.customers_id = od.orders_id
join menus as mnu
on od.orders_set = mnu.menus_id;

-- select --
.mode box
  
select customers_name from (select * from
    customers as cus
  join orders as od
  on cus.customers_id = od.orders_id
  join menus as mnu
  on od.orders_set = mnu.menus_id)
  where orders_date <= '2023-05';
