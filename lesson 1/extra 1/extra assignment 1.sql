DROP DATABASE extra_assignment_1;
CREATE DATABASE extra_assignment_1;
USE extra_assignment_1;

CREATE TABLE design_a_table(
trainee_id 			INT,
full_name 			VARCHAR(50),
birth_date 			DATE,
gender 				enum('male', 'female', 'unknown'),
et_iq 				INT,
et_gmath 			INT,
et_english	 		INT,
training_class 		INT,
evaluation_notes 	VARCHAR(50)
);

CREATE TABLE data_types(
id 					VARCHAR(50),
`name` 				VARCHAR(50),
`code` 				CHAR(5),
modified_date 		DATETIME 
);

CREATE TABLE data_types_2(
id 					VARCHAR(50),
`name` 				VARCHAR(50),
birth_date 			DATE,
gender 				ENUM('male','female' , 'unknown'),
is_deleted_flag 	ENUM(
);
