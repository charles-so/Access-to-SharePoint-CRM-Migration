## Sprint 2 Summary:
- Explored various CRM options `CRM Options and Researches`, eventually deciding on MS Dataverse and Power App for CRM implementation
- Under `Prototyping`, created SQL script to load Access table data into MS SQL Server. (ensure a universal format when data is loaded into Dataverse tables. into the dataverse table).
- Transferred dummy data from Access to Data-verse tables.
- Developed a Power App UI integrated with Data-verse tables.
- Enabled record operations (add, modify, delete) via Power App.
- Introduced a basic feature to register attendees for events.

## Sprint 3 Objectives: (Details in `UserStoriesSprint3.md`)
- **Table Schema Adjustments:**
    - **ACTDatabases:**
        - Introduce columns for additional Email and Notes.
    - **GroupList:**
        - Allow multiple Groups per Contact.
- **New Functionalities:**
    - **Event Management:**
        - Add Contacts to events, either by Group or individually.
        - Send email invites to chosen Contacts.
        - Update Status from Email.
    - **Report Creation:**
        - Choose an event.
        - Craft an Excel report based on selected data columns.
        - Forward the report to specified Contacts by Email.
