# Deliverable 1

### Description of Deliverable
A scope of work: A general statement of what the project is to achieve.

## 1. Introduction
### 1.1 Purpose
- **Purpose of the Project:** To update and migrate the existing database to a system that is more compatible with SharePoint.

### 1.2 Scope
- **New Database:** Will be more user-friendly for access on SharePoint and will include enhanced functionalities for ease of use.


## 2. Milestones 

### Sprint 1
- For Sprint One, the objective was to gather all the necessary knowledge to fulfill the project requirements.
  - Comprehensive documentation was undertaken to ensure all information was recorded.


### Sprint 2
- For Sprint Two, the aim is to migrate the "dummy" database and make sure it runs properly before conducting work on the real data.
  - Testing will be conducted to identify possible issues, with measures taken to minimize any associated risks.


### Sprint 3
- For Sprint Three, the focus is on finalizing the project.
  - Efforts will be made to incorporate all functionalities required by the client.
   - A thorough cleanup will be conducted to ensure everything is in order.


## 3. Stakeholder Analysis
### 3.1 Client  
  Ms. Trish Wells: [trish.wells@wamsi.org.au](mailto:trish.wells@wamsi.org.au)  
  Dr. Luke Twomey: [luke.twomey@wamsi.org.au](mailto:luke.twomey@wamsi.org.au)

  ---
  
### 3.2 Team
1. Sultan Alqemzi (22880665)
2. Geraldine Chin (22972043)
3. Finn O'Callaghan (22975893)
4. Ann Roy (23132836)
5. Charles So (23199336)
6. Tyson Tran (22834433)

## 4. Existing Database Analysis

* **Usage:** Utilized for meetings, workshops, and events.
* **Current State:** Contains 3,550 contacts; redundant data exists.
* **Location:** Hosted at WAMSI, available in MS Access, and accessible via SharePoint.
* **Limitations:** Users must manually verify each contact detail for attendees.
* **Issues:** Potential existence of duplicate contacts.

## 5. New Database Requirements
### 5.1 Data Structure
- The data structure will be aligned with the chosen CRM.
 - Confirmation with the client will be required, along with access to the real database.


### 5.2 Functional Requirements
* **Response Selection:** Ability to mark as attended or unattended.
* **Availability Timing:** Scheduling and timing options.
* **Report Production Capability:** Includes features for generating detailed reports.
* **Contact-Specific Notes:** Allows for the inclusion of specific notes for individual contacts.

### 5.3 Accessibility
* **WAMSI's Team:** Comprised of 8 members.
* **User Interaction with Database:** Users will engage with the database to ensure that all future conference goals are met.

## 6. Migration Strategy
* **Dummy Database Creation:** A dummy database will be created in MS Access to simulate the existing data, ensuring that the migration process proceeds smoothly.
* **Flagging System:** This system will assist the client in identifying the information that requires cleaning or updating.


## 7. Security Requirements
* **Data Security:** Data will be handled securely by allowing only one team member to have a copy on their device for trial database migration.
* **Risk Register:** More detailed information regarding potential risks and mitigations is provided in the risk register document.

## 8. Performance Requirements

### 8.1 Response Times
- Queries must return results within 2 seconds for up to 3000 records.
- Updating a record must complete within 1 second.

### 8.2 Concurrency Support
- The system must support at least 8 concurrent users.
- Locking mechanisms must be implemented to prevent conflicting updates.

### 8.3 Scalability
- The system must handle a 50% increase in user volume over the next two years.
- The database must support the growth of up to 1TB of data without performance issues.

## 9. Scenarios
1. As a WAMSI project manager, I want to effectively manage and track interactions with project contacts.
2. As a WAMSI system administrator, I want to ensure that only authorized members can access and view sensitive project contact information.
3. As a WAMSI project manager, I want to create and manage events within the CRM SharePoint Database, so that I can organize and track various business activities.
4. As a WAMSI member, I want to schedule appointments with clients through the CRM SharePoint Database, to manage my meetings efficiently.
5. As a WAMSI project manager, I want to analyze the event and appointment data in the CRM SharePoint Database, to make informed decisions.

## 10. Constraints and Assumptions
- Seeking a CRM funded by the university will influence the overall cost of the project.
  - It should be noted that the new cloud-based CRM may not have the functionalities required by the client.


## 11. Approval
- Per the client's request, approval will be sought only when necessary. Meetings will be conducted via Teams, and the team leader is responsible for contacting the client.

# Deliverable 2

### Description of Deliverable
Skills and Resouces Audit: This includes the skills of the team, upskilling required and tools needed to complete the project.



# Deliverable 3

### Description of Deliverable
A Risk Register: includes possible risks, the impact the risks will have on the organisation if realised, and how the team will mitigate those risks to an acceptable level.

