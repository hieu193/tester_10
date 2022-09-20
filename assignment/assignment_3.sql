-- q2 lấy ra tất cả các phòng ban
SELECT* 
FROM Department;

-- q3 lấy ra id của phòng ban "Sale"
SELECT department_id
FROM Department
WHERE department_name = 'Sale';

-- q4 lấy ra thông tin account có full name dài nhất và sắp xếp chúng theo thứ tự giảm dần
SELECT *
FROM `Account`
WHERE char_length(full_name)= (SELECT max(char_length(full_name))
                                FROM `Account`);
 
 -- q5 Lấy ra thông tin account có full name dài nhất và thuộc phòng ban có id= 3
 SELECT *
FROM `Account`
WHERE char_length(full_name)= (SELECT max(char_length(full_name))
                                FROM `Account`) AND department_id = 3;
                            
-- q6 lấy ra tên group đã tham gia trước ngày 20/12/2019
SELECT group_name
FROM `Group`
WHERE create_date <= '2019-12-20';

-- q7 Lấy ra ID của question có >= 4 câu trả lời
SELECT question_id, COUNT(answer_id) AS so_luong_cau_tra_loi
FROM Answer
GROUP BY question_id
HAVING COUNT(answer_id) >= 4;

-- q8 Lấy ra các mã đề thi có thời gian thi >= 60 phút và được tạo trước ngày 20/12/2019
SELECT `code`
FROM Exam
WHERE duration >= '01:00:00' and create_date  <= '2019-12-20';

-- q9 Lấy ra 5 group được tạo gần đây nhất
SELECT group_name
FROM `Group`
ORDER BY create_date DESC
LIMIT 5;

-- q10 Đếm số nhân viên thuộc department có id = 2
SELECT COUNT(account_id)
FROM `Account`
WHERE department_id = '2';

-- q11 Lấy ra nhân viên có tên bắt đầu bằng chữ "D" và kết thúc bằng chữ "o"
SELECT user_name
FROM `Account`
WHERE user_name LIKE 'D%' and '%o';

-- q12 xóa tất cả các exam được tạo trước ngày 20/12/2019
DELETE
FROM Exam
WHERE create_date <= '2019-12-20';

-- q13 xóa tất cả các question có nội dung bắt đầu bằng từ "câu hỏi"
DELETE
FROM Question
WHERE content LIKE 'câu hỏi%';

-- q14 update thông tin của account có id = 5 thành tên "Nguyễn Bá Lộc" và email thành loc.nguyenba@vti.com.vn
UPDATE `Account`
SET full_name = 'Nguyễn Bá Lộc', email = 'loc.nguyenba@vti.com.vn'
WHERE account_id = 5;

-- q15 update account có id = 5 sẽ thuộc group có id = 4
UPDATE Group_account
SET account_id = 5 
WHERE group_id = 4;

