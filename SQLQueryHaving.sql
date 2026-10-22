select * from Employee

----2 or more employees irukkura departments mattum show pannu.---

Select Departmentname , count(*) from Employee group by Departmentname Having count(*) >= 2;


----Total salary 70000-ku mela irukkura departments mattum show pannu.
Select Departmentname , Sum(Salary) From Employee group by Departmentname Having Sum(Salary) > 70000;

-----Average salary 40000-ku mela irukkura departments mattum show pannu.
Select Departmentname , AVG(Salary) From Employee Group by Departmentname Having AVG(Salary) > 40000;


-----Highest salary 50000-ku mela irukkura departments mattum show pannu.
Select Departmentname , MAX(Salary) From Employee Group by Departmentname Having MAX(Salary) > 50000;


----Salary > 30000 employees-ai consider panni, department-wise count pannu; count >= 2 irukkura departments mattum show pannu.
select Departmentname , Count(*) from Employee where Salary > 30000 Group by Departmentname Having Count(*) >= 2;


------Age >= 25 employees-ai consider panni, department-wise average salary calculate pannu; average salary >= 45000 irukkura departments mattum show pannu.
Select Departmentname , AVG(Salary) From Employee Where Age >= 25 Group by Departmentname Having AVG(Salary) >= 45000;