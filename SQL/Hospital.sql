DROP TABLE IF EXISTS Departments;
CREATE TABLE Departments( 
Department_name VARCHAR(25) NOT NULL,
PRIMARY KEY (Department_name));

/* INSERT QUERY NO: 1 */
INSERT INTO Departments(Department_Name)
VALUES
(
'Emergency'
);

/* INSERT QUERY NO: 2 */
INSERT INTO Departments(Department_Name)
VALUES
(
'Cardiology'
);

/* INSERT QUERY NO: 3 */
INSERT INTO Departments(Department_Name)
VALUES
(
'ICU'
);

/* INSERT QUERY NO: 4 */
INSERT INTO Departments(Department_Name)
VALUES
(
'Neurology'
);

/* INSERT QUERY NO: 5 */
INSERT INTO Departments(Department_Name)
VALUES
(
'Oncology'
);

/* INSERT QUERY NO: 6 */
INSERT INTO Departments(Department_Name)
VALUES
(
'Maternity Ward'
);

/* INSERT QUERY NO: 7 */
INSERT INTO Departments(Department_Name)
VALUES
(
'Surgery'
);

/* INSERT QUERY NO: 8 */
INSERT INTO Departments(Department_Name)
VALUES
(
'Intensive Care'
);


DROP TABLE IF EXISTS Hospitals;
CREATE TABLE Hospitals( 
Hospital_name VARCHAR(100) NOT NULL,
Address VARCHAR(50),
City VARCHAR(20),
Available_beds INT,
Available_OR_rooms INT,
PRIMARY KEY (Hospital_name));

INSERT INTO Hospitals VALUES
    ('Carilion Roanoke Memorial Hospital',' 1906 Belleview Ave SE','Roanoke',7,0),
    ('Inova Fairfax Hospital',' 3300 Gallows Rd','Falls Church',10,10),
    ('Bon Secours St. Mary''s Hospital',' 5801 Bremo Rd','Richmond',96,5),
    ('Sentara Norfolk General Hospital','600 Gresham Dr','Norfolk',0,7),
    ('University of Virginia Medical Center','1215 Lee St','Charlottesville',61,4),
    ('Inova Alexandria Hospital','4320 Seminary Rd','Alexandria',75,2),
    ('VCU Medical Center','1250 E Marshall St','Richmond',42,2),
    ('Virginia Hospital Center','1701 N George Mason Dr','Arlington ',96,4),
    ('Chippenham Hospital','7101 Jahnke Rd','Richmond',31,10),
    ('Centra Lynchburg General Hospital','1901 Tate Springs Rd',' Lynchburg',35, 6),
    ('Mary Washington Hospital','1001 Sam Perry Blvd','Fredericksburg', 32, 9);

DROP  TABLE IF EXISTS Doctors;
CREATE TABLE Doctors(
    Doctor_id VARCHAR(25) NOT NULL,
    First_name VARCHAR(25),
   Last_name VARCHAR(25),
   Department VARCHAR(25),
   Current_hospital VARCHAR(100),
   Start_date CHAR(8),
   PRIMARY KEY (Doctor_id),
   FOREIGN KEY (Department) REFERENCES Departments (Department_name),
    FOREIGN KEY (Current_hospital) REFERENCES Hospitals (Hospital_name)
    );
/* INSERT QUERY NO: 1 */
INSERT INTO Doctors(Doctor_id, First_name, Last_name, Department, Current_hospital, Start_date)
VALUES
(
81702877399, 'Prescott', 'Sykes', 'ICU', 'Carilion Roanoke Memorial Hospital', '10-01-04'
);

/* INSERT QUERY NO: 2 */
INSERT INTO Doctors(Doctor_id, First_name, Last_name, Department, Current_hospital, Start_date)
VALUES
(
86394604599, 'Ashton', 'Drake', 'Neurology', 'Centra Lynchburg General Hospital', '05-18-21'
);

/* INSERT QUERY NO: 3 */
INSERT INTO Doctors(Doctor_id, First_name, Last_name, Department, Current_hospital, Start_date)
VALUES
(
36483323999, 'Avye', 'Mason', 'Oncology', 'University of Virginia Medical Center', '08-25-08'
);

/* INSERT QUERY NO: 4 */
INSERT INTO Doctors(Doctor_id, First_name, Last_name, Department, Current_hospital, Start_date)
VALUES
(
42852543899, 'Bethany', 'Shaw', 'Cardiology', 'University of Virginia Medical Center', '01-02-10'
);

/* INSERT QUERY NO: 5 */
INSERT INTO Doctors(Doctor_id, First_name, Last_name, Department, Current_hospital, Start_date)
VALUES
(
82699511599, 'Ariel', 'Gilliam', 'Cardiology', 'Centra Lynchburg General Hospital', '07-17-07'
);

/* INSERT QUERY NO: 6 */
INSERT INTO Doctors(Doctor_id, First_name, Last_name, Department, Current_hospital, Start_date)
VALUES
(
71325056799, 'Macon', 'Barron', 'ICU', 'Centra Lynchburg General Hospital', '06-04-13'
);

