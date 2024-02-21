--KALENDARZ
SELECT 
		[DateKey]
      ,[FullDateAlternateKey] as Pe�na_data
      ,[DayNumberOfWeek] as Nr_dnia
      ,[EnglishDayNameOfWeek] as Dzie�_Tyg
      --,[SpanishDayNameOfWeek]
      --,[FrenchDayNameOfWeek]
      ,[DayNumberOfMonth] as Dzie�_miesi�ca
	  ,LEFT([EnglishMonthName], 3) as Miesi�c_skr
      --,[DayNumberOfYear]
      --,[WeekNumberOfYear]
      ,[EnglishMonthName] as Miesi�c
      --,[SpanishMonthName]
      --,[FrenchMonthName]
      --,[MonthNumberOfYear]
      ,[CalendarQuarter]
      ,[CalendarYear] as rok
      --,[CalendarSemester]
      --,[FiscalQuarter]
      --,[FiscalYear]
      --,[FiscalSemester]
  FROM [AdventureWorksDW2022].[dbo].[DimDate]
  where CalendarYear >= 2020 and EnglishDayNameOfWeek = 'Friday'