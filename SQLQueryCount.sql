select * from Employee

---Employee table-la total employees count pannu.

Select COUNT(*) From Employee


----QA department-la ethana employees irukkanga?
Select count(*) From Employee where Departmentname ='QA';

----Salary > 40000 earn panra employees count pannu.
Select count (*) from Employee where Salary > 40000;

----Email NULL illaadha employees count pannu
Select Count(Email) from Employee;

---Employee table-la unique cities count pannu
Select Count(Distinct City) From Employee


----QA department-la irukkura unique cities count pannu
Select Count(Distinct City) from Employee Where Departmentname = 'QA';


---Chennai and Bangalore-la irukkura employees total count pannu
Select Count(*) from Employee Where City in ('Chennai' , 'Bangalore');

-----Application-la:

----Age 25 or above + Salary 40000-ku mela + Department QA

----indha conditions satisfy panra employees ethana per irukkanga nu database-la validate pannanum

Select Count(*) From Employee where Age>=25 and Salary > 40000 and Departmentname ='QA';