# Student Registration System - COBOL Mainframe Project

## Overview

This project is a COBOL-based Student Registration System developed as a mainframe-style file handling application. The system uses COBOL programs to load, insert, update, delete, query, and report student records.

The project simulates core mainframe concepts such as:

* COBOL file handling
* Indexed/VSAM-style file processing
* Copybooks
* Sequential file loading
* CRUD operations
* Query by key
* Query by date
* Report generation with course break
* Menu-driven program flow

This project was implemented locally using GnuCOBOL, with indexed files used to simulate VSAM KSDS-style processing.

---

## Project Structure

```text
cobol/student-registration-system/
│
├── copybooks/
│   └── STUDENT.CPY
│
├── data/
│   ├── STUDENTSEQ.DAT
│   └── COURSE_REPORT.DAT
│
├── indexed/
│   └── STUDENTIDX.DAT
│
├── src/
│   ├── PRGMENU.cbl
│   ├── PRGV0001.cbl
│   ├── PRGI0002.cbl
│   ├── PRGU0003.cbl
│   ├── PRGD0004.cbl
│   ├── PRGQ0005.cbl
│   ├── PRGQ0006.cbl
│   ├── PRGQ0007.cbl
│   └── PRGR0008.cbl
│
└── Description.pdf
```

---

## Technologies Used

* COBOL
* GnuCOBOL
* Indexed file organization
* Sequential files
* Copybooks
* Git / GitHub
* MSYS2 UCRT64 terminal

---

## File Layout

Student records use the following copybook layout:

```cobol
05 STUDENT-ID        PIC 9(4).
05 STUDENT-NAME      PIC X(25).
05 STUDENT-BIRTHDAY  PIC 9(8).
05 STUDENT-COURSE    PIC X(16).
05 STUDENT-INS-DATE  PIC 9(8).
05 STUDENT-UPD-DATE  PIC 9(8).
```

Total record length: 69 bytes.

---

## Program List

| Program    | Purpose                                                           |
| ---------- | ----------------------------------------------------------------- |
| `PRGMENU`  | Displays the main menu and calls other programs                   |
| `PRGV0001` | Converts the initial sequential file into indexed/VSAM-style file |
| `PRGI0002` | Inserts a new student record                                      |
| `PRGU0003` | Updates an existing student record                                |
| `PRGD0004` | Deletes a student record                                          |
| `PRGQ0005` | Queries and displays all students                                 |
| `PRGQ0006` | Queries a student by Student ID                                   |
| `PRGQ0007` | Queries students by date of inclusion                             |
| `PRGR0008` | Generates a course-break report file                              |

---

## Main Menu Options

```text
1 - GENERATE VSAM FILE
2 - INSERT STUDENT DATA
3 - UPDATE STUDENT DATA
4 - DELETE STUDENT DATA
5 - CLASS QUERY ALL STUDENTS
6 - QUERY STUDENT BY ID
7 - QUERY BY DATE OF INCLUSION
8 - REPORT FILE WITH COURSE BREAK
9 - EXIT
```

---

## How to Compile

Navigate to the source folder:

```bash
cd cobol/student-registration-system/src
```

Compile all programs together:

```bash
cobc -x PRGMENU.cbl PRGV0001.cbl PRGI0002.cbl PRGU0003.cbl \
PRGD0004.cbl PRGQ0005.cbl PRGQ0006.cbl PRGQ0007.cbl PRGR0008.cbl
```

Run the menu program:

```bash
./PRGMENU
```

On Windows/MSYS2, run:

```bash
./PRGMENU.exe
```

---

## Individual Program Compilation

Example:

```bash
cobc -x PRGV0001.cbl
./PRGV0001
```

For Windows/MSYS2:

```bash
./PRGV0001.exe
```

---

## Test Flow

Recommended testing order:

```text
1. Run PRGV0001 to generate the indexed file
2. Run PRGQ0005 to verify all initial records are loaded
3. Run PRGI0002 to insert a new student
4. Run PRGQ0006 to query the inserted student by ID
5. Run PRGU0003 to update the student
6. Run PRGQ0007 to query students by date of inclusion
7. Run PRGD0004 to delete a student
8. Run PRGR0008 to generate the course-break report
9. Run PRGMENU to test the complete menu flow
```

---

## Mainframe Concept Mapping

| Local Implementation  | Mainframe Equivalent       |
| --------------------- | -------------------------- |
| GnuCOBOL indexed file | VSAM KSDS-style file       |
| `cobc` compilation    | COBOL compile/link-edit    |
| Executable file       | Load module                |
| Terminal output       | SYSOUT/spool-style output  |
| Local file path       | JCL DD dataset allocation  |
| `STUDENT.CPY`         | COBOL copybook             |
| `STUDENTSEQ.DAT`      | Sequential input dataset   |
| `STUDENTIDX.DAT`      | Indexed/VSAM-style dataset |
| `COURSE_REPORT.DAT`   | Batch report output file   |

---

## Key Concepts Learned

* COBOL divisions and sections
* Fixed-format COBOL with line numbers
* Copybook-based record layouts
* Sequential file processing
* Indexed file processing
* Record keys and duplicate key handling
* File status codes
* EOF handling using 88-level condition names
* `OPEN`, `READ`, `WRITE`, `REWRITE`, `DELETE`, and `CLOSE`
* Query by key
* Query by non-key field using sequential scan and filtering
* Report formatting using `MOVE + DISPLAY`
* Course-break report generation
* Menu-driven program design

---

## Notes

This project was implemented locally using GnuCOBOL to refresh mainframe development concepts. In a real z/OS mainframe environment, file definitions and execution would typically be handled using JCL, VSAM datasets, load libraries, and spool monitoring.
