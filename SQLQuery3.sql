select Distinct City from Employee 

select Distinct Departmentname from Employee

Select Distinct City From Employee where Departmentname = 'QA';

Select Distinct Departmentname from Employee Where City  in ('chennai' , 'Bangalore' , 'Madurai');

Select Distinct City , Departmentname From Employee;

Select Distinct Departmentname from Employee where City = 'Chennai';

Select Distinct City from Employee Where Salary > 40000;

Select Distinct City From Employee;

Select Distinct City From Employee where Departmentname in ('QA' , 'HR' ) and City in ('Chennai' , 'Madurai');

Select Distinct City , Departmentname From Employee where Age >= 25 and Salary >= 40000;

SELECT *
FROM Employee
ORDER BY Departmentname ASC, Salary DESC;

select * from Employee order by Salary Desc;

select * from Employee where City = 'Chennai' order by Salary asc;

Select * from Employee where Departmentname = 'QA' order by EmployeeName asc;

Select * from employee order by Age desc;

Select * from Employee order by Departmentname asc , Salary desc;

select * from employee where Salary > 40000 order by Salary desc;

select distinct City from Employee order by City asc;

Select * from Employee where city in ('Chennai' , 'Bangalore') order by Salary desc;


----Overall Upto Orderby practice------

-----Chennai city-la irukkura QA employees மட்டும் display pannanum-----

select * from Employee where City = 'Chennai' and Departmentname ='QA';

-----QA department-la irukkura employees, age 25 or above, salary 40000-ku mela irukkanum------

Select * from Employee where Departmentname ='QA' and Age >= 25 and Salary >40000;

-----Chennai, Bangalore, Madurai cities-la irukkura employees-a salary highest → lowest order-la display pannanum-----

Select * from Employee where City In ('Chennai' , 'Bangalore' , 'Madura') order by Salary desc;

------Salary 40000 to 60000 range-la irukkura, but QA department-ku belong aagaadha employees-a display pannanum------

Select * From Employee Where Salary between 40000 and 60000 and Departmentname <> 'QA';

------Employee name D-la start aagura employees மட்டும், salary lowest → highest order-la display pannanum.-------

Select * From Employee Where EmployeeName like 'D%' order by Salary Asc;

------QA and HR departments-la work panra employees irukkura unique cities மட்டும் display pannanum. Cities A → Z order-la irukkanum-------

Select Distinct City from Employee where Departmentname in ('QA' , 'HR' ) order by City asc;

-----Email value missing-a irukkura employees மட்டும் display pannanum------

Select * from Employee where Email is null;

-----All employees-a first Department A → Z sort pannanum.Same department-la irukkura employees-ku Salary highest → lowest sort pannanum.------

Select * from Employee order by Departmentname asc , Salary Desc;

-----Application-la Salary > 40000 filter select pannumbothu, Chennai or Bangalore employees மட்டும் varanum.And result Salary highest → lowest order-la varanum.Database-la validate panna query write pannu--------

Select * from Employee where Salary > 40000 and City In ( 'Chennai' , 'Bangalore' ) order by Salary Desc;

-----Application-la employee search screen irukku.

-----Requirements:

-----City = Chennai / Bangalore / Madurai
-----Department = QA / Development
-----Age >= 25
-----Salary >= 40000
-----Employee name D-la start aaganum
-----Duplicate City + Department combinations remove pannanum
-----Result Department A → Z
-----Same Department-la Salary highest → lowest

Select Distinct City , Departmentname, Salary from Employee where City In ('Chennai' ,'Bangalore' , 'madurai' ) 
and Departmentname in ('QA' , 'Developemnt') 
and Age >= 25 
and Salary >= 40000 
and EmployeeName like  'D%' 
order by Departmentname Asc , Salary desc;