/* INSERT QUERY NO: 7 */
INSERT INTO Doctors(Doctor_id, First_name, Last_name, Department, Current_hospital, Start_date)
VALUES
(
83861616199, 'Shannon', 'Thornton', 'Emergency', 'Inova Fairfax Hospital', '08-23-01'
);

/* INSERT QUERY NO: 8 */
INSERT INTO Doctors(Doctor_id, First_name, Last_name, Department, Current_hospital, Start_date)
VALUES
(
82972840099, 'Lewis', 'Britt', 'Cardiology', 'Inova Fairfax Hospital', '08-02-15'
);

/* INSERT QUERY NO: 9 */
INSERT INTO Doctors(Doctor_id, First_name, Last_name, Department, Current_hospital, Start_date)
VALUES
(
53307248299, 'Margaret', 'Bowen', 'Maternity Ward', 'Inova Alexandria Hospital', '09-14-10'
);

/* INSERT QUERY NO: 10 */
INSERT INTO Doctors(Doctor_id, First_name, Last_name, Department, Current_hospital, Start_date)
VALUES
(
82875497299, 'Alexandra', 'Gillespie', 'Cardiology', 'Inova Fairfax Hospital', '08-20-06'
);

/* INSERT QUERY NO: 11 */
INSERT INTO Doctors(Doctor_id, First_name, Last_name, Department, Current_hospital, Start_date)
VALUES
(
39629219199, 'Gage', 'Hickman', 'ICU', 'Chippenham Hospital', '05-16-01'
);

/* INSERT QUERY NO: 12 */
INSERT INTO Doctors(Doctor_id, First_name, Last_name, Department, Current_hospital, Start_date)
VALUES
(
57661613899, 'Magee', 'Valentine', 'Emergency', 'Mary Washington Hospital', '10-24-19'
);

/* INSERT QUERY NO: 13 */
INSERT INTO Doctors(Doctor_id, First_name, Last_name, Department, Current_hospital, Start_date)
VALUES
(
20328101299, 'Simon', 'Morse', 'Emergency', 'Mary Washington Hospital', '05-01-06'
);

/* INSERT QUERY NO: 14 */
INSERT INTO Doctors(Doctor_id, First_name, Last_name, Department, Current_hospital, Start_date)
VALUES
(
29948424099, 'Kendall', 'Hernandez', 'Emergency', 'University of Virginia Medical Center', '05-18-01'
);

/* INSERT QUERY NO: 15 */
INSERT INTO Doctors(Doctor_id, First_name, Last_name, Department, Current_hospital, Start_date)
VALUES
(
51283341999, 'Anjolie', 'Garrison', 'Maternity Ward', 'Virginia Hospital Center', '04-01-06'
);

/* INSERT QUERY NO: 16 */
INSERT INTO Doctors(Doctor_id, First_name, Last_name, Department, Current_hospital, Start_date)
VALUES
(
46899271499, 'Rana', 'Mcknight', 'Oncology', 'VCU Medical Center', '03-03-05'
);

/* INSERT QUERY NO: 17 */
INSERT INTO Doctors(Doctor_id, First_name, Last_name, Department, Current_hospital, Start_date)
VALUES
(
30998898799, 'Rafael', 'Tate', 'Cardiology', 'University of Virginia Medical Center', '11-09-04'
);

/* INSERT QUERY NO: 18 */
INSERT INTO Doctors(Doctor_id, First_name, Last_name, Department, Current_hospital, Start_date)
VALUES
(
84882774399, 'Nina', 'Lynn', 'ICU', 'Chippenham Hospital', '03-14-16'
);

/* INSERT QUERY NO: 19 */
INSERT INTO Doctors(Doctor_id, First_name, Last_name, Department, Current_hospital, Start_date)
VALUES
(
87364724599, 'Kiara', 'Hull', 'Neurology', 'Sentara Norfolk General Hospital', '06-13-02'
);

/* INSERT QUERY NO: 20 */
INSERT INTO Doctors(Doctor_id, First_name, Last_name, Department, Current_hospital, Start_date)
VALUES
(
89621657699, 'Barron', 'Ryder', 'Emergency', 'Bon Secours St. Mary\'s Hospital', '01-21-01'
);

/* INSERT QUERY NO: 21 */
INSERT INTO Doctors(Doctor_id, First_name, Last_name, Department, Current_hospital, Start_date)
VALUES
(
13454996899, 'Parker', 'William', 'Oncology', 'Inova Fairfax Hospital', '09-08-02'
);

/* INSERT QUERY NO: 22 */
INSERT INTO Doctors(Doctor_id, First_name, Last_name, Department, Current_hospital, Start_date)
VALUES
(
77299698399, 'Klein', 'Asher', 'Cardiology', 'Virginia Hospital Center', '06-14-09'
);

