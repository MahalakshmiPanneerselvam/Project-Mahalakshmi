1)
CREATE TABLE EVENTS(EVENT_ID INT PRIMARY KEY, EVENT_NAME VARCHAR(20), EVENT_DATE DATE, 
				   EVENT_LOCATION VARCHAR(20),EVENT_DESCRIPTION VARCHAR(50));

CREATE TABLE ATTENDEES(ATTENDEE_ID INT PRIMARY KEY,ATTENDEE_NAME VARCHAR(20),
					   ATTENDE_PHONE BIGINT,ATTENDEE_EMAIL VARCHAR(20),
					   ATTENDEE_CITY VARCHAR(20));

CREATE TABLE REGISTRATIONS(REGISTRATION_ID INT PRIMARY KEY,EVENT_ID INT,ATTENDEE_ID INT,
						  Registration_DATE DATE, REGISTRATION_AMOUNT NUMERIC,
						  FOREIGN KEY (EVENT_ID) REFERENCES EVENTS(EVENT_ID),
						  FOREIGN KEY (ATTENDEE_ID) REFERENCES ATTENDEES(ATTENDEE_ID));

2)
Insert into events Values(91,'National Conference','25-01-2021','Chennai','18 years old can participate'),
(92,'Sports Event','27-01-2021','Chennai','eligible for the sports meet can participate'),
(93,'College Culturals','28-02-2021','Chennai','Only college students are allowed');

Insert into attendees Values (01,'Santhosh',9870654321,'Santhosh@gmail.com','Chennai'),
(02,'Sreenisha',8765432190,'Sreenisha@gmail.com','Chennai'),(03,'Sanjay',7654321098,'Sanjay@gmail.com',
'Chennai'),(04,'Sekar',8097654321,'Sekar@gmail.com','Chennai'),(05,'Seetha',8393134323,
'Seetha@gmail.com','Chennai');

Insert into Registrations Values(101,93,01,'20-02-2021',150),(102,92,02,'23-01-2021',150),
(103,91,03,'20-01-2021',250),(104,92,04,'23-01-2021',150),(105,93,05,'20-02-2021',150);

3) 
a.
Insert into events Values(94,'Conference','01-03-2021','Chennai','Only college students are allowed');

b.
Update Events set Event_Name = 'Sports Event' Where EVENT_ID = 93;

c.
DELETE FROM EVENTS WHERE EVENT_ID = 94;

4)
a.
Insert Into attendees values (06,'Shanthi',8901234567,'Shanthi@gmail.com','Chennai');

b.
insert into registrations values (208,5,108,'01-05-2024',100);

5).

Select Ei.event_id, Ei.event_name, Count(Rs.attendee_id) From events Ei 
Join registrations Rs ON Ei.event_id = Rs.event_id Group by Ei.event_id, Ei.event_name;
