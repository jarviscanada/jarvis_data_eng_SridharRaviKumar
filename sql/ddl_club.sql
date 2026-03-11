CREATE SCHEMA IF NOT EXISTS cd;
CREATE TABLE cd.facilities (
  facid              SERIAL PRIMARY KEY,
  name               VARCHAR(100) NOT NULL,
  membercost         NUMERIC(10,2) NOT NULL DEFAULT 0,
  guestcost          NUMERIC(10,2) NOT NULL DEFAULT 0,
  initialoutlay      NUMERIC(12,2) NOT NULL DEFAULT 0,
  monthlymaintenance NUMERIC(10,2) NOT NULL DEFAULT 0
);
CREATE TABLE cd.members (
  memid         SERIAL PRIMARY KEY,
  surname       VARCHAR(200) NOT NULL,
  firstname     VARCHAR(200) NOT NULL,
  address       VARCHAR(300),
  zipcode       INTEGER,
  telephone     VARCHAR(20),
  recommendedby INTEGER,
  joindate      TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT members_recommendedby_fk
    FOREIGN KEY (recommendedby) REFERENCES cd.members(memid) ON DELETE SET NULL
);
CREATE TABLE cd.bookings (
  bookid    SERIAL PRIMARY KEY,
  facid     INTEGER NOT NULL REFERENCES cd.facilities(facid) ON DELETE CASCADE,
  memid     INTEGER NOT NULL REFERENCES cd.members(memid)    ON DELETE CASCADE,
  starttime TIMESTAMP NOT NULL,
  slots     INTEGER   NOT NULL CHECK (slots > 0)
);
