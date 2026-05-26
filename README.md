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

SQL Analysis — What Was Done

Data Cleaning:
Several preprocessing steps were performed to improve data quality before analysis:

- Standardized inconsistent text formatting
- Converted date columns into proper date format
- Checked for missing billing values
- Identified duplicate patient records
- Corrected data quality issues such as **“Atena” → “Aetna”**

Analysis Performed:
The analysis focused on:

-Total patients, gender distribution, and average age
-Patient count by medical condition and admission type
-Total revenue and average billing per insurance provider
-Top 5 doctors by patient count
-Average length of stay per medical condition
-Patient billing rankings using RANK() window function
-Running total of billing over time using SUM() OVER()

## 📊 Power BI Dashboard

A 4-page interactive dashboard was built to visualize healthcare insights:

## 1. Patient Overview
Focused on patient demographics, admission trends, age groups, gender split, and medical conditions.

## 2. Financial Analysis
Analyzed billing trends, insurance provider performance, revenue contribution, and high-billing patients.

## 3. Clinical Insights
Explored test results, medication usage, and average patient length of stay across conditions.

## 4. Doctor & Hospital Performance
Evaluated doctor rankings, hospital billing performance, and provider efficiency.

💡 Key Insights

🦴 Arthritis is the most common condition with 3,346 patients
💨 Asthma generates the highest total billing at $86M
🛏️ Average length of stay is consistent across all conditions (~15.5 days) — suggesting standardized care protocols
⚠️ Abnormal test results are slightly higher (34.5%) than Normal (33.3%), worth monitoring
🏦 All insurance providers show nearly equal avg billing (~$25–26K) — no major payer-driven pricing difference
🔍 "Atena" found as a misspelling of "Aetna" in the raw data — caught and flagged during cleaning


🚀 How to Use

SQL File:

Open MySQL Workbench (or any MySQL client)
Import the healthcare dataset into a database named projects
Run healthcare_analysis.sql — sections are clearly labelled, run them in order

Power BI File:

Open Healthcare_Analysis_Project.pbix in Power BI Desktop
If prompted to refresh data, point it to your local CSV file
Use the slicers (Year, Insurance Provider, Medical Condition) to explore

👩‍💻 Author

Snehal

Aspiring Data Analyst · MySQL · Power BI · Excel · SQL

