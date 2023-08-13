# Project Backlog – User Stories
**Team 29**

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