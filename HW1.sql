CREATE TABLE Barca (
     SNO TEXT PRIMARY KEY,
     SNAME TEXT,
     AGE INTEGER,
     COUNTRY TEXT
);

INSERT INTO Barca (SNO,SNAME,AGE,COUNTRY) VALUES
('S1','Yamal',19,'Spain'),
('S2','Raphinia',29,'Brazil'),
('S3','Gordon',26,'England'),
('S4','Adeyemi',25,'Germany'),
('S5','Fermin','30','Spain');

SELECT * FROM Barca
WHERE COUNTRY = Spain;