DROP DATABASE IF EXISTS Hospital;

CREATE DATABASE Hospital;

USE Hospital;

DROP TABLE IF EXISTS departments;

CREATE TABLE departments
  (
     department_name VARCHAR(25) NOT NULL,
     PRIMARY KEY (department_name)
  );

/* INSERT QUERY NO: 1 */
INSERT INTO departments
            (department_name)
VALUES      ('Emergency'),
            ('Cardiology'),
            ('ICU'),
            ('Neurology'),
            ('Oncology'),
            ('Maternity Ward'),
            ('Surgery');

DROP TABLE IF EXISTS hospitals;

CREATE TABLE hospitals
  (
     hospital_name  VARCHAR(50) NOT NULL,
     address        VARCHAR(50),
     city           VARCHAR(20),
     available_beds INT,
     available_ors  INT,
     a_pos          INT,
     a_neg          INT,
     b_pos          INT,
     b_neg          INT,
     ab_pos         INT,
     ab_neg         INT,
     o_pos          INT,
     o_neg          INT,
     PRIMARY KEY (hospital_name)
  );

INSERT INTO hospitals
            (hospital_name,
             address,
             city,
             available_beds,
             available_ors,
             a_pos,
             a_neg,
             b_pos,
             b_neg,
             ab_pos,
             ab_neg,
             o_pos,
             o_neg)
VALUES      ( 'Carilion Roanoke Memorial Hospital',
              '1906 Belleview Ave SE',
              'Roanoke VA',
              7,
              0,
              5,
              24,
              30,
              10,
              22,
              2,
              5,
              4 ),
            ( 'Inova Fairfax Hospital',
              '3300 Gallows Rd',
              'Falls Church VA',
              10,
              10,
              23,
              5,
              1,
              15,
              5,
              10,
              23,
              26 ),
            ( 'Bon Secours St. Mary\'s Hospital',
              '5801 Bremo Rd',
              'Richmond VA',
              96,
              5,
              8,
              29,
              17,
              10,
              23,
              15,
              25,
              27 ),
            ( 'Sentara Norfolk General Hospital',
              '600 Gresham Dr',
              'Norfolk VA',
              0,
              7,
              14,
              28,
              13,
              27,
              5,
              4,
              7,
              3 ),
            ( 'University of Virginia Medical Center',
              '1215 Lee St',
              'Charlottesville VA',
              61,
              4,
              24,
              5,
              7,
              25,
              26,
              24,
              4,
              7 ),
            ( 'Inova Alexandria Hospital',
              '4320 Seminary Rd',
              'Alexandria VA',
              75,
              2,
              18,
              15,
              12,
              23,
              2,
              9,
              9,
              2 ),
            ( 'VCU Medical Center',
              '1250 E Marshall St',
              'Richmond VA',
              42,
              2,
              13,
              6,
              28,
              1,
              9,
              11,
              6,
              26 ),
            ( 'Virginia Hospital Center',
              '1701 N George Mason Dr',
              'Arlington VA',
              96,
              4,
              5,
              30,
              21,
              17,
              27,
              1,
              30,
              29 ),
            ( 'Chippenham Hospital',
              '7101 Jahnke Rd',
              'Richmond VA',
              31,
              10,
              6,
              25,
              24,
              9,
              20,
              19,
              23,
              15 ),
            ( 'Centra Lynchburg General Hospital',
              '1901 Tate Springs Rd',
              'Lynchburg VA',
              35,
              6,
              7,
              6,
              16,
              30,
              8,
              19,
              11,
              10 ),
            ( 'Mary Washington Hospital',
              '1001 Sam Perry Blvd',
              'Fredericksburg VA',
              32,
              9,
              3,
              22,
              11,
              15,
              29,
              5,
              16,
              24 );

DROP TABLE IF EXISTS doctors;

CREATE TABLE doctors
  (
     doctor_id        VARCHAR(25) NOT NULL,
     first_name       VARCHAR(25),
     last_name        VARCHAR(25),
     department       VARCHAR(25),
     current_hospital VARCHAR(50),
     start_date       DATE,
     PRIMARY KEY (doctor_id),
     FOREIGN KEY (department) REFERENCES departments (department_name),
     FOREIGN KEY (current_hospital) REFERENCES hospitals (hospital_name)
  );

/* INSERT QUERY NO: 1 */
INSERT INTO doctors
            (doctor_id,
             first_name,
             last_name,
             department,
             current_hospital,
             start_date)
VALUES      ( 81702877399,
              'Prescott',
              'Sykes',
              'ICU',
              'Carilion Roanoke Memorial Hospital',
              '2004-10-01' );

