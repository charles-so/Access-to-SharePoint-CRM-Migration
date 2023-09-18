## Epic: Implementation of functionalities into the CRM.

### User Story 1: Scheduling appointments with customers, contractors and other relevant partys. 
**As a WAMSI employee, I want to schedule appointments with marine science contractors or customers throught the SharePoint CRM.**

**Acceptance Criteria:**
- Users should be able to propose multiple time slots to clients for appointments.
- The system should notify users when clients accept or propose alternative time slots.
- Appointments should automatically sync with users' personal calendars (e.g., Outlook).
- Users should be able to reschedule or cancel appointments.
- The system should provide a clear overview of upcoming appointments.
- Users should be able to track the status of each appointment (confirmed, pending, cancelled).

**Tasks:**
- Incorporate the appointment scheduling interface into the Power App.
- Implement the proposed time slots functionality and notification system.
- Integrate calendar synchronization with external tools (e.g., Outlook integration).
- Develop the rescheduling and cancellation features.
- Create a dashboard to display upcoming appointments and their status.

### User Story 2: Viewing availability of contacts in the CRM to assist with event scheduling.
**As a WAMSI employee, I want to view the availability of contacts in the CRM so I have an idea of when to organise meettings.**

**Acceptance Criteria:**
- The CRM should have an option to update the availabilities of contacts.
- This availability shouldn't be specific, and will mainly represent general work commitments of contacts.
- The availability of contacts should be highlighted when users of the CRM are sending meeting invites.

**Tasks:**
- Update the database schema to allow for the addition of the availability information. 
- Integrate this information into relevant external tools such as the Outlook calander so this informaiton can be displayed when scheduling meetings. 
- Based on the people needed in a meeting and their preferred availability, provide recomendations to the WAMSI employee as to when a meeting could be scheduled. This could be done by implementing a "When2meet" graphic in outlook.

### User Story 3: Analyze Event and Appointment Data.
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

