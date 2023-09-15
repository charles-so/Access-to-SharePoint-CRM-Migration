## Epic: Migration of CRM to Sharepoint

### User Story 1: Secure and Sustainable Database.

**As a WAMSI employee who interacts with the database I want to only use the user interface / front end version of the product. As someone who has limited knowledge of database schemas I don't want to have to look at what the data looks like.**

**Acceptance Criteria**
* The design of the database schema and back end capabilties should be robust and cater for the growth of the database. 
* The user interface design should be done so no maintenance is required by employees of WAMSI.
* All the functionalities should be able to be accessed through the front end of the application, so WAMSI employees should not need to veiw the database schema. 

**Tasks:**
* Due to current access restrictions, the group is unsure about the current location of the database. We are addressing this by doing a data migration to excel and then uploading this data directly to dataverse so we can work on the front end of the CRM while we wait for IT to inform us on the location of the database server.
* While the data is migrated to excel, we can start building out the front end capabiltities.
* If we are granted Azure SQL access, then we can integrate the Power App we design into the server. 

### User Story 2: The CRM should be user friendly and intuitive. 

**As a WAMSI employee, I want the CRM to be easy to use reliable. This will make my job easier, and makes it easier to teach other employees how to access the database.**

**Acceptance Criteria**
* The user interface should be clear and easy to use. 
* Core functionalities are integrated into the CRM, such as connection with emails and report generation.

**Tasks**
* Use Power Apps to implement front end functionality. 
* Utilize the Microsoft Office macros to incorporate the clients needs into the Power App.

### User Story 3: The database application should be accessible in SharePoint. 

**Much of WAMSI's content is being migrated to SharePoint. As a WAMSI employee, I want a centralised location where I can access all relevant resources in one place, including the CRM database.**

**Acceptance Criteria**
* The CRM user interface should be available on SharePoint. 
* Employees should be able to access the CRM on Sharepoint with ease and minimul steps (1 click access). 

**Tasks:**
* Build a connection between the Power App and Sharepoint. 
* The group could leverage connectors such as the Microsoft Graph API, which can upload Power Apps directly to SharePoint.