/* INSERT QUERY NO: 2 */
INSERT INTO doctors
            (doctor_id,
             first_name,
             last_name,
             department,
             current_hospital,
             start_date)
VALUES      ( 86394604599,
              'Ashton',
              'Drake',
              'Neurology',
              'Centra Lynchburg General Hospital',
              '2019-05-18' );

/* INSERT QUERY NO: 3 */
INSERT INTO doctors
            (doctor_id,
             first_name,
             last_name,
             department,
             current_hospital,
             start_date)
VALUES      ( 36483323999,
              'Avye',
              'Mason',
              'Oncology',
              'University of Virginia Medical Center',
              '2008-08-25' );

/* INSERT QUERY NO: 4 */
INSERT INTO doctors
            (doctor_id,
             first_name,
             last_name,
             department,
             current_hospital,
             start_date)
VALUES      ( 42852543899,
              'Bethany',
              'Shaw',
              'Cardiology',
              'University of Virginia Medical Center',
              '2010-01-02' );

/* INSERT QUERY NO: 5 */
INSERT INTO doctors
            (doctor_id,
             first_name,
             last_name,
             department,
             current_hospital,
             start_date)
VALUES      ( 82699511599,
              'Ariel',
              'Gilliam',
              'Cardiology',
              'Centra Lynchburg General Hospital',
              '2007-07-17' );

/* INSERT QUERY NO: 6 */
INSERT INTO doctors
            (doctor_id,
             first_name,
             last_name,
             department,
             current_hospital,
             start_date)
VALUES      ( 71325056799,
              'Macon',
              'Barron',
              'ICU',
              'Centra Lynchburg General Hospital',
              '2013-06-04' );

/* INSERT QUERY NO: 7 */
INSERT INTO doctors
            (doctor_id,
             first_name,
             last_name,
             department,
             current_hospital,
             start_date)
VALUES      ( 83861616199,
              'Shannon',
              'Thornton',
              'Emergency',
              'Inova Fairfax Hospital',
              '2001-08-23' );

/* INSERT QUERY NO: 8 */
INSERT INTO doctors
            (doctor_id,
             first_name,
             last_name,
             department,
             current_hospital,
             start_date)
VALUES      ( 82972840099,
              'Lewis',
              'Britt',
              'Cardiology',
              'Inova Fairfax Hospital',
              '2015-08-02' );

/* INSERT QUERY NO: 9 */
INSERT INTO doctors
            (doctor_id,
             first_name,
             last_name,
             department,
             current_hospital,
             start_date)
VALUES      ( 53307248299,
              'Margaret',
              'Bowen',
              'Maternity Ward',
              'Inova Alexandria Hospital',
              '2010-09-14' );

/* INSERT QUERY NO: 10 */
INSERT INTO doctors
            (doctor_id,
             first_name,
             last_name,
             department,
             current_hospital,
             start_date)
VALUES      ( 82875497299,
              'Alexandra',
              'Gillespie',
              'Cardiology',
              'Inova Fairfax Hospital',
              '2006-08-20' );

/* INSERT QUERY NO: 11 */
INSERT INTO doctors
            (doctor_id,
             first_name,
             last_name,
             department,
             current_hospital,
             start_date)
VALUES      ( 39629219199,
              'Gage',
              'Hickman',
              'ICU',
              'Chippenham Hospital',
              '2001-05-16' );

/* INSERT QUERY NO: 12 */
INSERT INTO doctors
            (doctor_id,
             first_name,
             last_name,
             department,
             current_hospital,
             start_date)
VALUES      ( 57661613899,
              'Magee',
              'Valentine',
              'Emergency',
              'Mary Washington Hospital',
              '2019-10-24' );

/* INSERT QUERY NO: 13 */
INSERT INTO doctors
            (doctor_id,
             first_name,
             last_name,
             department,
             current_hospital,
             start_date)
VALUES      ( 20328101299,
              'Simon',
              'Morse',
              'Emergency',
              'Mary Washington Hospital',
              '2006-05-01' );

/* INSERT QUERY NO: 14 */
INSERT INTO doctors
            (doctor_id,
             first_name,
             last_name,
             department,
             current_hospital,
             start_date)
VALUES      ( 29948424099,
              'Kendall',
              'Hernandez',
              'Emergency',
              'University of Virginia Medical Center',
              '2001-05-18' );

/* INSERT QUERY NO: 15 */
INSERT INTO doctors
            (doctor_id,
             first_name,
             last_name,
             department,
             current_hospital,
             start_date)
