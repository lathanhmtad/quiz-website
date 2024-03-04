use quiz_database;

-- password : admin, baole26072003, password3 ... -> password10
INSERT INTO participant (id, email, username, full_name, password, role, avatar, enabled, created_date, created_by)
VALUES
    (1,'admin@gmail.com', 'admin', 'Administrator', '$2y$10$VVQ9TABhq7/Z8OdydrQnXOhySW.p6r8cLgt3pYjhk/z5s45SRQ4G6', 'Admin', 'https://res.cloudinary.com/dixswfj8d/image/upload/v1709091212/quiz-website-images/participants/ztqzbjqwf140rqtqye5e.png', 1, NOW(), 1),
    (2,'baole26072003@gmail.com', 'baole26072003', 'Lê Quốc Bảo', '$2y$10$CMsEj8tqZTc/BKl3W/C2vOhw.0Je89jVDP4gnj7k.ZbgoWajDVdLi', 'Admin', 'https://res.cloudinary.com/dixswfj8d/image/upload/v1709091212/quiz-website-images/participants/ztqzbjqwf140rqtqye5e.png', 1, NOW(), 1),
    (3,'truc98depgai@gmail.com', 'phamthanhtruc', 'Phạm Thanh Trúc', '$2y$10$nCpDEV5jLw5uhXHi.x0rTesRUUkvN5DUA1yxKau0vnrKWBHsKzEzW', 'User', 'https://res.cloudinary.com/dixswfj8d/image/upload/v1709091212/quiz-website-images/participants/ztqzbjqwf140rqtqye5e.png', 1, NOW(), 1),
    (4,'minhduc@gmail.com', 'minhduc', 'Minh Đức', '$2y$10$FSlzrFV2noXRoDsdbqNkuOIy.ehLoQBRBGsR6UwfONaFPKI4chH.S', 'User', 'https://res.cloudinary.com/dixswfj8d/image/upload/v1709091212/quiz-website-images/participants/ztqzbjqwf140rqtqye5e.png', 1, NOW(), 1),
    (5,'thuylinh@gmail.com', 'thuylinh', 'Mỹ Hòa Thúy Linh', '$2y$10$JLXm4XAQ84tshvoezSHah.jvwtrfXum230irWm5GWGgW4MPJNv.zK', 'User', 'https://res.cloudinary.com/dixswfj8d/image/upload/v1709091212/quiz-website-images/participants/ztqzbjqwf140rqtqye5e.png', 1, NOW(), 1),
    (6,'vandat@gmail.com', 'vandat', 'Văn Đạt Đỗ', '$2y$10$grM2iS94i3JJEmdVzhtzm.tY/UR4lDXCKu2RZpWy9OxG9serXXr1O', 'User', 'https://res.cloudinary.com/dixswfj8d/image/upload/v1709091212/quiz-website-images/participants/ztqzbjqwf140rqtqye5e.png', 1, NOW(), 1),
    (7,'linhchi@gmail.com', 'linhchi', 'Linh Chi', '$2y$10$AKYyz5kKCMTnofPp/yDNmekAVnoUCy07AXrUGbSJpWritET4QXFf.', 'User', 'https://res.cloudinary.com/dixswfj8d/image/upload/v1709091212/quiz-website-images/participants/ztqzbjqwf140rqtqye5e.png', 1, NOW(), 1),
    (8,'quanghuy@gmail.com', 'ngoquanghuy', 'Ngô Quang Huy', '$2y$10$kYKMNfLfXWZL6VMFue3QO.1E3Te09IA8uiTlKudHt/byxmyHJ0JMm', 'User', 'https://res.cloudinary.com/dixswfj8d/image/upload/v1709091212/quiz-website-images/participants/ztqzbjqwf140rqtqye5e.png', 1, NOW(), 1),
    (9,'honganh@gmail.com', 'honganh', 'Hồng Anh', '$2y$10$VqbfKioN1fdcvpA9LweMTOoDydAk46Mzrq1ui3f1ynJttdYBPqfsm', 'User', 'https://res.cloudinary.com/dixswfj8d/image/upload/v1709091212/quiz-website-images/participants/ztqzbjqwf140rqtqye5e.png', 1, NOW(), 1),
    (10,'khanhhoa@gmail.com', 'khanhhoa', 'Khánh Hoa', '$2y$10$J9b8LYvfP8pdzrh4ssyuAeVboj.wypn4MV2RdSN0kguJKAYtcC2XO', 'User', 'https://res.cloudinary.com/dixswfj8d/image/upload/v1709091212/quiz-website-images/participants/ztqzbjqwf140rqtqye5e.png', 1, NOW(), 1)
