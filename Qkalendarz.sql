--KALENDARZ
SELECT 
		[DateKey]
      ,[FullDateAlternateKey] as Pe³na_data
      ,[DayNumberOfWeek] as Nr_dnia
      ,[EnglishDayNameOfWeek] as Dzieñ_Tyg
      --,[SpanishDayNameOfWeek]
      --,[FrenchDayNameOfWeek]
      ,[DayNumberOfMonth] as Dzieñ_miesi¹ca
	  ,LEFT([EnglishMonthName], 3) as Miesi¹c_skr
      --,[DayNumberOfYear]
      --,[WeekNumberOfYear]
      ,[EnglishMonthName] as Miesi¹c
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