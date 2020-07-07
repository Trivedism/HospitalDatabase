SELECT
  * 
FROM
  Departments;
SELECT
  * 
FROM
  Hospitals;
SELECT
  * 
FROM
  Hospital_Personals;
SELECT
  * 
FROM
  Doctors;
SELECT
  * 
FROM
  Patients;
SELECT
  * 
FROM
  Emergency_Contacts;
/* QUERY 1 List all hospitals in Richmond VA, that have at least 3 open operating rooms
*/
SELECT
  Hospital_Name AS Hospitals 
FROM
  Hospitals 
WHERE
  Available_ORs >= 3 
  AND City = 'Richmond';
/* QUERY 2 What is the address of the St. Marys hospital in Richmond Va
*/
SELECT
  Hospital_name,
  CONCAT(Address, ' ', City) AS 'Address' 
FROM
  Hospitals 
WHERE
  Hospital_name = 'VCU Medical Center';
/* QUERY 3 List all the hospitals and their address that has a blood supply of O neg*/
SELECT
  Hospital_name AS 'Hospital',
  CONCAT(Address, ' ', City) AS 'Address',
  O_Neg AS '#' 
FROM
  Hospitals 
Where
  O_Neg > 0;
/* QUERY 4 List the previous hospital and address that patient 16971221180 was at */
SELECT
  Previous_Hospital AS 'Previous Hospital',
  CONCAT(h.Address, ' ', h.City) AS 'Address' 
FROM
  Patients p,
  Hospitals h 
WHERE
  p.Patient_id = 16971221180 
  AND p.Previous_hospital = h.Hospital_name;
/* QUERY 5 List the emergency contact name and phone number of patient 16750213451 */
SELECT
  CONCAT(e.First_name, ' ', e.Last_name) AS 'Contact Name',
  e.Phone_number AS 'Phone Number' 
FROM
  Emergency_Contacts e,
  Patients p 
WHERE
  p.Patient_id = 16750213451 
  AND e.Patient_id = p.Patient_id;
/* QUERY 6  What is the medical record of patient 16120407539 */
SELECT
  CONCAT(First_name, ' ', Last_name) AS 'Patient Name',
  Age,
  Weight,
  Sex,
  Blood_type AS 'Blood Type',
  Medical_Condition AS 'Medical Condition' 
FROM
  Patients 
WHERE
  Patient_id = 16120407539;
/* QUERY 7 List all the doctors and the number of patients they have in the Emergency Department at Mary Washington Hospital */
SELECT
  CONCAT(d.First_name, ' ', d.Last_name) AS 'Doctor',
  COUNT(p.Patient_id)AS 'Number of Patients' 
FROM
  Doctors d 
  LEFT OUTER JOIN
    Patients p 
    ON p.Doctor_id = d.Doctor_id WH ERE d.Department = 'Emergency' 
    AND d.Current_hospital = 'Mary Washington Hospital' 
GROUP BY
  d.Doctor_id;
/* QUERY 8 What is the emergency contact info for the 16350305127  nurse ids patient*/
SELECT DISTINCT
  CONCAT(e.First_name, ' ', e.Last_name) AS 'Contact Name',
  e.Phone_number AS 'Phone Number' 
FROM
  Patients p,
  Emergency_Contacts e,
  Hospital_Personals h 
WHERE
  p.Nurse_id = 16350305127 
  AND p.Patient_id = e.Patient_id;
/*With Inner Join for #8*/
SELECT
  CONCAT(e.First_name, ' ', e.Last_name) AS 'Contact Name',
  e.Phone_number AS 'Phone Number' 
FROM
  Emergency_Contacts e,
  Hospital_Personals h 
  INNER JOIN
    Patients p 
    ON p.Nurse_id = h.Employee_id 
WHERE
  h.Employee_id = 16350305127 
  AND p.Patient_id = e.Patient_id;

/* QUERY 10 How long did patient 16140913963 stay in the hospital*/
SELECT
  CONCAT(DATEDIFF(Discharge_date, Admission_date), " " , "days") AS 'Duration' 
FROM
  Patients 
