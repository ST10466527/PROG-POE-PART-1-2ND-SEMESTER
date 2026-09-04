# PROG-POE-PART-1-2ND-SEMESTER

## Programming – Portfolio of Evidence Part 1

This repository contains my **Programming Portfolio of Evidence (POE) Part 1** for the **2nd Semester**.

The repository contains the documentation and SQL database work completed as part of the programming assessment.

---

## Project Overview

This project focuses on the development of a relational database for managing **running and marathon events**.

The database is designed to store and manage information relating to:

* Event organisers
* Participants
* Events
* Event categories
* Participant enrolments
* Event results

The database uses relationships between the different entities to ensure that information can be stored in an organised and structured manner.

---

## Repository Contents

The repository contains the following files:

| File                             | Description                                         |
| -------------------------------- | --------------------------------------------------- |
| `POE PART 1 2ND SEMESTER.docx`   | Main Portfolio of Evidence Part 1 document          |
| `POE PART 1 SECOND SEMESTER.sql` | SQL script used to create and populate the database |
| `README.md`                      | Repository documentation                            |

---

## Database Structure

The SQL database consists of the following tables:

### Organiser

The **Organiser** table stores information about the organisations responsible for hosting events.

**Attributes include:**

* `organiser_id`
* `name`
* `email`
* `phone`

---

### Participant

The **Participant** table stores information about individuals participating in events.

**Attributes include:**

* `participant_id`
* `name`
* `email`
* `dob`
* `gender`

---

### Event

The **Event** table stores information about the different running events.

**Attributes include:**

* `event_id`
* `organiser_id`
* `name`
* `date`
* `location`

Each event is associated with an organiser.

---

### Category

The **Category** table stores the different categories available for an event.

**Attributes include:**

* `category_id`
* `event_id`
* `name`
* `distance_km`

Each category is linked to a specific event.

---

### Enrolment

The **Enrolment** table stores information about participants who have registered for events.

**Attributes include:**

* `enrolment_id`
* `participant_id`
* `event_id`
* `category_id`
* `status`

The enrolment status is used to indicate the current registration status of a participant.

---

### Result

The **Result** table stores the results achieved by participants after completing an event.

**Attributes include:**

* `result_id`
* `enrolment_id`
* `finish_time`
* `position`

Results are linked to an enrolment record.

---

## Database Relationships

The database uses primary keys and foreign keys to establish relationships between the different tables.

The main relationships can be represented as follows:

```text
Organiser
    │
    └── Event
          │
          └── Category

Participant
    │
    └── Enrolment ─── Event
          │
          └── Category

Enrolment
    │
    └── Result
```

These relationships allow the database to connect organisers, events, participants, categories, enrolments and results.

---

## Sample Data

The SQL script contains sample data to demonstrate how the database can be populated and used.

The sample data includes marathon and running events such as:

* Cape Town Marathon
* Soweto Marathon
* Two Oceans Half

The database also contains sample organisers and participants associated with these events.

---

## Technologies Used

The following technologies and tools were used in this project:

* **SQL**
* **Microsoft SQL Server / T-SQL**
* **Microsoft Word**
* **Git**
* **GitHub**

### SQL Features Used

The database script makes use of SQL features including:

* `CREATE TABLE`
* `PRIMARY KEY`
* `FOREIGN KEY`
* `IDENTITY`
* `UNIQUE`
* `NOT NULL`
* `DEFAULT`
* `INSERT INTO`

---

## How to Run the SQL Script

### 1. Clone the repository

```bash
git clone https://github.com/ST10466527/PROG-POE-PART-1-2ND-SEMESTER.git
```

### 2. Open the SQL file

Open the following file:

```text
POE PART 1 SECOND SEMESTER.sql
```

The file can be opened using **Microsoft SQL Server Management Studio (SSMS)** or another compatible SQL Server environment.

### 3. Execute the SQL script

Run the SQL script to create the database tables and insert the provided sample data.

> **Note:** The SQL script uses T-SQL features such as `IDENTITY` and `NVARCHAR`, and is therefore intended for Microsoft SQL Server or a compatible SQL environment.

---

## YouTube Video Demonstration

A video demonstration of the project is available below.

The video provides an overview of the work completed for the **Programming Portfolio of Evidence Part 1**, including the database structure and SQL implementation.

### Project Demonstration

**[Watch the Project Demonstration on YouTube](https://www.youtube.com/)**

> **Note:** Replace the YouTube link above with the link to your actual project demonstration video once it has been uploaded.

---

## Academic Purpose

This repository was created as part of a **Programming Portfolio of Evidence (POE)** assessment.

The project demonstrates the application of database design and SQL concepts, including:

* Relational database design
* Entity and attribute identification
* Primary keys
* Foreign keys
* Database relationships
* Data types
* Constraints
* Data insertion
* Database organisation

---

## Future Improvements

Possible improvements to the project include:

* Adding additional participants and events
* Adding more event categories
* Adding additional SQL queries
* Implementing additional validation rules
* Adding stored procedures
* Creating views for commonly requested information
* Expanding the database to support additional event-management functionality

---

## Author

**Student Number:** ST10466527

**Repository:** PROG-POE-PART-1-2ND-SEMESTER

---

## GitHub Repository

The complete project is available on GitHub:

**[PROG-POE-PART-1-2ND-SEMESTER](https://github.com/ST10466527/PROG-POE-PART-1-2ND-SEMESTER)**