## Requirements of Deliverable 3
* Create a risk register.
* Discussion about possible risks to the project and how the team will avoid or mitigate those risks.

## How to Create a Risk Register
* A risk register is a risk management tool that's used to identify potential risks that could affect the execution of a project plan.
* What is included in a risk register:
    * Risk Identification ID
    * Risk Description
    * Risk breakdown structure
    * Risk categories
    * Risk analysis
    * Risk probability
    * Risk priority
    * Risk response
    * Risk ownership

## Risk Register:

<table>
  <thead>
    <tr>
      <th>ID</th>
      <th>Description of Risk</th>
      <th>Impact</th>
      <th>Risk Response</th>
      <th>Risk Level</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>1</td>
      <td>Sensitive data becoming compromised</td>
      <td>Privacy of individuals becomes compromised, loss of trust in the organisation.</td>
      <td>All members of the team are to sign a confidentiality agreement. All team members will also follow best workplace and coding practises to ensure the security of the data.</td>
      <td bgcolor= "red">High</td>
    </tr>
    <tr>
      <td>2</td>
      <td>Loss of important information</td>
      <td>The organisation will lose key contacts, as well as compromising the overall validity of the database.</td>
      <td>The team will conduct data migrations on a dummy database prior to the actual database migration. This will ensure that no data will be lost in the trial migrations as well as perfecting the method for the real migration. The data will also be cloned to avoid data loss in worse case scenario.</td>
      <td bgcolor= "orange">Medium</td>
    </tr>
    <tr>
      <td>3</td>
      <td>The team fails to find a CRM platform which is endorsed by the university</td>
      <td>WAMSI will have to pay for the services to use a different CRM platform.</td>
      <td>Members of the team will contact different faculties or sectors of the university in order to gain an insight into the current systems used and see if those systems can be leveraged by WAMSI.</td>
      <td bgcolor= "green">Low</td>
    </tr>
    <tr>
      <td>4</td>
      <td>Differences between the current microsoft access database and the new cloud based database</td>
      <td>Due to differences between the two databases, data can be manipulated during the transfer and be stored differently once migrated, resulting in corrupted data.</td>
      <td>The team will address this during the dummy run data migrations, as well as paying close attention to the data types and formats specified in the new database.</td>
      <td bgcolor= "green">Low</td>
    </tr>
    <tr>
      <td>5</td>
      <td>The team fails to address data dependencies and relationships in the migration</td>
      <td>If some of the relationships between dependent data are compromised during the data transfer, this may alter some of the information in the database.</td>
      <td>A current state analysis of the data and relevant dependencies will be performed and tested during the dummy runs to ensure that the data is not compromised.</td>
      <td bgcolor= "orange">Medium</td>
    </tr>
    <tr>
      <td>6</td>
      <td>Loss of functionality which was previously available in microsoft access</td>
      <td>The key functionality of the current system is to generate reports to access availability of contractors / employees. This functionality needs to be transferred to the new CRM.</td>
      <td>The team will conduct research on current available database systems. We will look at improving this current functionality as well as adding other relevant functions.</td>
      <td bgcolor= "green">Low</td>
    </tr>
    <tr>
      <td>7</td>
      <td>Duplication of data</td>
      <td>There is a chance of duplicating data during the data migration due to re-running of failed jobs. There are also duplicates existing in the current database.</td>
      <td>Measures in the dummy run will be taken to ensure no data is duplicated. The team will create a summary of the data such as number of rows, columns, unique identifers etc to ensure that the migrated database matches the old database. As the team has been instructed to not delete any data, we will flag inputs which we believe are duplicates for the client so it is easier for them to sort the data.</td>
      <td bgcolor= "green">Low</td>
    </tr>
    <tr>
      <td>8</td>
      <td>Data governance, compliance and management issues</td>
      <td>If the client is not fully aware of the process throughout the migration, there may be issues which the team would be unaware of such as various governance and compliance regualtions of the organisation.</td>
      <td>The team, specifically the allocated project manager, will maintain regular communication with representatives from WAMSI to ensure that they are satisfied with the process. It is particuarly important for the team to notify WAMSI when it intends to make any major changes during the project.</td>
      <td bgcolor= "green">Low</td>
    </tr>
    <tr>
      <td>9</td>
      <td>Extended downtime risk</td>
      <td>Occurs when the data migration process takes longer than expected, which will results in inconveniences for the relevant stakeholders (WAMSI).</td>
      <td>The team will migrate at non-peak hours to limit the impact to WAMSI.</td>
      <td bgcolor= "green">Low</td>
    </tr>
    <tr>
      <td>10</td>
      <td>There is a security breach during the data migration</td>
      <td>If there is a data breach during the migration, then sensitive information can be leaked to external parties.</td>
      <td>Data encrypton processes such as using a secure transport protocal like Hypertext Transfer Protocol Secure (HTTPS) will be investigated by the team before, during and after transit. The team will also look at doing a phased migration which means that if the database is compromised, only part of the data will be leaked.</td>
      <td bgcolor= "red">High</td>
    </tr>
  </tbody>