WHERE
  Patients.Patient_ID = 16140913963;
/* QUERY 11 List the name, care team and hospitals  of all patients over the age of 65 in ascending order by age */
SELECT
  CONCAT(p.First_name, ' ', p.Last_name) AS 'Patient Name',
  p.Age,
  CONCAT(d.First_name, ' ', d.Last_name) AS 'Doctor',
  CONCAT(h.First_name, ' ', h.Last_name) AS 'Nurse',
  p.C urrent_hospital AS 'Current Hospital' 
FROM
  Patients p,
  Doctors d,
  Hospital_Personals h 
WHERE
  p.Age > 65 
  and p.Current_hospital != '' 
  and p.Doctor_id = d.Doctor_id 
  and p.Nurse_id = h. Employee_id 
ORDER BY
  p.Age ASC;
/* QUERY 12  How long has doctor X been working in department Y at Hospital Z*/
SELECT
  CONCAT(DATEDIFF(CURDATE(), Start_date), " " , "days") AS 'Duration' 
FROM
  Doctors 
WHERE
  Doctor_ID = 82972840099;
/* QUERY 13 What doctor did person 16191205791 see at VCU Medical Center  */
SELECT
  p.Doctor_id AS 'Doctor ID',
  CONCAT(d.First_name, ' ', d.Last_name) AS 'Doctor' 
FROM
  Patients p,
  Doctors d 
WHERE
  p.Patient_ID = 16191205791 
  AND p.Current_hospital = 'VCU Medical Center' 
  AND p.Doctor_id = d.Doctor_id ;
/* QUERY 14 How many patients are currently in the ICU at Sentara Norfolk General Hospital*/
SELECT
  COUNT(*) AS 'Number of Patients' 
FROM
  Patients 
WHERE
  Patients.Department = 'ICU' 
  AND Patients.Current_hospital = 'Sentara Norfolk General Hospital';
/* QUERY 15 List all patients and dates that have been seen by doctor 48376903992 */
SELECT
  CONCAT(First_name, ' ', Last_name) AS 'Patient Name',
  Admission_date,
  Discharge_date 
FROM
  Patients 
WHERE
  Patients.Doctor_id = 48376903992;
/* QUERY 16 How is person 16850326681 related to the patient */
SELECT
  Relation 
FROM
  Emergency_Contacts 
WHERE
  Emergency_Contacts.Patient_ID = 16850326681;
/* QUERY 17 What is the average age of all patients over the weight of 200 pounds at Hospital Mary Washington Hospital */
SELECT
  AVG(age) 
FROM
  Patients 
WHERE
  Patients.Weight > 200 
  AND Patients.Current_hospital = 'Mary Washington Hospital';
/* QUERY 18 What is the discharge date of the most recent patient at Chippenham Hospital */
SELECT
  Discharge_date 
FROM
  Patients 
WHERE
  Previous_hospital = 'Chippenham Hospital' 
  AND Discharge_date != "" 
ORDER BY
  Discharge_date DESC LIMIT 1;
/* QUERY 19 How many patients have  stayed at Centra Lynchburg General Hospital */
SELECT
  Count(*),
  AS 'Number Of Patients' 
FROM
  Patients 
WHERE
  Previous_hospital = 'Centra Lynchburg General Hospital';
/* QUERY 20 How many Nurses work in the city of Richmond*/
SELECT
  COUNT(hp.Employee_id) AS 'Number Of Nurses' 
FROM
  Hospital_Personals hp,
  Hospitals h 
WHERE
  hp.Job_type = 'Nurse' 
  AND h.City = 'Richmond VA' 
  AND h.Hospital_name = hp.Curr ent_Hospital;
/* View 1 Show the patient information after being checked out */
CREATE VIEW Stay_status AS 
SELECT
  Patient_id AS 'Patient ID',
  CONCAT(First_name, ' ', Last_name) AS 'Patient Name',
  Current_Hospital AS 'Current Hospital',
  Previous_hospital AS 'Previous Hospital',
  Admission_Date AS 'Admission Date',
  Discharge_date AS 'Discharge Date' 
FROM
  Patients 
WHERE
  Discharge_date != '' 