;

INSERT INTO category
(id, name, enabled, parent_id, created_date, created_by)
VALUES
	(1, 'Toán học', 1, null, now(), 1),
	(2, 'Lập trình', 1, NULL, now(), 1),
	(3, 'Toán học cơ bản', 1, 1, now(), 1),
	(4, 'Java', 1, 2, NOW(), 1),
	(5, 'Thể thao', 1, null, now(), 1),
    (6, 'Chính trị', 1, null, now(), 1),
    (7, 'Âm nhạc', 1, null, now(), 1),
    (8, 'Spring Boot', 1, 4, now(), 1),
    (9, 'Bóng đá', 1, 5, now(), 1),
    (10, 'Nhạc việt', 1, 7, now(), 1),
    (11, 'Java core', 1, 4, now(), 1),
    (12, 'Hình không gian', 1, 1, now(), 1)
;

insert into quiz (id, name, description, image, difficulty, category_id, created_date, created_by)
values
	(1, "Đố vui toán học", "Làm các bài đố vui toán học xem khả năng phản ứng của bạn tới đâu", null, "Easy", 3, now(), 1);
insert into quiz_question(id, description, image, quiz_id, created_date, created_by)
values
	(1, "Câu hỏi: 3 + 7 bằng bao nhiêu?", null, 1, now(), 1),
    (2, "Ai là cha của số học?", null, 1, now(), 1),
    (3, "Trong phép tính 8 x 4, số nào là tích của hai số này?", null, 1, now(), 1),
	(4, "Một tam giác có bao nhiêu cạnh?", null, 1, now(), 1);
insert into quiz_answer(id, description, question_id, correct_answer, created_date, created_by)
values
	(1, "10", 1, 1, now(), 1),
    (2, "11", 1, 0, now(), 1),
    (3, "12", 1, 0, now(), 1),
    (4, "13", 1, 0, now(), 1),
    (5, "Pythagoras", 2, 0, now(), 1),
    (6, "Euclid", 2, 1, now(), 1),
    (7, "Newton", 2, 0, now(), 1),
    (8, "Einstein", 2, 0, now(), 1),
	(9,"32", 3, 1, now(), 1),
	(10,"4", 3, 0, now(), 1),
	(11,"16", 3, 0, now(), 1),
	(12,"2", 3, 0, now(), 1),
	(13,"6", 4, 0, now(), 1),
	(14,"5", 4, 0, now(), 1),
	(15,"4", 4, 0, now(), 1),
	(16,"3", 4, 1, now(), 1);
    
insert into quiz (id, name, description, image, difficulty, category_id, created_date, created_by)
values
	(2, "Chính trị Mỹ", "Nước mỹ vỹ đại bạn hiểu được bao nhiêu", null, "Medium", 6, now(), 1);
insert into quiz_question(id,description, image, quiz_id, created_date, created_by)
values
	(5,"Ai là Tổng thống đầu tiên của Hoa Kỳ?", NULL, 2, NOW(), 1),
	(6,"Ai là Tổng thống nổi tiếng với việc phát minh ra 'chính sách chống đỏ'?", NULL, 2, NOW(), 1),
	(7,"Tổng thống nào là người giành chiến thắng trong cuộc bầu cử năm 2020?", NULL, 2, NOW(), 1);
insert into quiz_answer(id, description, question_id, correct_answer, created_date, created_by)
values
	(17,"George Washington", 5, 1, NOW(), 1),
	(18,"Abraham Lincoln", 5, 0, NOW(), 1),
	(19,"Thomas Jefferson", 5, 0, NOW(), 1),
	(20,"Theodore Roosevelt", 5, 0, NOW(), 1),
	(21,"Theodore Roosevelt", 6, 1, NOW(), 1),
	(22,"John F. Kennedy", 6, 0, NOW(), 1),
	(23,"Franklin D. Roosevelt", 6, 0, NOW(), 1),
	(24,"Woodrow Wilson", 6, 0, NOW(), 1),
	(25,"Joe Biden", 7, 1, NOW(), 1),
	(26,"Donald Trump", 7, 0, NOW(), 1),
	(27,"Barack Obama", 7, 0, NOW(), 1),
	(28,"Hillary Clinton", 7, 0, NOW(), 1);
    
insert into quiz (id, name, description, image, difficulty, category_id, created_date, created_by)
values
	 (3, "GOAT Messi", "Fan messi không thể không làm", null, "Hard", 9, now(), 1);