VALUES      ( 51283341999,
              'Anjolie',
              'Garrison',
              'Maternity Ward',
              'Virginia Hospital Center',
              '2006-04-01' );

/* INSERT QUERY NO: 16 */
INSERT INTO doctors
            (doctor_id,
             first_name,
             last_name,
             department,
             current_hospital,
             start_date)
VALUES      ( 46899271499,
              'Rana',
              'Mcknight',
              'Oncology',
              'VCU Medical Center',
              '2005-03-03' );

/* INSERT QUERY NO: 17 */
INSERT INTO doctors
            (doctor_id,
             first_name,
             last_name,
             department,
             current_hospital,
             start_date)
VALUES      ( 30998898799,
              'Rafael',
              'Tate',
              'Cardiology',
              'University of Virginia Medical Center',
              '2004-11-09' );

/* INSERT QUERY NO: 18 */
INSERT INTO doctors
            (doctor_id,
             first_name,
             last_name,
             department,
             current_hospital,
             start_date)
VALUES      ( 84882774399,
              'Nina',
              'Lynn',
              'ICU',
              'Chippenham Hospital',
              '2016-03-14' );

/* INSERT QUERY NO: 19 */
INSERT INTO doctors
            (doctor_id,
             first_name,
             last_name,
             department,
             current_hospital,
             start_date)
VALUES      ( 87364724599,
              'Kiara',
              'Hull',
              'Neurology',
              'Sentara Norfolk General Hospital',
              '2002-06-13' );

/* INSERT QUERY NO: 20 */
INSERT INTO doctors
            (doctor_id,
             first_name,
             last_name,
             department,
             current_hospital,
             start_date)
VALUES      ( 89621657699,
              'Barron',
              'Ryder',
              'Emergency',
              'Bon Secours St. Mary\'s Hospital',
              '2001-01-21' );

/* INSERT QUERY NO: 21 */
INSERT INTO doctors
            (doctor_id,
             first_name,
             last_name,
             department,
             current_hospital,
             start_date)
VALUES      ( 13454996899,
              'Parker',
              'William',
              'Oncology',
              'Inova Fairfax Hospital',
              '2001-09-08' );

/* INSERT QUERY NO: 22 */
INSERT INTO doctors
            (doctor_id,
             first_name,
             last_name,
             department,
             current_hospital,
             start_date)
VALUES      ( 77299698399,
              'Klein',
              'Asher',
              'Cardiology',
              'Virginia Hospital Center',
              '2009-06-14' );

/* INSERT QUERY NO: 23 */
INSERT INTO doctors
            (doctor_id,
             first_name,
             last_name,
             department,
             current_hospital,
             start_date)
VALUES      ( 16349967799,
              'Knox',
              'Lee',
              'ICU',
              'Sentara Norfolk General Hospital',
              '2013-07-25' );

/* INSERT QUERY NO: 24 */
INSERT INTO doctors
            (doctor_id,
             first_name,
             last_name,
             department,
             current_hospital,
             start_date)
VALUES      ( 16361770999,
              'Knowles',
              'Addison',
              'Neurology',
              'Mary Washington Hospital',
              '2002-04-08' );

/* INSERT QUERY NO: 25 */
INSERT INTO doctors
            (doctor_id,
             first_name,
             last_name,
             department,
             current_hospital,
             start_date)
VALUES      ( 90333758299,
              'Williams',
              'Hammett',
              'Neurology',
              'Virginia Hospital Center',
              '2002-06-07' );

/* INSERT QUERY NO: 26 */
INSERT INTO doctors
            (doctor_id,
             first_name,
             last_name,
             department,
             current_hospital,
             start_date)
VALUES      ( 19368898299,
              'Lynch',
              'Amal',
              'Neurology',
              'Inova Alexandria Hospital',
              '2007-04-26' );

/* INSERT QUERY NO: 27 */
INSERT INTO doctors
            (doctor_id,
             first_name,
             last_name,
             department,
             current_hospital,
             start_date)
VALUES      ( 25237612599,
              'Ramos',
              'Lester',
              'ICU',
              'VCU Medical Center',
              '2009-11-06' );

/* INSERT QUERY NO: 28 */
INSERT INTO doctors
            (doctor_id,
             first_name,
             last_name,
             department,
             current_hospital,
             start_date)
VALUES      ( 53857915099,
              'Rivera',
              'Kelly',
              'Emergency',
              'Inova Alexandria Hospital',
              '2017-01-26' );

/* INSERT QUERY NO: 29 */
INSERT INTO doctors
            (doctor_id,
             first_name,
             last_name,
             department,
             current_hospital,
             start_date)
