# Microsoft Access Database Current State
This is a summary and analysis of the microsoft access database used by WAMSI

## Macros 
* Form_About
    * This macro is designed to close the currently active form or report in Microsoft Access.
    * If any errors occur during the process, it will display an error message and then continue to exit the subroutine.
* Form_Attendee
    * These event handlers are designed to manage the behaviour of various controls and buttons in an Access form, ensuring data integrity and providing user guidance for a better use experience. 
* Form_Attendees
    * The macro is designed to manage a form tha appears to be related to event management. 
    * It allows users to filter and interact with event-related data, send emails on criteria, and open reports and help forms.
* Form_Circulate Email
    * The macro is designed to facilitate various tasks related to managing and interacting with contact data, including filtering, editing, exporting and emaiing contacts. It also includes error handling for potential issues that may arise during these tasks.
* Form_Contacts
    * This macro streamlines contact management tasks, including clearing fields, finding records, adding new contacts, closing the form, deleting records, and handling clipboard operations for contact information. 
    * It also provides a way to view related contacts and access help documentation.
* Form_Email
    * The subroutines are desinged to facilitate the emailing of selected groups or email addresses based on user selections in the form.
    * They include error handling to address potential issues with email addresses and provide a way to close the form safely.
* Form_Events
    * The macro provides functionality for navigating through records, closing the form with data validation, accessing help information, and opening related forms for managing event attendees.
* Form_FindNames
    * Micro enables users to fileter contact records by Surname, Company, or First Nambe based on user input or selections in combo boxes.
    * Additionally, it allows users to click on a contact to open a related "Contacts" form with specific filtering criteria. 
* Form_Groups_List
    * The macro manages the clsoign of the current form with consideration for unsaved changes and provides a warning message when the "Group" field is changed, indicating potential consequences for associated people. 
    * the "Group_GotFocus" subroutine doesn't have any specific functionality in the provied code snippet. 
* Form_Help
    * The first subroutine esures that unsaved changes are not lost when closing a form, while the second subroutine enables certain controls and change the text color of specific controls upon a double-click event.
    * However, the exact functionality of the second subroutine depends on the definition and value of the "Text1" variable. 
* Form_Letters
    * The macro provides functionality for saving, generating RTF and PDF documents, previewing reports, and navigating records in an Access form. It includes error handling to manage potential issues during these actions. 
* Form_Main
    * Used for controlling various actions related to forms, reports, and data export within a Microsoft Access database. It also includes error handling to handle possible exceptions during its execution. 
* Form_Pa_List
    * The macro is designed to handle the closing of a form, ensuring that any unsaved changes are discarded before closing. 
    * Additionally, it sets the initial focus on the "Close" button when the form is loaded. 
* Form_Quick View
    * These subroutine collectively manage various functionalities and interactions within the Access form, including filtering records, sending emails, and opening other forms and reports. 
* Form_Reports
    * These subroutines collectively manage various functionalites and interactions within the Access form, including filtering records, sending emails, exporting data to Excel, and opening reports. 
* Form_View Contacts
    * These subroutines collectively manage various functionalities and interactions within the Access form, including filtering records, sending emails, copying information, and navigating between records.

## Summary of required functionality based on Macros
* Sending emails from the CRM database.
* Filtering capabilities. 
* 
