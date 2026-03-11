# Introduction

# SQL Queries

###### Table Setup (DDL)

###### Question 1: Show all members 

```sql
SELECT *
FROM cd.members;



# SQL Practice  pgexercises (Club DB)

**DB:** `club_db` | **Schema:** `cd`  
**Tables:** `cd.facilities`, `cd.members`, `cd.bookings`

## Table Setup (DDL)

- See `sql/ddl_club.sql`
- Schema mirrors pgexercises:
  - `cd.facilities(facid, name, membercost, guestcost, initialoutlay, monthlymaintenance)`
  - `cd.members(memid, surname, firstname, address, zipcode, telephone, recommendedby, joindate)`
  - `cd.bookings(bookid, facid, memid, starttime, slots)`

## How to Run

```bash
# 1) create db + schema
psql -h localhost -U postgres -d club_db -f sql/ddl_club.sql

# 2) load data
psql -h localhost -U postgres -d club_db -f sql/clubdata.sql -q

# 3) run solutions
psql -h localhost -U postgres -d club_db -f sql/queries.sql
