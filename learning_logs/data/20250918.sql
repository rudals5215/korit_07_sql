# create database kor_it;

# USE kor_it;

# CREATE TABLE students (
#	student_id INT AUTO_INCREMENT PRIMARY KEY,
#	student_name VARCHAR(100) NOT NULL,
#	enrollment_date DATE NOT NULL
# );

# ALTER TABLE students ADD COLUMN student_email VARCHAR(100) NOT NULL;

# ALTER TABLE students2 RENAME COLUMN email TO student2_email;

# ALTER TABLE students DROP COLUMN enrollment_date;

# ALTER TABLE students ADD COLUMN student_enrollment_date VARCHAR(100) NOT NULL;

# INSERT INTO students (student_name, student_email, student_enrollment_date) VALUES('김일','kim1@test.com','2025-09-08'),('김이','kim2@test.com','2025-01-01')

# UPDATE students
# SET student_name = '김사백오십'
# WHERE student_id = 1;


# INSERT INTO students (student_name, student_email, student_enrollment_date) VALUES ('김삼','kim3@test.com','2025-02-01');
# INSERT INTO students (student_name, student_email, student_enrollment_date) VALUES ('김사','kim4@test.com','2025-03-01');
# DELETE FROM students WHERE student_id = 3;
# UPDATE students SET student_enrollment_date = '2024-04-04' WHERE student_name = '김사';
# SELECT * FROM students WHERE student_id = 4;

# CREATE TABLE instructor (
#  instructor_id INT AUTO_INCREMENT PRIMARY KEY,
#  name VARCHAR(100) NOT NULL,
#  email VARCHAR(100) NOT NULL,
#  hire_date DATE NOT NULL
# )

# INSERT INTO instructor(name, email, hire_date) VALUES ('이일','21@test.com','2025-09-18'),('이이','22@test.com','2022-09-18'),('이삼','23@test.com','2023-09-18')

# CREATE TABLE courses (
#  course_id INT AUTO_INCREMENT primary key,
#  course_name VARCHAR(100) NOT NULL,
#  instructor_id INT NOT NULL,
#  start_date DATE NOT NULL,
#  end_date DATE NOT NULL,
#  FOREIGN KEY (instructor_id) REFERENCES instructor(instructor_id)
# )


# CREATE TABLE student_courses (
# 	student_id INT NOT NULL,
#	course_id INT NOT NULL,
#	PRIMARY KEY(student_id, course_id),
#	FOREIGN KEY(student_id) REFERENCES students(student_id),
#	FOREIGN KEY(course_id) REFERENCES courses(course_id)
# )

# CREATE TABLE attendence (
#  attendence_id INT AUTO_INCREMENT PRIMARY KEY,
#  student_id INT NOT NULL,
#  course_id INT NOT NULL,
#  date DATE NOT NULL,
#  status VARCHAR(10) NOT NULL,
#  FOREIGN KEY (student_id) REFERENCES students(student_id),
#  FOREIGN KEY (course_id) REFERENCES courses(course_id)
# )

# INSERT INTO courses (course_name, instructor_id, start_date, end_date) VALUES
# ('Java',1,'2025-09-01','2025-09-30'),
# ('Python',2,'2025-09-02','2025-09-29')

# INSERT INTO instructor (name, email, hire_date) VALUES
# ('김선생','kim@test.com','2025-07-01'),
# ('이선생','lee@test.com','2025-01-01')

# INSERT INTO student_courses (student_id, course_id) VALUES
# (1,1),
# (2,1),
# (4,1),
# (1,2),
# (4,2);

# INSERT INTO attendence (student_id, course_id, date, status) VALUES 
# (1, 1, '2025-09-18','출'),
# (2, 1, '2025-09-18','결'),
# (4, 1, '2025-09-18','출'),
# (1, 2, '2025-09-18','출'),
# (2, 2, '2025-09-18','출'),
# (4, 2, '2025-09-18','결');

# SELECT s.student_name, c.course_name FROM students s INNER JOIN student_courses sc ON s.student_id = sc.student_id INNER JOIN courses c ON sc.course_id = c.course_id ORDER BY s.student_name;

# SELECT s.student_name, s.student_email, c.course_name FROM students s INNER JOIN student_courses sc ON s.student_id = sc.student_id INNER JOIN courses c ON sc.course_id = c.course_id WHERE student_name = '김사백오십' ORDER BY s.student_name;

# SELECT i.name, c.course_name , s.student_name FROM instructor i INNER JOIN courses c ON i.instructor_id = c.instructor_id INNER JOIN  student_courses sc ON c.course_id = sc.course_id INNER JOIN students s ON sc.student_id = s.student_id WHERE i.name = '이이';


# SELECT i.name, c.course_name , COUNT(s.student_id) AS studentCnt FROM instructor i INNER JOIN courses c ON i.instructor_id = c.instructor_id INNER JOIN  student_courses sc ON c.course_id = sc.course_id INNER JOIN students s ON sc.student_id = s.student_id WHERE i.name = '이이' GROUP BY c.course_name;
