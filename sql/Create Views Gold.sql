----CREATE VIEW CALENDER----
------------------------------------
CREATE VIEW gold.calender
AS
SELECT *
FROM
OPENROWSET(
    BULK 'https://kazurestorage02.blob.core.windows.net/silver/Calendar/',
    FORMAT = 'PARQUET'
) as quer1

----CREATE VIEW CUSTOMERS
--------------------------

CREATE VIEW gold.Customers
AS
SELECT *
FROM
OPENROWSET(
    BULK 'https://kazurestorage02.blob.core.windows.net/silver/Customers/',
    FORMAT = 'PARQUET'
) as quer2
----CREATE VIEW Product
-------------------------
CREATE VIEW gold.Product
AS
SELECT *
FROM
OPENROWSET(
    BULK 'https://kazurestorage02.blob.core.windows.net/silver/Product/',
    FORMAT = 'PARQUET'
) as quer3

---CREATE VIEW Product category
----------------------------------
CREATE VIEW gold.ProductCategory
AS
SELECT *
FROM
OPENROWSET(
    BULK 'https://kazurestorage02.blob.core.windows.net/silver/ProductCategory/',
    FORMAT = 'PARQUET'
) as quer4

-----Create view Product Subcategory
-------------------------------------
CREATE VIEW gold.ProductSubcategory
AS
SELECT *
FROM
OPENROWSET(
    BULK 'https://kazurestorage02.blob.core.windows.net/silver/ProductSubcategory/',
    FORMAT = 'PARQUET'
) as quer5

-----create view returns
-------------------------
CREATE VIEW gold.returns
AS
SELECT *
FROM
OPENROWSET(
    BULK 'https://kazurestorage02.blob.core.windows.net/silver/Returns/',
    FORMAT = 'PARQUET'
) as quer6

-----create view sales
-----------------------
CREATE VIEW gold.Sales
AS
SELECT *
FROM
OPENROWSET(
    BULK 'https://kazurestorage02.blob.core.windows.net/silver/Sales/',
    FORMAT = 'PARQUET'
) as quer7

----create view Territory
----------------------------
CREATE VIEW gold.Territory
AS
SELECT *
FROM
OPENROWSET(
    BULK 'https://kazurestorage02.blob.core.windows.net/silver/Territory/',
    FORMAT = 'PARQUET'
) as quer8