VALUES      ( 53603011799,
              'Frederick',
              'Jasper',
              'Maternity Ward',
              'Sentara Norfolk General Hospital',
              '2000-07-20' );

/* INSERT QUERY NO: 30 */
INSERT INTO doctors
            (doctor_id,
             first_name,
             last_name,
             department,
             current_hospital,
             start_date)
VALUES      ( 61955754399,
              'Macdonald',
              'Tiger',
              'Oncology',
              'Mary Washington Hospital',
              '2017-12-28' );

/* INSERT QUERY NO: 31 */
INSERT INTO doctors
            (doctor_id,
             first_name,
             last_name,
             department,
             current_hospital,
             start_date)
VALUES      ( 48376903992,
              'Stewart',
              'Josiah',
              'Oncology',
              'Centra Lynchburg General Hospital',
              '2011-12-25' );

/* INSERT QUERY NO: 32 */
INSERT INTO doctors
            (doctor_id,
             first_name,
             last_name,
             department,
             current_hospital,
             start_date)
VALUES      ( 40494998999,
              'Kelley',
              'Christopher',
              'Cardiology',
              'Mary Washington Hospital',
              '2018-12-29' );

/* INSERT QUERY NO: 33 */
INSERT INTO doctors
            (doctor_id,
             first_name,
             last_name,
             department,
             current_hospital,
             start_date)
VALUES      ( 21282854099,
              'Bray',
              'Simon',
              'Neurology',
              'University of Virginia Medical Center',
              '2006-04-18' );

DROP TABLE IF EXISTS hospital_personals;

CREATE TABLE hospital_personals
  (
     employee_id      VARCHAR(25) NOT NULL,
     first_name       VARCHAR(25),
     last_name        VARCHAR(25),
     job_type         VARCHAR(25),
     department       VARCHAR(25),
     current_hospital VARCHAR(50),
     start_date       DATE,
     PRIMARY KEY (employee_id),
     FOREIGN KEY (department) REFERENCES departments (department_name),
     FOREIGN KEY (current_hospital) REFERENCES hospitals (hospital_name)
  );

/* INSERT QUERY NO: 1 */
INSERT INTO hospital_personals
            (employee_id,
             job_type,
             first_name,
             last_name,
             department,
             current_hospital,
             start_date)
VALUES      ( 16601210667,
              'Nurse',
              'Malcolm',
              'Richards',
              'Surgery',
              'Centra Lynchburg General Hospital',
              '2019-06-10' );

/* INSERT QUERY NO: 2 */
INSERT INTO hospital_personals
            (employee_id,
             job_type,
             first_name,
             last_name,
             department,
             current_hospital,
             start_date)
VALUES      ( 16310630476,
              'Resident',
              'Harding',
              'Craft',
              'Oncology',
              'Carilion Roanoke Memorial Hospital',
              '2011-07-01' );

/* INSERT QUERY NO: 3 */
INSERT INTO hospital_personals
            (employee_id,
             job_type,
             first_name,
             last_name,
             department,
             current_hospital,
             start_date)
VALUES      ( 16350305127,
              'Nurse',
              'Dieter',
              'Bailey',
              'Oncology',
              'Bon Secours St. Mary\'s Hospital',
              '2019-04-30' );

/* INSERT QUERY NO: 4 */
INSERT INTO hospital_personals
            (employee_id,
             job_type,
             first_name,
             last_name,
             department,
             current_hospital,
             start_date)
VALUES      ( 16870910343,
              'Resident',
              'Walker',
              'Sloan',
              'ICU',
              'Bon Secours St. Mary\'s Hospital',
              '2006-02-27' );

/* INSERT QUERY NO: 5 */
INSERT INTO hospital_personals
            (employee_id,
             job_type,
             first_name,
             last_name,
             department,
             current_hospital,
             start_date)
VALUES      ( 16381108225,
              'Janitor',
              'Odette',
              'Bonner',
              'ICU',
              'Chippenham Hospital',
              '2002-06-03' );

/* INSERT QUERY NO: 6 */
INSERT INTO hospital_personals
            (employee_id,
             job_type,
             first_name,
             last_name,
             department,
             current_hospital,
             start_date)
VALUES      ( 16100406632,
              'Janitor',
              'Kaye',
              'Duncan',
              'Surgery',
              'Inova Alexandria Hospital',
              '2000-06-28' );

/* INSERT QUERY NO: 7 */
INSERT INTO hospital_personals
            (employee_id,
             job_type,
             first_name,
             last_name,
             department,
             current_hospital,
             start_date)
