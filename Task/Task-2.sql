1.
create table Student(Student_id integer, Stu_name text, Department text, email_id text,
					 Phone_no numeric, Address text,Date_of_birth date, Gender Text, 
					 Major text, GPA numeric,Grade text);

2.
Insert Into Student Values (101,'Kanmani','Maths','Kanmani@gmail.com',8927389081,
'A block main road,Chennai','12-09-1998','Female','Stastics',6.0,'D'),(102,'Karthika','Physics',
'Karthika@gmail.com',9276189319,'B block main road,Chennai','19-09-1998','Female','Thermal physics',3.9,'F'),
(103,'Karthik','Computer Science','Karthik@gmail.com',8279187918,'C block main road,Chennai','23-09-1998','Male',
 'C#',6.5,'D'),(104,'Kiran','Chemistry','Kiran@gmail.com',7689182910,'D block main road,Chennai',
'27-09-1998','Male','Chemical Bonding',3.7,'F'),(105,'Keerthana','Social','Keerthana@gmail.com',9187891672,
'E block main road,Chennai','03-10-1998','Female','History',6.5,'D'),(106,'Kavya','Chemistry','Kavya@gmail.com',
8173908010,'F block main road,Chennai','11-10-1998','Female','Chemical Bonding',5.5,'E'),(107,'Kowshik','Physics','Kowshik@gmail.com',
7890123456,'G block main road,Chennai','31-10-1998','Male','Thermal Physics',7.9,'C'),(108,'Kirthika','Computer science','Kirthika@gmail.com',
7123456890,'H block main road,Chennai','01-11-1998','Female','C#',8.2,'B'),(109,'Kishore','Maths','Kishore@gmail.com',8123456790,
'I block main road,Chennai','05-11-1998','Male','Stastics',9.7,'A'),(110,'Kajal','Computer Science','Kajal@gmail.com',9876543210,
'J block main road,Chennai','04-11-1998','Female','C #',8.9,'B');
Select * from Student;

3.
Select * from Student order by grade desc; 

4.
Select * from Student where Gender = 'Male'; 

5.
Select * from Student where Gpa < 5.0;

6.
Update Student Set Grade = 'B', Email_id = 'karthikeyan@gmail.com' where Student_id = 103;

7.
Select stu_name, date_of_birth from Student where Grade = 'B';

8.
Select Department, Gender, avg(GPA) from student group by Department, Gender;

9.
Alter table Student rename to studentsinfo;

10.
Select Stu_Name from studentinfo WHERE GPA = (select max(GPA) from studentinfo);