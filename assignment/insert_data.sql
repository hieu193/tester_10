-- add data to table 1: Department
INSERT INTO Department(department_name) 
VALUES
('Sale'),
('Marketing'),
('Human Resources'),
('Research and development'),
('Accounting');

-- add data to table 2: Position
INSERT INTO `Position`(position_name) 
VALUES
('Dev'),
('Test'),
('ScrumMaster'),
('PM');

-- add data to table 3: Account 
INSERT INTO `Account`(email, user_name, full_name, department_id, position_id, create_date) 
VALUES
('nguyenvietanh@gmail.com',  'vanh',        'nguyen viet anh',      1,   1,     '2021-09-15'),
('nguyenvannam@gmail.com',   'nam',         'nguyen van nam',       2,   2,     '2021-09-10'),
('dinhthitrang@gmail.com',   'trang',       'dinh thi trang',       3,   4,     '2021-09-01'),
('hoangvandung@gmail.com',   'dung',        'hoang van dung',       4,   3,     '2021-09-05'),
('hoangvangiang@gmail.com',  'giang',       'hoang van giang',      5,   1,     '2021-09-12');

-- add data to table 4: Group 
INSERT INTO `Group`(group_name, creator_id, create_date) 
VALUES
('Team 1', 1, '2022-10-12'),
('Team 2', 2, '2022-10-19'),
('Team 3', 3, '2022-10-11'),
('Team 4', 4, '2022-10-08'),
('Team 5', 5, '2022-10-02');

-- add data to table 5: GroupAccount 
INSERT INTO Group_account(group_id, account_id, join_date) 
VALUES
(1, 2, '2022-11-01'),
(2, 5, '2022-11-02'),
(4, 1, '2022-11-03'),
(5, 3, '2022-11-04'),
(3, 4, '2022-11-05');

-- add data to table 6: TypeQuestion 
INSERT INTO Type_question(type_name) 
VALUES
('Essay'),
('Multiple-Choice');

-- add data to table 7: CategoryQuestion 
INSERT INTO Category_question(category_name) 
VALUES
('Java'),
('.NET'),
('SQL'),
('Postman'),
('Ruby');

-- add data to table 8: Question
INSERT INTO Question(content, category_id, type_id, creator_id, create_date) 
VALUES
('Content of question 1', 1, 1, 1, '2022-09-10'),
('Content of question 2', 2, 2, 2, '2022-09-11'),
('Content of question 3', 3, 1, 3, '2022-09-12'),
('Content of question 4', 4, 2, 4, '2022-09-13'),
('Content of question 5', 5, 1, 5, '2022-09-14');

-- add data to table 9: Answer 
INSERT INTO Answer(content, question_id, is_correct) 
VALUES
('Content of answer 1', 1, TRUE),
('Content of answer 2', 2, FALSE),
('Content of answer 3', 3, TRUE),
('Content of answer 4', 4, FALSE),
('Content of answer 5', 5, TRUE);

-- add data to table 10: Exam 
INSERT INTO Exam(`code`, title, category_id, duration, creator_id, create_date) 
VALUES
('ABC1', 'Title of exam 1', 1, '01:30:00', 1, '2022-09-15'),
('ABC2', 'Title of exam 2', 2, '01:00:00', 2, '2022-09-15'),
('ABC3', 'Title of exam 3', 3, '00:45:00', 3, '2022-09-15'),
('ABC4', 'Title of exam 4', 4, '00:30:00', 4, '2022-09-15'),
('ABC5', 'Title of exam 5', 5, '00:20:00', 5, '2022-09-15');

-- add data to table 11: ExamQuestion 
INSERT INTO Exam_question(exam_id, question_id) 
VALUES
(1, 5),
(2, 3),
(3, 4),
(4, 2),
(5, 1);