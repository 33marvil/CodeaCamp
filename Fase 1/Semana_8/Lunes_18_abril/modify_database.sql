Paso 1
#1.-First query
insert into orders
  (orderdate, requireddate, shippeddate)
  values('12-09-2016', '12-10-2016', '12-11-2016');
#add to table: 21   12-09-2016  12-10-2016    12-11-2016 
#2.-Second query
insert into orderdetails 
  (productid, unitprice,quantity,orderid)
  values('28', '12345678', '2', '21');
#add to table: 48             21          28          12345678.0  2 
Paso 2
#First query insert, create new customer
insert into customers
  (companyname, contactname, contacttitle, address, city, state)
  values('AldoCorps', 'Aldo Fermin M', 'Developer expert', '32 valle del tajo', 'Mexico', 'DF');
#Add to table: 6  AldoCorps  Aldo Fermin M   Developer ex  32 valle del tajo   Mexico      DF 
#second query select all the orders from Floor Co. 
select orderid from orders 
  where customerid = 3;
  #return OrderID: 6         10        11        16        18        20  
#third query update change the orders from 2013 to the new company
update orders set customerid = 6 where orderdate >=2013 and customerid = 3;

Paso 3
#Delete the dates from orders, orderdetails and customer when the company name  is slots carpet;