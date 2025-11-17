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
7. [KPIs &  Case Study Questions](#7-kpis--case-study-questions)  
   - [Loan Portfolio Volume KPIs](#loan-portfolio-volume-kpis)  
   - [Loan Quality & Risk KPIs](#loan-quality--risk-kpis)
   - [Loan Quality & Risk KPIs](#loan-quality--risk-kpis)
   - [Loan Performance Breakdown)](#loan-performance-breakdown) 
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

## 7. KPIs & Case Study Questions

### 📌 A. Loan Portfolio Volume KPIs

### **1. What is the total number of loan applications received in 2021?**

#### ✅ Python Solution
```python
total_loan_application = df['id'].count()
print("Total Loan Applications:", total_loan_application)
```
<img width="198" height="53" alt="total_loan" src="https://github.com/user-attachments/assets/f9f45536-f349-4fb4-8d4d-9c4781cdabc9" />

<img width="1256" height="640" alt="total_loan_chart" src="https://github.com/user-attachments/assets/77bdf80f-3577-406e-98d5-0c9ec11cbe62" />

>The total loan applications recorded for 2021 is 38,576.
>This high application volume reflects strong customer demand and signals increased workload for underwriting and risk evaluation.

### **2️. What is the Total Funded Amount**
```python
total_funded_amount = df['loan_amount'].sum()
print("Total Funded Amount:", total_funded_amount)
```
<img width="182" height="42" alt="total_funded" src="https://github.com/user-attachments/assets/77c8e255-09ea-4788-a7d9-22174c053904" />
<img width="1253" height="615" alt="Total_funded_amount" src="https://github.com/user-attachments/assets/4bc13467-7475-4a9b-8769-2ca0f2684cdf" />

> The institution disbursed a total of $435.76M in loans for 2021.
This represents the total capital issued to borrowers and forms the basis for interest revenue, repayment performance, and risk exposure evaluations.

### *3. What is the total amount received from all borrowers in 2021?*
```python
total_amount_received = df['total_payment'].sum()
print("Total Amount Received:", total_amount_received)
```
<img width="198" height="50" alt="total_amount" src="https://github.com/user-attachments/assets/ba5e3ab4-0f55-4efc-9946-28df1245e559" />

<img width="1189" height="590" alt="total_amount_chart" src="https://github.com/user-attachments/assets/39ab0119-74c3-4ee7-ac5b-dd585104ee2d" />

> Borrowers repaid a total of $473.07M in 2021, which is $37.3M more than the total loan amount issued.
This positive gap represents interest income + fees, indicating strong repayment performance and profitability for the lending institution.

### *4. What is the average interest rate applied to loans issued in 2021?*
```python
avg_interest_rate = df['int_rate'].mean()
print("Average Interest Rate:", avg_interest_rate)
```
<img width="132" height="47" alt="avg_int" src="https://github.com/user-attachments/assets/10b70fd4-9661-4457-aab5-4bfc23e1ff40" />

> The average interest rate for all loans is 12.05%, indicating that the loan portfolio is priced at a moderate–high rate.
> This rate directly explains why the Total Amount Received (≈ $473M) exceeds the Total Funded Amount (≈ $435M) — the difference is interest income.

### *5. What is the average DTI (Debt-to-Income Ratio) of borrowers in 2021?*
```python
avg_dti = df['dti'].mean()
print("Average DTI:", avg_dti)
```
<img width="112" height="47" alt="avg_dti" src="https://github.com/user-attachments/assets/d239e2f5-fd2e-43fe-aaa0-f15c4714a333" />

> Borrowers have an average DTI of 14.15%, which suggests that most customers carry a moderate debt burden relative to income.
> This is a positive indicator for loan repayment capacity and aligns with the high percentage of Good Loans in the dataset.

### 📌 B. Loan Quality & Risk KPIs
These KPIs evaluate portfolio health, showing how many loans are performing well vs. posing financial risk.
Good loans = Fully Paid + Current
Bad loans = Charged Off

### A. GOOD LOAN 

#### Case Questions
### 1. What percentage of loans are considered Good Loans?
### 2. How many Good Loan Applications were approved?
### 3. What is the Total Good Loan Funded Amount?
### 4. How much Total Amount Received came from Good Loans?

```python
good_loans = df[df['loan_status'].isin(["Fully Paid", "Current"])]

total_loan_applications = df['id'].count()

good_loan_applications = good_loans['id'].count()
good_loan_funded_amount = good_loans['loan_amount'].sum()
good_loan_received = good_loans['total_payment'].sum()

good_loan_funded_amount_millions = good_loan_funded_amount / 1_000_000
good_loan_received_millions = good_loan_received / 1_000_000

good_loan_percentage = (good_loan_applications / total_loan_applications) * 100

print("Good Loan Applications:", good_loan_applications)
print("Good Loan Funded Amount (in Millions): ${:.2f}M".format(good_loan_funded_amount_millions))
print("Good Loan Total Received (in Millions): ${:.2f}M".format(good_loan_received_millions))
print("Percentage of Good Loan Applications: {:.2f}%".format(good_loan_percentage))
```
<img width="566" height="290" alt="good_loan" src="https://github.com/user-attachments/assets/a1fe7599-cdcf-47ec-b5e8-5068b38fa5d3" />


> 1. Good Loans make up 86.18% of total loan applications.
> This indicates a strong loan portfolio, with the majority of borrowers either current or fully paid.
> 2. There are 33,243 Good Loan Applications, confirming that most issued loans are performing well.
> 3. Total funded amount for good loans is $370.22M, showing significant capital allocation to low-risk borrowers.
> 4. A total of $435.79M has been received from good loans, confirming strong payment behavior and low delinquency.

### B. BAD LOAN METRICS (Charged Off)
#### Case Study
### What percentage of loans are Bad Loans?
### How many Bad Loan Applications were issued?
### What is the Total Bad Loan Funded Amount?
### How much Amount Received came from Bad Loans?

```python
bad_loans = df[df['loan_status'] == "Charged Off"]

total_loan_applications = df['id'].count()

bad_loan_applications = bad_loans['id'].count()
bad_loan_funded_amount = bad_loans['loan_amount'].sum()
bad_loan_received = bad_loans['total_payment'].sum()

bad_loan_funded_amount_millions = bad_loan_funded_amount / 1_000_000
bad_loan_received_millions = bad_loan_received / 1_000_000

bad_loan_percentage = (bad_loan_applications / total_loan_applications) * 100

print("Bad Loan Applications:", bad_loan_applications)
print("Bad Loan Funded Amount (in Millions): ${:.2f}M".format(bad_loan_funded_amount_millions))
print("Bad Loan Total Received (in Millions): ${:.2f}M".format(bad_loan_received_millions))
print("Percentage of Bad Loan Applications: {:.2f}%".format(bad_loan_percentage))
```
<img width="567" height="278" alt="bad_loan" src="https://github.com/user-attachments/assets/0c4bd2cc-f5ad-498b-9dd0-251f73fb9b01" />

> 1. Bad Loans account for 13.82% of total applications — a manageable level, but still significant enough to monitor closely.
> 2. There are 5,333 Bad Loan Applications, indicating the number of borrowers who fully defaulted.
> 3. Bad Loans have a funded amount of $65.53M, representing capital that is at high risk of non-recovery.
> 4. Only $37.28M has been recovered from Charged Off loans — significantly lower than the funded amount, confirming a high loss exposure.

### ✅ C. Time-Based KPIs (MTD & MoM)
Tracking Month-to-Date (MTD) and Month-over-Month (MoM) performance helps identify growth, seasonality, and demand shifts in your loan portfolio.

### 1. MTD Loan Applications (Dec 2021): How many loan applications have been received Month-to-Date (MTD) for December 2021?
```python
latest_issue_date = df['issue_date'].max()
latest_year = latest_issue_date.year
latest_month = latest_issue_date.month

mtd_data = df[(df['issue_date'].dt.year == latest_year) & 
              (df['issue_date'].dt.month == latest_month)]

mtd_loan_applications = mtd_data['id'].count()

print(f"MTD Loan Applications (for {latest_issue_date.strftime('%B %Y')}): {mtd_loan_applications}")
```
<img width="192" height="50" alt="mtd_loan" src="https://github.com/user-attachments/assets/4a64f164-0f13-4662-bfdd-082bb9759bff" />

> Loan applications increased Month-over-Month (MoM) by 6.9%.
> PMTD (Nov 2021) applications were 4,035, rising to 4,314 in December.
> This steady upward trend indicates a growing demand for credit toward year-end.

### 2. MTD Total Funded Amount: What is the total amount of loans funded Month-to-Date (MTD) for December 2021?
```python
latest_issue_date = df['issue_date'].max()
latest_year = latest_issue_date.year
latest_month = latest_issue_date.month

mtd_data = df[(df['issue_date'].dt.year == latest_year) & 
              (df['issue_date'].dt.month == latest_month)]

mtd_total_funded_amount = mtd_data['loan_amount'].sum()
mtd_total_funded_amount_millions = mtd_total_funded_amount/ 1000000
print("MTD Total Funded Amount: ${:.2f}M". format(mtd_total_funded_amount_millions))
```
<img width="221" height="48" alt="mtd_funded" src="https://github.com/user-attachments/assets/e08718de-8027-49c8-af2d-e76b67ffdd6b" />

> Total funded amount increased by 13.0% MoM.
> Funding grew from $47.75M (PMTD) to $53.98M (MTD).
> This reflects stronger loan disbursement activity in December, likely driven by holiday-season borrowing behavior.

### 3. MTD Total Amount Received: How much loan repayment has been received Month-to-Date (MTD) for December 2021?
```python
latest_issue_date = df['issue_date'].max()
latest_year = latest_issue_date.year
latest_month = latest_issue_date.month

mtd_data = df[(df['issue_date'].dt.year == latest_year) & 
              (df['issue_date'].dt.month == latest_month)]

mtd_total_amount_received = mtd_data['total_payment'].sum()
mtd_total_amount_received_millions = mtd_total_amount_received/ 1000000
print("MTD Total Amount received: ${:.2f}M". format(mtd_total_amount_received_millions))
```
<img width="238" height="47" alt="mtd_amount" src="https://github.com/user-attachments/assets/f6b2ced4-2341-49f5-8f2f-3cda9d67b595" />

> Loan repayments improved by 15.8% MoM.
> Collections increased from $50.13M (PMTD) to $58.07M (MTD).
> This suggests either improved repayment behavior or a larger pool of active loans entering repayment in December.

### 4. MTD Average Interest Rate: What is the average interest rate applied to loans Month-to-Date for December 2021?
```sql
SELECT ROUND(AVG(int_rate), 4) * 100 AS MTD_Avg_Int_Rate
FROM financial_loan
WHERE MONTH(issue_date) = 12
  AND YEAR(issue_date) = 2021;
```
<img width="167" height="48" alt="mtd_avg" src="https://github.com/user-attachments/assets/fc91f921-a583-4a5b-a96d-1f9a2cce28c7" />

> Average interest rates increased slightly by 3.5% MoM.
> Rates rose from 11.94% (PMTD) to 12.4% (MTD), indicating a mild tightening in loan pricing or risk-based rate adjustments.

### 5. MTD Average DTI: What is the Monthly-To-Date (MTD) average debt-to-income ratio for December 2021?
```sql
-- MTD Average DTI (Dec 2021)
SELECT ROUND(AVG(dti), 4) * 100 AS MTD_Avg_DTI
FROM financial_loan
WHERE MONTH(issue_date) = 12
  AND YEAR(issue_date) = 2021;
```
<img width="151" height="67" alt="mtd_dti" src="https://github.com/user-attachments/assets/4c53f12c-5c26-4e95-a8e5-4ad6515991f5" />

> Average DTI increased by 2.7% MoM.
> Borrower DTI shifted from 13.3% (PMTD) to 13.7% (MTD).
> While still manageable, the rising DTI indicates borrowers are taking on slightly more debt relative to income.

### D. Loan Performance Breakdown (Status, Term, Purpose, Home Ownership, State)

### Loan Status Breakdown
```sql
SELECT
    loan_status,
    COUNT(id) AS Total_Loan_Applications,
    SUM(total_payment) AS Total_Amount_Received,
    SUM(loan_amount) AS Total_Funded_Amount,
    AVG(int_rate * 100) AS Interest_Rate,
    AVG(dti * 100) AS DTI
FROM financial_loan
GROUP BY loan_status;
```
<img width="1346" height="243" alt="loan_status" src="https://github.com/user-attachments/assets/5e752542-92d2-4da5-8848-896308ab842c" />

> This breakdown summarizes performance across all loan statuses—showing how many loans are fully paid, current, or charged off, and measuring their funded amounts, received payments, and average borrower risk metrics.

### 2. Loan Term Breakdown
```sql
SELECT 
    term AS Term, 
    COUNT(id) AS Total_Loan_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Amount_Received
FROM financial_loan
GROUP BY term
ORDER BY term;
```
<img width="572" height="70" alt="term" src="https://github.com/user-attachments/assets/0793445b-7aa0-49d1-82ea-f0f0cb04258b" />
<img width="1333" height="771" alt="Funded_amount_term" src="https://github.com/user-attachments/assets/69e6d523-f468-4471-80fa-9679cc4c3061" />

> Provides insights into how loan terms (e.g., 36 months vs. 60 months) impact customer engagement and repayment patterns.

### 3. Purpose
```sql
SELECT 
	purpose AS PURPOSE, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan
GROUP BY purpose
ORDER BY purpose;
```
<img width="611" height="322" alt="purpose" src="https://github.com/user-attachments/assets/167d5ad7-aa40-4f2a-817c-9289afa900ed" />
<img width="1756" height="736" alt="purpose_chart" src="https://github.com/user-attachments/assets/45039db0-e11e-42fe-b262-10982e45f463" />

> 

### 4. Home Ownership Breakdown
```sql
SELECT 
    home_ownership AS Home_Ownership, 
    COUNT(id) AS Total_Loan_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Amount_Received
FROM financial_loan
GROUP BY home_ownership
ORDER BY home_ownership;
```
<img width="610" height="125" alt="home_ownership" src="https://github.com/user-attachments/assets/34ad4101-e0fd-418a-a980-657aa611f8b1" />
<img width="1252" height="652" alt="Home_ownership_funded_amount" src="https://github.com/user-attachments/assets/1b195a84-ff36-457b-9150-59a59406fa38" />

> Analyzes loan performance across different home-ownership categories, helping identify which borrower groups pose higher or lower financial risk.

### 5. State-Level Loan Performance
```sql
SELECT 
    address_state AS State, 
    COUNT(id) AS Total_Loan_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Amount_Received
FROM financial_loan
GROUP BY address_state
ORDER BY address_state;
```
<img width="527" height="628" alt="state" src="https://github.com/user-attachments/assets/fb6d91a7-50af-414a-b2ca-64200479e954" />
<img width="1356" height="721" alt="Total_funded_amount_state" src="https://github.com/user-attachments/assets/bd120c70-d64c-4af0-8951-5d4451b69e7b" />

> Useful for geographic risk analysis—identifying states with higher loan demand, stronger repayment, or elevated charge-off behavior.
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
  <img width="1332" height="746" alt="Bank_loan_summary" src="https://github.com/user-attachments/assets/26b42978-dbc8-474f-9227-fb18c8d68380" />
<img width="1327" height="745" alt="Bank_loan_details" src="https://github.com/user-attachments/assets/df126eb2-b1f8-480a-9170-a8527d959867" />

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





