CREATE TABLE IF NOT EXISTS Salesman (
    Salesman_id TEXT PRIMARY KEY,
    name TEXT,
    city TEXT,
    Comission TEXT
);

INSERT INTO Salesman
(Salesman_id, name, city, Comission)
VALUES
("5101", "David Miller", "Tokyo", "0.15"),
("5102", "Emma Wilson", "Dubai", "0.13"),
("5103", "Ryan Smith", "London", "0.12"),
("5104", "Sophia Brown", "Paris", "0.14"),
("5105", "Liam Davis", "Dubai", "0.11"),
("5106", "Noah Taylor", "Sydney", "0.10");

CREATE TABLE IF NOT EXISTS Customer (
    Customer_id TEXT PRIMARY KEY,
    cust_name TEXT,
    city TEXT,
    grade TEXT,
    Salesman_id TEXT
);

INSERT INTO Customer
(Customer_id, cust_name, city, grade, Salesman_id)
VALUES
("4101", "Oliver", "Tokyo", "200", "5101"),
("4102", "Ava", "Dubai", "300", "5102"),
("4103", "Ethan", "London", "100", "5103"),
("4104", "Mia", "Rome", "200", "5104"),
("4105", "Lucas", "Dubai", "300", "5105"),
("4106", "Isabella", "Berlin", "100", "5106"),
("4107", "Mason", "Paris", "200", "5104"),
("4108", "Amelia", "Sydney", "", "5106");

CREATE TABLE IF NOT EXISTS Orders (
    ord_no TEXT PRIMARY KEY,
    purch_amt TEXT,
    ord_date TEXT,
    customer_id TEXT,
    Salesman_id TEXT
);

INSERT INTO Orders
(ord_no, purch_amt, ord_date, customer_id, Salesman_id)
VALUES
("81001", "350.50", "2025-01-05", "4101", "5101"),
("81002", "620.75", "2025-01-10", "4102", "5102"),
("81003", "125.00", "2025-02-15", "4103", "5103"),
("81004", "890.25", "2025-02-20", "4104", "5104"),
("81005", "450.00", "2025-03-12", "4105", "5105"),
("81006", "720.50", "2025-03-18", "4106", "5106"),
("81007", "280.00", "2025-04-02", "4107", "5102");

SELECT Customer.cust_name, Salesman.name, Salesman.city
FROM Customer
JOIN Salesman
ON Customer.city = Salesman.city;

SELECT Customer.cust_name, Salesman.name
FROM Customer
JOIN Salesman
ON Customer.Salesman_id = Salesman.Salesman_id;

SELECT Orders.ord_no,
       Customer.cust_name,
       Orders.customer_id,
       Orders.Salesman_id
FROM Orders
JOIN Customer
ON Orders.customer_id = Customer.Customer_id
JOIN Salesman
ON Orders.Salesman_id = Salesman.Salesman_id
WHERE Customer.city <> Salesman.city;
