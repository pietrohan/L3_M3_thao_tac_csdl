create database QuanLySinhVienbai3;
use QuanLySinhVienbai3;
create table class(
ClassID int not null Primary key auto_increment,
ClassName varchar(60) not null,
StartDate Datetime not null,
Status Bit
);
create table Student(
StudentID int not null Primary key auto_increment,
StudentName varchar(30) not null,
Address varchar(50),
Phone varchar(20),
Status Bit,
 ClassId     INT         NOT NULL,
    FOREIGN KEY (ClassId) REFERENCES Class (ClassID)
);
create table Subject (
SubID int not null Primary key auto_increment,
SubName varchar(30) not null,
Credit Tinyint not null default  1 Check ( credit >=1),
Status Bit default 1
);
create table MArk(
MarkID int not null Primary key auto_increment,
SubID INT not null,
StudentID INT not null,
Mark Float not null default 0 check (Mark Between 0 and 100),
ExamTimes Tinyint default 1, 
unique (SubID, StudentId),
  FOREIGN KEY (SubId) REFERENCES Subject (SubId),
    FOREIGN KEY (StudentId) REFERENCES Student (StudentId)
);
insert into class value (1,'A1','2008-12-20',1);
insert into class value (2,'A2','2008-12-22',1);
insert into class value (3,'B3',current_date,0);
INSERT INTO Student (StudentName, Address, Phone, Status, ClassId)
VALUES ('Hung', 'Ha Noi', '0912113113', 1, 1);
INSERT INTO Student (StudentName, Address, Status, ClassId)
VALUES ('Hoa', 'Hai phong', 1, 1);
INSERT INTO Student (StudentName, Address, Phone, Status, ClassId)
VALUES ('Manh', 'HCM', '0123123123', 0, 2);
insert into Subject (subName ,Credit,Status) value ( 'CF', 5, 1),
       ( 'C', 6, 1),
       ( 'HDJ', 5, 1),
       ('RDBMS', 10, 1);
       INSERT INTO Mark (SubId, StudentId, Mark, ExamTimes)
VALUES (1, 1, 8, 1),
       (1, 2, 10, 2),
       (2, 1, 12, 1);
select * from student;
select * from student where Status = true;
select S.StudentID , S.StudentName, C.ClassName
from student S join class C on S.ClassID = C. ClassID;
