create Database BankLoanDB;

USE BankLoanDB;

select * from financial_loan;

-- Total Loan Applications
SELECT COUNT(id) AS Total_Loan_Applications FROM financial_loan;

-- MTD Loan Applications 
SELECT COUNT(id) AS MTD_Loan_Applications FROM financial_loan
WHERE MONTH(issue_date) = 12;

-- PMTD Loan Applications 
SELECT COUNT(id) AS PMTD_Loan_Applications FROM financial_loan
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) =2021;

--(MTD-PMTD)/PMTD (MOM)
--WITH LoanCounts AS (
--    SELECT 
--        COUNT(CASE WHEN MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021 THEN id END) AS MTD,
--        COUNT(CASE WHEN MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021 THEN id END) AS PMTD
--    FROM financial_loan
--)
--SELECT 
--    MTD,
--    PMTD,
--    CAST((MTD - PMTD) * 1.0 / NULLIF(PMTD, 0) AS DECIMAL(10,2)) AS GrowthRate
--FROM LoanCounts;

--Total Funded Amount(loan amount)
SELECT SUM(loan_amount) AS Total_Funded_Amount FROM financial_loan;

-- MTD Funded Amount
SELECT SUM(loan_amount) AS MTD_Total_Funded_Amount FROM financial_loan
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021;

-- PMTD Funded Amount
SELECT SUM(loan_amount) AS PMTD_Total_Funded_Amount FROM financial_loan
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021;

--Total Amount Received(total payment)
SELECT SUM(total_payment) AS Total_Amount_Received FROM financial_loan;

-- MTD Total Amount Received
SELECT SUM(total_payment) AS MTD_Total_Amount_Received FROM financial_loan
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021;

-- PMTD Total Amount Received
SELECT SUM(total_payment) AS PMTD_Total_Amount_Received FROM financial_loan
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021;

--Average Interest Rate
SELECT ROUND(AVG(int_rate), 4) * 100 AS Avg_Int_Rate FROM financial_loan;

--Average MTD Interest Rate
SELECT ROUND(AVG(int_rate), 4) * 100 AS MTD_Avg_Int_Rate FROM financial_loan
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021;

--Average PMTD Interest Rate
SELECT ROUND(AVG(int_rate), 4) * 100 AS PMTD_Avg_Int_Rate FROM financial_loan
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021;

--Average DTI
SELECT ROUND(AVG(dti),4) * 100 AS Avg_DTI FROM financial_loan;

--MTD Average DTI
SELECT ROUND(AVG(dti),4) * 100 AS MTD_Avg_DTI FROM financial_loan
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021;

--PMTD Average DTI
SELECT ROUND(AVG(dti),4) * 100 AS PMTD_Avg_DTI FROM financial_loan
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021;


--				Good Loan Issued
-- Good Loan Percentage
SELECT
    (COUNT(CASE WHEN loan_status = 'Fully Paid' OR loan_status = 'Current' THEN id END) * 100) / 
	COUNT(id) AS Good_Loan_Percentage
FROM financial_loan;

-- Good Loan Applications
SELECT COUNT(id) AS Good_Loan_Applications FROM Financial_loan
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current';

-- Good Loan Funded Amount
SELECT SUM(loan_amount) AS Good_Loan_Funded_amount FROM financial_loan
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current';

-- Good Loan Amount Received
SELECT SUM(total_payment) AS Good_Loan_amount_received FROM financial_loan
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current';

--			Bad Loan Issued
-- Bad Loan Percentage
SELECT
    (COUNT(CASE WHEN loan_status = 'Charged Off' THEN id END) * 100.0) / 
	COUNT(id) AS Bad_Loan_Percentage
FROM financial_loan;

-- Bad Loan Application
SELECT COUNT(id) AS Bad_Loan_Applications FROM Financial_loan
WHERE loan_status = 'Charged Off';

-- Bad Loan Funded Amount
SELECT SUM(loan_amount) AS Bad_Loan_Funded_amount FROM financial_loan
WHERE loan_status = 'Charged Off';

-- Bad Loan Amount Received
SELECT SUM(total_payment) AS Bad_Loan_amount_received FROM financial_loan
WHERE loan_status = 'Charged Off';

-- LOAN STATUS
	SELECT
        loan_status,
        COUNT(id) AS Total_Loan_Applications,
        SUM(total_payment) AS Total_Amount_Received,
        SUM(loan_amount) AS Total_Funded_Amount,
        AVG(int_rate * 100) AS Interest_Rate,
        AVG(dti * 100) AS DTI
    FROM
        financial_loan
    GROUP BY
        loan_status;
-- MTD Amount Received and Funded Amount
SELECT 
	loan_status, 
	SUM(total_payment) AS MTD_Total_Amount_Received, 
	SUM(loan_amount) AS MTD_Total_Funded_Amount 
FROM financial_loan
WHERE MONTH(issue_date) = 12 
GROUP BY loan_status;

--       MONTH
SELECT 
	MONTH(issue_date) AS Month_Nunber, 
	DATENAME(MONTH, issue_date) AS Month_Name, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan
GROUP BY MONTH(issue_date), DATENAME(MONTH, issue_date)
ORDER BY MONTH(issue_date);

-- STATE
SELECT 
	address_state AS State, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan
GROUP BY address_state
ORDER BY address_state;

-- TERM
SELECT 
	term AS Term, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan
GROUP BY term
ORDER BY term;

-- EMPLOYEE LENGTH
SELECT 
	emp_length AS Employee_Length, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan
GROUP BY emp_length
ORDER BY emp_length;

-- PURPOSE
SELECT 
	purpose AS PURPOSE, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan
GROUP BY purpose
ORDER BY purpose;

--SELECT 
--	purpose AS PURPOSE, 
--	COUNT(id) AS Total_Loan_Applications,
--	SUM(loan_amount) AS Total_Funded_Amount,
--	SUM(total_payment) AS Total_Amount_Received
--FROM financial_loan
--WHERE grade = 'A'
--GROUP BY purpose
--ORDER BY purpose;

-- HOME OWNERSHIP
SELECT 
	home_ownership AS Home_Ownership, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan
GROUP BY home_ownership
ORDER BY home_ownership;


