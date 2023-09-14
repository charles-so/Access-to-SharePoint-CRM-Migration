# Plan of Action
A plan of action to create an interactive interface with the database.
Each step of the process must be documented so that it can be replicated.

## Migrate Data
- export MS Access Data into csv values and the into Excel document
- use the tables: ACT Contacts Database, Attentees, Events
- remove/replace attributes that are not used (use Group 'string' and Diet 'string' in Excel workbook?)

## Create power app(s)
- functionality for:
    - CRUD for events
    - CRUD for contacts
    - CRUD for Attendees
    - Linking Attentees to events
    - Send emails to groups (link to excel)
    - Linking Attendees to Contacts Database

## Linking with outlook
This will use Power Automate
- automate excel document to mark as 'Accepted' if replied accepted [1]
- sending email from excel [2]

## Other useful resources:
See [Section E of 'UsefulLinks.md'](UsefulLinks#e-dataverse-on-sharepoint) for more implementation resources.

## Reference links:
1. https://www.youtube.com/watch?v=OrCs36S3w3w
2. https://www.youtube.com/watch?v=vg4NmlscoFU