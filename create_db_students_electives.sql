USE students;
--Create tables 

CREATE TABLE students (
	id INTEGER IDENTITY(1,1), 
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	birthdate DATE,
	pronouns VARCHAR(20),
	PRIMARY KEY(id)
	);

CREATE TABLE contact (
	id INTEGER PRIMARY KEY,
	address_1 VARCHAR(30),
	address_2 VARCHAR(30),
	city VARCHAR(30),
	state CHAR(2),
	zip INTEGER,
	phone CHAR(12),
	email VARCHAR(30),
	FOREIGN KEY (id) REFERENCES students(id)
);

CREATE TABLE electives (
	id char(3), 
	name VARCHAR(20),
	description VARCHAR(250),
	PRIMARY KEY(id)
);
	
CREATE TABLE students_electives (
	id INTEGER FOREIGN KEY REFERENCES students(id),
	elective char(3) FOREIGN KEY REFERENCES electives(id),
	class_period char(2),
	PRIMARY KEY (id,elective)
);