/* INSERT QUERY NO: 23 */
INSERT INTO Doctors(Doctor_id, First_name, Last_name, Department, Current_hospital, Start_date)
VALUES
(
16349967799, 'Knox', 'Lee', 'ICU', 'Sentara Norfolk General Hospital', '07-25-13'
);

/* INSERT QUERY NO: 24 */
INSERT INTO Doctors(Doctor_id, First_name, Last_name, Department, Current_hospital, Start_date)
VALUES
(
16361770999, 'Knowles', 'Addison', 'Neurology', 'Mary Washington Hospital', '04-08-02'
);

/* INSERT QUERY NO: 25 */
INSERT INTO Doctors(Doctor_id, First_name, Last_name, Department, Current_hospital, Start_date)
VALUES
(
90333758299, 'Williams', 'Hammett', 'Neurology', 'Virginia Hospital Center', '06-07-02'
);

/* INSERT QUERY NO: 26 */
INSERT INTO Doctors(Doctor_id, First_name, Last_name, Department, Current_hospital, Start_date)
VALUES
(
19368898299, 'Lynch', 'Amal', 'Neurology', 'Inova Alexandria Hospital', '04-26-07'
);

/* INSERT QUERY NO: 27 */
INSERT INTO Doctors(Doctor_id, First_name, Last_name, Department, Current_hospital, Start_date)
VALUES
(
25237612599, 'Ramos', 'Lester', 'ICU', 'VCU Medical Center', '11-06-99'
);

/* INSERT QUERY NO: 28 */
INSERT INTO Doctors(Doctor_id, First_name, Last_name, Department, Current_hospital, Start_date)
VALUES
(
53857915099, 'Rivera', 'Kelly', 'Emergency', 'Inova Alexandria Hospital', '01-26-17'
);

/* INSERT QUERY NO: 29 */
INSERT INTO Doctors(Doctor_id, First_name, Last_name, Department, Current_hospital, Start_date)
VALUES
(
53603011799, 'Frederick', 'Jasper', 'Maternity Ward', 'Sentara Norfolk General Hospital', '07-20-00'
);

/* INSERT QUERY NO: 30 */
INSERT INTO Doctors(Doctor_id, First_name, Last_name, Department, Current_hospital, Start_date)
VALUES
(
61955754399, 'Macdonald', 'Tiger', 'Oncology', 'Mary Washington Hospital', '12-28-17'
);

/* INSERT QUERY NO: 31 */
INSERT INTO Doctors(Doctor_id, First_name, Last_name, Department, Current_hospital, Start_date)
VALUES
(
48376903992, 'Stewart', 'Josiah', 'Oncology', 'Centra Lynchburg General Hospital', '12-25-11'
);

/* INSERT QUERY NO: 32 */
INSERT INTO Doctors(Doctor_id, First_name, Last_name, Department, Current_hospital, Start_date)
VALUES
(
40494998999, 'Kelley', 'Christopher', 'Cardiology', 'Mary Washington Hospital', '12-29-18'
);

/* INSERT QUERY NO: 33 */
INSERT INTO Doctors(Doctor_id, First_name, Last_name, Department, Current_hospital, Start_date)
VALUES
(
21282854099, 'Bray', 'Simon', 'Neurology', 'University of Virginia Medical Center', '04-18-06'
);


DROP TABLE  IF EXISTS Hospital_Personal;
CREATE TABLE Hospital_Personal(
    Employee_id VARCHAR(25) NOT NULL,
    First_name VARCHAR(25),
   Last_name VARCHAR(25),
Job_type VARCHAR(25),
   Department VARCHAR(25),
   Current_hospital VARCHAR(100),
   Start_date CHAR(8),
   PRIMARY KEY (Employee_id),
   FOREIGN KEY (Department) REFERENCES Departments (Department_name),
    FOREIGN KEY (Current_hospital) REFERENCES Hospitals (Hospital_name)
    );
/* INSERT QUERY NO: 1 */
INSERT INTO Hospital_Personal(Employee_ID, Job_type, First_name, Last_name, Department, Current_Hospital, Start_date)
VALUES
(
16601210667, 'Nurse', 'Malcolm', 'Richards', 'Surgery', 'Centra Lynchburg General Hospital', '06-10-19'
);

/* INSERT QUERY NO: 2 */
INSERT INTO Hospital_Personal(Employee_ID, Job_type, First_name, Last_name, Department, Current_Hospital, Start_date)
VALUES
(
16310630476, 'Resident', 'Harding', 'Craft', 'Oncology', 'Carilion Roanoke Memorial Hospital', '07-01-11'
);

/* INSERT QUERY NO: 3 */
INSERT INTO Hospital_Personal(Employee_ID, Job_type, First_name, Last_name, Department, Current_Hospital, Start_date)
VALUES
(
16350305127, 'Nurse', 'Dieter', 'Bailey', 'Oncology', 'Bon Secours St. Mary\'s Hospital', '04-30-19'
);

