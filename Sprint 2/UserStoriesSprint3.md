# Project Backlog - Epics and User Stories for Sprint 3

## Epic 1: Table Schema Adjustments

### User Story 1: Adjusting Table Schemas for Enhanced Contact Management
_As a WAMSI event manager_  
I want to adjust table schemas to store additional information about contacts and improve group management.

**Acceptance Criteria:**
- ACTDatabases should support additional columns for Email and Notes.
- GroupList should allow the association of multiple Groups with a single Contact.

**Tasks:**
1. Modify ACTDatabases schema to introduce columns for additional Email and Notes.
2. Update GroupList schema to support multiple Groups per Contact.

## Epic 2: Event Management

### User Story 1: Event Management with Email Integration
_As a WAMSI event manager_  
I want to manage event participants efficiently by adding contacts and sending email invites, and updating event statuses from received emails.

**Acceptance Criteria:**
- Users should be able to add Contacts to events, either by Group or individually.
- System should facilitate sending email invites to the chosen Contacts.
- The status of an event (e.g., attending, declined) should be updated based on the responses from emails.

**Tasks:**
1. Integrate an option to add Contacts to events by Group or individually.
2. Implement email invitation functionality.
3. Develop an email parsing system to update event statuses based on email responses.

### User Story 2: Checking Availability of Contacts for Effective Scheduling
_As a WAMSI event manager_  
I want to view the availability of contacts in the CRM so I have an idea of when to organise meetings.

**Acceptance Criteria:**
- The CRM should have an option to update the availabilities of contacts.
- This availability shouldn't be specific, and will mainly represent general work commitments of contacts.
- The availability of contacts should be highlighted when users of the CRM are sending meeting invites.

**Tasks:**
1. Update the database schema to allow for the addition of the availability information.
2. Integrate this information into relevant external tools such as the Outlook calendar so this information can be displayed when scheduling meetings.
3. Based on the people needed in a meeting and their preferred availability, provide recommendations to the WAMSI employee as to when a meeting could be scheduled. Implement a "When2meet" graphic in Outlook.

## Epic 3: Report Generation

### User Story 1: Dynamic Report Creation and Distribution
_As a WAMSI project manager_  
I want to generate Excel reports from event data and share these reports with specified contacts via email.

**Acceptance Criteria:**
- Users should be able to select an event and decide the data columns for the report.
- System should generate Excel reports based on the selected data.
- Users should have the option to forward the generated report to specified Contacts either by group or individually via email.

**Tasks:**
1. Design an interface for event selection and data column specification.
2. Implement functionality to generate Excel reports based on selected data.
3. Integrate email functionality to send generated reports to specified Contacts/Groups.
