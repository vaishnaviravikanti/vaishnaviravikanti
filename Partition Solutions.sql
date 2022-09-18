Exercise 1

select p.Name as ProductName,p.ListPrice ,
s.Name as ProductSubcategory,
c.Name as ProductCategory from Production.Product  p
inner join Production.ProductSubcategory s 
on p.ProductSubCategoryID =s.ProductSubcategoryID
inner join Production.ProductCategory c
on s.ProductSubcategoryID=c.ProductCategoryID

Exercise 2

select p.Name as ProductName,p.ListPrice ,
s.Name as ProductSubcategory,c.Name as ProductCategory ,
AvgPriceByCategory=avg(p.ListPrice)over()
from Production.Product  p
inner join Production.ProductSubcategory s 
on p.ProductSubCategoryID =s.ProductSubcategoryID
inner join Production.ProductCategory c
on s.ProductSubcategoryID=c.ProductCategoryID

Exercise 3

select p.Name as ProductName,p.ListPrice ,
s.Name as ProductSubcategory,c.Name as ProductCategory ,
AvgPriceByCategory=avg(p.ListPrice)over(partition by c.name),
AvgPriceByCategoryandSubCategory=avg(p.ListPrice)over(partition by c.name)
from Production.Product  p
inner join Production.ProductSubcategory s 
on p.ProductSubCategoryID =s.ProductSubcategoryID
inner join Production.ProductCategory c
on s.ProductSubcategoryID=c.ProductCategoryID

Exercise 4

select p.Name as ProductName,p.ListPrice ,
s.Name as ProductSubcategory,c.Name as ProductCategory ,
AvgPriceByCategory=avg(p.ListPrice)over(partition by c.name),
AvgPriceByCategoryandSubCategory=avg(p.ListPrice)over(partition by c.name),
ProductVsCategoryDelta=p.ListPrice-avg(p.ListPrice)over(partition by c.name)
from Production.Product  p
inner join Production.ProductSubcategory s 
on p.ProductSubCategoryID =s.ProductSubcategoryID
inner join Production.ProductCategory c
on s.ProductSubcategoryID=c.ProductCategoryID