/* INSERT QUERY NO: 4 */
INSERT INTO Hospital_Personal(Employee_ID, Job_type, First_name, Last_name, Department, Current_Hospital, Start_date)
VALUES
(
16870910343, 'Resident', 'Walker', 'Sloan', 'Intensive Care', 'Bon Secours St. Mary\'s Hospital', '02-27-06'
);

/* INSERT QUERY NO: 5 */
INSERT INTO Hospital_Personal(Employee_ID, Job_type, First_name, Last_name, Department, Current_Hospital, Start_date)
VALUES
(
16381108225, 'Janitor', 'Odette', 'Bonner', 'Intensive Care', 'Chippenham Hospital', '06-03-02'
);

/* INSERT QUERY NO: 6 */
INSERT INTO Hospital_Personal(Employee_ID, Job_type, First_name, Last_name, Department, Current_Hospital, Start_date)
VALUES
(
16100406632, 'Janitor', 'Kaye', 'Duncan', 'Surgery', 'Inova Alexandria Hospital', '06-28-00'
);

/* INSERT QUERY NO: 7 */
INSERT INTO Hospital_Personal(Employee_ID, Job_type, First_name, Last_name, Department, Current_Hospital, Start_date)
VALUES
(
16940708599, 'Resident', 'Mollie', 'Velazquez', 'Surgery', 'University of Virginia Medical Center', '06-03-03'
);

/* INSERT QUERY NO: 8 */
INSERT INTO Hospital_Personal(Employee_ID, Job_type, First_name, Last_name, Department, Current_Hospital, Start_date)
VALUES
(
16850823158, 'Resident', 'Nathaniel', 'Hobbs', 'Oncology', 'Centra Lynchburg General Hospital', '05-22-21'
);

/* INSERT QUERY NO: 9 */
INSERT INTO Hospital_Personal(Employee_ID, Job_type, First_name, Last_name, Department, Current_Hospital, Start_date)
VALUES
(
16160120487, 'Nurse', 'Ivana', 'Harding', 'Intensive Care', 'Chippenham Hospital', '06-22-19'
);

/* INSERT QUERY NO: 10 */
INSERT INTO Hospital_Personal(Employee_ID, Job_type, First_name, Last_name, Department, Current_Hospital, Start_date)
VALUES
(
16340212889, 'Nurse', 'Susan', 'Logan', 'Surgery', 'Mary Washington Hospital', '06-10-13'
);

/* INSERT QUERY NO: 11 */
INSERT INTO Hospital_Personal(Employee_ID, Job_type, First_name, Last_name, Department, Current_Hospital, Start_date)
VALUES
(
16370503904, 'Resident', 'George', 'Barker', 'Cardiology', 'VCU Medical Center', '07-02-12'
);

/* INSERT QUERY NO: 12 */
INSERT INTO Hospital_Personal(Employee_ID, Job_type, First_name, Last_name, Department, Current_Hospital, Start_date)
VALUES
(
16971206596, 'Janitor', 'Chiquita', 'Calderon', 'Oncology', 'Centra Lynchburg General Hospital', '05-03-17'
);

/* INSERT QUERY NO: 13 */
INSERT INTO Hospital_Personal(Employee_ID, Job_type, First_name, Last_name, Department, Current_Hospital, Start_date)
VALUES
(
16390410825, 'Nurse', 'Morgan', 'Ray', 'Intensive Care', 'Inova Alexandria Hospital', '11-11-10'
);

/* INSERT QUERY NO: 14 */
INSERT INTO Hospital_Personal(Employee_ID, Job_type, First_name, Last_name, Department, Current_Hospital, Start_date)
VALUES
(
16230206314, 'Nurse', 'Chanda', 'Howe', 'Surgery', 'Chippenham Hospital', '09-29-17'
);

/* INSERT QUERY NO: 15 */
INSERT INTO Hospital_Personal(Employee_ID, Job_type, First_name, Last_name, Department, Current_Hospital, Start_date)
VALUES
(
16811229862, 'Nurse', 'Imogene', 'Langley', 'Cardiology', 'VCU Medical Center', '02-04-04'
);

/* INSERT QUERY NO: 16 */
INSERT INTO Hospital_Personal(Employee_ID, Job_type, First_name, Last_name, Department, Current_Hospital, Start_date)
VALUES
(
16260825816, 'Nurse', 'Quinlan', 'Williams', 'Intensive Care', 'Virginia Hospital Center', '09-06-10'
);

/* INSERT QUERY NO: 17 */
INSERT INTO Hospital_Personal(Employee_ID, Job_type, First_name, Last_name, Department, Current_Hospital, Start_date)
VALUES
(
16700219725, 'Nurse', 'Arsenio', 'Patton', 'Oncology', 'Inova Alexandria Hospital', '11-01-14'
);

/* INSERT QUERY NO: 18 */
INSERT INTO Hospital_Personal(Employee_ID, Job_type, First_name, Last_name, Department, Current_Hospital, Start_date)
VALUES
(
16131107919, 'Nurse', 'Hermione', 'House', 'Surgery', 'Chippenham Hospital', '10-23-14'
);

