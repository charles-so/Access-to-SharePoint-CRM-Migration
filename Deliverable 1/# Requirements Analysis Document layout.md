# WAMSI Marine Science Database

## Table of Contents
1. Introduction
2. Milestones 
3. Stakeholder Analysis
4. Existing Database Analysis
5. New Database Requirements
6. Migration Strategy
7. Security Requirements
8. Performance Requirements
9. Scenarios
10. Constraints and Assumptions
11. Approval

## 1. Introduction
### 1.1 Purpose
- **Purpose of the Project:** To update and migrate the existing database to a system that is more compatible with SharePoint.

### 1.2 Scope
- **New Database:** Will be more user-friendly for access on SharePoint and will include enhanced functionalities for ease of use.


## 2. Milestones 

### Sprint 1

### Sprint 2

### Sprint 3


## 3. Stakeholder Analysis
### 3.1 Client  
  Ms. Trish Wells: [trish.wells@wamsi.org.au](mailto:trish.wells@wamsi.org.au)  
  Dr. Luke Twomey: [luke.twomey@wamsi.org.au](mailto:luke.twomey@wamsi.org.au)

  ---
  
### 3.2 Team
1. Sultan Alqemzi (22880665)
2. Geraldine Chin (22972043)
3. Finn O'Callaghan (22975893)
4. Ann Roy (23132836)
5. Charles So (23199336)
6. Tyson Tran (22834433)

## 4. Existing Database Analysis

* **Usage:** Utilized for meetings, workshops, and events.
* **Current State:** Contains 3,550 contacts; redundant data exists.
* **Location:** Hosted at WAMSI, available in MS Access, and accessible via SharePoint.
* **Limitations:** Users must manually verify each contact detail for attendees.
* **Issues:** Potential existence of duplicate contacts.

## 5. New Database Requirements
### 5.1 Data Structure
- Define the structure, including tables, relationships, and types.

### 5.2 Functional Requirements
* **Response Selection:** Ability to mark as attended or unattended.
* **Availability Timing:** Scheduling and timing options.
* **Report Production Capability:** Includes features for generating detailed reports.
* **Contact-Specific Notes:** Allows for the inclusion of specific notes for individual contacts.

### 5.3 Accessibility
* **WAMSI's Team:** Comprised of 8 members.
* **User Interaction with Database:** Users will engage with the database to ensure that all future conference goals are met.

## 6. Migration Strategy
* **Dummy Database Creation:** A dummy database will be created in MS Access to simulate the existing data, ensuring that the migration process proceeds smoothly.
* **Flagging System:** This system will assist the client in identifying the information that requires cleaning or updating.


## 7. Security Requirements
* **Data Security:** Data will be handled securely by allowing only one team member to have a copy on their device for trial database migration.
* **Risk Registration:** More detailed information regarding potential risks and mitigations is provided in the risk registration document.

## 8. Performance Requirements

### 8.1 Response Times
- Queries must return results within 2 seconds for up to 3000 records.
- Updating a record must complete within 1 second.

### 8.2 Concurrency Support
- The system must support at least 8 concurrent users.
- Locking mechanisms must be implemented to prevent conflicting updates.

### 8.3 Scalability
- The system must handle a 50% increase in user volume over the next two years.
- The database must support the growth of up to 1TB of data without performance issues.

## 9. Scenarios
1. As a WAMSI project manager, I want to effectively manage and track interactions with project contacts.
2. As a WAMSI system administrator, I want to ensure that only authorized members can access and view sensitive project contact information.
3. As a WAMSI project manager, I want to create and manage events within the CRM SharePoint Database, so that I can organize and track various business activities.
4. As a WAMSI member, I want to schedule appointments with clients through the CRM SharePoint Database, to manage my meetings efficiently.
5. As a WAMSI project manager, I want to analyze the event and appointment data in the CRM SharePoint Database, to make informed decisions.

## 10. Constraints and Assumptions
- List any known constraints, dependencies, or assumptions that could affect the project.

## 11. Approval
- Per the client's request, approval will be sought only when necessary. Meetings will be conducted via Teams, and the team leader is responsible for contacting the client.


## Appendices (if applicable)
- Include any supplementary material, such as diagrams or references.

## Revision History
- **Date:** 2023-08-14, 19:15
  - **Description:** Initial version created.
