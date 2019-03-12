select * from demo_customers;

select * from demo_orders;

select demo_customers.customer_id, cust_last_name, order_total from demo_customers 
inner join demo_orders on demo_customers.customer_id = demo_orders.customer_id 
where demo_customers.customer_id between 2 and 5 order by order_total desc;

select demo_orders.ORDER_TIMESTAMP, cust_last_name, order_total from demo_customers 
inner join demo_orders on demo_customers.customer_id = demo_orders.customer_id 
where demo_orders.ORDER_TIMESTAMP between '01-OCT-15' and '31-OCT-15' 
order by order_total desc;

insert into demo_customers (cust_first_name,cust_last_name) values ('Bart','Simpson');

select * from demo_customers; 

delete from demo_customers where cust_last_name = 'Simpson'; 

select * from demo_customers;