/* INSERT QUERY NO: 19 */
INSERT INTO Hospital_Personal(Employee_ID, Job_type, First_name, Last_name, Department, Current_Hospital, Start_date)
VALUES
(
16051006003, 'Resident', 'Stella', 'Price', 'Oncology', 'Inova Fairfax Hospital', '07-17-18'
);

DROP TABLE IF EXISTS Patients;
CREATE TABLE Patients( 
First_name VARCHAR(25), 
Last_name VARCHAR(25), 
Patient_ID VARCHAR(25)  NOT NULL, 
Department VARCHAR(25),
Blood_type VARCHAR(3), 
Sex CHAR(1), 
Age INT, 
Weight INT, 
Medical_condition VARCHAR(100),
Current_hospital VARCHAR(100), 
Previous_hospital VARCHAR(100), 
Admission_date VARCHAR(8), 
Discharge_date VARCHAR(8), 
Doctor_id VARCHAR(25), 
Nurse_id VARCHAR(25),
PRIMARY KEY (Patient_id),
FOREIGN KEY (Doctor_id) REFERENCES Doctors(Doctor_id),
FOREIGN KEY (Nurse_id) REFERENCES Hospital_Personal(Employee_id)
);

/* INSERT QUERY NO: 1 */
INSERT INTO Patients(First_name, Last_name, Patient_id, Department, Blood_type, Sex, Age, Weight, Medical_condition, Current_Hospital, Previous_Hospital, Admission_date, Discharge_date, Doctor_id, Nurse_id)
VALUES
(
'Destiny', 'Sparks', 16140913963, 'Emergency', 'A-', 'M', 82, 303, 'Asthma', '', 'Carilion Roanoke Memorial Hospital', '08-26-19', '11-26-20', 25237612599, 16850823158
);

/* INSERT QUERY NO: 2 */
INSERT INTO Patients(First_name, Last_name, Patient_id, Department, Blood_type, Sex, Age, Weight, Medical_condition, Current_Hospital, Previous_Hospital, Admission_date, Discharge_date, Doctor_id, Nurse_id)
VALUES
(
'Nola', 'Duke', 16870704446, 'Oncology', 'B+', 'M', 70, 241, 'Coronary Heart Desease', 'Inova Fairfax Hospital', 'Carilion Roanoke Memorial Hospital', '10-15-20', '', 13454996899, 16310630476
);

/* INSERT QUERY NO: 3 */
INSERT INTO Patients(First_name, Last_name, Patient_id, Department, Blood_type, Sex, Age, Weight, Medical_condition, Current_Hospital, Previous_Hospital, Admission_date, Discharge_date, Doctor_id, Nurse_id)
VALUES
(
'Wang', 'Monroe', 16971221180, 'Cardiology', 'AB+', 'F', 63, 128, 'Asthma', 'Virginia Hospital Center', 'VCU Medical Center', '03-31-21', '', 77299698399, 16811229862
);

/* INSERT QUERY NO: 4 */
INSERT INTO Patients(First_name, Last_name, Patient_id, Department, Blood_type, Sex, Age, Weight, Medical_condition, Current_Hospital, Previous_Hospital, Admission_date, Discharge_date, Doctor_id, Nurse_id)
VALUES
(
'Cathleen', 'Burns', 16850326681, 'ICU', 'O+', 'F', 89, 368, 'Diabetes', 'Sentara Norfolk General Hospital', 'University of Virginia Medical Center', '06-12-19', '', 16349967799, 16940708599
);

/* INSERT QUERY NO: 5 */
INSERT INTO Patients(First_name, Last_name, Patient_id, Department, Blood_type, Sex, Age, Weight, Medical_condition, Current_Hospital, Previous_Hospital, Admission_date, Discharge_date, Doctor_id, Nurse_id)
VALUES
(
'Dylan', 'Rosa', 16710901435, 'Neurology', 'B-', 'M', 89, 291, 'Diabetes', '', 'Chippenham Hospital', '03-11-21', '03-24-21', 25237612599, 16850823158
);

/* INSERT QUERY NO: 6 */
INSERT INTO Patients(First_name, Last_name, Patient_id, Department, Blood_type, Sex, Age, Weight, Medical_condition, Current_Hospital, Previous_Hospital, Admission_date, Discharge_date, Doctor_id, Nurse_id)
VALUES
(
'Penelope', 'Johns', 16120325865, 'Emergency', 'B-', 'F', 43, 270, 'Hypertension', 'Mary Washington Hospital', 'University of Virginia Medical Center', '12-27-19', '', 57661613899, 16850823158
);

/* INSERT QUERY NO: 7 */
INSERT INTO Patients(First_name, Last_name, Patient_id, Department, Blood_type, Sex, Age, Weight, Medical_condition, Current_Hospital, Previous_Hospital, Admission_date, Discharge_date, Doctor_id, Nurse_id)
VALUES
(
'Wyoming', 'Craft', 16320519771, 'Neurology', 'B+', 'F', 87, 360, 'Cancer', 'Virginia Hospital Center', 'Bon Secours St. Mary\'s Hospital', '12-01-20', '', 90333758299, 16850823158
);

