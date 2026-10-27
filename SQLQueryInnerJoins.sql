select * from Employee

Select * From Department

update Employee SET DepartmentID = '40' Where Departmentname = 'Development'

Update Department SEt DepartmentID = '50' Where Departmentname = 'Finance'

INSERT INTO Department (DepartmentName, DepartmentID)
VALUES
    ('QA', 10),
    ('HR', 20),
    ('IT', 30),
    ('Development', 40),
    ('Finance', 50);

-----------------------------------------Inner Joins----------------------------

--------Employee மற்றும் Department tables-ஐ INNER JOIN செய்து, கீழே உள்ள மூன்று columns-ஐ display செய்ய வேண்டும்-------

Select Employee.EmployeeName ,Department.Departmentname , Employee.Salary From Employee Inner Join Department on Employee.DepartmentID = Department.DepartmentID;


----Employee table and Department table use panni, QA department-la work panra employees-oda name and salary mattum display pannanum---

Select E.EmployeeName , E.Salary From Employee E Inner Join Department D On E.DepartmentID = D.DepartmentID Where DepartmentID = 10;

SELECT E.EmployeeName, E.Salary FROM Employee E INNER JOIN Department D ON E.DepartmentID = D.DepartmentID WHERE D.DepartmentID = 10;


--------------Buddy, ippo Development department-la work panra employees-oda EmployeeName, City, Salary display pannanum-------

Select E.EmployeeName , E.City , E.Salary From Employee E Inner Join Department D On E.DepartmentID = D.DepartmentID where D.DepartmentID = 40;


----Employee and Department tables-ai INNER JOIN panni, Chennai-la irukkura employees-oda name, department name, salary display pannanum.------

Select E.EmployeeName , E.Departmentname , E.Salary From Employee E Inner Join Department D on  E.Departmentname = D.Departmentname Where E.City ='Chennai';

----------------INNER JOIN use panni HR department-la irukkura employees-oda name and city display pannu.

Select E.Employeename , E.City From Employee E Inner Join Department D  On E.DepartmentID = D.DepartmentID Where D.Departmentname = 'HR';


--------Chennai-la irukkura QA department employees-oda name and salary mattum display pannanum

Select E.Employeename , E.Salary From Employee E Inner Join Department D On E.DepartmentID = D.DepartmentID Where E.City ='Chennai' and D.Departmentname ='QA';


-----Employee and Department tables-ai INNER JOIN panni, salary ₹45,000-ku mela irukkura employees-oda name, department name, salary display pannu
Select E.Employeename , D.Departmentname , E.Salary From Employee E Inner Join Department D On E.DepartmentID = D.DepartmentID Where E.Salary > 45000;



-----QA and HR departments-la irukkura employees, salary ₹35,000-ku mela irundha mattum, avanga name, department name, salary display pannanum----

Select E.Employeename , D.Departmentname , E.Salary From Employee E Inner Join Department D On E.DepartmentID = D.DepartmentID Where  (D.Departmentname = 'QA' or D.Departmentname = 'HR' ) and E.Salary > 35000;



----Same requirement-ai ippodhu IN use panni ezhuthu:

Select E.Employeename , D.Departmentname , E.Salary From Employee E Inner Join Department D On E.DepartmentID = D.DepartmentID Where D.Departmentname In ( 'QA' , 'HR' ) and E.Salary > 35000;



---Ella department-layum irukkura employees-la, salary ₹40,000-ku mela irukkura employees-ai display pannanum. Output-la

Select E.Employeename , D.Departmentname , E.Salary From Employee E Inner Join Department D On E.DepartmentID = D.DepartmentID where Salary > 40000 order by E.Salary Desc;


-------Requirement: INNER JOIN use panni, top 3 highest-paid employees-oda name, department name, salary display pannanum.

Select Top 3 E.Employeename , D.Departmentname , E.Salary From Employee E Inner Join Department D On E.DepartmentID = D.DepartmentID order by E.Salary Desc

-------Department table-la irukkura department name and department ID display pannanum; aana at least one employee irukkura departments mattum varanum

Select Distinct D.Departmentname , D.DepartmentId From Department D Inner Join Employee E On E.DepartmentId = D.DepartmentID 


------Oru department-la ethana employees irukkaanga nu count pannanum.

Select Count(*) as EmployeeCount, D.Departmentname From Department D Inner join Employee E On E.DepartmentId = D.DepartmentID Group by D.Departmentname;



-------ippo 3 employees-ku mela irukkura departments mattum display pannanum.

Select D.Departmentname ,  Count(*) As EmployeeCount From Department D Inner Join Employee E on E.DepartmentId = D.DepartmentID Group by D.Departmentname Having Count(*) >3;


---------QA department-la work panra employees-ai mattum consider panni, department-wise employee count display pannanum
Select D.Departmentname ,  Count(*) As EmployeeCount From Department D Inner Join Employee E on E.DepartmentId = D.DepartmentID where D.Departmentname ='QA' Group by D.Departmentname


--------Ovvoru department-layum employee count calculate pannanum. Aana 3 employees irukkura departments mattum display pannanum.
Select D.Departmentname ,  Count(*) As EmployeeCount From Department D Inner Join Employee E on E.DepartmentId = D.DepartmentID Group by D.Departmentname Having Count(*) = 3;



-----------Ovvoru department-layum employee count calculate panni, 3 employees-ku mela irukkura departments mattum display pannanum.
Select D.Departmentname ,  Count(*) As EmployeeCount From Department D Inner Join Employee E on E.DepartmentId = D.DepartmentID Group by D.Departmentname Having Count(*) > 3;