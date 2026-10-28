select * from Employee

Select * from Department

--------------------------------------------Left Join------------------------------------
----Department and Employee tables-ai use panni, ella department names-um, andha department-la work panra employee names-um display pannanum

Select D.DepartmentName , E.EmployeeName From Department D Left Join Employee E On D.DepartmentID = E.DepartmentID


-------------Buddy, ippo employee illaadha departments mattum display pannanum.
Select D.DepartmentName ,E.EmployeeName From Department D Left Join Employee E On D.DepartmentID = E.DepartmentID Where E.EmployeeName is Null;

------------ippo ella employees-oda name and department name display pannanum. Employee table-la irukkura ella employees-um result-la varanum; department match aagala naalum employee record miss aaga koodadhu.

Select E.EmployeeName , D.Departmentname From Employee E Left join Department D on E.DepartmentID = D.DepartmentID


--------Ella departments-um display pannanum. Adhoda employee count-um kaattanum. Employee illaadha department-ku count 0 varanum.

Select  D.DepartmentName , Count(E.EmployeeName)  As Employeecount  From Department D Left join Employee E on D.DepartmentID  = E.DepartmentID group by D.Departmentname;


------employee illaadha departments mattum display pannanum; output-la department name-um employee count-um varanum.
Select D.Departmentname , Count(E.EmployeeName ) as Employeecount From Department D Left join Employee E on D.DepartmentID = E.DepartmentID Group by D.Departmentname Having count(E.EmployeeName) = 0;


-----Department and Employee tables use panni, employees irukkura departments mattum display pannanum; department name and employee count show pannanum

Select D.DepartmentName , Count (E.Employeename ) As Employeecount From Department D Left join Employee E on D.DepartmentID = E.DepartmentID group by D.Departmentname having count(E.EmployeeName) >0;

--Employee table-la irukkura ella employees-um display pannanum. Department name-um kaattanum. Department match aagala naalum employee record miss aaga koodadhu.
Select E.EmployeeName , D.DepartmentName From Employee E Left join Department D on E.DepartmentID = D.DepartmentID 


----ippo employee illaadha departments mattum display pannanum.
Select D.Departmentname , E.DepartmentID From Department D left join Employee E on E.DepartmentID = D.DepartmentID where E.EmployeeID is Null


----Chennai-la work panra employees mattum, avanga department name-oda display pannanum.
Select E.EmployeeName , D.DepartmentName , E.City From Employee E Left Join Department D on E.DepartmentID =D.DepartmentID Where City = 'Chennai';

---Ella departments-um display pannanum. Aana employee salary ₹40,000-ku mela irundha mattum employee details show aaganum. Employee illaadha departments-um output-la irukkanum
Select D.DepartmentName , E.Employeename , E.Salary From  Department D  
Left join Employee E  on D.DepartmentID = E.DepartmentID AND  E.Salary > 40000 ;

-----Ella departments-oda name-um, andha department-la work panra employees-oda name-um display pannanum
Select D.DepartmentName , E.EmployeeName From Department D Left join Employee E on E.DepartmentID = D.DepartmentID


---Employee illaadha departments mattum display pannanum.
Select D.DepartmentName , D.DepartmentID From Department D Left join Employee E on E.DepartmentID=D.DepartmentID Where E.Departmentname is null;


------Ella departments-layum ethana employees irukkaanga-nu count pannanum. Employee illaadha department-kum count 0-ah varanum.
Select D.DepartmentName , Count(E.Employeename) from Department D Left join Employee E on E.DepartmentID = D.DepartmentID group by D.Departmentname 


-----Chennai-la work panra employees-oda name and department name display pannanum
Select E.EmployeeName , D.DepartmentName , E.city From Employee E Left join Department D on E.DepartmentID = D.DepartmentID where City = 'Chennai'

------Ella departments-um display aaganum. Aana salary ₹40,000-ku mela irukkura employees details mattum show aaganum. Employee illaadha departments-um output-la irukkanum
Select D.DepartmentName , E.EmployeeName , E.Salary From Department D Left join Employee E on E.DepartmentID = D.DepartmentID and E.Salary > 40000;


----Ella departments-layum employee count calculate pannanum. Aana 3 employees irukkura departments mattum display pannanum
Select D.DepartmentName , Count(E.EmployeeName ) As Employeecount From Department D left join Employee E on E.DepartmentID = D.DepartmentID group by D.Departmentname Having COUNT(E.Employeename) = 3;



----Employee illaadha departments-ai LEFT JOIN use panni identify pannanum. Output-la department name mattum display pannu
Select D.DepartmentName From Department D Left join Employee E on E.DepartmentID = D.DepartmentID where E.EmployeeName is Null;


----Department and Employee tables-ai use panni, Chennai-la employees irukkura departments-oda names mattum display pannu
Select Distinct D.DepartmentName From Department D Left join Employee E on D.DepartmentID =E.DepartmentID Where City ='Chennai'


--------All departments-oda names-um, andha departments-la work panra employees-oda names-um display pannu. Employee illadha department-um result-la varanum. Department name alphabetical order-la display aaganum.
Select D.Departmentname , E.Employeename From Department D Left join Employee E on E.DepartmentID = D.DepartmentID order by Departmentname Asc;


------Department and Employee tables-ai LEFT JOIN panni, Chennai and Madurai cities-la work panra employees-oda names, city, department name display pannu.
Select E.Employeename , E.City , D.Departmentname From Department D Left join Employee E on E.DepartmentID = D.DepartmentID where City in ('Chennai' , 'Madurai');


----Department and Employee tables-ai LEFT JOIN panni, Chennai-la irukkura employees OR salary ₹50,000-ku mela irukkura employees-oda name, city, salary, department name display pannu.
Select E.Employeename , E.City , E.Salary , D.Departmentname From Department D left Join Employee E on E.DepartmentID = D.DepartmentID Where E.City ='Chennai' or E.Salary > 50000;


Select Distinct  D.DepartmentName , E.Employeename , E.Salary From DEpartment D Left join Employee E on E.DepartmentID = D.DepartmentID Where E.Salary Between 40000 and 60000 order by D.Departmentname Asc;