</table>

## General Principles for Risk Mitigation for Database Migration
* Assess the tools the database vendor offers for migrations in order to make the process more streamlined.
* Do a test run (or multiple) for the database migration.
* Migrate at non-peak hours to ensure that if there are issues with the migration, there is minimal impact on the organisation.
* Prepare a rollback and recovery plan to reset the process if there are major bugs present.

# Deliverable 4

### Description of Deliverable
Project Acceptance Tests: Tests which will be conducted by the team to ensure that the project has been successful.

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


# Deliverable 5

User Stories: A set of user stories which will be completed in Sprint 2.

## Epic 1: CRM Integration

### User Story 1: Manage and Track Interactions with Project Contacts
**As a WAMSI project manager, I want to effectively manage and track interactions with project contacts.**

**Acceptance Criteria:**
- The CRM integration should allow importing and exporting of contact information.
- Contact information should inherit the schema utilized by Access.
- The CRM integration should support adding notes and updates related to interactions with contacts.
- The integration should provide a user-friendly interface for searching and sorting contacts based on various criteria.

**Tasks:**
- Research available CRM integrations for SharePoint and evaluate their suitability.
- Select and integrate a CRM solution that aligns with the project's requirements.
- Design the user interface for displaying and interacting with CRM data.
- Implement the import/export functionality for contact information.
- Develop the ability to associate contacts with specific projects.
- Implement the feature to add, view, and edit interaction notes for each contact.
- Implement search and sorting functionality based on different contact attributes.
- Perform thorough testing to ensure data accuracy and system stability.


## Epic 2: Access Control and Member Restriction

### User Story 1: Ensure Authorized Access to Sensitive Information
**As a WAMSI system administrator, I want to ensure that only authorized members can access and view sensitive project contact information.**

**Acceptance Criteria:**
- Access to the SharePoint database should be restricted to registered and authenticated users only.
- Non-members should not be able to view any project contact information.

**Tasks:**
- Implement user registration and authentication: Integrate a secure authentication mechanism to allow only registered users to access the system.
- Create an access control dashboard: Develop a dashboard where administrators can manage user roles and permissions.
- Test user registration and authentication thoroughly to ensure security.
- Test role-based access control with different scenarios to verify that users can only access appropriate data.

## Epic 3: Event Management and Scheduling

### User Story 1: Create and Manage Events
**As a WAMSI project manager, I want to create and manage events within the CRM SharePoint Database, so that I can organize and track various business activities.**

**Acceptance Criteria:**
- The system should allow users to create events with a title, description, date, time, location, and associated contacts.
- Users should be able to categorize events by type (e.g., meetings, conferences, follow-ups).
- Events should be displayed in a calendar view.
- Users should be able to edit and delete events.
- Notifications should be sent to participants when an event is created or modified.
- Events should be searchable based on title, date, and type.

**Tasks:**
- Design the event creation form with necessary fields.
- Implement the database structure to store event data.
- Develop the calendar view to display events.
- Create the functionality to edit and delete events.
- Implement notifications for event creation and updates.
- Integrate search functionality for events.

### User Story 2: Schedule Appointments with Clients
**As a WAMSI member, I want to schedule appointments with clients through the CRM SharePoint Database, to manage my meetings efficiently.**

**Acceptance Criteria:**
- Users should be able to propose multiple time slots to clients for appointments.
- The system should notify users when clients accept or propose alternative time slots.
- Appointments should automatically sync with users' personal calendars (e.g., Outlook).
- Users should be able to reschedule or cancel appointments.
- The system should provide a clear overview of upcoming appointments.
- Users should be able to track the status of each appointment (confirmed, pending, cancelled).

**Tasks:**
- Design the appointment scheduling interface.
- Implement the proposed time slots functionality and notification system.
- Integrate calendar synchronization with external tools (e.g., Outlook integration).
- Develop the rescheduling and cancellation features.
- Create a dashboard to display upcoming appointments and their status.

### User Story 3: Analyze Event and Appointment Data
**As a WAMSI project manager, I want to analyze the event and appointment data in the CRM SharePoint Database, to make informed decisions.**

**Acceptance Criteria:**
- The system should generate reports showing the distribution of event types over time.
- Managers should be able to filter and visualize event data by different criteria (e.g., type, date, contact).
- Reports should be exportable in formats like PDF or Excel.
- Data should be presented in easy-to-understand graphs and charts.

**Tasks:**
- Design report templates for different types of analyses.
- Implement data visualization tools for generating graphs and charts.
- Develop filters and sorting options for the reports.
- Integrate export functionality for reports in various formats.
