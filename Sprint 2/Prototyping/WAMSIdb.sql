
/*============================================================================
  File:     WAMSIdb.sql

  Creates the sql database for the contacts

  Modified Date:	2 Sep 2023
  Contributors:		Ann Roy, Charles So

  Modified 31 Aug 2023:
  - added line to use the right database
  - set nvarchar to 50
  - added condition checks for safer codes

  Modified 2 Sep 2023:
  - addded 'ACT Database Contacts' table
  - added table relationships
  - Altering table contraints (NOT NULLS, [bit]>[char] 
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
	[DietID] [int] IDENTITY(1,1) PRIMARY KEY,
	[Diet] [nvarchar](50) NOT NULL
)ON [PRIMARY];
GO

IF OBJECT_ID('dbo.GroupsList', 'U') IS NOT NULL
DROP TABLE dbo.GroupsList
GO
CREATE TABLE [dbo].[GroupsList](
	[GroupID] [int] IDENTITY(1,1) PRIMARY KEY,
	[Group] [nvarchar](50) NOT NULL
)ON [PRIMARY];
GO


IF OBJECT_ID('dbo.Attendees', 'U') IS NOT NULL
DROP TABLE dbo.Attendees
GO
CREATE TABLE [dbo].[Attendees](
	[AttendeeID] [int] IDENTITY(1,1) PRIMARY KEY,
	[EventName] [nvarchar](50), /*redundant*/
	[Accepted] [bit],
	[Declined] [bit],
	[Attended] [bit],
	[Speaker] [bit],
	[Subject] [nvarchar](50),
	[Presentation] [bit],
	[Day] [datetime],/*redundant*/
	[DietID] [int] NOT NULL,
	[StartTalkTime] [datetime],/*redundant*/
	[EndTalkTime] [datetime],/*redundant*/
	[ID] [int],
	[EventsID] [int] NOT NULL,
	[Extra] [bit],
)ON [PRIMARY];
GO

IF OBJECT_ID('dbo.Events', 'U') IS NOT NULL
DROP TABLE dbo.Events
GO
CREATE TABLE [dbo].[Events](
	[EventsID] [int] IDENTITY(1,1) PRIMARY KEY,
	[EventName] [nvarchar](100) NOT NULL,
	[EventDescription] [nvarchar](100),
	[Status] [nvarchar](50),/*use?*/
	[Location] [nvarchar](100),
	[AvailableSpaces] [int],
	[StartDate] [datetime],
	[EndDate] [datetime],
	[StartTime] [time],
	[MorningBreak] [time],
	[LunchBreak] [time],
	[EndTime] [time],
	[Sundowner] [time],
	[Caterer] [nvarchar](50),
	[CatererTel] [nvarchar](50),
	[CatererEmail] [nvarchar](50),
	[Notes] [nvarchar](255),
	[ID] [int] /*redundant*/ 
)ON [PRIMARY];
GO



IF OBJECT_ID('dbo.ACTDatabaseContacts', 'U') IS NOT NULL
DROP TABLE dbo.Events
GO
CREATE TABLE [dbo].[ACTDatabaseContacts](
	[ID] [int] IDENTITY(1,1) PRIMARY KEY,
	[Address1] [nvarchar](50),
	[Address2] [nvarchar](50),
	[Address3] [nvarchar](50),
	[Address4] [nvarchar](50),
	[City] [nvarchar](50),
	[City2] [nvarchar](50),
	[Company] [nvarchar](50) NOT NULL,
	[Country] [nvarchar](50),
	[Department] [nvarchar](50),
	[Email] [nvarchar](50),
	[FaxPhone] [nvarchar](50),
	[GroupID] [int],
	[Circulate] [int],/*redundant*/ 
	[Alt] [bit],
	[AltPhone] [int],
	[ID/Status] [nvarchar](50),
	[MobilePhone] [int],
	[NamePrefix] [nvarchar](50),
	[PersonalEmail] [nvarchar](50),
	[Phone] [nvarchar](50),
	[Postcode] [int],
	[Postcode2] [int],
	[Spouse] [nvarchar](50),
	[State] [nvarchar](50),
	[State2] [nvarchar](50),
	[Surname] [nvarchar](50),
	[Title] [nvarchar](50),
	[Website] [nvarchar](50),
	[Notes] [nvarchar](255),
	[PA] [int]
)ON [PRIMARY];
GO


-- ******************************************************
-- Adding Relationships
-- ******************************************************

/*
* ACTContacts Groups reference
*/
ALTER TABLE [dbo].[ACTDatabaseContacts]
   ADD CONSTRAINT Contact_Group FOREIGN KEY (GroupID)
      REFERENCES [dbo].[GroupsList] (GroupID)
      ON DELETE SET NULL
      ON UPDATE CASCADE
;

/*
* Attendee contact reference
*/
ALTER TABLE [dbo].[Attendees]
   ADD CONSTRAINT Attendee_Contact FOREIGN KEY (ID)
      REFERENCES [dbo].[ACTDatabaseContacts] (ID)
      ON DELETE SET NULL
      ON UPDATE CASCADE
;

/*
* Attendee event reference
*/
ALTER TABLE [dbo].[Attendees]
   ADD CONSTRAINT Attendee_Event FOREIGN KEY (EventsID)
      REFERENCES  [dbo].[Events] (EventsID)
      ON DELETE CASCADE
      ON UPDATE CASCADE
;

/*
* Attendee diet reference
*/
ALTER TABLE [dbo].[Attendees]
   ADD CONSTRAINT Attendee_Diet FOREIGN KEY (DietID)
      REFERENCES  [dbo].[Diets] (DietID)
      ON DELETE NO ACTION
      ON UPDATE CASCADE
;



