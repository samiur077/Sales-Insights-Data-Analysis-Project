--- cleaned dimention date table---------
SELECT [datekey]                   AS Datekey,
       [fulldatealternatekey]      AS Date,
       [daynumberofweek]           AS Day_no_of_week,
       [englishdaynameofweek]      AS Day
       --,[SpanishDayNameOfWeek]
       --,[FrenchDayNameOfWeek]
       ,
       [daynumberofmonth]          AS Month
       --,[DayNumberOfYear]
       ,
       [weeknumberofyear]          AS Week_no,
       [englishmonthname]          AS Month_Name,
       LEFT([englishmonthname], 3) AS Month_name_short
       --,[SpanishMonthName]
       --,[FrenchMonthName]
       ,
       [monthnumberofyear]         AS Month_no_of_year,
       [calendarquarter]           AS Quarter,
       [calendaryear]              AS Year
--,[CalendarSemester]
--,[FiscalQuarter]
--,[FiscalYear]
--,[FiscalSemester]
FROM   [AdventureWorksDW2019].[dbo].[dimdate] 