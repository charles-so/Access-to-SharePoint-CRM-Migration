## Overview of the CRM application

### Power Apps
The group has decided to utilise the Microsoft Power App platform when completing this data migration and CRM implementation. Power Apps are a collection of apps, services, and connectors, as well as a data platform, that provides a rapid development environment to build custom apps for business needs. Using Power Apps, you can quickly build custom buisness apps that connect to your data. Power Apps is a low code solution to a CRM, which can be continually improved and automated.

### Reasons for App Design Choice
1. The group decided to leverage the Microsoft Power Apps platform rather than build the application from scratch. If we were to build the app completely ourselves and something were to happen with the application, it would be difficult for an external party to fix any issues or bugs. However, as Microsoft applications are widely adopted and used in business practise, it would be much easier to fix any issues with a Power Apps application.
2. SharePoint and Power Apps are both Microsoft platforms. This means that integration of the Power App designed by the group will be much easier to integrate into SharePoint. The Power App should also run much smoother when in SharePoint compared to other applications. 
3. Power Apps have a range of built-in security functions for data management. These security functions will be much more comprehensive then what the group could have designed given the time constraints. This means that WAMSI will have tight control over how different users can access the data and various records. 
4. Power Apps can run in browser and on mobile devices, making the database more conveniently accessible for managers of the database.

## Set Up Instructions
Due to the restrictions the group has regarding administrative privledges and the universities IT processes, we will be unable to set up the App for WAMSI ourselves. However, below is a comprehensive set of instructions for the IT to set up the App on the WAMSI server.

### Starting Power Apps for the first time
1. Go to the Power Platform admin center: https://admin.powerplatform.microsoft.com/home. This is a page where you can create an "environment" so you can control access to the app and data.
2. In the left navigation pane select "Environments". This will show you your current environments which you can use for power apps. Here you can create a new environment and add specific users.
3. Next go to https://powerapps.microsoft.com/en-us/ and select "sign in" in the top right of the page. This is where the actual power app will be.
4. The left panel is the navigation panel, and contains elements such as "Apps" and "Tables". In the top bar, the environment you are working in will be displayed. Click on this environment and change to the environment you want to work in.

### Downloading the Power App into your environment
1. The Power App will be sent to you in the form of a zip file. In Power Apps, go to "Apps" in the left navigation pane. Click on "Import canvas app".
2. Upload the zip file on the import package page. Once the app is uploaded, you should see the page below. Make sure the import setup option is set to "Create as new".
![Alt text](<Pictures/Image1.png>)
3. Click import at the bottom of the screen. Once this is complete you will receive a message: "All package resources were successfully imported". 
4. Press back and click on "Apps" on the navigation pane. Your app should appear under "My apps". Click on your app and press "Allow" to any connection requests. 

### Downloading Data into the App
1. In the App, under the "Data" heading in the navigation pane, you should see the tables used by the app. Currently, the list contains the variables for the tables used by the app, but the actual tables have not been imported yet. You need to import the tables of the database to your environment and then press add data in the app. It is important to call the tables the same names as the tables currently acting as placeholders in the app, as this is the variable name called by the app.
![Alt text](<Pictures/Image2.png>)
2. There are 8 tables which need to be imported for the app: "ACTDatabaseContacts", "AttendeeTables", "DietTables", "GroupLists", "Events", "Business Units", "Teams" and "Users". Export these tables from the Microsoft Access database as Excel files.
3. In the Power Apps page, go to "Tables" on the left navigation pane. Click "Upload an Excel file".
![Alt text](<Pictures/Image3.png>)
4. Upload each file, making sure to name the table correctly according to how the table is named in the app.
5. Now under "Data" on the Power App, delete all the data listed and select "Add data" to import the actual tables. 

### Integration with Sharepoint
The following instructions is summarized in this video: https://www.youtube.com/watch?v=k6LM6IItZYM
1. Under the "Apps" page in Power Apps, click on the 3 dots next to your app name and select "Details". In the page copy the App ID.
2. Next navigate to the Sharepoint site where you want to insert the power app.
3. Click Edit > Add a new web part > Microsoft Power Apps. Paste the App ID when prompted.
4. Click republish in SharePoint and then sign in to the app on SharePoint in order to use the app. 