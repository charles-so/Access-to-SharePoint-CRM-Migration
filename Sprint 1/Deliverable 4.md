# TESTING REPORT

## GROUP 29

## Contents

1. [Objectives](#objectives)
2. [Document References](#document-references)
3. [Test A](#test-a)
4. [Test B](#test-b)
5. [Test C](#test-c)
6. [Test D](#test-d)

## Objectives
This document discusses the testing steps and the results for a data migration project. The whole testing will consider using a dummy database to avoid unexpected modifications to the original data and to secure the data privacy.

## Document References
1. [CITS3200-Team-29 Scope of Work](#)
2. [CITS3200-Team-29 Project Backlog - User Stories](#)

## Test A – Data Quality
Test A considers four separate tests to check the data quality after data extraction, cleaning, and migration process: Test A1 – Data Lossless, Test A2 – Data Redundancy, Test A3 – Data relationships, Test A4 – Data Missing.
The input database used in this test is the dummy database.

| Test Name | Test Description | Expected Result | Actual Result | Passed | Comments/Issues |
|-----------|------------------|-----------------|---------------|--------|-----------------|
| Test A1   | Verifies that contacts are not lost during stages of data migration. This test can be conducted using Python. | Every contact in the input database should be included in the output database. | | | |
| Test A2   | Verifies that redundant contacts are removed. This test can be conducted using Python. | Number of contacts in the output database should be around 2500 – 3000. | | | |
| Test A3   | Verifies that relationships between tables are maintained after the migration process. This test can be conducted using SQL. | The number of tables, foreign keys, primary keys in tables, table schema in the output database are similar to which of the input database. | | | |
| Test A4   | Detects any missing data (phone numbers, contacts, jobs) in the output database and reports to the client. This test can be conducted using Python. | Contacts are filled out at maximum. | | | |

## Test B – Data Management
Test B considers three separate tests to test the management of data using a CRM solution. The input database is the dummy database after cleaning and migration processes.

Test B1 – Data CRUD, Test B2 – Data Grouping, Test B3 – Data Functionalities.

| Test Name | Test Description | Expected Result | Actual Result | Passed | Comments/Issues |
|-----------|------------------|-----------------|---------------|--------|-----------------|
| Test B1   | Verifies that CRM integration allows creating new contacts, updating current contacts related to their relationship. | A contact is updated throughout every table. A new contact can be created without duplicating. | | | |
| Test B2   | Verifies that the CRM integration allows searching and sorting contacts based on various filters. | A group of contacts with a certain criterion is sorted out. | | | |
| Test B3   | Verifies that CRM integration supports functionalities. | Able to create, edit and delete functionalities for contact information. Able to email invitations to several contacts that are grouped by filtering at once. | | | |

## Test C – Access Control
Test C considers two separate tests to test the database accessibility levels of different account types and control of accessibility by authorized accounts. This test is conducted on SharePoint.

Test C1 – Accessibility, Test C2 – Access Control.

| Test Name | Test Description | Expected Result | Actual Result | Passed | Comments/Issues |
|-----------|------------------|-----------------|---------------|--------|-----------------|
| Test C1   | Verifies that the database is only restricted to registered users. This test can be conducted on SharePoint by testing out different accounts at different levels of accessibility. | Only registered users allowed access to sensitive contact information. Non-registered accounts allowed access to public information. Non-members do not have any access to the database. | | | |
| Test C2   | Verifies that registered users can give permission to non-registered users’ access. | Registered users can manage who can access the database and give access permission. | | | |

## Test D – Event Management
Test D considers three separate tests to test the management of events and scheduling using a CRM solution and SharePoint.
Test D1 – Event modifications, Test D2 – Event Storage and Management, Test D3 – Participants’ interfaces.

| Test Name | Test Description | Expected Result | Actual Result | Passed | Comments/Issues |
|-----------|------------------|-----------------|---------------|--------|-----------------|
| Test D1   | Verifies that the CRM solution can create, edit and delete events. | The system allows creating events with a title, description, date, time, location, and associated contacts. The system allows editing and deleting events. | | | |
| Test D2   | Verifies that events are stored in the database for future references. | Events are stored and searchable based on title, date, and type. Events should include information of invited attendants, invited non-attendants and non-invited attendants etc. | | | |
| Test D3   | Verifies that invitations and notifications are sent to related contacts through their email and displayed in a calendar view. | Contacts should have an option of attending or not. Contacts interface should display the event invitations, date, title and get updated if the events are changed. | | | |