VALUES      ( 16940708599,
              'Resident',
              'Mollie',
              'Velazquez',
              'Surgery',
              'University of Virginia Medical Center',
              '2003-06-03' );

/* INSERT QUERY NO: 8 */
INSERT INTO hospital_personals
            (employee_id,
             job_type,
             first_name,
             last_name,
             department,
             current_hospital,
             start_date)
VALUES      ( 16850823158,
              'Resident',
              'Nathaniel',
              'Hobbs',
              'Oncology',
              'Centra Lynchburg General Hospital',
              '2019-05-22' );

/* INSERT QUERY NO: 9 */
INSERT INTO hospital_personals
            (employee_id,
             job_type,
             first_name,
             last_name,
             department,
             current_hospital,
             start_date)
VALUES      ( 16160120487,
              'Nurse',
              'Ivana',
              'Harding',
              'ICU',
              'Chippenham Hospital',
              '2019-06-22' );

/* INSERT QUERY NO: 10 */
INSERT INTO hospital_personals
            (employee_id,
             job_type,
             first_name,
             last_name,
             department,
             current_hospital,
             start_date)
VALUES      ( 16340212889,
              'Nurse',
              'Susan',
              'Logan',
              'Surgery',
              'Mary Washington Hospital',
              '2013-06-10' );

/* INSERT QUERY NO: 11 */
INSERT INTO hospital_personals
            (employee_id,
             job_type,
             first_name,
             last_name,
             department,
             current_hospital,
             start_date)
VALUES      ( 16370503904,
              'Resident',
              'George',
              'Barker',
              'Cardiology',
              'VCU Medical Center',
              '2012-07-02' );

/* INSERT QUERY NO: 12 */
INSERT INTO hospital_personals
            (employee_id,
             job_type,
             first_name,
             last_name,
             department,
             current_hospital,
             start_date)
VALUES      ( 16971206596,
              'Janitor',
              'Chiquita',
              'Calderon',
              'Oncology',
              'Centra Lynchburg General Hospital',
              '2017-05-03' );

/* INSERT QUERY NO: 13 */
INSERT INTO hospital_personals
            (employee_id,
             job_type,
             first_name,
             last_name,
             department,
             current_hospital,
             start_date)
VALUES      ( 16390410825,
              'Nurse',
              'Morgan',
              'Ray',
              'ICU',
              'Inova Alexandria Hospital',
              '2010-11-11' );

/* INSERT QUERY NO: 14 */
INSERT INTO hospital_personals
            (employee_id,
             job_type,
             first_name,
             last_name,
             department,
             current_hospital,
             start_date)
VALUES      ( 16230206314,
              'Nurse',
              'Chanda',
              'Howe',
              'Surgery',
              'Chippenham Hospital',
              '2017-09-29' );

/* INSERT QUERY NO: 15 */
INSERT INTO hospital_personals
            (employee_id,
             job_type,
             first_name,
             last_name,
             department,
             current_hospital,
             start_date)
VALUES      ( 16811229862,
              'Nurse',
              'Imogene',
              'Langley',
              'Cardiology',
              'VCU Medical Center',
              '2004-02-04' );

/* INSERT QUERY NO: 16 */
INSERT INTO hospital_personals
            (employee_id,
             job_type,
             first_name,
             last_name,
             department,
             current_hospital,
             start_date)
VALUES      ( 16260825816,
              'Nurse',
              'Quinlan',
              'Williams',
              'ICU',
              'Virginia Hospital Center',
              '2010-09-06' );

/* INSERT QUERY NO: 17 */
INSERT INTO hospital_personals
            (employee_id,
             job_type,
             first_name,
             last_name,
             department,
             current_hospital,
             start_date)
VALUES      ( 16700219725,
              'Nurse',
              'Arsenio',
              'Patton',
              'Oncology',
              'Inova Alexandria Hospital',
              '2014-11-01' );

/* INSERT QUERY NO: 18 */
INSERT INTO hospital_personals
            (employee_id,
             job_type,
             first_name,
             last_name,
             department,
             current_hospital,
             start_date)
VALUES      ( 16131107919,
              'Nurse',
              'Hermione',
              'House',
              'Surgery',
              'Chippenham Hospital',
              '2014-10-23' );

/* INSERT QUERY NO: 19 */
INSERT INTO hospital_personals
            (employee_id,
             job_type,
             first_name,
             last_name,
             department,
             current_hospital,
             start_date)
VALUES      ( 16051006003,
              'Resident',
              'Stella',
              'Price',
              'Oncology',
              'Inova Fairfax Hospital',
              '2018-07-17' );

DROP TABLE IF EXISTS patients;

