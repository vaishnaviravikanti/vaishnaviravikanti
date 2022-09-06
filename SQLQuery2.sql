select * from SalesLT.Product;
select name,StandardCost,ListPrice from SalesLT.Product;
select name,ListPrice-StandardCost from SalesLT.Product;
 SELECT Name AS ProductName, ListPrice - StandardCost AS Markup
 FROM SalesLT.Product;
 SELECT ProductNumber, Color, Size, Color + ', ' + Size AS ProductDetails
FROM SalesLT.Product;
 SELECT ProductID + ': ' + Name AS ProductName
 FROM SalesLT.Product; 
  SELECT CAST(ProductID AS varchar(5)) + ': ' + Name AS ProductName
 FROM SalesLT.Product; 
   SELECT CONVERT(varchar(5), ProductID) + ': ' + Name AS ProductName
 FROM SalesLT.Product; 
 SELECT SellStartDate,
    CONVERT(nvarchar(30), SellStartDate) AS ConvertedDate,
    CONVERT(nvarchar(30), SellStartDate, 126) AS ISO8601FormatDate
 FROM SalesLT.Product; 
  SELECT Name, TRY_CAST(Size AS Integer) AS NumericSize
FROM SalesLT.Product;
 SELECT Name, ISNULL(TRY_CAST(Size AS Integer),0) AS NumericSize
 FROM SalesLT.Product;
  SELECT Name, NULLIF(Color, 'Multi') AS SingleColor
 FROM SalesLT.Product;
 SELECT ProductNumber, ISNULL(Color, '') + ', ' + ISNULL(Size, '') AS ProductDetails
 FROM SalesLT.Product;
  SELECT Name, COALESCE(SellEndDate, SellStartDate) AS StatusLastUpdated
 FROM SalesLT.Product;
 select SellEndDate,SellStartDate from SalesLT.Product;
  SELECT Name,
     CASE
         WHEN SellEndDate IS NULL THEN 'Currently for sale'
         ELSE 'No longer available'
     END AS SalesStatus
 FROM SalesLT.Product;
  SELECT Name,
     CASE Size
         WHEN 'S' THEN 'Small'
         WHEN 'M' THEN 'Medium'
         WHEN 'L' THEN 'Large'
         WHEN 'XL' THEN 'Extra-Large'
         ELSE ISNULL(Size, 'n/a')
     END AS ProductSize
 FROM SalesLT.Product;
 Select * from SalesLT.Customer;
 Select Title, FirstName, MiddleName, LastName, Suffix from SalesLT.Customer;
  SELECT Title, FirstName, MiddleName, LastName, Suffix
 FROM SalesLT.Customer;
  SELECT Salesperson, Title  + LastName AS CustomerName, Phone
 FROM SalesLT.Customer;
  SELECT Salesperson, Title + ' ' + LastName AS CustomerName, Phone
 FROM SalesLT.Customer;
  SELECT CAST(CustomerID AS varchar) + ': ' + CompanyName AS CustomerCompany
 FROM SalesLT.Customer;
  SELECT CustomerID + ': ' + CompanyName AS CustomerCompany
 FROM SalesLT.Customer;
  SELECT CustomerID  + ': ' + CAST( CompanyName AS INT)AS CustomerCompany
 FROM SalesLT.Customer;
  SELECT CAST(CustomerID AS varchar) + ': ' + CompanyName AS CustomerCompany
 FROM SalesLT.Customer;

 //https://microsoftlearning.github.io/dp-080-Transact-SQL/Instructions/Labs/01-get-started-with-tsql.html//


