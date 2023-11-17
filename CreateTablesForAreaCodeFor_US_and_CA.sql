
DROP TABLE [dbo].[US_AreaCodeCity]

CREATE TABLE [dbo].[US_AreaCodeCity](
	[AreaCode] [varchar](255) NOT NULL,
	[City] [varchar](255) NULL,
    [State_Province] [varchar](255) NULL,
	[Country_Code] [varchar](20) NULL,
    [Latitude] [varchar](255) NULL,
    [Longitude] [varchar](255) NULL,
) 

--import the csv file
BULK INSERT [dbo].[US_AreaCodeCity]
FROM '/us-area-code-cities.csv' 
WITH 
(
    FORMAT='CSV',
    FIRSTROW=1
)

DROP TABLE [dbo].[CA_AreaCodeCity]

CREATE TABLE [dbo].[CA_AreaCodeCity](
	[AreaCode] [varchar](255) NOT NULL,
	[City] [varchar](255) NULL,
    [State_Province] [varchar](255) NULL,
	[Country_Code] [varchar](20) NULL,
    [Latitude] [varchar](255) NULL,
    [Longitude] [varchar](255) NULL,
) 

--import the csv file
BULK INSERT [dbo].[CA_AreaCodeCity]
FROM '/ca-area-code-cities.csv' 
WITH 
(
    FORMAT='CSV',
    FIRSTROW=1
)

DROP TABLE [dbo].[US_AreaCodeGeo]

CREATE TABLE [dbo].[US_AreaCodeGeo](
	[AreaCode] [varchar](255) NOT NULL,
    [Latitude] [varchar](255) NULL,
    [Longitude] [varchar](255) NULL,
) 

--import the csv file
BULK INSERT [dbo].[US_AreaCodeGeo]
FROM '/us-area-code-geo.csv' 
WITH 
(
    FORMAT='CSV',
    FIRSTROW=1
)

DROP TABLE [dbo].[CA_AreaCodeGeo]

CREATE TABLE [dbo].[CA_AreaCodeGeo](
	[AreaCode] [varchar](255) NOT NULL,
    [Latitude] [varchar](255) NULL,
    [Longitude] [varchar](255) NULL,
) 

--import the csv file
BULK INSERT [dbo].[CA_AreaCodeGeo]
FROM '/ca-area-code-geo.csv' 
WITH 
(
    FORMAT='CSV',
    FIRSTROW=1
)


SELECT *
FROM CA_AreaCodeGeo

SELECT *
FROM US_AreaCodeGeo

SELECT *
FROM CA_AreaCodeCity

SELECT *
FROM US_AreaCodeCity