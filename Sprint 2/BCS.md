# Microsoft Business Connectivity Service (BCS)

## What is BCS
BCS enables SharePoint to work with data that is hosted externally. 
Possible sources can include databases, web services, Windows Communication Foundation (WCF) services, Open Data Protocol (OData) sources, and other proprietary data that is accessed by using custom .NET assemblies.

## Business Connectivity Services External List
The External List links to the external data and displays it to the user.

Overview:
1. Create a connection to an external database
2. Users with permissions to do so within SharePoint can add the External List app
3. Select the External Content Type to use within the External List
4. The External List is then created and will display the data from the external database
5. The user can create and customize views, apply filters, and sorting in the same way as they would in a standard SharePoint List.

## Connecting to External Data - External Content Type
In order to create the connection to the External Data Source, you need to create what is known as an External Content Type.
The External Content Type describes the table of data that you are connecting to.

There are several ways to create the External Content Type;
1. SharePoint Designer can be used to create an External Content Type for Microsoft SQL or Microsoft SQL Azure without writing code. .NET Assembly and WCF Service would need to be coded.
2. Visual Studio enables you to create a .NET Assembly, or WCF Service External Content Type. 
3. A third Party tool such as BCS Meta Man can create the External Content Type code free for around 30+ external data sources.

Reference:
https://lightningtools.com/sharepoint/business-connectivity-services/

## Step 1
# Create Business Data Connectivity Service (BCS) Application in SharePoint 2016
BDC service application in SharePoint can be configured by following the below steps:
1. Log in as a Farm administrator and Open SharePoint Central administration site
2. Click on Application Management >> Service Applications >> Manage service applications
3. In the Manage service applications page, click on the New button from the Ribbon.
4. From the menu, choose Business Data Connectivity Service.
5. Provide the Name, Database Name, and database server.
6. Leave Failover Database Server empty unless SQL Server database for SharePoint is configured with mirroring.
7. Scroll down and set Application Pool settings. You can either select Use existing application pool or create new application Pool by providing name and Managed Account.
8. At the bottom of the page, click OK to trigger creating a new BDC service application.
9. Once created, a success popup appears and the new Business data connectivity service application will be listed under service applications list.

Once the service application is created, start the corresponding service instance.
1. Browse to SharePoint 2016 Central Administration site
2. On the “Application Management” page under “Service Applications” click “Manage services on server”
3. Find Business Data Connectivity Service and then click Start if its not started already.

Reference:
https://www.sharepointdiary.com/2016/05/create-bdc-service-application-in-sharepoint-2016.html

## Step 2
# Create External Lists from SQL Server using BCS in SharePoint 2016
1. Create External Content Type in SharePoint Designer 2013
    - Open the SharePoint 2016 site in SharePoint Designer 2013
    - Select External Content Types in the left Navigation. 
    - In the External Content Type creation page, Enter the Name and Display Name for the external content type. 
    - Click on “Add a Connection” button to connect to the database. Select Data source type as SQL Server.
    - Setup SQL Server connection properties
    - Select the relevant table to which we are going to connect from SharePoint.
    - Run through the wizard, specify appropriate settings such as filters, necessary fields.
    - Click Save to complete creation of external content type.

2. Create External List in SharePoint 2016
    - Open SharePoint site in Browser, Add an App >> Choose External List.
    - Choose content type created from previous step. Provide a name to the External list and hit OK.
    - SharePoint list is now populated from the database table.

Reference:
https://www.sharepointdiary.com/2016/05/create-external-lists-from-sql-server-using-bcs-in-sharepoint-2016.html




