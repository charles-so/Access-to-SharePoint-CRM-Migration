# Deliverable 3
## Requirements of Deliverable 3
* Create a risk register
* Discussion about possible risks to the project and how the team will avoid or mitigate those risks.

## How to Create a Risk Register
* A risk register is a risk management tool that's used to identify potential risks that could affect the execution of a project plan
* What is included in a risk register:
    * Risk Identification ID
    * Risk Description
    * Risk breakdown structure
    * Risk categories
    * Risk analysis
    * Risk probability
    * Risk priority
    * Risk response
    * Risk ownwership

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
      <td>Privacy of individuals becomes compromised, loss of trust in the organisation</td>
      <td>All members of the team are to sign a confidentiality agreement. All team members will also follow best workplace and coding practises to ensure the security of the data.</td>
      <td bgcolor= "red">High</td>
    </tr>
    <tr>
      <td>2</td>
      <td>Loss of important information</td>
      <td>The organisation will lose key contacts, and will compromise the overall validity of the database.</td>
      <td>The team will conduct data migrations on a dummy database prior to the actual database migration. This will ensure that no data will be lost in the trial migrations as well as perfecting the method for the real migration.</td>
      <td bgcolor= "orange">Medium</td>
    </tr>
    <tr>
      <td>3</td>
      <td>The team fails to find a CRM platform which endorsed by the university</td>
      <td>WAMSI will have to pay for the services to use a different CRM platform.</td>
      <td>Members of the team will contact different faculties or sectors of the university in order to gain an insight into the current systems used and see if those systems can be leveraged by WAMSI.</td>
      <td bgcolor= "green">Low</td>
    </tr>
    <tr>
      <td>4</td>
      <td>Differences between the current microsoft access database and the new cloud based database</td>
      <td>Due to differences between the two databases, data can be manipulated during the transfer and be stored differently once migrated, resulted in corrupted data.</td>
      <td>The team will address this during the dummy run data migrations, as well as paying close attention to the data types and formats specified in the new database.</td>
      <td bgcolor= "green">Low</td>
    </tr>
    <tr>
      <td>5</td>
      <td>Addressing data dependencies in the migration so that no relationships are compromised and no infomraton is lost</td>
      <td>If some of the relationships between dependent data are compromised during the data transfer, this may alter some of the information in the database.</td>
      <td>A current state analysis of the data and relevant dependencies will be performed and tested during the dummy runs to ensure that the data is not compromised.</td>
      <td bgcolor= "orange">Medium</td>
    </tr>
    <tr>
      <td>6</td>
      <td>Loss of functionality which was previously available in microsoft access</td>
      <td>The key functionality of the current system is to generate reports to access availability of contractors / employees</td>
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
      <td>If the client is not fully aware of the process throughout the migration, there may be issues which the team would be unaware of such as various governance and compliance regualtions of the organisation</td>
      <td>The team, specifically the allocated project manager, will maintain regular communication with representative from WAMSI to ensure that they are satisfied with the process. It is particuarly important for the team to notify WAMSI when it indends to make any major changes during the project.</td>
      <td bgcolor= "green">Low</td>
    </tr>
    <tr>
      <td>9</td>
      <td>Extended downtime risk</td>
      <td>Occurs when the data migration process takes longer than expected, which will results in inconveniences for the relevant stakeholders (WAMSI)</td>
      <td>The team will migrate at non-peak hours to limit the impact to WAMSI</td>
      <td bgcolor= "green">Low</td>
    </tr>
  </tbody>
</table>

## General Principles for Risk Mitigation for Database Migration
* Assess the tools the database vendor offers for migrations in order to make the process more streamlined.
* Do a test run (or multiple) for the database migration.
* Migrate at non-peak hours to ensure that if there are issues with the migration, there is minimal impact on the organisation.
* Prepare a rolleback and recovery plan to reset the process if there are major bugs present.

## References
* https://www.projectmanager.com/blog/guide-using-risk-register
* https://www.montecarlodata.com/blog-data-migration-risks-checklist/
* https://icedq.com/data-migration/the-data-migration-process-and-the-potential-risks

