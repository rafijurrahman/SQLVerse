-- ============================================================
-- SQL Master
-- Lesson: SQL-185 — Composite Foreign Key
-- ============================================================

-- Question 1
CREATE TABLE grade_reports (
    report_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    semester VARCHAR(20) NOT NULL,
    grade_report_details VARCHAR(255),
    CONSTRAINT fk_grade_reports_enrollments FOREIGN KEY (student_id, course_id, semester) 
        REFERENCES enrollments(student_id, course_id, semester)
);

-- Question 2
-- A composite FOREIGN KEY ensures that the combination of VALUES IN the referencing columns must exist together AS a single record IN the referenced unique constraint OR PRIMARY KEY of the parent table.
-- If individual foreign keys were used, each column's value would be validated independently (e.g., student_id exists IN students, AND course_id exists IN courses), which allows invalid combinations of those VALUES (e.g., enrolling a student IN a course that is NOT actually offered OR valid for that semester).;

-- Question 3
SELECT
    e.enrollment_id,
    e.student_id,
    e.course_id,
    e.semester,
    a.attendance_date,
    a.status
FROM enrollments e
INNER JOIN attendance a ON e.student_id = a.student_id AND e.course_id = a.course_id;

-- Question 4
CREATE TABLE class_schedules (
    schedule_id INT PRIMARY KEY AUTO_INCREMENT,
    course_id INT NOT NULL,
    section_id INT NOT NULL,
    room_number VARCHAR(20),
    schedule_time TIME,
    CONSTRAINT fk_schedules_sections FOREIGN KEY (course_id, section_id) 
        REFERENCES course_sections(course_id, section_id)
);
