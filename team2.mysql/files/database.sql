create database SummerSysEng2021;
use SummerSysEng2021;
create table Team2-students (
    student_ID varchak(10) NOT NULL,
    first_name char(25) NOT NULL,
    last_name char(30) NOT NULL,
    GPA int(3),
    state char(50),
    primary key (student_ID)
    );

INSERT INFO 'Team2-students' VALUES ('SN001','Shakhnoza','Raimjonova',95,'Illinois'),('MS002','Maftuna','Sultanova',95)

create table Team1-students (
    student_ID varchak(10) NOT NULL,
    first_name char(25) NOT NULL,
    last_name char(30) NOT NULL,
    GPA int(3),
    state char(50),
    primary key (student_ID)
);

INSERT INFO 'Team2-students' VALUES ('YU003','Yorqinoy','Usmanova',96,'TX'),('DA004','David','Allen',95)