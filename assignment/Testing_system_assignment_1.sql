-- create database Testing_System_Assignment_1
DROP DATABASE IF EXISTS Testing_System_Assignment_1;
CREATE DATABASE Testing_System_Assignment_1;
USE Testing_System_Assignment_1;

-- create table 1: Department 
CREATE TABLE Department(
department_id	INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
department_name	VARCHAR(50) NOT NULL
);

-- create table 2: Position 
CREATE TABLE `Position`( 
position_id		INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
position_name	ENUM('Dev', 'Test', 'ScrumMaster', 'PM') NOT NULL
);

-- create table 3: Account 
CREATE TABLE `Account`(
account_id		INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
email			VARCHAR(50) UNIQUE KEY NOT NULL,
user_name		VARCHAR(50) UNIQUE KEY NOT NULL,
full_name		VARCHAR(50) NOT NULL,
department_id	INT UNSIGNED NOT NULL, 
position_id		INT UNSIGNED NOT NULL, 
create_date		DATE, 
FOREIGN KEY (department_id) REFERENCES Department(department_id),
FOREIGN KEY (position_id) REFERENCES `Position`(position_id)
);

-- create table 4: Group 
CREATE TABLE `Group`(
group_id		INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
group_name		VARCHAR(50) UNIQUE KEY NOT NULL,
creator_id		INT UNSIGNED NOT NULL, 
create_date		DATE,
FOREIGN KEY (creator_id) REFERENCES `Account`(account_id)
);

-- create table 5: GroupAccount 
CREATE TABLE Group_account(
group_id		INT UNSIGNED NOT NULL,  
account_id		INT UNSIGNED NOT NULL,
join_date		DATE,
PRIMARY KEY (group_id, account_id),
FOREIGN KEY (group_id) REFERENCES `Group`(group_id),
FOREIGN KEY (account_id) REFERENCES `Account`(account_id)
);

-- create table 6: TypeQuestion 
CREATE TABLE Type_question(
type_id			INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
type_name		ENUM('Essay', 'Multiple-Choice') NOT NULL
);

-- create table 7: CategoryQuestion 
CREATE TABLE Category_question(
category_id		INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
category_name	VARCHAR(50) NOT NULL
);

-- create table 8: Question 
CREATE TABLE Question(
question_id		INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
content			VARCHAR(50) NOT NULL,
category_id		INT UNSIGNED NOT NULL, 
type_id			INT UNSIGNED NOT NULL, 
creator_id		INT UNSIGNED NOT NULL,
create_date		DATE,
FOREIGN KEY (category_id) REFERENCES Category_question(category_id),
FOREIGN KEY (type_id) REFERENCES Type_question(type_id),
FOREIGN KEY (creator_id) REFERENCES `Account`(account_id)
);

-- create table 9: Answer 
CREATE TABLE Answer(
answer_id		INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
content			VARCHAR(50) NOT NULL,
question_id		INT UNSIGNED NOT NULL, 
is_correct		BOOLEAN NOT NULL,
FOREIGN KEY (question_id) REFERENCES Question(question_id)
);

-- create table 10: Exam 
CREATE TABLE Exam(
exam_id			INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
`code`			VARCHAR(50) UNIQUE KEY NOT NULL,
title			VARCHAR(50) NOT NULL,
category_id		INT UNSIGNED NOT NULL, 
duration		TIME NOT NULL,
creator_id		INT UNSIGNED NOT NULL, 
create_date		DATE,
FOREIGN KEY (category_id) REFERENCES Category_question(category_id),
FOREIGN KEY (creator_id) REFERENCES `Account`(account_id)
);

-- create table 11: ExamQuestion 
CREATE TABLE Exam_question(
exam_id			INT UNSIGNED NOT NULL,  
question_id		INT UNSIGNED NOT NULL,
PRIMARY KEY(exam_id, question_id),
FOREIGN KEY (exam_id) REFERENCES Exam(exam_id),
FOREIGN KEY (question_id) REFERENCES Question(question_id)
);