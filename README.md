# 🏥 Healthcare Data Analysis

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

## 📊 Dashboard Preview

### Patient Overview
<img width="4150" height="2400" alt="Healthcare Analysis Project_page-0001" src="https://github.com/user-attachments/assets/a0596ba4-a2a7-4121-a967-3207b7717980" />

### Financial Analysis
<img width="4150" height="2400" alt="Healthcare Analysis Project_page-0002" src="https://github.com/user-attachments/assets/45a9e53a-84f1-44bf-a313-beed7e9b2331" />

### Clinical Insights
<img width="4150" height="2400" alt="Healthcare Analysis Project_page-0003" src="https://github.com/user-attachments/assets/574ed2df-be45-490c-aeb5-59b411ffac2d" />

### Doctor & Hospital Performance
<img width="4150" height="2400" alt="Healthcare Analysis Project_page-0004" src="https://github.com/user-attachments/assets/d30bf9ba-ec6d-4086-9004-08eedfb1a37b" />

## 🧹 SQL Analysis — What Was Done

### Data Cleaning

Before analysis, several preprocessing steps were performed to ensure data accuracy, consistency, and reliability:

- Standardized inconsistent text formatting across patient, doctor, and hospital names  
- Converted date columns into proper **DATE** format for time-based analysis  
- Checked for missing or null billing values to maintain data completeness  
- Identified duplicate patient records for improved data integrity  
- Detected and corrected data quality issues, including standardizing **“Atena”** to **“Aetna”**
- 
## 🔍 SQL Analysis Performed

The analysis focused on:

- Total patients, gender distribution, and average age  
- Patient count by medical condition and admission type  
- Total revenue and average billing per insurance provider  
- Top 5 doctors by patient count  
- Average length of stay per medical condition  
- Patient billing rankings using **RANK() Window Function**  
- Running total of billing over time using **SUM() OVER()**

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

## 💡 Key Insights

- 🦴 **Arthritis** is the most common condition with **3,346 patients**.
- 💨 **Asthma** generates the highest total billing at **$86M**.
- 🛏️ Average length of stay is consistent across conditions (**15.5 days**), suggesting standardized care protocols.
- ⚠️ **Abnormal test results** are slightly higher (**34.5%**) than Normal (**33.3%**), worth monitoring.
- 🏦 Insurance providers show nearly equal average billing (**$25–26K**), indicating no major payer-driven pricing differences.
- 🔍 **"Atena"** was identified as a misspelling of **"Aetna"** and corrected during data cleaning.


🚀 How to Use

SQL File:

Open MySQL Workbench (or any MySQL client)
Import the healthcare dataset into a database named projects
Run healthcare_analysis.sql — sections are clearly labelled, run them in order

Power BI File:

Open Healthcare_Analysis_Project.pbix in Power BI Desktop
If prompted to refresh data, point it to your local CSV file
Use the slicers (Year, Insurance Provider, Medical Condition) to explore


## 👩‍💻 Author

**Snehal Kokate**  
Aspiring Data Analyst  
MySQL • SQL • Power BI • Excel

