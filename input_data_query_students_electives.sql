
--Enter values

INSERT INTO students (first_name, last_name, birthdate, pronouns)
VALUES ('Abigail','Sharma','09-24-2009','she/her');

SELECT * FROM students;

INSERT INTO contact
VALUES ('10','9220 Frawley Rd.','','Chattanooga','TN','37412','423-555-3463','jw2394@gmail.com');

SELECT * FROM contact;

INSERT INTO electives 
VALUES ('VLB','Volleyball','Competitive Team. Audtion or teacher approval required.');

SELECT * FROM electives;

INSERT INTO students_electives
VALUES('10','VM1','2A');

SELECT * FROM students_electives;

--Query 

--number of students enrolled in each elective

SELECT 
	count(first_name) AS number_enrolled,
	students_electives.elective
FROM students 
LEFT JOIN students_electives 
ON students.id = students_electives.id
GROUP BY students_electives.elective
ORDER BY elective;

---student contact information for basketball coach
SELECT
	s.first_name,
	s.last_name,
	c.phone,
	c.email
FROM students AS s
JOIN contact AS c ON s.id = c.id
JOIN students_electives AS se ON s.id = se.id
WHERE se.elective = 'BAB';
