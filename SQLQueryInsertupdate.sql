Select * From NewEmployee

---1. Employee table-la ID 110, name 'Priya', age 26 insert pannu.
Insert INTO Employee (EmployeeID , EmployeeName , Age)
Values ( 110, 'Priya' , 26);

---2. ID 111, name 'Mani', salary 35000 insert pannu.
Insert INTO Employee ( EmployeeID , EmployeeName , Salary ) values ( 111, 'Mani' , 35000);

---ID 112, name 'Karthik', city 'Madurai' insert pannu.
Insert INTO Employee ( EmployeeID , EmployeeName , City) Values ( 112 , 'Karthik' , 'Madurai');


---Ore query-la ID 113 name 'Asha', ID 114 name 'Vijay' insert pannu.
Insert Into Employee ( EmployeeID , EmployeeName ) Values ( 113 , 'Asha'),
( 114 , 'Vijay');

---5. Email NULL-ah irukkura employee ID 115, name 'Bala' insert pannu.
insert into Employee ( EmployeeID , EmployeeName , Email ) Values ( 115 , 'Bala' , Null) 


insert into NewEmployee ( EmployeeID , EmployeeName ) 
Select EmployeeID , EmployeeName from Employee;

Create Table NewEmployee
( EmployeeID INT,
EmployeeName Varchar(100) Unique
);

---1. EmployeeID = 101 irukkura employee-oda Salary-ai 50000-a update pannu.
Update Employee SET Salary = 50000 where EmployeeID = 101


---2. EmployeeName = 'Priya' irukkura employee-oda City-ai 'Chennai'-a change pannu.
Update Employee Set City ='Chennai' Where EmployeeName = 'Priya';

--3. EmployeeID = 102 employee-oda Salary-ai 45000-um City-ai 'Madurai'-yum ore query-la update pannu.
Update Employee SET Salary = 45000 , City ='Madurai' Where Employeeid = 102;


----5. Salary 30000-kku keezha irukkura employees-oda salary-ai 10% increase pannu.
Update Employee SEt Salary = Salary *1.10 where Salary < 30000;

----3. Email NULL-ah irukkura employee-oda Email-ai 'unknown@example.com'-a update pannu.
Update Employee SET Email = ' unknown@example.com' Where email is Null;

-----1. Chennai-la irukkura QA employees-oda salary-ai 45000-a update pannu.
Update Employee SET Salary = 45000 Where City = 'Chennai' and DepartmentName = 'QA';


--2. Bangalore illa Hyderabad-la irukkura employees-oda City-ai 'Chennai'-a update pannu.
Update Employee Set City = 'Chennai' where City = 'Bangalore' or City = 'Hyderabad';

---4. Salary 25000-kku keezha irukkura employees-oda salary-ai 30000-a update pannu, aana City Chennai-a irukkanum
Update Employee SET Salary = 30000 where Salary < 25000 and City ='Chennai';