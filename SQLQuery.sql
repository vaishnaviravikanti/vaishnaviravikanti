Create table Salesman16(
Salesman_id INT NOT NULL,
name varchar(30),
city varchar(30),
commission FLOAT,
);
Insert into Salesman16 Values
(5001,'James Hoog','Newyork',0.15),
(5002,'Nail Knite','Paris',0.13),
(5005,'Pit Alex','London',0.11),
(5006,'Mc Lyon ', 'Paris',0.14),
(5003,'Lauson Hen',' ' ,0.12),
(5007,'Paul Adam ','Rome',0.13);

select DISTINCT * from Salesman16;

Create table Orders(
ord_no INT,
purch_amt FLOAT,
ord_date Date,
Customer_id INT,
Salesman_id INT);

Insert into Orders Values
(70001,150.5,'2012-10-05',3005,5002),
(70009,270.65,'2012-09-10',3001,5005),
(70002,65.26,'2012-10-05',3002,5001),
(70004,110.5,'2012-08-17',3009,5003),
(70007,948.5,'2012-09-10',3005,5002),
(70005,2440.6,'2012-07-27',3007,5001),
(70008,5760,'2012-09-10',3002,5001),
(70010,1983.43,'2012-10-10',3004,5006),
(70003,2480.4,'2012-10-10',3009,5003),
(70012,250.45,'2012-06-27',30008,5002),
(70011,75.29,'2012-08-17',3003,5007),
(70013,3045.6,'2012-04-25',3002,5001);
 select * from Orders;

Create table Customer10(
customer_id INT,
cust_name varchar(30),
city varchar(30),
grade INT,
salesman_id INT);

Insert into Customer10 Values
(3002,'Nick Rimando','New York',100,5001),
(3005,'Graham Zusi','California',200,5002),
(3001,'BradGuzan','London',NULL,5005),
(3004,'Fabian Johns','Paris',300,5006),
(3007,'Brad Davis','NewYork',200,5001),
(3009,'GeoffCamero','Berlin',100,5003),
(3008,'Julian Green','London',300,5002),
(3003,'Jozy Altidor','Moscow',200,5007);

select * from Customer10;

2nd Query 

select name,city from Salesman16 where city='Paris';

select s.name AS "SalesMan",s.city,b.cust_name AS "SalesMan"  from Salesman16 s,Customer10 b
where b.city=s.city
AND s.city='Paris';

3rd Query

select a.*,b.cust_name from orders a,Customer10 b where b.customer_id=a.customer_id
AND a.ord_date='2012-08-17';

4th Query

select DISTINCT Salesman_id,name from Salesman16 a
where 1<(select COUNT(*) from customer where salesman_id=a.salesman_id);

5th Query

select * from orders a where purch_amt>=(select AVG(purch_amt) from orders b where b.customer_id =a.customer_id);

6th Query

select DISTINCT Salesman_id,name,city,commission from Salesman16 a
where 1>=(select COUNT(*) from customer where salesman_id=a.salesman_id);

7th Query



8th Query

select DISTINCT salesman_id ,name,city ,Commission from Salesman16 where CITY IN(select city from Customer10);





