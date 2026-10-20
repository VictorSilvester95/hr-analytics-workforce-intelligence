# HR Analytics & Workforce Intelligence

## Project Overview
This project uses fictional HR data to explore workforce composition, employee exits, attendance patterns, and salary costs. The objective is to turn employee data into clear business insights that support HR and management decision-making.

## Tools Used
- **Power BI Desktop** — interactive dashboards and data visualisation
- **DAX** — KPI calculations and analytical measures
- **SQL** — data exploration and business queries
- **Excel / CSV** — sample data preparation

## Dashboard Pages

### 1. Workforce Overview
- Total, active, and exited employee counts
- Headcount by department
- Department-level employee exit comparisons
- Workforce status distribution
- Annual salary cost by department
- Department and location filters

### 2. Attendance Analysis
- Attendance status distribution
- Monthly attendance status trends
- Attendance rate KPI
- Absent attendance records
- Average daily present records

## Business Questions
1. How is the workforce distributed across departments and locations?
2. Which departments have the most employee exits?
3. How do department-level exit percentages differ?
4. What attendance patterns appear in the sample data?
5. How is annual salary cost distributed across departments?

## Important Metric Definitions
- **Exit percentage:** Employee records marked Exited divided by employee records in the relevant department.
- **Attendance rate:** Attendance records marked Present divided by all attendance records.
- **Annual salary cost:** Sum of the annual salary field for the employee records included by the selected filters.

These are project-specific definitions. The exit percentage is not necessarily a formal period-based attrition rate, and the attendance rate excludes Work From Home from the numerator.

## Data Disclaimer
All employee, attendance, salary, and related records in this project are fictional sample data created for learning and portfolio demonstration. They do not represent actual employees or confidential company information.

## Repository Contents
- `HR_Analytics_Portfolio_v2.pbix` — Power BI report
- `HR_Analytics_Queries.sql` — SQL queries
- `HR_Analytics_Sample_Data.xlsx` — sample workbook
- `Employees.csv`, `Attendance.csv`, `Leave_Requests.csv`, `Department_Targets.csv` — source data
- `Screenshots/` — dashboard screenshots

## Learning Outcomes
- Developed Power BI dashboards with interactive filters
- Created DAX measures for workforce and attendance KPIs
- Used SQL to explore employee data
- Practised translating data into management questions and potential actions

## Future Improvements
- Validate period-based employee attrition rates using exit dates and average headcount
- Refine attendance calculations to account for working days and Work From Home
- Analyse department targets and leave data
- Add validated findings and management recommendations as the analysis develops