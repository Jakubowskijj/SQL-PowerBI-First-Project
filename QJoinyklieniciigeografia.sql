--Klienci i kraje pochodzenia na podstawie geography key
SELECT 
  [CustomerKey] 
  --,c.[GeographyKey] --UWAGA
  --  ,[CustomerAlternateKey]
  -- ,[Title]
  , 
  [FirstName] as [First name] --Je�li spacja to musi by� w nawiasach []
  -- ,[MiddleName]
  , 
  [LastName]
  --  ,[NameStyle]
  , 
  FirstName + ' ' + LastName AS [Imie i naziwsko] --PO��CZENIE IMIE I NAZIWSKO
  , 
  [BirthDate]
  --   ,[MaritalStatus]
  -- ,[Suffix]
  , 
  [Gender], 
  CASE c.Gender WHEN 'M' THEN 'M�czyzna' WHEN 'F' THEN 'Kobieta' END AS P�e� 
  --   ,[EmailAddress]
  --   ,[YearlyIncome]
  , 
  [TotalChildren]
  --   ,[NumberChildrenAtHome]
  --   ,[EnglishEducation]
  --   ,[SpanishEducation]
  --   ,[FrenchEducation]
  --   ,[EnglishOccupation]
  --    ,[SpanishOccupation]
  --    ,[FrenchOccupation]
  --    ,[HouseOwnerFlag]
  --   ,[NumberCarsOwned]
  , 
  [AddressLine1] -- ,[AddressLine2]
  --  ,[Phone]
  --  ,[DateFirstPurchase]
  --    ,[CommuteDistance]
  , 
  g.EnglishCountryRegionName as Kraj 
  -- ,c.[GeographyKey]
FROM 
  [AdventureWorksDW2022].[dbo].[DimCustomer] as c --LUB FROM dbo.DimCustomer as c
  left join [AdventureWorksDW2022].[dbo].[DimGeography] as g on g.GeographyKey = c.GeographyKey 
where 
  c.TotalChildren >= 4 
  AND YEAR(c.BirthDate) > 1980 
ORDER BY 
  c.BirthDate DESC --OD NAJM�ODSZEGO (bez DESC by�oby od najstarszego)
  -- Do ka�dego klienta przypisany jest GeographyKey kt�ry jest kluczem g��wnym w tabeli [dimgeography] i 
  --dzi�ki temu mo�emy pobra� kraj pasuj�cy do danego klucza i przypisa� go w tej tabeli
  --FROM tabela1 LEFT JOIN tabela2 ON tabela2.kluczglowny = tabela1.kluczobcy
