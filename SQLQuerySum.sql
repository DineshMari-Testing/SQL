select * from Employee


----Employee table-la all employees-oda total salary calculate pannu.

select sum(salary) from Employee

----QA employees-oda total salary calculate pannu.
Select Sum(Salary) from Employee where Departmentname = 'QA';

----Salary > 40000 irukkura employees-oda total salary calculate pannu.

Select Sum(Salary) from Employee where Salary >40000;

---Chennai city employees-oda total salary calculate pannu
Select sum(Salary) from Employee Where City = 'Chennai';

----QA department + Chennai city employees-oda total salary calculate pannu.
Select Sum(Salary) from Employee Where Departmentname ='QA' and City ='Chennai';


--QA and Development departments employees-oda total salary calculate pannu

Select sum(Salary) from Employee where Departmentname in ('QA','Development');


--Age >= 25 and Salary >= 40000 conditions satisfy panra employees-oda total salary calculate pannu.

Select Sum(Salary) from Employee where Age >= 25 and Salary >=40000;

--Chennai + Bangalore employees-oda Total Salary

---nu display pannudhu.

----Database-la validate panna single SQL query write pannu.

Select Sum(Salary) from Employee where City in ('Chennai' , 'Bangalore');


-------------------------------------AVG------------------------------------

----All employees-oda average salary find pannu.

Select AVG(Salary) from Employee

----QA department-oda average salary find pannu

Select AVG(Salary) from Employee where Departmentname ='QA';

----Salary 40000-ku mela irukkura employees-oda average salary find pannu

Select AVG (Salary) From Employee where Salary > 40000;

-----Chennai employees-oda average salary find pannu

Select AVG (Salary) from Employee where City ='Chennai';

---QA department + Chennai employees-oda average salary find pannu.

Select AVG (Salary) From Employee Where Departmentname='QA' and City ='Chennai';

----QA or Development department employees-oda average salary find pannu

Select AVG(Salary) From Employee Where Departmentname ='QA' or Departmentname = 'Developement';

---Age 25 or above AND Salary 40000 or above irukkura employees-oda average salary find pannu

Select AVG(Salary) from Employee where Age >= 25 and Salary >= 40000;

---Chennai or Bangalore employees-oda average salary find pannu.

Select AVG (Salary) from Employee where City = 'Chennai' or City = 'Bangalore';



----------------------------------------------MIN() & MAX()---------------------------------

----All employees-la lowest salary find pannu.

Select MIN (Salary) from Employee;

----All employees-la highest salary find pannu.

Select MAX(Salary) from Employee;

-----QA department-la lowest salary find pannu

Select MIN (Salary) from Employee where Departmentname ='QA';

----Development department-la highest salary find pannu

Select MAX(Salary) from Employee where Departmentname ='Development';

-----Chennai employees-la highest salary find pannu

Select MAX ( Salary ) From Employee Where City = 'Chennai';

-----QA department + Chennai-la lowest salary find pannu

Select MIn (Salary) From Employee where Departmentname = 'QA' and City ='Chennai';

----Age 25 or above irukkura employees-la highest salary find pannu

Select MAX (Salary) From Employee where Age >= 25;


----Chennai or Bangalore employees-la lowest salary find pannu

Select MIn (Salary ) from Employee Where City = 'Chennai' or City ='Bangalore';