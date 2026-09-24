CREATE TABLE Employee(

EmployeeID INT PRIMARY KEY,
EmployeeName VARCHAR(100),
Email VARCHAR(100) UNIQUE,
Age INT,
Salary DECIMAL (10,2),
City VARCHAR (50),
Departmentname VARCHAR(100),

);



CREATE TABLE Department(
Departmentname VARCHAR (100),
DepartmentID INT 
);

INSERT INTO Employee VALUES
(2, 'Arun', 'arun@gmail.com', 28, 50000, 'Bangalore', 'Development'),
(3, 'Priya', 'priya@gmail.com', 24, 35000, 'Chennai', 'QA'),
(4, 'Kumar', 'kumar@gmail.com', 30, 60000, 'Coimbatore', 'Development'),
(5, 'Meena', 'meena@gmail.com', 26, 45000, 'Madurai', 'HR');


SELECT * FROM Employee

SELECT * FROM Department


SELECT * From Employee WHERE City = 'Chennai' or City = 'Madurai';

SELECT *
FROM Employee
WHERE NOT Departmentname = 'QA' and City = 'Chennai';

SELECT * From Employee WHERE City NOT IN ('Chennai', 'Madurai');

SELECT *
FROM Employee
WHERE Salary BETWEEN 40000 AND 50000;

select * from Employee where EmployeeName Like '%D%';


Select * From Employee where City = 'Chennai' and Departmentname = 'QA';

Select * From Employee Where City = 'Chennai' or City = 'Bangalore';

Select * From Employee Where Not Departmentname = 'QA';

Select * from Employee where Salary between 40000 and 50000;

Select * from Employee where EmployeeName like 'D%';

Select * from Employee where City In ( 'Chennai' , 'Madurai' , 'Bangalore' );

Select * from Employee Where Email is Null;

Select Employeename , Salary from Employee Where City = 'Chennai';

select * from Employee where Salary Between 40000 and 50000 and Departmentname = 'QA';

Select * From Employee Where City In ('Chennai', 'Madurai', 'Bangalore') and Age>=25; 

Select * From Employee Where Salary > 40000 and NOT Departmentname = 'Development'; 

Select * From Employee where EmployeeName Like 'D%';

Select * from Employee Where EmployeeID =101;