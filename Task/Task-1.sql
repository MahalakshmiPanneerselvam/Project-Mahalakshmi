1) 
create table StudentInfo(STU_ID int primary key,STU_NAME VARCHAR(30),DOB DATE,
						 PHONE_NO BIGINT,EMAIL_ID VARCHAR(30),ADDRESS VARCHAR(50));
b
create table CourseInfo(COURSE_ID INT primary key,COURSE_NAME VARCHAR(30),
						INSTRUCTOR_NAME VARCHAR(30));
C.
create table EnrollmentInfo(ENROLLMENT_ID INT,STU_ID INT,COURSE_ID INT,
							ENTROLL_STATUS varchar(30),
							FOREIGN KEY (STU_ID) REFERENCES StudentInfo(STU_ID),
							FOREIGN KEY (COURSE_ID) REFERENCES CourseInfo(COURSE_ID));

2)
Insert Into Studentinfo Values(190,'Manikandan','17-05-1999','7383022031','Manikandan@gmail.com','Royapuram,chennai'),
(191,'Monisha','01-05-2000','9014562891','Monisha@gmail.com','Thiruvottiyur,chennai'),
(192,'Madhu','01-01-2000','9617892561','Madhu@gmail','Kalmandapam,Chennai'),
(193,'Meera','31-12-1999','8374829102','Meera@gmail.com','Chindatripet,chennai'),
(194,'Madhan','04-09-2000','7182738478','Madhan@gmail.com','Tondairpet,chennai'),
(195,'Madhi','02-08-1999','9372618910','Madhi@gmail.com','Post Office,chennai'),
(196,'Manoj','09-08-1999','9637819284','Monaj@gmail.com','Perambur,chennai');

INSERT INTO CourseInfo VALUES(290,'Data Science','Manoj'),(291,'Data Structure','Balaji'),
(292,'Database','Ragul'),(293,'python','Balaji'),(294,'Sql','Manoj');

INSERT INTO EnrollmentInfo VALUES(390,190,290,'Not Enrolled'),(391,191,290,'Not Enrolled'),
(392,192,291,'Not Enrolled'),(393,193,292,'Enrolled'),(394,194,293,'Enrolled'),
(395,195,294,' Not Enrolled'),(396,196,293,'Enrolled');

3).

a.select S.STU_NAME, S.PHONE_NO,E.ENTROLL_STATUS
from EnrollmentInfo E
inner join StudentInfo S on E.STU_ID=S.STU_ID 

b.SELECT Courseinfo.COURSE_NAME FROM EnrollmentInfo JOIN CourseInfo ON Enrollmentinfo.COURSE_ID = CourseInfo.COURSE_ID
WHERE Enrollmentinfo.STU_ID = 193 AND EnrollmentInfo.ENTROLL_STATUS = 'Enrolled';

c.Select COURSE_NAME, INSTRUCTOR_NAME FROM courseInfo;

d.Select * FROM courseInfo Where COURSE_NAME = 'Sql';

e.Select * FROM courseInfo Where COURSE_NAME IN ('Database','Sql','Data Structure');

4.

a. select C.COURSE_NAME,count(E.STU_ID)AS NUMBER_OF_STUDENT from EnrollmentInfo E 
join CourseInfo C on E.COURSE_ID = C.COURSE_ID where E.ENTROLL_STATUS = 'Enrolled' 
group by C.COURSE_NAME;

b.select S.STU_NAME from EnrollmentInfo E join StudentInfo S on E.STU_ID = S.STU_ID
where E.COURSE_ID = 293 and E.ENTROLL_STATUS = 'Enrolled';

c.select C.INSTRUCTOR_NAME,count(E.STU_ID) AS Enrolled_Student from CourseInfo C
join EnrollmentInfo E on C.Course_ID = E.COURSE_ID where 
E.ENTROLL_STATUS = 'Enrolled' group by C.INSTRUCTOR_NAME;

d.select S.STU_NAME,count(E.COURSE_ID)from StudentInfo S join EnrollmentInfo E 
on S.STU_ID = E.STU_ID where E.ENTROLL_STATUS = 'Enrolled' group by S.STU_NAME
having count(E.COURSE_ID) >1;

e.select C.COURSE_NAME,count(E.STU_ID) AS Enrolled_Students from EnrollmentInfo E 
join CourseInfo C on E.COURSE_ID = C.COURSE_ID Where E.ENTROLL_STATUS = 'Enrolled' 
group by C.COURSE_NAME order by Enrolled_Students desc;
