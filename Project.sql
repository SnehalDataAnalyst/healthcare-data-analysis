-- ============================================================
-- Project  : Healthcare Data Analysis
-- Database : MySQL
-- Author   : Snehal
-- Dataset  : Healthcare Dataset (Kaggle)
-- Description: End-to-end SQL analysis covering data cleaning,
--              patient demographics, financial metrics, and
--              operational insights on 19,766 patient records.
-- ============================================================

-- ============================================================
-- SECTION 1: DATABASE SETUP
-- ============================================================
create database projects;
use projects;

-- ============================================================
-- SECTION 2: DATA CLEANING
-- ============================================================

-- Check for duplicate patient names
select name,count(*)
from healthcare_dataset
group by name
having count(*)>1;

-- Standardize text casing for name, doctor, and hospital
update healthcare_dataset
set name= upper(name),
doctor=upper(doctor),
hospital=upper(hospital);

-- Check for missing billing amounts
SELECT *
FROM healthcare_dataset
WHERE billing_amount IS NULL;

-- Convert date columns from string (DD-MM-YYYY) to DATE format
UPDATE healthcare_dataset
SET date_of_admission = STR_TO_DATE(date_of_admission, '%d-%m-%Y');

UPDATE healthcare_dataset
SET discharge_date = STR_TO_DATE(discharge_date, '%d-%m-%Y');

-- Alter column types to proper DATE
ALTER TABLE healthcare_dataset
MODIFY discharge_date DATE;

ALTER TABLE healthcare_dataset
MODIFY date_of_admission DATE;

-- ============================================================
-- SECTION 3: PATIENT DEMOGRAPHICS
-- ============================================================

-- Total Patients
select count(*) as total_patients_count
from healthcare_dataset;

-- Gender distribution
select gender,count(*) as total_patient_count
from healthcare_dataset
group by gender;

-- Average age
select avg(age) as Average_Age_Of_Patients
from healthcare_dataset;

-- Most common medical conditions
select medical_condition,count(*) as total_count
from healthcare_dataset
group by medical_condition
order by total_count desc;

-- Admission type analysis
select admission_type,count(*) as count_patients
from healthcare_dataset
group by admission_type;

-- ============================================================
-- SECTION 4: FINANCIAL ANALYSIS
-- ============================================================

-- Total billing per hospital
select hospital,sum(billing_amount) as total_revenue
from healthcare_dataset
group by hospital;

-- Average billing per insurance provider
select insurance_provider,avg(billing_amount) as avg_amount
from healthcare_dataset
group by insurance_provider
order by avg_amount desc;

-- Top 3 expensive patients
select *
from healthcare_dataset
order by billing_amount desc
limit 3;

-- ============================================================
-- SECTION 5: OPERATIONAL / CLINICAL INSIGHTS
-- ============================================================

-- Top 5 doctors by number of patients
select * from healthcare_dataset;
select doctor,count(*) as no_of_patients
from healthcare_dataset
group by doctor
order by no_of_patients desc
limit 5;

-- Length of stay (hospital efficiency)
select name,datediff(discharge_date,date_of_admission) as stay_days
from healthcare_dataset;

-- Average stay per condition
select
medical_condition,
avg(datediff(discharge_date,date_of_admission)) as stay_days
from healthcare_dataset
group by medical_condition
order by stay_days desc;

-- ============================================================
-- SECTION 6: ADVANCED QUERIES (WINDOW FUNCTIONS)
-- ============================================================

-- Rank patients by billing
select name,billing_amount,
rank() over (order by billing_amount desc) as patients_rank
from healthcare_dataset;

-- Running total of billing
select date_of_admission,billing_amount,
sum(billing_amount) over (order by date_of_admission) as running_total
from healthcare_dataset;