CREATE TABLE patients
  (
     first_name        VARCHAR(25),
     last_name         VARCHAR(25),
     patient_id        VARCHAR(25) NOT NULL,
     department        VARCHAR(25),
     blood_type        VARCHAR(3),
     sex               CHAR(1),
     age               INT,
     weight            INT,
     medical_condition VARCHAR(50),
     current_hospital  VARCHAR(50),
     previous_hospital VARCHAR(50),
     admission_date    DATE,
     discharge_date    DATE,
     doctor_id         VARCHAR(25),
     nurse_id          VARCHAR(25),
     PRIMARY KEY (patient_id),
     FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id),
     FOREIGN KEY (nurse_id) REFERENCES hospital_personals(employee_id)
  );

INSERT INTO patients
            (first_name,
             last_name,
             patient_id,
             department,
             blood_type,
             sex,
             age,
             weight,
             medical_condition,
             current_hospital,
             previous_hospital,
             admission_date,
             discharge_date,
             doctor_id,
             nurse_id)
VALUES      ('Nevada',
             'Mcfadden',
             16350107551,
             'ICU',
             'A-',
             'M',
             62,
             371,
             'Obesity',
             'Carilion Roanoke Memorial Hospital',
             'Centra Lynchburg General Hospital',
             '2019-04-01',
             NULL,
             81702877399,
             16850823158 ),
            ('Brenden',
             'Hernandez',
             16130823718,
             'Oncology',
             'A-',
             'M',
             79,
             155,
             'Hypertension',
             'Centra Lynchburg General Hospital',
             'Chippenham Hospital',
             '2020-05-20',
             NULL,
             48376903992,
             16850823158 ),
            ('Aiko',
             'Lancaster',
             16121227112,
             'Emergency',
             'AB-',
             'F',
             21,
             200,
             'Chronic Bronchitis',
             'Inova Alexandria Hospital',
             'VCU Medical Center',
             '2019-08-27',
             NULL,
             53857915099,
             16850823158 ),
            ('Cade',
             'Sosa',
             16421202190,
             'Neurology',
             'AB-',
             'M',
             38,
             162,
             'Diabetes',
             'Inova Alexandria Hospital',
             'Centra Lynchburg General Hospital',
             '2020-05-14',
             NULL,
             19368898299,
             16850823158 ),
            ('Aspen',
             'Norris',
             16441008851,
             'Emergency',
             'A+',
             'M',
             70,
             177,
             'Hypertension',
             'Inova Fairfax Hospital',
             'Centra Lynchburg General Hospital',
             '2020-03-14',
             NULL,
             83861616199,
             16850823158 ),
            ('Nola',
             'Duke',
             16870704446,
             'Oncology',
             'B+',
             'M',
             70,
             241,
             'Coronary Heart Disease',
             'Inova Fairfax Hospital',
             'Carilion Roanoke Memorial Hospital',
             '2020-04-15',
             NULL,
             13454996899,
             16310630476 ),
            ('Randall',
             'Wall',
             16340307517,
             'Oncology',
             'O+',
             'F',
             33,
             295,
             'Coronary Heart Disease',
             'Mary Washington Hospital',
             'Bon Secours St. Mary\'s Hospital',
             '2019-10-15',
             NULL,
             61955754399,
             16350305127 ),
            ('Penelope',
             'Johns',
             16120325865,
             'Emergency',
             'B-',
             'F',
             43,
             270,
             'Hypertension',
             'Mary Washington Hospital',
             'University of Virginia Medical Center',
             '2019-12-27',
             NULL,
             20328101299,
             16850823158 ),
            ('Keaton',
             'Kirk',
             16120407539,
             'Cardiology',
             'AB+',
             'F',
             52,
             288,
             'Obesity',
             'Mary Washington Hospital',
             'Mary Washington Hospital',
             '2019-03-11',
             NULL,
             40494998999,
             16850823158 ),
            ('Raja',
             'Diaz',
             16560529962,
             'Emergency',
             'O-',
             'M',
             41,
             157,
             'Cancer',
             'Mary Washington Hospital',
             'Mary Washington Hospital',
             '2020-02-02',
             NULL,
             20328101299,
             16850823158 ),
            ('Malik',
             'Frazier',
             16750213451,
             'Maternity Ward',
             'O-',
             'F',
             74,
             339,
             'Diabetes',
             'Sentara Norfolk General Hospital',
             'Centra Lynchburg General Hospital',
             '2019-08-26',
             NULL,
             53603011799,
             16850823158 ),
            ('Cathleen',
             'Burns',
             16850326681,
             'ICU',
             'O+',
             'F',
             89,
             368,
             'Diabetes',
             'Sentara Norfolk General Hospital',
             'University of Virginia Medical Center',
             '2019-06-12',
             NULL,
             16349967799,
             16940708599 ),
            ('Germane',
             'Nieves',
             16370930289,
             'Neurology',
             'A-',
             'F',
             85,
             339,
             'Chronic Bronchitis',
             'University of Virginia Medical Center',
             'Chippenham Hospital',
             '2019-04-27',
             NULL,
             21282854099,
             16850823158 ),
            ('Prescott',
             'Patel',
             16191205791,
             'ICU',
             'A+',
             'F',
             39,
             181,
             'Hypertension',
             'VCU Medical Center',
             'University of Virginia Medical Center',
             '2020-05-14',
             NULL,
             25237612599,
             16850823158 ),
            ('Allen',
             'Pope',
             16210106161,
             'ICU',
             'A+',
             'M',
             30,
             301,
             'Cancer',
             'VCU Medical Center',
             'Inova Alexandria Hospital',
             '2020-04-26',
             NULL,
             25237612599,
             16850823158 ),
            ('Wyoming',
             'Craft',
             16320519771,
             'Neurology',
             'B+',
             'F',
             87,
             360,
             'Cancer',
             'Virginia Hospital Center',
             'Bon Secours St. Mary\'s Hospital',
             '2020-03-01',
             NULL,
             90333758299,
             16850823158 ),
            ( 'Wang',
              'Monroe',
              16971221180,
              'Cardiology',
              'AB+',
              'F',
              63,
              128,
              'Asthma',
              'Virginia Hospital Center',
              'VCU Medical Center',
              '2019-03-31',
              NULL,
              77299698399,
              16811229862 ),
            ('Destiny',
             'Sparks',
             16140913963,
             'Emergency',
             'A-',
             'M',
             82,
             303,
             'Asthma',
             '',
             'Carilion Roanoke Memorial Hospital',
             '2019-08-26',
             '2020-01-26',
             25237612599,
             16850823158 ),
            ('Dylan',
             'Rosa',
             16710901435,
             'Neurology',
             'B-',
             'M',
             89,
             291,
             'Diabetes',
             '',
             'Chippenham Hospital',
             '2020-03-11',
             '2020-03-24',
             25237612599,
             16850823158 ),
            ('Aspen',
             'Duke',
             30870704446,
             'Emergency',
             'B+',
             'M',
             25,
             180,
             'Coronary Heart Disease',
             'Chippenham Hospital',
             'Carilion Roanoke Memorial Hospital',
             '2020-04-15',
             '2020-05-27',
             13454996899,
             16310630476);

