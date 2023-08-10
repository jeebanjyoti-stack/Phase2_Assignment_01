CREATE DATABASE OurExerciseDb  ON PRIMARY
(NAME = 'OurExercise_Db', FILENAME = 'D:\SQL Server Assignment\Day-1\OurExercise_Db.mdf')
LOG ON
(NAME = 'OurExercise_log', FILENAME = 'D:\SQL Server Assignment\Day-1\OurExercise_log.ldf')

COLLATE SQL_Latin1_General_CP1_CI_AS

use OurExerciseDb
create table StudentRegistration
( Studentid INT not null,
 CourseCode NVARCHAR(50) not null,
 RegistrationDate DATE,
 CONSTRAINT PK_StudentRegistration PRIMARY KEY (Studentid, CourseCode))
 
insert into StudentRegistration values (1,'COURSE201','08/08/2023')
insert into StudentRegistration(Studentid,CourseCode) values (1,'COURSE202')
insert into StudentRegistration values (2,'COURSE201','02/08/2023')
insert into StudentRegistration values (3,'COURSE201','05/08/2023')
insert into StudentRegistration(Studentid,CourseCode) values (2,'COURSE203')

select * from StudentRegistration