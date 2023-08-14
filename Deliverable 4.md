> **TESTING REPORT**

**GROUP 29**

**Contents**

1.  Objectives 3

2.  Document References 3

3.  Test A 3

4.  Test B 4

5.  Test C 6

6.  Test D 7

**Objectives**

This document discusses the testing steps and the results for a data
migration project. The whole testing will consider using a dummy
database to avoid unexpected modifications to the original data and to
secure the data privacy.

**Document References**

1.  CITS3200-Team-29 Scope of Work

2.  CITS3200-Team-29 Project Backlog - User Stories

**Test A -- Data Quality**

Test A considers four separate tests to check the data quality after
data extraction, cleaning, and migration process: Test A1 -- Data
Lossless, Test A2 -- Data Redundancy, Test A3 -- Data relationships,
Test A4 -- Data Missing.

The input database used in this test is the dummy database.

  ---------------------------------------------------------------------------------------
  **Test      **Test          **Expected   **Actual    **Passed**   **Comments/Issues**
  Name**      Description**   Result**     Result**                 
  ----------- --------------- ------------ ----------- ------------ ---------------------
  Test A1     Verifies that   Every                                 
              contacts are    contact in                            
              not lost during the input                             
              stages of data  database                              
              migration. This should be                             
              test can be     included in                           
              conducted using the output                            
              Python.         database.                             

  Test A2     Verifies that   Number of                             
              redundant       contacts in                           
              contacts are    the output                            
              removed. This   database                              
              test can be     should be                             
              conducted using around 2500                           
              Python.         -- 3000.                              

  Test A3     Verifies that   The number                            
              relationships   of tables,                            
              between tables  foreign                               
              are maintained  keys,                                 
              after migration primary keys                          
              process. This   in tables,                            
              test can be     table schema                          
              conducted using in the                                
              SQL.            output                                
                              database are                          
                              similar to                            
                              which of the                          
                              input                                 
                              database.                             

  Test A4     Detects any     Contacts are                          
              missing data    filled out                            
              (phone numbers, at maximum.                           
              contacts, jobs)                                       
              in the output                                         
              database and                                          
              reports to the                                        
              client. This                                          
              test can be                                           
              conducted using                                       
              Python.                                               
  ---------------------------------------------------------------------------------------

**Test B** **-- Date Management**

Test B considers three separate tests to test the management of data
using a CRM solution. Input database is the dummy database after
cleaning and migration processes.

Test B1 -- Data CRUD, Test B2 -- Data Grouping, Test B3 -- Data
Functionalities.

  -------------------------------------------------------------------------------------------------
  **Test      **Test             **Expected        **Actual      **Passed**   **Comments/Issues**
  Name**      Description**      Result**          Result**                   
  ----------- ------------------ ----------------- ------------- ------------ ---------------------
  Test B1     Verifies that CRM  A contact is                                 
              integration allows updated                                      
              creating new       throughout every                             
              contacts, updating table. A new                                 
              current contacts   contact can be                               
              related to their   created without                              
              relationship.      duplicating.                                 

  Test B2     Verifies that the  A group of                                   
              CRM integration    contacts with a                              
              allows searching   certain criterion                            
              and sorting        is sorted out.                               
              contacts based on                                               
              various filters.                                                

  Test B3     Verifies that CRM  Able to create,   Able to email              
              integration        edit and delete   invitations                
              supports           functionalities   to several                 
              functionalities.   for contact       contacts that              
                                 information.      are grouped                
                                                   by filtering               
                                                   at once.                   
  -------------------------------------------------------------------------------------------------

**Test C -- Access Control**

Test C considers two separate tests to test the database accessibility
levels of different account types and control of accessibility by
authorized accounts. This test is conducted on SharePoint.

Test C1 -- Accessibility

Test C2 -- Access Control

  --------------------------------------------------------------------------------------------
  **Test      **Test           **Expected       **Actual    **Passed**   **Comments/Issues**
  Name**      Description**    Result**         Result**                 
  ----------- ---------------- ---------------- ----------- ------------ ---------------------
  Test C1     Verifies that    Only registered                           
              database is only users allowed                             
              restricted to    access to                                 
              registered       sensitive                                 
              users. This test contact                                   
              can be conducted information.                              
              on SharePoint by Non-registered                            
              testing out      accounts allowed                          
              different        access to public                          
              accounts at      information.                              
              different levels Non-members do                            
              of               not have any                              
              accessibility.   access to the                             
                               database.                                 

  Test C2     Verifies that    Registered can                            
              registered users manage who can                            
              can give         access to the                             
              permission to    database and                              
              non-registered   give access                               
              users' access.   permission.                               
  --------------------------------------------------------------------------------------------

**Test D -- Event Management**

Test D considers three separate tests to test the management of events
and scheduling using a CRM solution and SharePoint.

Test D1 -- Event modifications.

Test D2 -- Event Storage and Management.

Test D3 -- Participants' interfaces.

  -------------------------------------------------------------------------------------------
  **Test      **Test          **Expected       **Actual    **Passed**   **Comments/Issues**
  Name**      Description**   Result**         Result**                 
  ----------- --------------- ---------------- ----------- ------------ ---------------------
  Test D1     Verifies that   The system                                
              CRM solution    allows creating                           
              can create,     events with a                             
              edit and delete title,                                    
              events.         description,                              
                              date, time,                               
                              location, and                             
                              associated                                
                              contacts. The                             
                              system allows to                          
                              edit and delete                           
                              events.                                   

  Test D2     Verifies that   Events are                                
              events are      stored and                                
              stored in the   searchable based                          
              database for    on title, date                            
              future          and type. Events                          
              references.     should include                            
                              information of                            
                              invited                                   
                              attendants,                               
                              invited                                   
                              non-attendants                            
                              and non-invited                           
                              attendants etc.                           

  Test D3     Verifies that   Contacts                                  
              invitations and interface should                          
              notifications   display the                               
              are sent to     event                                     
              related         invitations,                              
              contacts        date, title and                           
              through their   get updated if                            
              email and       the events are                            
              displayed in a  changed.                                  
              calendar view.                                            
              Contacts should                                           
              have an option                                            
              of attending or                                           
              not.                                                      
  -------------------------------------------------------------------------------------------