insert into quiz_question(id,description, image, quiz_id, created_date, created_by)
values
	(8, "Ai là người đoạt giải Quả bóng vàng FIFA nhiều nhất?", NULL, 3, NOW(), 1),
    (9, "Kỷ lục ghi bàn cho một câu lạc bộ của Messi là bao nhiêu?", NULL, 3, NOW(), 1),
    (10, "Trong một trận đấu, Messi ghi được bao nhiêu bàn thắng?", NULL, 3, NOW(), 1),
	(11, "Đội bóng nào mà Messi chơi từ khi còn trẻ?", NULL, 3, NOW(), 1),
    (12, "Trận đấu đầu tiên của Messi cho đội một là vào năm nào?", NULL, 3, NOW(), 1),
	(13, "Messi đã giành Quả bóng vàng FIFA lần đầu tiên vào năm nào?", NULL, 3, NOW(), 1),
    (14, "Trận đấu quốc tế đầu tiên của Messi là vào năm nào?", NULL, 3, NOW(), 1);
insert into quiz_answer(id, description, question_id, correct_answer, created_date, created_by)
values
	(29, "Luka moric", 8, 0, NOW(), 1),
    (30, "Anh bảy", 8, 0, NOW(), 1),
    (31, "Lionel Messi", 8, 1, NOW(), 1),
    (32, "Andrés Iniesta", 8, 0, NOW(), 1),
    (33, "689", 9, 0, NOW(), 1),
    (34, "700", 9, 0, NOW(), 1),
    (35, "644", 9, 1, NOW(), 1),
    (36, "805", 9, 0, NOW(), 1),
    (37, "5", 10, 1, NOW(), 1),
    (38, "6", 10, 0, NOW(), 1),
    (39, "7", 10, 0, NOW(), 1),
    (40, "8", 10, 0, NOW(), 1),
	(41, "Man đần", 11, 0, NOW(), 1),
    (42, "Real Madrid", 11, 0, NOW(), 1),
    (43, "PSG (Paris Saint-Germain)", 11, 0, NOW(), 1),
    (44, "Barcelona", 1, 0, NOW(), 1),
    (45, "2003", 12, 1, NOW(), 1),
    (46, "2004", 12, 0, NOW(), 1),
    (47, "2005", 12, 0, NOW(), 1),
    (48, "2006", 12, 0, NOW(), 1),
    (49, "2009", 13, 1, NOW(), 1),
    (50, "2010", 13, 0, NOW(), 1),
    (51, "2008", 13, 0, NOW(), 1),
    (52, "2007", 13, 0, NOW(), 1),
    (53, "2005", 14, 1, NOW(), 1),
    (54, "2006", 14, 0, NOW(), 1),
    (55, "2007", 14, 0, NOW(), 1),
    (56, "2008", 14, 0, NOW(), 1);
    
insert into quiz (id, name, description, image, difficulty, category_id, created_date, created_by)
values
	 (4, "FIFA World Cup", "Bạn biết bao nhiêu điều về giải đấu bóng đá lớn nhất hành tinh này ? Hãy thử xem", null, "Medium", 9, now(), 1);
insert into quiz_question(id,description, image, quiz_id, created_date, created_by)
values
	(15, "Đội bóng nào đã giành nhiều chức vô địch World Cup nhất?", NULL, 4, NOW(), 1),
    (16, "Giải đấu bóng đá lớn nhất thế giới được tổ chức mỗi mấy năm một lần?", NULL, 4, NOW(), 1),
    (17, "Đội bóng nào đã giành World Cup lần đầu tiên?", NULL, 4, NOW(), 1),
    (18, "Tổng số lượng đội bóng tham gia World Cup là bao nhiêu?", NULL, 4, NOW(), 1),
    (19, "Cầu thủ nào giành giải Cầu thủ xuất sắc nhất World Cup nhiều nhất?", NULL, 4, NOW(), 1),
	(20, "Cầu thủ nào đã ghi bàn nhiều nhất trong một kỳ World Cup?", NULL, 4, NOW(), 1);
