Exercise 1

select p.Firstname,p.Lastname,e.JobTitle,c.Rate,averageRate=avg(c.rate)over()
from Person.Person as p
join HumanResources.Employee as e
on p.BusinessEntityID=e.BusinessEntityID
join HumanResources.EmployeePayHistory as c
on p.BusinessEntityID=c.BusinessEntityID

Exercise 2

select p.Firstname ,p.Lastname , e.JobTitle , c.Rate,averageRate=avg(c.rate)over(),MaximumRate=max(c.rate) over()
from Person.Person as p
join HumanResources.Employee as e
on p.BusinessEntityID=e.BusinessEntityID
join HumanResources.EmployeePayHistory as c
on p.BusinessEntityID=c.BusinessEntityID

Exercise 3

select p.Firstname,p.Lastname,e.JobTitle,c.Rate,averageRate=avg(c.rate)over(),DiffFromAvgRate=c.Rate - avg(c.Rate)over()
from Person.Person as p
join HumanResources.Employee as e
on p.BusinessEntityID=e.BusinessEntityID
join HumanResources.EmployeePayHistory as c
on p.BusinessEntityID=c.BusinessEntityID

Exercise 4

select p.Firstname,p.Lastname,e.JobTitle,c.Rate,averageRate=avg(c.rate)over(),PercentofMaxRate=c.Rate/max(c.Rate) over()*100
from Person.Person as p
join HumanResources.Employee as e
on p.BusinessEntityID=e.BusinessEntityID
join HumanResources.EmployeePayHistory as c
on p.BusinessEntityID=c.BusinessEntityID