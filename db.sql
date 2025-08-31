create database MD04SS05EX01;
use MD04SS05EX01;

create table students
(
    id          int primary key auto_increment,
    name        varchar(100),
    email       varchar(100),
    birthday    DATE,
    averageMark float
);
INSERT INTO students (name, email, birthday, averageMark)
VALUES ('Nguyễn Văn A', 'nguyenvana@example.com', '2000-01-15', 7.5),
       ('Trần Thị B', 'tranthib@example.com', '1999-06-20', 8.2),
       ('Lê Văn C', 'levanc@example.com', '2001-03-10', 6.9),
       ('Phạm Thị D', 'phamthid@example.com', '2000-12-05', 9.0),
       ('Hoàng Văn E', 'hoangvane@example.com', '1998-08-25', 7.8);

delimiter $$
create procedure getAllStudents()
begin
    select * from students;
end $$
delimiter $$

