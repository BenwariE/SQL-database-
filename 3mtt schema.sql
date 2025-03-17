CREATE SCHEMA `3mtt_sql`;
USE `3mtt_sql`;
CREATE TABLE patients_table ;
ALTER TABLE patients_table
ADD COLUMN PatientID INT, 
ADD COLUMN Name varchar(50),
ADD COLUMN Age INT,
ADD COLUMN Gender varchar(50),
ADD COLUMN State varchar(50);
INSERT INTO patients_table(patientID, Name, Age,Gender,State) values (10001, 'Jonathan Aminu',	34, 'Male', 'Jigawa'), 
(10110, 'Abubakar Sani',45, 'Male', 'Kano'),
(10111, 'Kangyang Bot',	27, 'Female','Plateau'),
(11111, 'John Adamu',	35, 'Male', 'Fct Abuja'),
(11320,	'Esther Ugo',	28,	'Female',	'Anambra'),
(34352,	'Agatha Umar',	37,	'Female',	'Bayelsa'),
(45789,	'Mike Udo',	45,	'Male',	'Akwa' ,'Ibom');
CREATE TABLE doctors_table(DoctorID int, Name varchar(50), Special varchar(50), State varchar(50));
INSERT INTO doctors_table (DoctorID, Name, Special, State) values( 32011, 'Dr. John Olu', 'Cardiology', 'Nasarawa'),
(32013,	"Dr. Baker John",	"Neurology", "Cross River"),
(32014,	"Dr. Aminu Abdul",	"Orthopedics",	"Sokoto"),
(32015,	"Dr. Anita Chinedu",	"Dermatology",	"Abia"),
(32016,	"Dr. Esther Job",	"Ophtalmology","Ekiti");
CREATE TABLE Appointment_table (AppointmentID int,	PatientID int,	DoctorID int,	Date varchar(50),	Status varchar(50));
INSERT INTO Appointment_table (AppointmentID,	PatientID,	DoctorID,	Date,	Status) values (20101,	12003,	32013,	"10/12/2024",	"Confirmed"),
(20102,	10111,	32013,	"11/30/2024", "Confirmed"),
(20103,	34352,	32015,	"1/24/2025",	"Pending"),
(20107,	11111,	32015,	"12/5/2024",	"Confirmed"),
(20109,	12003,	32014,	"2/9/2025",	"Pending"),
(20106,	11320,	32011,	"1/6/2025",	"Pending");
ALTER TABLE Appointment_table 
ADD CONSTRAINT pk_constraint PRIMARY KEY (AppointmentID);
ALTER TABLE Appointment_table 
ADD CONSTRAINT fk_constraint FOREIGN KEY (DoctorsID) REFERENCES Doctors_table(DoctorsID);
ALTER TABLE doctors_table
ADD CONSTRAINT pk_constraint PRIMARY KEY (DoctorsID);
ALTER TABLE patients_table
ADD CONSTRAINT pk_constraint PRIMARY KEY ( patientID);

