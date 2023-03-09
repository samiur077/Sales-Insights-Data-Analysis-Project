---  cleaned customer data -------
SELECT [customerkey],
       [geographykey]
       --,[CustomerAlternateKey]
       --,[Title]
       ,
       [firstname]
       --,[MiddleName]
       ,
       [lastname],
       firstname + ' ' + lastname AS 'Full_Name'
       --,[NameStyle]
       --,[BirthDate]
       ,
       CASE
         WHEN [maritalstatus] = 'M' THEN 'Married'
         WHEN maritalstatus = 'S' THEN 'Single'
       END                        AS 'Marital_Status'
       --,[Suffix]
       ,
       CASE
         WHEN [gender] = 'M' THEN 'Male'
         WHEN gender = 'F' THEN 'Female'
       END                        AS 'Gender'
       --,[EmailAddress]
       ,
       [yearlyincome],
       [totalchildren],
       [numberchildrenathome],
       [englisheducation]         AS 'Education'
       --,[SpanishEducation]
       --,[FrenchEducation]
       ,
       [englishoccupation]        AS 'Occupation'
       --,[SpanishOccupation]
       --,[FrenchOccupation]
       ,
       [houseownerflag],
       [numbercarsowned]
       --,[AddressLine1]
       --,[AddressLine2]
       --,[Phone]
       ,
       [datefirstpurchase],
       [commutedistance]
FROM   [AdventureWorksDW2019].[dbo].[dimcustomer] 