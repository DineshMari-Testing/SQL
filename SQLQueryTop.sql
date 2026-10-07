SELECT * FROM Employee;


----Highest salary earn panra top 3 employees display pannu.

Select Top 3 * from Employee order by Salary Desc;

----Lowest salary earn panra top 2 employees display pannu.
 Select Top 2 * from Employee order by Salary Asc;

 ----QA department-la highest salary earn panra top 3 employees display pannu.

Select Top 3 * from Employee Where Departmentname = 'QA' order by Salary desc;

----Chennai city-la highest salary earn panra employee ??????? display pannu.

Select Top 1 * from Employee where City ='Chennai' order by Salary Desc;

----Age 25 or above irukkura employees-la youngest 2 employees display pannu

Select Top 2 * from Employee where Age >= 25 order by Age  Asc;

----Chennai, Bangalore, Madurai cities-la irukkura employees-la salary highest 5 employees display pannu.

Select Top 5 * from Employee Where City in ('Chennai' , 'Bangalore' , 'Madurai') order by Salary Desc;

----QA and Development departments-la irukkura employees-la salary 40000-ku mela irukkura top 3 employees, salary high ? low order-la display pannu.

Select Top 3 * from Employee where Departmentname in ( 'QA' ,'Development') and Salary > 40000 order by Salary Desc;

----Application-la "Top 3 highest salary employees in Chennai" feature irukku UI result-a database-la validate panna query write pannu

Select Top 3  * From Employee where City = 'Chennai' order by Salary Desc;