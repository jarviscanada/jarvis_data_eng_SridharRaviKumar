CREATE TABLE IF NOT EXISTS enrollments (
  enroll_id   SERIAL PRIMARY KEY,
  student_id  INT NOT NULL REFERENCES students(student_id) ON DELETE CASCADE,
  course_id   INT NOT NULL REFERENCES courses(course_id)  ON DELETE CASCADE,
  grade       CHAR(2) CHECK (grade IN ('A','B','C','D','F')),
  CONSTRAINT enroll_unique UNIQUE (student_id, course_id)
);