ORDER BY
  Discharge_date DESC LIMIT 1;
/* View 2 - Admission  for Patient */
CREATE VIEW New_stay_status AS 
SELECT
  Patient_id AS 'Patient ID',
  CONCAT(First_name, ' ', Last_name) AS 'Patient Name',
  Current_Hospital AS 'Current Hospital',
  Previous_hospital AS 'Previous Hospital',
  Admission_Date AS 'Admission Date',
  Discharge_date AS 'Discharge Date' 
FROM
  Patients 
WHERE
  Admission_date != '' 
ORDER BY
  Admission_date DESC LIMIT 1;
/* Procedure 1- Discharge  for Patient */
DROP PROCEDURE IF EXISTS Discharge_patient;
DELIMITER // CREATE PROCEDURE Discharge_patient(IN id VARCHAR(25)) 
BEGIN
  UPDATE
    Patients 
  SET
    Discharge_date = CURDATE(),
    Previous_hospital = Current_hospital,
    Current_hospital = '' 
  WHERE
    Patient_id = id;
SELECT
  * 
FROM
  Stay_status;
END
// DELIMITER ;
/* Prompt for Discharge procedure*/
CREATE VIEW New_patient_prompt AS 
SELECT
  'Please input the information in the following order
 (First name, Last name, Age, Weight, Blood Type, Sex, Medical Condition, Current Hospital, Nurse ID, Doctor ID, 
  and Department)' AS 'Prompt' ;
 	/* Procedure for admitting new patients */
  DROP PROCEDURE IF EXISTS Admit_new;
DELIMITER // CREATE PROCEDURE Admit_new(IN fn VARCHAR(25), IN ln VARCHAR(25), IN age INT, IN weight INT, IN blood VARCHAR(3), IN sex CHAR(1), IN mc VARCHAR(25), IN hospital VARCHAR(50), IN nurse VARCHAR(25), IN doctor VARCHAR(25), In department VARCHAR(25)) 
BEGIN
  SELECT
    * 
  FROM
    New_patient_prompt;
INSERT INTO
  Patients(First_name, Last_name, Age, Weight, Blood_type, Sex, Medical_condition, Current_hospital, Previous_hospital, Nurse_id, Doctor_id, Department, Patient_id, Admission_date) 
VALUES
  (
    fn,
    ln,
    age,
    weight,
    blood,
    sex,
    mc,
    hospital,
    '',
    nurse,
    doctor,
    department,
    LPAD(FLOOR(RAND() * 99999999999.99), 11, '0'),
    CURDATE()
  )
;
SELECT
  * 
FROM
  New_stay_status;
END
// DELIMITER ;

/* View-3 displays information on all working doctors*/
DROP VIEW IF EXISTS DoctorsData;
CREATE VIEW DoctorsData AS 
SELECT
  Doctor_id,
  Last_name,
  Current_hospital,
  Department 
FROM
  Doctors;
SELECT
  * 
FROM
  DoctorsData;
/* Trigger checks if the relation is Friend  or Family */
DROP TRIGGER IF EXISTS relation_trigger;
DELIMITER // CREATE TRIGGER relation_trigger BEFORE INSERT 
ON Emergency_Contacts FOR EACH ROW 
BEGIN
  IF(new.Relation != 'Family' 
  OR new.Relation != 'Friend') 
THEN
  SIGNAL SQLSTATE '45000' 
SET
  MESSAGE_TEXT = 'Emergency Contact must be a Friend or Family';
END
IF;
END
// DELIMITER ;
/*Trigger test attempting to add Neighbor as an Emergency Contact*/
INSERT INTO
  Emergency_Contacts(Contact_id, Patient_id, First_name, Last_name, Phone_number, Relation) 
VALUES
  (
    2533603199, 16441008851, 'Isaac', 'Perkins', '900-222-7896', 'Neighbor' 
  )
;
/* For Procedures*/
/*CALL Discharge_patient(16320519771);*/
/*CALL Admit_new('John', 'Doe', 11, 123,'O+','M', '', 'VCU Medical Center', 16850823158,53603011799, 'ICU');*/