/* INSERT QUERY NO: 8 */
INSERT INTO Patients(First_name, Last_name, Patient_id, Department, Blood_type, Sex, Age, Weight, Medical_condition, Current_Hospital, Previous_Hospital, Admission_date, Discharge_date, Doctor_id, Nurse_id)
VALUES
(
'Cade', 'Sosa', 16421202190, 'Neurology', 'AB-', 'M', 38, 162, 'Diabetes', 'Inova Alexandria Hospital', 'Centra Lynchburg General Hospital', '06-14-20', '', 19368898299, 16850823158
);

/* INSERT QUERY NO: 9 */
INSERT INTO Patients(First_name, Last_name, Patient_id, Department, Blood_type, Sex, Age, Weight, Medical_condition, Current_Hospital, Previous_Hospital, Admission_date, Discharge_date, Doctor_id, Nurse_id)
VALUES
(
'Prescott', 'Patel', 16191205791, 'ICU', 'A+', 'F', 39, 181, 'Hypertension', 'VCU Medical Center', 'University of Virginia Medical Center', '06-14-20', '', 25237612599, 16850823158
);

/* INSERT QUERY NO: 10 */
INSERT INTO Patients(First_name, Last_name, Patient_id, Department, Blood_type, Sex, Age, Weight, Medical_condition, Current_Hospital, Previous_Hospital, Admission_date, Discharge_date, Doctor_id, Nurse_id)
VALUES
(
'Aiko', 'Lancaster', 16121227112, 'Emergency', 'AB-', 'F', 21, 200, 'Chronic Bronchitis', 'Inova Alexandria Hospital', 'VCU Medical Center', '08-27-19', '', 53857915099, 16850823158
);

/* INSERT QUERY NO: 11 */
INSERT INTO Patients(First_name, Last_name, Patient_id, Department, Blood_type, Sex, Age, Weight, Medical_condition, Current_Hospital, Previous_Hospital, Admission_date, Discharge_date, Doctor_id, Nurse_id)
VALUES
(
'Malik', 'Frazier', 16750213451, 'Maternity Ward', 'O-', 'F', 74, 339, 'Diabetes', 'Sentara Norfolk General Hospital', 'Centra Lynchburg General Hospital', '08-26-19', '', 53603011799, 16850823158
);

/* INSERT QUERY NO: 12 */
INSERT INTO Patients(First_name, Last_name, Patient_id, Department, Blood_type, Sex, Age, Weight, Medical_condition, Current_Hospital, Previous_Hospital, Admission_date, Discharge_date, Doctor_id, Nurse_id)
VALUES
(
'Allen', 'Pope', 16210106161, 'ICU', 'A+', 'M', 30, 301, 'Cancer', 'VCU Medical Center', 'Inova Alexandria Hospital', '04-26-20', '', 25237612599, 16850823158
);

/* INSERT QUERY NO: 13 */
INSERT INTO Patients(First_name, Last_name, Patient_id, Department, Blood_type, Sex, Age, Weight, Medical_condition, Current_Hospital, Previous_Hospital, Admission_date, Discharge_date, Doctor_id, Nurse_id)
VALUES
(
'Randall', 'Wall', 16340307517, 'Oncology', 'O+', 'F', 33, 295, 'Coronary Heart Desease', 'Mary Washington Hospital', 'Bon Secours St. Mary\'s Hospital', '10-15-19', '', 61955754399, 16350305127
);

/* INSERT QUERY NO: 14 */
INSERT INTO Patients(First_name, Last_name, Patient_id, Department, Blood_type, Sex, Age, Weight, Medical_condition, Current_Hospital, Previous_Hospital, Admission_date, Discharge_date, Doctor_id, Nurse_id)
VALUES
(
'Brenden', 'Hernandez', 16130823718, 'Oncology', 'A-', 'M', 79, 155, 'Hypertension', 'Centra Lynchburg General Hospital', 'Chippenham Hospital', '06-20-20', '', 48376903992, 16850823158
);

/* INSERT QUERY NO: 15 */
INSERT INTO Patients(First_name, Last_name, Patient_id, Department, Blood_type, Sex, Age, Weight, Medical_condition, Current_Hospital, Previous_Hospital, Admission_date, Discharge_date, Doctor_id, Nurse_id)
VALUES
(
'Keaton', 'Kirk', 16120407539, 'Cardiology', 'AB+', 'F', 52, 288, 'Obesity', 'Mary Washington Hospital', 'Mary Washington Hospital', '03-11-21', '', 40494998999, 16850823158
);

/* INSERT QUERY NO: 16 */
INSERT INTO Patients(First_name, Last_name, Patient_id, Department, Blood_type, Sex, Age, Weight, Medical_condition, Current_Hospital, Previous_Hospital, Admission_date, Discharge_date, Doctor_id, Nurse_id)
VALUES
(
'Germane', 'Nieves', 16370930289, 'Neurology', 'A-', 'F', 85, 339, 'Chronic Bronchitis', 'University of Virginia Medical Center', 'Chippenham Hospital', '04-27-21', '', 21282854099, 16850823158
);

