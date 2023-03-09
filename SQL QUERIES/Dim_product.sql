------- cleaned product table ------------
SELECT p.[productkey],
                  p.[productalternatekey]          AS ProductItemCode,
                  ps.englishproductsubcategoryname AS Sub_category,
                  pc.englishproductcategoryname    AS Category
                  --,[WeightUnitMeasureCode]
                  --,[SizeUnitMeasureCode]
                  ,
                  p.[englishproductname]           AS Product_Name
                  --,[SpanishProductName]
                  --,[FrenchProductName]
                  --,[StandardCost]
                  --,[FinishedGoodsFlag]
                  ,
                  p.[color]                        AS Color
                  --,[SafetyStockLevel]
                  --,[ReorderPoint]
                  --,[ListPrice]
                  ,
                  p.[size]                         AS Size
                  --,[SizeRange]
                  --,[Weight]
                  --,[DaysToManufacture]
                  ,
                  p.[productline]
                  --,[DealerPrice]
                  --,[Class]
                  --,[Style]
                  ,
                  p.[modelname]
                  --,[LargePhoto]
                  --,[EnglishDescription]
                  --,[FrenchDescription]
                  --,[ChineseDescription]
                  --,[ArabicDescription]
                  --,[HebrewDescription]
                  --,[ThaiDescription]
                  --,[GermanDescription]
                  --,[JapaneseDescription]
                  --,[TurkishDescription]
                  --,[StartDate]
                  --,[EndDate]
                  ,
                  Isnull(p.[status], 'Outdated')   AS Status
FROM   [AdventureWorksDW2019].[dbo].[dimproduct] p
       LEFT JOIN dimproductsubcategory ps
              ON p.productsubcategorykey = ps.productsubcategorykey
       LEFT JOIN dimproductcategory pc
              ON ps.productsubcategorykey = pc.productcategorykey 