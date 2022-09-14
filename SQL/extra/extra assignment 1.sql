CREATE DATABASE extra_assignment_1;
USE extra_assignment_1;

CREATE TABLE design_a_table(
trainee_id 			INT,
full_name 			VARCHAR(50),
birth_date 			DATE,
gender 				VARCHAR(50),
et_iq 				INT,
et_gmath 			INT,
et_english	 		INT,
training_class 		INT,
evaluation_notes 	VARCHAR(50)
);

CREATE TABLE data_types(
id 					VARCHAR(50),
`name` 				VARCHAR(50),
`code` 				INT,
modified_date 		DATE 
);

CREATE TABLE data_types_2(
id 					VARCHAR(50),
`name` 				VARCHAR(50),
birth_date 			DATE,
gender 				VARCHAR(50),
is_deleted_flag 	VARCHAR(50)
);