DROP TABLE IF EXISTS emergency_contacts;

CREATE TABLE emergency_contacts
  (
     contact_id   VARCHAR(20),
     patient_id   VARCHAR(25),
     first_name   VARCHAR(25),
     last_name    VARCHAR(25),
     phone_number VARCHAR(12),
     relation     VARCHAR(25),
     PRIMARY KEY (contact_id),
     FOREIGN KEY (patient_id) REFERENCES patients (patient_id)
  );

/* INSERT QUERY NO: 1 */
INSERT INTO emergency_contacts
            (contact_id,
             patient_id,
             first_name,
             last_name,
             phone_number,
             relation)
VALUES      ( 41552922899,
              16140913963,
              'John',
              'Burch',
              '246-576-0270',
              'Family' );

/* INSERT QUERY NO: 2 */
INSERT INTO emergency_contacts
            (contact_id,
             patient_id,
             first_name,
             last_name,
             phone_number,
             relation)
VALUES      ( 62843154399,
              16870704446,
              'Hashim',
              'Hopkins',
              '790-410-2011',
              'Family' );

/* INSERT QUERY NO: 3 */
INSERT INTO emergency_contacts
            (contact_id,
             patient_id,
             first_name,
             last_name,
             phone_number,
             relation)
VALUES      ( 50255209299,
              16971221180,
              'Maxine',
              'Hickman',
              '727-502-2274',
              'Family' );

/* INSERT QUERY NO: 4 */
INSERT INTO emergency_contacts
            (contact_id,
             patient_id,
             first_name,
             last_name,
             phone_number,
             relation)
VALUES      ( 95504511399,
              16850326681,
              'Kamal',
              'Odonnell',
              '638-258-7601',
              'Friend' );

/* INSERT QUERY NO: 5 */
INSERT INTO emergency_contacts
            (contact_id,
             patient_id,
             first_name,
             last_name,
             phone_number,
             relation)