/* INSERT QUERY NO: 17 */
INSERT INTO Patients(First_name, Last_name, Patient_id, Department, Blood_type, Sex, Age, Weight, Medical_condition, Current_Hospital, Previous_Hospital, Admission_date, Discharge_date, Doctor_id, Nurse_id)
VALUES
(
'Raja', 'Diaz', 16560529962, 'Emergency', 'O-', 'M', 41, 157, 'Cancer', 'Mary Washington Hospital', 'Mary Washington Hospital', '02-02-20', '', 20328101299, 16850823158
);

/* INSERT QUERY NO: 18 */
INSERT INTO Patients(First_name, Last_name, Patient_id, Department, Blood_type, Sex, Age, Weight, Medical_condition, Current_Hospital, Previous_Hospital, Admission_date, Discharge_date, Doctor_id, Nurse_id)
VALUES
(
'Nevada', 'Mcfadden', 16350107551, 'ICU', 'A-', 'M', 62, 371, 'Obesity', 'Carilion Roanoke Memorial Hospital', 'Centra Lynchburg General Hospital', '04-01-21', '', 81702877399, 16850823158
);

/* INSERT QUERY NO: 19 */
INSERT INTO Patients(First_name, Last_name, Patient_id, Department, Blood_type, Sex, Age, Weight, Medical_condition, Current_Hospital, Previous_Hospital, Admission_date, Discharge_date, Doctor_id, Nurse_id)
VALUES
(
'Aspen', 'Norris', 16441008851, 'Emergency', 'A+', 'M', 70, 177, 'Hypertension', 'Inova Fairfax Hospital', 'Centra Lynchburg General Hospital', '03-14-20', '', 83861616199, 16850823158
);

DROP TABLE IF EXISTS Emergency_Contacts;
CREATE TABLE Emergency_Contacts(
Contact_id VARCHAR(20),
Patient_id VARCHAR(25),
First_name VARCHAR(25),
Last_name VARCHAR(25),
Phone_number VARCHAR(12),
Relation VARCHAR(25),
PRIMARY KEY (Contact_id),
FOREIGN KEY (Patient_id) REFERENCES Patients (Patient_ID)
);

/* INSERT QUERY NO: 1 */
INSERT INTO Emergency_Contacts(Contact_id, Patient_id, First_name, Last_name, Phone_number, Relation)
VALUES
(
41552922899, 16140913963, 'John', 'Burch', '246-576-0270', 'Family'
);

/* INSERT QUERY NO: 2 */
INSERT INTO Emergency_Contacts(Contact_id, Patient_id, First_name, Last_name, Phone_number, Relation)
VALUES
(
62843154399, 16870704446, 'Hashim', 'Hopkins', '790-410-2011', 'Family'
);

/* INSERT QUERY NO: 3 */
INSERT INTO Emergency_Contacts(Contact_id, Patient_id, First_name, Last_name, Phone_number, Relation)
VALUES
(
50255209299, 16971221180, 'Maxine', 'Hickman', '727-502-2274', 'Family'
);

/* INSERT QUERY NO: 4 */
INSERT INTO Emergency_Contacts(Contact_id, Patient_id, First_name, Last_name, Phone_number, Relation)
VALUES
(
95504511399, 16850326681, 'Kamal', 'Odonnell', '638-258-7601', 'Friend'
);

/* INSERT QUERY NO: 5 */
INSERT INTO Emergency_Contacts(Contact_id, Patient_id, First_name, Last_name, Phone_number, Relation)
VALUES
(
45226978199, 16710901435, 'Marny', 'Beard', '376-762-4466', 'Friend'
);

/* INSERT QUERY NO: 6 */
INSERT INTO Emergency_Contacts(Contact_id, Patient_id, First_name, Last_name, Phone_number, Relation)
VALUES
(
95458702299, 16120325865, 'Zoe', 'Holden', '660-863-5667', 'Family'
);

/* INSERT QUERY NO: 7 */
INSERT INTO Emergency_Contacts(Contact_id, Patient_id, First_name, Last_name, Phone_number, Relation)
VALUES
(
73578876299, 16320519771, 'Skyler', 'Ratliff', '151-756-9752', 'Family'
);

/* INSERT QUERY NO: 8 */
INSERT INTO Emergency_Contacts(Contact_id, Patient_id, First_name, Last_name, Phone_number, Relation)
VALUES
(
40414938799, 16421202190, 'Lunea', 'Oneill', '265-716-7601', 'Friend'
);

/* INSERT QUERY NO: 9 */
INSERT INTO Emergency_Contacts(Contact_id, Patient_id, First_name, Last_name, Phone_number, Relation)
VALUES
(
95298995799, 16191205791, 'Angelica', 'Herring', '281-393-1884', 'Friend'
);

