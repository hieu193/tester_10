DROP DATABASE IF EXISTS testing_system_1;
CREATE DATABASE testing_system_1;
USE testing_system_1;

CREATE TABLE Department (
    department_id 		TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    department_name 	ENUM('sale',' marketing')
);

CREATE TABLE `Position` (
    position_id 	INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    position_name 	ENUM('Dev', 'Test', 'Scrum Master', 'PM')
) ;

CREATE TABLE  `Account` (
account_id 		INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
email 			VARCHAR(50) UNIQUE KEY,
uisername 		VARCHAR(50)  UNIQUE KEY,
full_name 		VARCHAR(50),
department_id 	TINYINT UNSIGNED,
position_id 	INT UNSIGNED,
create_date 	DATE,
FOREIGN KEY (department_id) REFERENCES Department(department_id),
FOREIGN KEY (position_id) REFERENCES `Position`(position_id)
);

CREATE TABLE `group`(
group_id 		TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
group_name 		VARCHAR(50) UNIQUE KEY,
creator_id 		INT UNSIGNED ,
create_date 	DATE,
FOREIGN KEY(creator_id) REFERENCES `Account`(account_id)
);

CREATE TABLE group_account(
group_id 		TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
account_id 		INT UNSIGNED ,
join_date 		DATE
);

CREATE TABLE type_question(
type_id 		INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
type_name 		ENUM('Essay', 'Multiple-Choice')
);

CREATE TABLE categoryquestion(
category_id 		TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
category_name 		ENUM('Java', '.NET', 'SQL', 'Postman, Ruby', '...')
);

CREATE TABLE question(
question_id 		INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
content 			VARCHAR(50) UNIQUE KEY,
category_id			TINYINT UNSIGNED ,
type_id 			INT UNSIGNED ,
creator_id 			INT UNSIGNED ,
create_date 		DATE,

FOREIGN KEY (category_id) REFERENCES categoryquestion(category_id),
FOREIGN KEY (type_id) REFERENCES type_question(type_id),
FOREIGN KEY(creator_id) REFERENCES `Account`(account_id)
);

CREATE TABLE Answer(
answer_id 		INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
content 		VARCHAR(50) UNIQUE KEY,
question_id 	INT UNSIGNED ,
is_correct 		ENUM('dung', 'sai'),
FOREIGN KEY (question_id) REFERENCES question(question_id)
);

CREATE TABLE Exam(
exam_id 		INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
`code` 			TINYINT UNSIGNED,
title 			VARCHAR(50) ,
category_id 	TINYINT UNSIGNED ,
duration 		TIME,
creator_id 		INT UNSIGNED ,
create_date 	DATE,

FOREIGN KEY (category_id) REFERENCES categoryquestion(category_id),
FOREIGN KEY(creator_id) REFERENCES `Account`(account_id)
);

CREATE TABLE Exam_Question(
exam_id 		INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
question_id 	INT UNSIGNED 
);