VALUES      ( 45226978199,
              16710901435,
              'Marny',
              'Beard',
              '376-762-4466',
              'Friend' );

/* INSERT QUERY NO: 6 */
INSERT INTO emergency_contacts
            (contact_id,
             patient_id,
             first_name,
             last_name,
             phone_number,
             relation)
VALUES      ( 95458702299,
              16120325865,
              'Zoe',
              'Holden',
              '660-863-5667',
              'Family' );

/* INSERT QUERY NO: 7 */
INSERT INTO emergency_contacts
            (contact_id,
             patient_id,
             first_name,
             last_name,
             phone_number,
             relation)
VALUES      ( 73578876299,
              16320519771,
              'Skyler',
              'Ratliff',
              '151-756-9752',
              'Family' );

/* INSERT QUERY NO: 8 */
INSERT INTO emergency_contacts
            (contact_id,
             patient_id,
             first_name,
             last_name,
             phone_number,
             relation)
VALUES      ( 40414938799,
              16421202190,
              'Lunea',
              'Oneill',
              '265-716-7601',
              'Friend' );

/* INSERT QUERY NO: 9 */
INSERT INTO emergency_contacts
            (contact_id,
             patient_id,
             first_name,
             last_name,
             phone_number,
             relation)
VALUES      ( 95298995799,
              16191205791,
              'Angelica',
              'Herring',
              '281-393-1884',
              'Friend' );

/* INSERT QUERY NO: 10 */
INSERT INTO emergency_contacts
            (contact_id,
             patient_id,
             first_name,
             last_name,
             phone_number,
             relation)
VALUES      ( 8892643899,
              16121227112,
              'Talon',
              'Solis',
              '590-157-5615',
              'Family' );

/* INSERT QUERY NO: 11 */
INSERT INTO emergency_contacts
            (contact_id,
             patient_id,
             first_name,
             last_name,
             phone_number,
             relation)
VALUES      ( 87321918699,
              16750213451,
              'Olympia',
              'Roman',
              '638-739-7801',
              'Friend' );

/* INSERT QUERY NO: 12 */
INSERT INTO emergency_contacts
            (contact_id,
             patient_id,
             first_name,
             last_name,
             phone_number,
             relation)
VALUES      ( 16620864899,
              16210106161,
              'Lisandra',
              'Burke',
              '788-889-3855',
              'Family' );

/* INSERT QUERY NO: 13 */
INSERT INTO emergency_contacts
            (contact_id,
             patient_id,
             first_name,
             last_name,
             phone_number,
             relation)
VALUES      ( 62704545299,
              16340307517,
              'Winifred',
              'Nolan',
              '635-515-3493',
              'Family' );

/* INSERT QUERY NO: 14 */
INSERT INTO emergency_contacts
            (contact_id,
             patient_id,
             first_name,
             last_name,
             phone_number,
             relation)
VALUES      ( 57237620999,
              16130823718,
              'Kimberley',
              'Harper',
              '977-883-4489',
              'Friend' );

/* INSERT QUERY NO: 15 */
INSERT INTO emergency_contacts
            (contact_id,
             patient_id,
             first_name,
             last_name,
             phone_number,
             relation)
VALUES      ( 61756394699,
              16120407539,
              'Petra',
              'Reed',
              '951-635-4300',
              'Friend' );

/* INSERT QUERY NO: 16 */
INSERT INTO emergency_contacts
            (contact_id,
             patient_id,
             first_name,
             last_name,
             phone_number,
             relation)
VALUES      ( 98671339599,
              16370930289,
              'Thomas',
              'Wiggins',
              '331-374-9433',
              'Friend' );

/* INSERT QUERY NO: 17 */
INSERT INTO emergency_contacts
            (contact_id,
             patient_id,
             first_name,
             last_name,
             phone_number,
             relation)
VALUES      ( 21813277399,
              16560529962,
              'Adam',
              'Gibson',
              '427-725-2507',
              'Family' );

/* INSERT QUERY NO: 18 */
INSERT INTO emergency_contacts
            (contact_id,
             patient_id,
             first_name,
             last_name,
             phone_number,
             relation)
VALUES      ( 10597915899,
              16350107551,
              'Thaddeus',
              'Jacobson',
              '013-643-2245',
              'Friend' );

/* INSERT QUERY NO: 19 */
INSERT INTO emergency_contacts
            (contact_id,
             patient_id,
             first_name,
             last_name,
             phone_number,
             relation)
VALUES      ( 2533603199,
              16441008851,
              'Isaac',
              'Perkins',
              '900-222-7896',
              'Family' ); 