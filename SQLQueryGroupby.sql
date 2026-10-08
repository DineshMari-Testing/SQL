-------------------------------------------Group By---------------------------

---Each department-la ethana employees irukkanga?
Select Departmentname, count(*) from Employee group by Departmentname;


--Each department-oda total salary enna?

Select Departmentname , Sum(Salary) from Employee group by Departmentname;

----Each department-oda average salary enna?

Select Departmentname , AVG(Salary) From Employee group by Departmentname;

---Each city-la ethana employees irukkanga?

Select City , Count(*) from Employee group by City;

----Each department-la lowest salary enna

Select Departmentname , MIN(Salary) from Employee Group by Departmentname;

--Each department-la highest salary enna?

Select Departmentname , MAX(Salary) from Employee Group by Departmentname;


----Salary > 40000 irukkura employees-ai department-wise count pannu

Select Departmentname , Count(*) from Employee Where Salary > 40000 group by Departmentname;


----Salary > 40000 irukkura employees-oda department-wise total salary find pannu.

Select Departmentname , Sum(Salary) from Employee Where Salary > 40000 group by Departmentname;

----Age >= 25 irukkura employees-oda department-wise average salary find pannu

Select Departmentname , AVG(Salary) From Employee where Age >=25 group by Departmentname;


--QA department employees-ai city-wise count pannu

Select City , Count(*) From Employee Where Departmentname ='QA' group by City;

---QA department + Age >= 25 employees-ai city-wise count pannu

Select City , Count(*) From Employee Where Departmentname = 'QA' and Age >= 25 group by City;


--Chennai city employees-oda department-wise total salary find pannu

Select Departmentname , Sum(Salary) From Employee Where City = 'Chennai' Group by Departmentname;


------Salary >= 40000 irukkura employees-oda city-wise highest salary find pannu

Select City , MAX(Salary) from Employee Where Salary >= 40000 group by CIty;


----Age >= 25 AND Salary >= 40000 irukkura employees-oda department-wise average salary find pannu

Select Departmentname , AVG(Salary) From Employee where Age >=25 and Salary >= 40000 group by Departmentname;