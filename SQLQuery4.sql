


---Operator Practice---

SELECT * FROM Employee where City ='Chennai' and Departmentname ='QA' and Salary > 40000;

Select * from Employee Where Departmentname In ('QA' , 'Development') and Age between 25 and 30;

Select * from Employee Where City Not in ('Chennai','Bangalore','Madurai');

Select *from Employee Where Employeename Like 'D%' and Salary >= 40000;

Select * from Employee Where Not Departmentname='QA' and Salary > 45000;

select * from Employee Where City ='Chennai' and Departmentname = 'QA' and Age >= 25;

Select * from Employee Where Salary between 40000 and 60000 and City In ('Chennai' , 'Madurai');

Select * from Employee Where EmployeeID In (101,106,109);

Select * from Employee where Departmentname <> 'HR' and Salary > 35000;

Select * from Employee where City In ( 'Chennai','Bangalore','Madurai') and Departmentname in ('QA','Hr')  and Age >=25 and Salary >=40000;