/* INSERT QUERY NO: 10 */
INSERT INTO Emergency_Contacts(Contact_id, Patient_id, First_name, Last_name, Phone_number, Relation)
VALUES
(
8892643899, 16121227112, 'Talon', 'Solis', '590-157-5615', 'Family'
);

/* INSERT QUERY NO: 11 */
INSERT INTO Emergency_Contacts(Contact_id, Patient_id, First_name, Last_name, Phone_number, Relation)
VALUES
(
87321918699, 16750213451, 'Olympia', 'Roman', '638-739-7801', 'Friend'
);

/* INSERT QUERY NO: 12 */
INSERT INTO Emergency_Contacts(Contact_id, Patient_id, First_name, Last_name, Phone_number, Relation)
VALUES
(
16620864899, 16210106161, 'Lisandra', 'Burke', '788-889-3855', 'Family'
);

/* INSERT QUERY NO: 13 */
INSERT INTO Emergency_Contacts(Contact_id, Patient_id, First_name, Last_name, Phone_number, Relation)
VALUES
(
62704545299, 16340307517, 'Winifred', 'Nolan', '635-515-3493', 'Family'
);

/* INSERT QUERY NO: 14 */
INSERT INTO Emergency_Contacts(Contact_id, Patient_id, First_name, Last_name, Phone_number, Relation)
VALUES
(
57237620999, 16130823718, 'Kimberley', 'Harper', '977-883-4489', 'Friend'
);

/* INSERT QUERY NO: 15 */
INSERT INTO Emergency_Contacts(Contact_id, Patient_id, First_name, Last_name, Phone_number, Relation)
VALUES
(
61756394699, 16120407539, 'Petra', 'Reed', '951-635-4300', 'Friend'
);

/* INSERT QUERY NO: 16 */
INSERT INTO Emergency_Contacts(Contact_id, Patient_id, First_name, Last_name, Phone_number, Relation)
VALUES
(
98671339599, 16370930289, 'Thomas', 'Wiggins', '331-374-9433', 'Friend'
);

/* INSERT QUERY NO: 17 */
INSERT INTO Emergency_Contacts(Contact_id, Patient_id, First_name, Last_name, Phone_number, Relation)
VALUES
(
21813277399, 16560529962, 'Adam', 'Gibson', '427-725-2507', 'Family'
);

/* INSERT QUERY NO: 18 */
INSERT INTO Emergency_Contacts(Contact_id, Patient_id, First_name, Last_name, Phone_number, Relation)
VALUES
(
10597915899, 16350107551, 'Thaddeus', 'Jacobson', '013-643-2245', 'Friend'
);

/* INSERT QUERY NO: 19 */
INSERT INTO Emergency_Contacts(Contact_id, Patient_id, First_name, Last_name, Phone_number, Relation)
VALUES
(
2533603199, 16441008851, 'Isaac', 'Perkins', '900-222-7896', 'Family'
);

SELECT * FROM Departments;
SELECT * FROM Hospitals;
SELECT * FROM Hospital_Personal;
SELECT * FROM Doctors;
SELECT * FROM Patients;
SELECT * FROM Emergency_Contacts;


/* QUERY 10 */
SELECT Admission_date FROM Patients WHERE
Patients.Patient_ID = 16320519771 and Patients.Current_hospital = 'Virginia Hospital Center';

/* QUERY 11 */
SELECT DISTINCT Current_hospital FROM Patients WHERE Patients.Age > 65 && Current_hospital != '';

/* QUERY 12 */
SELECT (start_date) FROM Doctors WHERE Doctor_id = '82972840099' AND Doctors.Department = 'Cardiology' AND Doctors.Current_hospital = 'Inova Fairfax Hospital';

/* QUERY 13 */
SELECT Doctor_id FROM Patients WHERE Patients.Patient_ID = 16191205791 AND Patients.Current_hospital = 'VCU Medical Center';

/* QUERY 14 */
SELECT COUNT(*) FROM Patients WHERE Patients.Department = 'ICU' AND Patients.Current_hospital = 'Sentara Norfolk General Hospital'

/* QUERY 15 */
SELECT Patient_ID, Admission_date, Discharge_date FROM Patients WHERE Patients.Doctor_id = 48376903992

/* QUERY 16 */
SELECT Relation FROM Emergency_Contacts WHERE Emergency_Contacts.Patient_ID = 16850326681;

/* QUERY 17 */
SELECT age FROM Patients WHERE Patients.Weight > 200 AND Patients.Current_hospital = 'Mary Washington Hospital';

/* QUERY 19 */
SELECT Doctors.Doctor_id, count(*) FROM Doctors INNER JOIN Patients WHERE Doctors.Doctor_id = Patients.Doctor_id AND Doctors.Department = 'ICU' GROUP BY Doctors.Doctor_id HAVING COUNT(*) > 3

/* QUERY 20 */
SELECT * FROM Doctors,Hospitals WHERE Hospitals.Hospital_name = Doctors.Current_hospital AND Hospitals.City = 'Richmond';