insert into quiz_answer(id, description, question_id, correct_answer, created_date, created_by)
values
	 (57, "Brazil", 15, 1, NOW(), 1),
    (58, "Argentina", 15, 0, NOW(), 1),
    (59, "Germany", 15, 0, NOW(), 1),
    (60, "Italy", 15, 0, NOW(), 1),
    (61, "4", 16, 1, NOW(), 1),
    (62, "2", 16, 0, NOW(), 1),
    (63, "6", 16, 0, NOW(), 1),
    (64, "8", 16, 0, NOW(), 1),
	(65, "Uruguay", 17, 1, NOW(), 1),
    (66, "Brazil", 17, 0, NOW(), 1),
    (67, "Germany", 17, 0, NOW(), 1),
    (68, "Italy", 17, 0, NOW(), 1),
    (69, "32", 18, 1, NOW(), 1),
    (70, "24", 18, 0, NOW(), 1),
    (71, "48", 18, 0, NOW(), 1),
    (72, "16", 18, 0, NOW(), 1),
	(73, "Pelé", 19, 1, NOW(), 1),
    (74, "Diego Maradona", 19, 0, NOW(), 1),
    (75, "Ronaldo", 19, 0, NOW(), 1),
    (76, "Zinedine Zidane", 19, 0, NOW(), 1),
	(77, "Miroslav Klose", 20, 1, NOW(), 1),
    (78, "Pelé", 20, 0, NOW(), 1),
    (79, "Ronaldo", 20, 0, NOW(), 1),
    (80, "Diego Maradona", 20, 0, NOW(), 1);

--     ("FIFA World Cup", "Bạn biết bao nhiêu điều về giải đấu bóng đá lớn nhất hành tinh này ? Hãy thử xem", null, "Medium", 9, now(), 1),
-- 	('Địa lý thế giới', 'Thử kiến thức địa lý của bạn với các câu hỏi về các quốc gia và châu lục khác nhau', null, 'Medium', 1, NOW(), 1),
--     ('Câu chuyện của Beethoven', 'Khám phá về cuộc đời và tác phẩm của nhà soạn nhạc vĩ đại Ludwig van Beethoven', null, 'Hard', 7, NOW(), 1),
--     ('Giải phẫu học cơ bản', 'Kiểm tra kiến thức về cấu trúc cơ thể con người', null, 'Easy', 1, NOW(), 1),
--     ('Lập trình Python cơ bản', 'Kiểm tra kiến thức về các khái niệm cơ bản trong lập trình Python', null, 'Medium', 2, NOW(), 1),
--     ('Rock & Roll Legends', 'Thử kiến thức về các huyền thoại của thể loại âm nhạc Rock & Roll', null, 'Hard', 7, NOW(), 1),
--     ('Sách kinh điển', 'Kiểm tra kiến thức về các tác phẩm văn học kinh điển trên thế giới', null, 'Medium', 6, NOW(), 1),
--     ('Công nghệ mới', 'Cập nhật kiến thức về các xu hướng công nghệ mới nhất', null, 'Easy', 2, NOW(), 1),
--     ('Kiến thức chung về hóa học', 'Kiểm tra kiến thức về các khái niệm cơ bản trong hóa học', null, 'Medium', 1, NOW(), 1),
--     ('Thể thao Mỹ', 'Kiểm tra kiến thức về các môn thể thao phổ biến tại Hoa Kỳ', null, 'Hard', 5, NOW(), 1),
--     ('Lịch sử Pháp', 'Thử kiến thức về lịch sử và văn hóa của đất nước Pháp', null, 'Medium', 6, NOW(), 1),
-- 	('SQL Basic', 'Kiểm tra kiến thức cơ bản về ngôn ngữ truy vấn SQL', null, 'Easy', 2, NOW(), 1),
--     ('JavaScript Essentials', 'Thử kiến thức cơ bản về ngôn ngữ lập trình JavaScript', null, 'Medium', 2, NOW(), 1),
--     ('Python Data Structures', 'Kiểm tra hiểu biết về các cấu trúc dữ liệu trong ngôn ngữ lập trình Python', null, 'Hard', 2, NOW(), 1),
--     ('HTML & CSS Basics', 'Kiểm tra kiến thức cơ bản về HTML và CSS', null, 'Medium', 2, NOW(), 1),
--     ('Java OOP Concepts', 'Kiểm tra hiểu biết về các khái niệm cơ bản của lập trình hướng đối tượng trong Java', null, 'Hard', 11, NOW(), 1),
-- 	('Spring Boot Annotations', 'Kiểm tra hiểu biết về các chú thích (annotations) phổ biến trong Spring Boot', null, 'Medium', 8, NOW(), 1),
--     ('Spring Boot Security', 'Thử sức với kiến thức về bảo mật trong ứng dụng Spring Boot', null, 'Hard', 8, NOW(), 1);