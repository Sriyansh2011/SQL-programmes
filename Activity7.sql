CREATE TABLE IF NOT EXISTS Salesman(
  Salesman_id TEXT PRIMARY KEY,
  name TEXT,
  city TEXT,
  Comission TEXT
);
INSERT INTO Salesman(Salesman_id,name,city,Comission) VALUES
("5001","James hoog","New York","0.15"),
("5002","Nail Knite","Paris","0.13"),
("5005","Pit Alex","London","0.11"),
("5006","Mc Lyon","Paris","0.14"),
("5007","Paul Adam","Rome","0.13"),
("5003","Lauson hen","San Jose","0.12");

CREATE TABLE IF NOT EXISTS Customer(
  Customer_id TEXT,
  cust_name TEXT PRIMARY KEY,
  city TEXT,
  grade TEXT,
  Salesman_id TEXT
);

INSERT INTO customer(Customer_id,cust_name,city,grade,Salesman_id) VALUES
 ("3002","Nick","New York","100","5001"),
 ("3007","Brad","New York","200","5001"),
 ("3005","Graham","Calafornia","200","5002"),
 ("3008","Julian","London","300","5002"),
 ("3004","Fabian","Paris","300","5006"),
 ("3009","Geoff","Berlin","100","5003"),
 ("3003","Jozy","Moscow","200","5007"),
 ("3001","Brad Guzan","London","","5005");

 CREATE TABLE IF NOT EXISTS Orders(
  ord_no TEXT PRIMARY KEY,
  purch_amt TEXT,
  ord_date TEXT,
  customer_id TEXT,
  Salesman_id TEXT
);
INSERT INTO Orders(ord_no,purch_amt,ord_date,customer_id,Salesman_id)VALUES
 ("70001","150.5","2012-10-05","3005","5002"),
 ("70009","270.65","2012-9-10","3001","5001"),
 ("70002","65.26","2012-10-05","3002","5003"),
 ("70004","150.5","2012-10-05","3005","5002"),
 ("70006","110.5","2012-08-17","3009","5007"),
 ("70007","948.5","2012-09-10","3005","5005"),
 ("70005","2400.6","2012-07-27","3007","5006");

SELECT customer.cust_name, sales.name,salesman.city FROM Customer
JOIN Salesman ON Customer.city = Salesman.city;

SELECT Customer.cust_name, Salesman,name
FROM Customer
JOIN Salesman ON Customer.Salesman_id = Salesman,Salesman_id;

SELECT Orders.ord_no,Customer.cust_name,Orders.customer_id,Orders.Salesman_id
FROM orders
JOIN Customer ON orders.customer_id = Customer.customer_id
JOIN Salesman ON orders.Salesman_id = Salesman.salesman_id
WHERE Customer.city <> Salesman.city;