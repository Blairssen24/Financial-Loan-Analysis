# 🏦 Financial Loan Analysis
**Data Storytelling | SQL + Python + Power BI | Loan Portfolio & Credit Risk Insights**

Comprehensive analysis of a bank loan portfolio to evaluate funding trends, repayment performance, and credit risk drivers. This project uses SQL for data extraction and transformation, Python (Pandas & Plotly / Matplotlib) for exploratory analysis and visualizations, and Power BI for interactive dashboards and executive reporting. The goal is to provide actionable insights that improve lending decisions, optimise pricing, and reduce default exposure across regions and borrower segments.

---

## 📘 Table of Contents  

1. [Project Overview](#1-project-overview)  
2. [Business Problem Statement](#2-business-problem-statement)  
3. [Analytical Objectives](#3-analytical-objectives)  
4. [Tools & Technologies](#4-tools--technologies)  
5. [Dataset Overview](#5-dataset-overview)  
6. [Data Preparation & Cleaning (SQL)](#6-data-preparation--cleaning-sql)  
7. [KPIs & SQL Queries](#7-kpis--sql-queries)  
   - [Loan Portfolio KPIs](#loan-portfolio-kpis)  
   - [Performance Metrics](#performance-metrics)  
8. [Key Insights & Observations](#8-key-insights--observations)  
9. [Recommendations & Actionable Steps](#9-recommendations--actionable-steps)  
10. [Power BI Dashboard Preview](#10-power-bi-dashboard-preview)  
11. [Conclusion](#11-conclusion)  
12. [Appendix — SQL Scripts](#12-appendix--sql-scripts)  

---

## 1. 📊 Project Overview  

The **Financial Loan Analysis** project provides a comprehensive view of loan performance, borrower behavior, and portfolio health using **SQL**, **Power BI**, and **Python**.  

This analysis explores how loans are funded, repaid, and categorized across time periods and borrower segments. By examining patterns in loan issuance, repayment rates, and customer creditworthiness, the goal is to help financial institutions make informed decisions, reduce default risks, and enhance profitability.  

Key focus areas include:  
- Tracking **total loan applications**, **funded amounts**, and **repayments**.  
- Analyzing **loan performance trends** (month-over-month, year-to-date).  
- Evaluating **borrower debt-to-income ratios** and **interest rate variations**.  
- Identifying **good vs. bad loans** to assess portfolio quality.  
- Visualizing KPIs and insights through an interactive **Power BI dashboard**.  

> This end-to-end project demonstrates how data cleaning, modeling, and visualization can drive **data-backed financial decisions** and **optimize loan management processes**.

---

## 2. 💼 Business Problem Statement  

The financial institution is experiencing challenges in effectively monitoring and evaluating its loan portfolio performance.  
While thousands of loans are disbursed monthly, there is limited visibility into:  

- Which loans are **performing well (fully paid/current)** versus those at **risk (charged off/defaulted)**.  
- The **total value of loans disbursed** compared to the **total amount received**.  
- **Fluctuations in interest rates, debt-to-income ratios (DTI), and loan applications** over time.  
- **Borrower behavior patterns** and risk indicators that affect repayment consistency.  
- **Month-over-month (MoM)** performance metrics that can highlight improvement or decline.  

The absence of clear performance tracking makes it difficult for management to:  
- Identify high-risk borrower segments.  
- Evaluate portfolio profitability and capital recovery rates.  
- Forecast lending performance and strategize for business growth.  

> This analysis aims to bridge that gap by providing a **data-driven view of the loan lifecycle**, enabling **informed lending decisions**, and improving **loan risk management** through actionable insights.  

---
## 3. 🎯 Analytical Objectives  

As the data analyst, the main goal is to transform raw loan data into meaningful insights that drive smarter financial decisions.  
This project focuses on the following analytical objectives:

1. **Portfolio Overview**
   - Calculate total loan applications, total funded amount, and total amount received.
   - Compare funding vs repayment to assess loan recovery efficiency.

2. **Performance Segmentation**
   - Classify loans as *Good* (Fully Paid/Current) or *Bad* (Charged Off).
   - Measure the percentage of good vs bad loans to determine portfolio health.

3. **Trend Analysis**
   - Analyze **month-over-month (MoM)** changes in key metrics such as loan funding, repayment, interest rate, and DTI.
   - Identify patterns in lending activity across different periods.

4. **Borrower Insights**
   - Explore borrower demographics such as home ownership, employment length, and loan purpose.
   - Assess how these factors influence repayment performance.

5. **Interest Rate & DTI Evaluation**
   - Monitor average interest rate and debt-to-income ratio trends to evaluate lending risk.

6. **Power BI Dashboard Integration**
   - Design a dynamic Power BI dashboard that allows stakeholders to track KPIs, trends, and risk segments interactively.

---
## 4. 🧰 Tools & Technologies  

The project leverages a combination of analytical, visualization, and scripting tools to perform data extraction, transformation, and storytelling.  

| **Tool** | **Purpose / Usage** |
|-----------|----------------------|
| **SQL (SQL Server)** | Data cleaning, transformation, and metric calculations (e.g., total funded amount, DTI, interest rates). |
| **Power BI** | Data visualization, KPI dashboards, and interactive reporting (e.g., monthly trends, regional analysis). |
| **Python (Pandas, Matplotlib, Seaborn)** | Exploratory data analysis (EDA), data validation, and supplementary visualizations. |
| **Excel / CSV** | Data import, inspection, and quick reference during preprocessing. |
| **GitHub** | Version control, documentation, and public portfolio hosting. |

> 🔗 **Integration Flow**:  
> SQL → Power BI (Data Modeling + Visualization) → GitHub (Project Documentation)

---
## 5. 🗂️ Dataset Overview  

The dataset represents a **financial loan portfolio** containing details about borrowers, loan performance, and repayment behavior.  
It provides insights into borrower demographics, loan characteristics, payment histories, and financial health indicators.

### 📄 **Key Columns Description**

| **Column Name** | **Description** |
|------------------|------------------|
| `id` | Unique identifier for each loan application. |
| `address_state` | The state where the borrower resides. |
| `application_type` | Indicates whether the loan is individual or joint. |
| `emp_length` | Employment length of the borrower (in years). |
| `grade` / `sub_grade` | Credit rating assigned to the borrower by the lender. |
| `home_ownership` | Type of home ownership (Own, Rent, Mortgage). |
| `issue_date` | Date when the loan was issued. |
| `loan_status` | Status of the loan (Fully Paid, Charged Off, Current). |
| `purpose` | Reason for taking the loan (debt consolidation, education, etc.). |
| `annual_income` | Declared annual income of the borrower. |
| `int_rate` | Interest rate applied to the loan. |
| `dti` | Debt-to-income ratio. |
| `loan_amount` | Amount of loan approved or funded. |
| `installment` | Monthly repayment amount. |
| `total_payment` | Total amount paid by the borrower. |
| `last_payment_date` | Most recent loan payment date. |

> 🔍 The dataset contains over **40,000+ records** and **20+ features**, allowing a deep dive into borrower credit behavior, risk segmentation, and financial performance.

---

## 6. 🧹 Data Preparation & Cleaning (SQL)

Before analysis, extensive **data preparation and transformation** were carried out using **PostgreSQL**.  
The goal was to ensure accuracy, completeness, and consistency before visualizing in Power BI.

### 🧾 Key Cleaning Steps
1. Formatted Date Columns

Converted text-based dates ("Saturday, December 11, 2021") into proper SQL DATE format using:
```sql
TO_DATE(issue_date, 'Day, Month DD YYYY');
```
2. Created Derived Columns
```sql
Extracted month and year from issue dates for trend analysis.
ALTER TABLE Financial_Loan
ADD COLUMN issue_month INT,
ADD COLUMN issue_year INT;

UPDATE Financial_Loan
SET issue_month = EXTRACT(MONTH FROM issue_date),
    issue_year = EXTRACT(YEAR FROM issue_date);
```
3. Categorized Loan Risk Segments
```sql
ALTER TABLE Financial_Loan ADD COLUMN good_bad_loan VARCHAR(20);

UPDATE Financial_Loan
SET good_bad_loan = CASE
    WHEN loan_status IN ('Fully Paid', 'Current') THEN 'Good Loan'
    WHEN loan_status = 'Charged Off' THEN 'Bad Loan'
    ELSE 'Unknown'
END;
```
4. Validated Dataset Quality

Checked column quality, unique IDs, and outliers in Power BI Power Query view.

> After cleaning, the data was verified for completeness and accuracy, forming the foundation for further SQL analysis and Power BI visualization.

---

## 8. 🔍 Key Insights & Observations

After cleaning, transforming, and analyzing the financial loan dataset using **SQL, Power BI, and Python**, several critical insights were uncovered:

###  Portfolio Performance
- The bank’s **total funded amount** showed a consistent upward trend over the years, indicating **steady growth in loan disbursement** and customer acquisition.  
- However, **repayment inflow (Total Amount Received)** did not increase proportionally, signaling potential repayment delays or defaults in recent months.

###  Loan Health & Risk Distribution
- **Good Loans** (Fully Paid + Current) accounted for the **majority share** of total loans, reflecting overall strong loan performance.  
- Nonetheless, a noticeable **proportion of Charged-Off (Bad) Loans** highlights the need for tighter credit risk management and borrower vetting.

###  Trend Analysis
- The **peak loan issuance** periods occurred in Q2 and Q4, aligning with seasonal borrowing patterns (business expansion and holiday expenses).  
- Month-over-Month (MoM) metrics showed **positive growth** in funded amounts but slight fluctuations in **average interest rates**, suggesting adaptive lending policies.

###  Borrower Profile & Employment Stability
- Borrowers with **10+ years of employment** exhibited the **lowest default rates**, while those with less than 2 years showed higher risk exposure.  
- Employment stability proved to be a strong indicator of repayment ability and loan reliability.

###  Home Ownership & Collateral Insights
- **Homeowners** and those with **mortgages** had significantly higher approval and repayment rates than **renters**, indicating collateral availability influences approval confidence.  
- This suggests a key opportunity for the bank to create **tiered loan products** based on home ownership type.

###  Interest Rate & DTI Correlation
- Loans with **higher interest rates** were directly correlated with **higher Debt-to-Income (DTI) ratios**, emphasizing that borrowers with higher debt loads are charged premium rates.  
- The average **DTI hovered around 13–15%**, suggesting moderate overall financial health among borrowers.

###  Regional Performance
- **Top-performing states** (by funded amount) were concentrated in **California, New York, and Texas**, while smaller states contributed marginally.  
- Regional disparities highlight opportunities to **expand marketing and financial products** into underrepresented regions.

>  These insights provide a solid foundation for deeper analysis into borrower risk behavior, portfolio health, and strategic lending optimization.

---
## 9. 🚀 Recommendations & Actionable Steps

Based on the insights derived from the analysis, the following recommendations were proposed to optimize project delivery performance and enhance business outcomes:

###  1. Strengthen Risk Assessment Framework
- Introduce a **data-driven credit scoring model** using borrower employment history, income stability, and past repayment patterns.  
- Implement **automated early-warning systems** to flag accounts showing repayment irregularities.

###  2. Improve Portfolio Monitoring
- Build **real-time dashboards** in Power BI to monitor key indicators like **default rate, funded amount, and repayment performance**.  
- Integrate **alert triggers** for unusual borrower activity, enabling proactive management.

###  3. Optimize Loan Approval Strategy
- Prioritize borrowers with **lower DTI ratios and higher employment stability** for low-risk products.  
- Introduce **tier-based loan products** (secured vs unsecured) depending on borrower’s collateral strength (e.g., homeowners vs renters).

###  4. Expand Regional Outreach
- Target underrepresented regions with **customized financial products** and awareness programs to grow the customer base.  
- Leverage demographic and regional performance data to **tailor marketing campaigns**.

###  5. Policy & Process Enhancements
- Standardize internal processes for loan vetting and approval to **reduce turnaround time**.  
- Conduct **periodic performance audits** of project portfolios to measure ROI and cost–benefit effectiveness.

###  6. Leverage Predictive Analytics (Python)
- Use Python’s **scikit-learn and pandas** libraries to develop predictive models for **loan default probability** and **repayment likelihood**.  
- Apply **historical loan performance data** to train models that support **data-driven decision-making**.

---

> 📈 Implementing these steps will strengthen project management efficiency, minimize risk exposure, and support sustainable financial growth.

---
## 10. 📊 Power BI Dashboard Preview

The Power BI dashboard was designed to present **an interactive and comprehensive overview** of key project and loan performance metrics.  
It highlights **funding trends, borrower behavior, repayment efficiency, and loan quality distribution**.

### 🔹 Overview Dashboard
Displays high-level KPIs for total loan applications, funded amounts, and amount received.  
Also tracks **Month-to-Date (MTD)** and **Previous MTD** performance to analyze month-over-month (MoM) changes.

📌 **Key Metrics Visualized**
- Total Loan Applications  
- Total Funded Amount  
- Total Amount Received  
- Average Interest Rate  
- Average DTI (Debt-to-Income Ratio)  
- Good Loan % vs Bad Loan %  
- MoM Funded Amount Growth  

---
## 11. 🏁 Conclusion

This project successfully integrates **SQL**, **Python**, and **Power BI** to deliver a complete end-to-end analysis of loan performance and borrower behavior.  
By combining these tools, we achieved **data accuracy, analytical depth, and visual storytelling** that empower data-driven decision-making.

### 🔹 Key Takeaways:
- **SQL** was leveraged to clean, transform, and aggregate large volumes of loan data efficiently.  
- **Python** ensured consistency in calculations, validated metrics, and supported advanced data manipulation.  
- **Power BI** provided an intuitive and interactive platform for dashboard creation, enabling stakeholders to easily track KPIs and identify trends.

### 📈 Business Impact:
- Enhanced visibility into **loan funding and repayment performance**.  
- Identified **drivers of good vs bad loans**, supporting better credit risk management.  
- Improved monitoring of **Month-over-Month (MoM)** growth across key performance metrics.  
- Enabled timely decision-making through dynamic **time intelligence insights** (MTD, PMTD comparisons).

This analysis not only highlights past performance but also establishes a scalable foundation for **predictive modeling** and **financial forecasting** in future iterations.

> ✅ In summary: the project transformed raw loan data into **clear, actionable insights** that help optimize business operations, reduce risk, and strengthen financial performance.

## 12. 🧩 Appendix — SQL Scripts

All SQL scripts used in this project were written for data cleaning, transformation, and KPI computation in the **Financial Loan Analysis**.  
These queries established the foundation for the Power BI data model, enabling advanced DAX calculations and trend analysis for actionable business insights.





