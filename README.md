# Employee Bonus Processing — PL/SQL Demo

### Course:
INSY 8311 — Database Development with PL/SQL  
Lecture 06 — PL/SQL Collections and Records

---

## Project Overview

This repository demonstrates the use of **Collections**, **Records**, and **GOTO** statements in PL/SQL using a simple **Employee Bonus Processing System**.

The system simulates processing employee bonuses based on their salaries and uses control flow (`GOTO`) to handle skipped employees or errors.

---

## Key Concepts Demonstrated

| Concept | Description |
|----------|--------------|
| **Record (TYPE … IS RECORD)** | Holds multiple fields of different data types for one employee. |
| **Collection (TABLE OF …)** | Stores multiple records in memory for batch processing. |
| **GOTO Statement** | Used to control flow — skipping or re-processing records. |
| **DBMS_OUTPUT** | Displays results and debugging messages. |

---

## Files Included

| File | Description |
|------|--------------|
| `employees_sample.sql` | (Optional) Creates a sample `employees` table for practice. |
| `bonus_processing.sql` | Main PL/SQL program demonstrating collections, records, and GOTO. |
| `README.md` | Project documentation and execution instructions. |

---

## How to Run

### In Oracle SQL Developer
1. Open and connect to your Oracle database.  
2. Run `employees_sample.sql` to create sample data (optional).  
3. Run `bonus_processing.sql`.  
4. Enable **DBMS Output** to view results.

### In Oracle Live SQL
1. Go to [https://livesql.oracle.com](https://livesql.oracle.com).  
2. Paste the full code from `bonus_processing.sql`.  
3. Click **Run** and view the output below the editor.

---

## Sample Output

--- Employee Bonus Processing Started ---
Processed: Alice | Salary: 5000 | Bonus: 500
Skipping Brian (invalid salary)
Processed: Clara | Salary: 7000 | Bonus: 700
Processed: David | Salary: 6000 | Bonus: 600
--- Bonus Processing Completed ---

--- Final Employee Bonus Report ---
ID: 101 | Name: Alice | Salary: 5000 | Bonus: 500
ID: 102 | Name: Brian | Salary: 0 | Bonus: Not Assigned
ID: 103 | Name: Clara | Salary: 7000 | Bonus: 700
ID: 104 | Name: David | Salary: 6000 | Bonus: 600

---

## Learning Outcome

This project helps you understand how to:
- Store complex data using **records**.
- Handle multiple records in **collections**.
- Use **GOTO** for flow control in special cases.
- Output results clearly with **DBMS_OUTPUT**.

---

## Author

**Divine IZABAYBO**  
Course: INSY 8311 — Database Development with PL/SQL  
Instructor: Eric Maniraguha  
Institution: Adventist University of Central Africa (AUCA)
