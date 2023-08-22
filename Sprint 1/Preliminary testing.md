# MS Access database migration to SharePoint Preliminary Tests

## Abstract
This document will outline methods of testing to be done for the migration of an MS Access database to a database that can be utilized via SharePoint. The testing will explore industry solutions have been supported by Microsoft to successfully transfer a database to SharePoint. The purpose of these tests is strictly to inform the decision-making process for the final solution: to migrate the database to SharePoint. Further tests may need to be conducted, and the final solution may include none/some/many of the methods trialled. 

## Preparation
### Preparation 1: Dummy Database
- utilise a dummy database with meaningless entities i.e., attributes with no value
- Preliminarily, two tables are used, one for contacts, and the other for events
- The schemas of the tables correspond closely to the client’s database schema, with a few additional attributes that will be used down the line to add further functionality to the database
- The event table references contacts (for scheduling purposes), and this relationship is indicated in the Dummy database design

### Preparation 2: Sharepoint
A SharePoint ‘site’ will be created, which will be where the migrated database if finally accessible from.

## Tests
### Test 1: SharePoint Lists
**This solution is the most common and simplest solution to migrate the database to SharePoint.**
- Export the MS Access database table as a SharePoint List to the target (SharePoint) site [1].
- Results in each table being a separate list. SharePoint Lists log operations and has a lot of built in functionality to maintain data integrity.

### Test 2: SQL Database for SharePoint Site
**This solution has highest Microsoft support and maintains the overall database structure i.e., relational database.**
- Export the MS Access database to an SQL database
- This SQL database must be published to an Azure SQL database to be a content database that can be pulled into SharePoint [3]
- Then the Microsoft BCS (Business Connectivity Services) can be used to connect the SQL Server to SharePoint, and database entries will be pulled into external lists that the user can interact with [2].
- This method has Microsoft documentation for all steps of implementation [4] but is more vigorous.

## Evaluation
Each of the tests will be evaluated for its success based on the following criteria:
- There are no data leaks in the migration process
- The data maintains CIA
- The migrated database allows for CRUD operations
- The migrated database has intuitive navigation

## Conclusion
These tests will be carried out and the test results will be provided in a successive document.


## References
1. https://www.accessrepairnrecovery.com/blog/access-sharepoint-data-migration
2. https://learn.microsoft.com/en-us/sharepoint/manage-business-connectivity-service-applications
3. https://social.technet.microsoft.com/wiki/contents/articles/28286.office-365-sharepoint-online-bcs-with-azure-sql-server-database.aspx
4. https://learn.microsoft.com/en-us/sharepoint/create-or-edit-secure-store-target-application


