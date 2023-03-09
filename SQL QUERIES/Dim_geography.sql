----   cleaned_geography_table -------
SELECT [geographykey],
                  [city]
                  --,[StateProvinceCode]
                  --,[StateProvinceName]
                  --,[CountryRegionCode]
                  ,
                  [englishcountryregionname] AS Country
                  --,[SpanishCountryRegionName]
                  --,[FrenchCountryRegionName]
                  ,
                  [postalcode],
                  [salesterritorykey]
--,[IpAddressLocator]
FROM   [AdventureWorksDW2019].[dbo].[dimgeography] 