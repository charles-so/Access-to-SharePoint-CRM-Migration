
/*============================================================================
  File:     WAMSIdb.sql

  Creates the sql database for the contacts

  Modified Date:	2 August 2023
  Contributors:	Ann Roy


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

CREATE DATABASE $(DatabaseName);
GO



-- ******************************************************
-- Create tables
-- ******************************************************
PRINT '';
PRINT '*** Creating Tables';
GO

CREATE TABLE [dbo].[Diets](
	[DietID] [int] IDENTITY(1,1) NOT NULL,
	[Diet] [nvarchar] NOT NULL
)ON [PRIMARY];
GO

CREATE TABLE [dbo].[GroupsList](
	[GroupID] [int] IDENTITY(1,1) NOT NULL,
	[Group] [nvarchar] NOT NULL
)ON [PRIMARY];
GO

CREATE TABLE [dbo].[Reports](
	[ReportsID] [int] IDENTITY(1,1) NOT NULL,
	[Days] [nvarchar] NOT NULL,
	[Events] [int] NOT NULL,
	[Accepted] [bit] NOT NULL,
	[Attended] [bit],
	[DNA] [bit],
	[Speaker] [bit] NOT NULL,
	[Response] [int],
	[Diet] [int] NOT NULL
) ON [PRIMARY];
GO

CREATE TABLE [dbo].[Responses](
	[ResponseID] [int] IDENTITY(1,1) NOT NULL,
	[Response] [nvarchar] NOT NULL
) ON [PRIMARY];
GO

CREATE TABLE [dbo].[Attendees](
	[AttendeeID] [int] IDENTITY(1,1) NOT NULL,
	[EventName] [nvarchar] NOT NULL,
	[Accepted] [bit] NOT NULL,
	[Declined] [bit] NOT NULL,
	[Attended] [bit],
	[Speaker] [bit] NOT NULL,
	[Subject] [nvarchar] NOT NULL,
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

CREATE TABLE [dbo].[Events](
	[EventsID] [int] IDENTITY(1,1) NOT NULL,
	[EventName] [nvarchar] NOT NULL,
	[EventDescription] [nvarchar] NOT NULL,
	[Status] [nvarchar] NOT NULL,
	[Location] [nvarchar] NOT NULL,
	[AvailableSpaces] [int] NOT NULL,
	[StartDate] [datetime],
	[EndDate] [datetime],
	[StartTime] [datetime],
	[MorningBreak] [datetime],
	[LunchBreak] [datetime],
	[EndTime] [datetime],
	[Sundowner] [datetime],
	[Caterer] [nvarchar] NOT NULL,
	[CatererTel] [nvarchar] NOT NULL,
	[CatererEmail] [nvarchar] NOT NULL,
	[Notes] [nvarchar],
	[ID] [int] UNIQUE NOT NULL
)ON [PRIMARY];
GO

/*
* Need to add script section for:
* 	'ACT Database Contacts'
*	Table relationships
*	Bulk insert of data (dummy/real)
*/