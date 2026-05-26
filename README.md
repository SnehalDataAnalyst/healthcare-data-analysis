# Healthcare-data-analysis

📌 Project Summary
This project performs a full end-to-end analysis of a healthcare dataset containing 19,766 patient records spanning 2019–2024. The goal was to uncover patterns in patient demographics, hospital financials, clinical outcomes, and provider performance.
The project is split into two parts:

MySQL — raw data cleaning, transformation, and exploratory analysis using SQL queries and window functions
Power BI — a 4-page interactive dashboard translating those findings into business-ready visuals.


## Tools & Technologies
- MySQL – Data cleaning, transformation, and SQL analysis
- Power BI – Data visualization and dashboard development
- DAX – KPI calculations and ranking measures
- Power Query – Data transformation and preprocessing

## Dataset
- 19,766 patient records
- Columns: Name, Age, Gender, Blood Type, Medical Condition, 
  Admission Date, Discharge Date, Doctor, Hospital, 
  Insurance Provider, Billing Amount, Medication, Test Results
- Source: [https://drive.google.com/drive/folders/1GOtJdvbJ7c_TPvtvVgCKLF9upjcm-I6N?usp=drive_link]

##SQL Analysis — What Was Done

Data Cleaning:
-Identified and reviewed duplicate patient names
-Standardized text casing for name, doctor, and hospital columns
-Checked for null billing values
-Converted date columns from string format to proper DATE type

Analysis Performed:
-Total patients, gender distribution, and average age
-Patient count by medical condition and admission type
-Total revenue and average billing per insurance provider
-Top 5 doctors by patient count
-Average length of stay per medical condition
-Patient billing rankings using RANK() window function
-Running total of billing over time using SUM() OVER()
