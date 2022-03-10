--1. Write a SQL statement to find the total purchase amount of all orders.
select sum(purch_amt) as [total purchase] from orders;
select purch_amt from orders; 

--2.Write a SQL statement to find the average purchase amount of all orders.
select avg(purch_amt) as [ Average total purchase] from orders;

--3.Write a SQL statement to find the number of salesmen currently listing for all of their customers
select count(salesman_id) as [Total Count of Salesman]from salesman

--4. Write a SQL statement to know how many customer have listed their names.
select count(customer_id) as[Total Customer Count] from customer;

--5. Write a SQL statement find the number of customers who gets at least a gradation for his/her performance

select count(customer_id) as[Total graded Customer]from customer where grade IS NOT null;


--6.  Write a SQL statement to get the maximum purchase amount of all the orders.
select max(purch_amt) as [Maximum purchase Amt] from orders;


--7. Write a SQL statement to get the minimum purchase amount of all the orders 

select min(purch_amt) as [Maximum purchase Amt] from orders;

--8. Write a SQL statement which selects the highest grade for each of the cities of the customers.    
select city, max(grade) as [maximum grade]from customer group by city;

--9. Write a SQL statement to find the highest purchase amount ordered by the each customer with their ID and highest purchase amount.  

select customer_id, max(purch_amt) as [Maximum Purchase Amount] from orders group by customer_id;

--10. Write a SQL statement to find the highest purchase amount ordered by the each customer on a particular date with their ID, order date and highest purchase amount.

select customer_id, ord_date, max(purch_amt) as[maximum purchase] from orders group by customer_id, ord_date;


--(11) Write a SQL statement to find the highest purchase amount on a date '2012-08-17' for each salesman with their ID.

select salesman_id, ord_date ,max(purch_amt) as [Maximum Purchase Amount] from orders where ord_date = '2012-08-17' group by salesman_id, ord_date;

--(12) Write a SQL statement to find the highest purchase amount with their ID and order date, for only those customers who have highest purchase amount in a day is more than 2000.

select customer_id, ord_date, max(purch_amt) as [Maximum] from orders where purch_amt > 2000  group by customer_id ,ord_date;


--(13) Write a SQL statement to find the highest purchase amount with their ID and order date, for those customers who have a higher purchase amount in a day is within the range 2000 and 6000 

select customer_id, ord_date, max(purch_amt) as [Maximum] from orders group by customer_id, ord_date  HAVING  max(purch_amt) > 2000 and  MAX(purch_amt) < 6000;

--(14) Write a SQL statement to find the highest purchase amount with their ID and order date, for only those customers who have a higher purchase amount in a day is within the list 2000, 3000, 5760 and 6000.   
select customer_id, ord_date, max(purch_amt) as [Maximum] from orders group by customer_id, ord_date  HAVING  max(purch_amt) = 2000 or  MAX(purch_amt) = 3000 or max(purch_amt) = 5760 or max(purch_amt) = 6000;

--(15) Write a SQL statement to find the highest purchase amount with their ID, for only those customers whose ID is within the range 3002 and 3007. 
select customer_id, max(purch_amt) as [Maximum] from orders group by customer_id having customer_id >=3002 and customer_id <=3007;

--(16) Write a SQL statement to display customer details (ID and purchase amount) whose IDs are within the range 3002 and 3007 and highest purchase amount is more than 1000.
select customer_id, max(purch_amt) from orders group by customer_id having customer_id between 3002 and 3007  and max(purch_amt) > 1000;

--(17) Write a SQL statement to find the highest purchase amount with their ID, for only those salesmen whose ID is within the range 5003 and 5008. 
select salesman_id, max(purch_amt) from orders group by salesman_id having salesman_id  between 5003 and 5008;

--(18) Write a SQL statement that counts all orders for a date August 17th, 2012.
select count(ord_no) as [Order Count] from orders where ord_date = '2012-08-17';

--(19) Write a SQL statement that count the number of salesmen for whom a city is specified. Note that there may be spaces or no spaces in the city column if no city is specified. 
select count(salesman_id)as [SalesMan Count] from salesman where city is not null;

--(20) Write a query that counts the number of salesmen with their order date and ID registering orders for each day. 
select count(salesman_id), salesman_id, ord_date from orders group by salesman_id, ord_date;


--(21) Write a SQL query to calculate the average price of all the products. 
select avg(PRO_PRICE) from item_mast;

--(22) Write a SQL query to find the number of products with a price more than or equal to Rs.350. 

select count(PRO_ID) from item_mast where PRO_PRICE >= 350;


--(23) Write a SQL query to display the average price of each company's products, along with their code. 

select avg(PRO_PRICE),PRO_COM from item_mast group by PRO_COM;


--(24) Write a query in SQL to find the sum of the allotment amount of all departments.
select sum(DPT_ALLOTMENT) as [Sum] from emp_department;

--(25) Write a query in SQL to find the number of employees in each department along with the department code. 
select count(EMP_DEPT), EMP_DEPT from emp_details group by EMP_DEPT;


--inner join 
select emp_details.EMP_IDNO, emp_details.EMP_FNAME, emp_department.DPT_NAME from emp_details inner join emp_department on emp_details.EMP_DEPT = emp_department.DPT_CODE;

--left Join 
select emp_details.EMP_IDNO, emp_details.EMP_FNAME, emp_department.DPT_NAME from emp_details left join emp_department on emp_details.EMP_DEPT = emp_department.DPT_CODE;

--Right Join
select emp_details.EMP_IDNO, emp_details.EMP_FNAME, emp_department.DPT_NAME from emp_details Right join emp_department on emp_details.EMP_DEPT = emp_department.DPT_CODE;

--Full Join 
select emp_details.EMP_IDNO, emp_details.EMP_FNAME, emp_department.DPT_NAME from emp_details Full join emp_department on emp_details.EMP_DEPT = emp_department.DPT_CODE;

--cross Join
select emp_details.EMP_IDNO, emp_details.EMP_FNAME, emp_department.DPT_NAME from emp_details cross join emp_department;