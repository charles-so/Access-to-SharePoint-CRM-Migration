
/*============================================================================
  File:     WAMSIdb.sql

  Creates the sql database for the contacts

  Modified Date:	2 August 2023
  Contributors:	Ann Roy

  Modified:
  - added line to use the right database
  - set nvarchar to 50
  - added condition checks for safer codes
*/


/*
 * HOW TO RUN THIS SCRIPT:
 *
 * 1. Enable full-text search on your SQL Server instance. 
 *
 * 2. Open the script inside SQL Server Management Studio and enable SQLCMD mode. 
 *    This option is in the Query menu.
 *
 * 3. If bulk-inserting data, copy this script and the install files to C:\Samples\WAMSI_db\, or
 *    set the following environment variable to your own data path.
 */
 :setvar SqlSamplesSourceDataPath "C:\Samples\WAMSI_db\"


:setvar DatabaseName "WAMSI_db"

-- ****************************************
-- Create Database
-- ****************************************
PRINT '';
PRINT '*** Creating Database';
GO

USE master
GO
IF NOT EXISTS (
   SELECT name
   FROM sys.databases
   WHERE name = '$(DatabaseName)'
)
CREATE DATABASE [$(DatabaseName)]
GO

USE $(DatabaseName);

-- ******************************************************
-- Create tables
-- ******************************************************
PRINT '';
PRINT '*** Creating Tables';
GO

-- Create a new table called 'Diet' in schema 'dbo'
-- Drop the table if it already exists
IF OBJECT_ID('dbo.Diets', 'U') IS NOT NULL
DROP TABLE dbo.Diets
GO
CREATE TABLE [dbo].[Diets](
	[DietID] [int] IDENTITY(1,1) NOT NULL,
	[Diet] [nvarchar](50) NOT NULL
)ON [PRIMARY];
GO

IF OBJECT_ID('dbo.GroupsList', 'U') IS NOT NULL
DROP TABLE dbo.GroupsList
GO
CREATE TABLE [dbo].[GroupsList](
	[GroupID] [int] IDENTITY(1,1) NOT NULL,
	[Group] [nvarchar](50) NOT NULL
)ON [PRIMARY];
GO

IF OBJECT_ID('dbo.Reports', 'U') IS NOT NULL
DROP TABLE dbo.Reports
GO
CREATE TABLE [dbo].[Reports](
	[ReportsID] [int] IDENTITY(1,1) NOT NULL,
	[Days] [nvarchar](50) NOT NULL,
	[Events] [int] NOT NULL,
	[Accepted] [bit] NOT NULL,
	[Attended] [bit],
	[DNA] [bit],
	[Speaker] [bit] NOT NULL,
	[Response] [int],
	[Diet] [int] NOT NULL
) ON [PRIMARY];
GO

IF OBJECT_ID('dbo.Responses', 'U') IS NOT NULL
DROP TABLE dbo.Responses
GO
CREATE TABLE [dbo].[Responses](
	[ResponseID] [int] IDENTITY(1,1) NOT NULL,
	[Response] [nvarchar](50) NOT NULL
) ON [PRIMARY];
GO

IF OBJECT_ID('dbo.Attendees', 'U') IS NOT NULL
DROP TABLE dbo.Attendees
GO
CREATE TABLE [dbo].[Attendees](
	[AttendeeID] [int] IDENTITY(1,1) NOT NULL,
	[EventName] [nvarchar](50) NOT NULL,
	[Accepted] [bit] NOT NULL,
	[Declined] [bit] NOT NULL,
	[Attended] [bit],
	[Speaker] [bit] NOT NULL,
	[Subject] [nvarchar](50) NOT NULL,
	[Presentation] [bit],
	[Day] [datetime] NOT NULL,
	[Diet] [int] NOT NULL,
	[StartTalkTime] [datetime],
	[EndTalkTime] [datetime],
	[ID] [int] UNIQUE NOT NULL,
	[EventsID] [int] NOT NULL,
	[Extra] [bit]
)ON [PRIMARY];
GO

IF OBJECT_ID('dbo.Events', 'U') IS NOT NULL
DROP TABLE dbo.Events
GO
CREATE TABLE [dbo].[Events](
	[EventsID] [int] IDENTITY(1,1) NOT NULL,
	[EventName] [nvarchar](255) NOT NULL,
	[EventDescription] [nvarchar](50) NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
	[Location] [nvarchar](50) NOT NULL,
	[AvailableSpaces] [int] NOT NULL,
	[StartDate] [datetime],
	[EndDate] [datetime],
	[StartTime] [datetime],
	[MorningBreak] [datetime],
	[LunchBreak] [datetime],
	[EndTime] [datetime],
	[Sundowner] [datetime],
	[Caterer] [nvarchar](50) NOT NULL,
	[CatererTel] [nvarchar](50) NOT NULL,
	[CatererEmail] [nvarchar](50) NOT NULL,
	[Notes] [nvarchar](50),
	[ID] [int] UNIQUE NOT NULL
)ON [PRIMARY];
GO

/*
* Need to add script section for:
* 	'ACT Database Contacts'
*	Table relationships
*	Bulk insert of data (dummy/real)
*/