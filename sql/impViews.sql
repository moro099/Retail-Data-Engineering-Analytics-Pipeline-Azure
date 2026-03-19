 CREATE OR ALTER VIEW gold.dim_date AS
SELECT
    CAST([Date] AS DATE) AS Date,
    YEAR([Date]) AS Year,
    MONTH([Date]) AS Month,
    DATENAME(MONTH, [Date]) AS MonthName
FROM gold.calender;

SELECT * FROM gold.dim_date;

--------------------------------------------
CREATE OR ALTER VIEW gold.dim_product AS
SELECT
    p.ProductKey,
    p.ProductName,
    ps.SubcategoryName,
    pc.CategoryName,
    p.ProductPrice,
    p.ProductCost
FROM gold.Product p
LEFT JOIN gold.ProductSubcategory ps
    ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey
LEFT JOIN gold.ProductCategory pc
    ON ps.ProductCategoryKey = pc.ProductCategoryKey;

select*from gold.dim_product;

----------------------------------------------------
CREATE OR ALTER VIEW gold.dim_customer AS
SELECT
    CustomerKey,
    FirstName,
    LastName,
    CONCAT(FirstName, ' ', LastName) AS FullName,
    Gender,
    AnnualIncome
FROM gold.Customers;
 
 select*from gold.dim_customer;

 -----------------------------------------

CREATE OR ALTER VIEW gold.dim_territory AS
SELECT
    SalesTerritoryKey AS TerritoryKey,
    Region,
    Country,
    Continent
FROM gold.Territory;

select*from gold.dim_territory;

------------------------------------
CREATE OR ALTER VIEW gold.fact_sales AS
SELECT
    s.OrderDate,
    s.ProductKey,
    s.CustomerKey,
    s.TerritoryKey,
    s.OrderQuantity,
    p.ProductPrice,
    p.ProductCost,
    (s.OrderQuantity * p.ProductPrice) AS SalesAmount,
    (s.OrderQuantity * p.ProductCost) AS TotalCost,
    (s.OrderQuantity * p.ProductPrice) - (s.OrderQuantity * p.ProductCost) AS Profit
FROM gold.Sales s
LEFT JOIN gold.dim_product p
    ON s.ProductKey = p.ProductKey;

    --------------------------------------------
CREATE OR ALTER VIEW gold.fact_returns AS
SELECT
    ReturnDate,
    ProductKey,
    TerritoryKey,
    ReturnQuantity
FROM gold.returns;