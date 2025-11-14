CREATE DATABASE IF NOT EXISTS Quanlysinhvien;
USE Quanlysinhvien;
CREATE TABLE Student (
    Student_id INT PRIMARY KEY AUTO_INCREMENT,
    Full_name VARCHAR(100) not null unique,
    Date_of_birth Date not null,
    sex BIT DEFAULT 1 ,
    Phone varchar(11) not null unique, 
	address varchar(150) not null,
    Point INT not null default 100
);

INSERT INTO Student (Student_id, full_name, date_of_birth, sex, phone, address, point) VALUES
(1, 'Nguyen Van A', '2004-02-14', 1, '0935654687', 'Ha Noi', 95),
(2, 'Nguyen Van B', '2004-02-15', 0, '0965633687', 'TUYEN qUANG', 91),
(3, 'Nguyen Van C', '2004-02-16', 1, '0935483687', 'THANH HOA', 92),
(4, 'Nguyen Van AV', '2004-02-24', 0, '0935853687', 'HA GIANG', 99),
(5, 'Nguyen Van AD', '2004-02-04', 1, '0935513687', 'YEN BAI', 75),
(6, 'Nguyen Van Ao', '2004-02-01', 1, '0935593687', 'BAC NINH', 59),
(7, 'Nguyen Van AX', '2004-02-03', 0, '0935893687', 'BAC GIANG', 68),
(8, 'Nguyen Van AN', '2004-02-12', 1, '0935635987', 'LAO CAI', 83),
(9, 'Nguyen Van AE', '2004-02-11', 1, '0935633652', 'NGHE AN', 86),
(10, 'Nguyen Van AR', '2004-02-10', 0, '0984633687', 'CA MAU', 58);

UPDATE Student
SET point = 60
WHERE sex = 1;

DELETE FROM Student
WHERE point < 30;

SELECT student_id, full_name, sex, point
FROM Student;
SELECT full_name, date_of_birth, sex, point
FROM Student
WHERE point >= 80;
SELECT 
    student_id,
    full_name,
    CASE 
        WHEN sex = 1 THEN 'Nam'
        ELSE 'Nữ'
    END AS sex,
    point
FROM Student;