--Q1: Basic Data Quality Check
SELECT
    COUNT(*) AS total_loans,
    COUNT(DISTINCT loan_id) AS unique_loan_ids,
    COUNT(*) - COUNT(DISTINCT loan_id) AS duplicate_loan_ids,
    COUNT(*) FILTER (
        WHERE default_flag IS NULL
    ) AS missing_default_flags,
    COUNT(*) FILTER (
        WHERE age IS NULL
    ) AS missing_age
FROM loan_default;

--Q2: How many missing values are present in each column?
SELECT
    COUNT(*) FILTER (WHERE loan_id IS NULL) AS missing_loan_id,
    COUNT(*) FILTER (WHERE age IS NULL) AS missing_age,
    COUNT(*) FILTER (WHERE income IS NULL) AS missing_income,
    COUNT(*) FILTER (WHERE loan_amount IS NULL) AS missing_loan_amount,
    COUNT(*) FILTER (WHERE credit_score IS NULL) AS missing_credit_score,
    COUNT(*) FILTER (WHERE months_employed IS NULL) AS missing_months_employed,
    COUNT(*) FILTER (WHERE num_credit_lines IS NULL) AS missing_credit_lines,
    COUNT(*) FILTER (WHERE interest_rate IS NULL) AS missing_interest_rate,
    COUNT(*) FILTER (WHERE loan_term IS NULL) AS missing_loan_term,
    COUNT(*) FILTER (WHERE dti_ratio IS NULL) AS missing_dti_ratio,
    COUNT(*) FILTER (WHERE education IS NULL) AS missing_education,
    COUNT(*) FILTER (WHERE employment_type IS NULL) AS missing_employment_type,
    COUNT(*) FILTER (WHERE marital_status IS NULL) AS missing_marital_status,
    COUNT(*) FILTER (WHERE has_mortgage IS NULL) AS missing_mortgage,
    COUNT(*) FILTER (WHERE has_dependents IS NULL) AS missing_dependents,
    COUNT(*) FILTER (WHERE loan_purpose IS NULL) AS missing_loan_purpose,
    COUNT(*) FILTER (WHERE has_cosigner IS NULL) AS missing_cosigner,
    COUNT(*) FILTER (WHERE default_flag IS NULL) AS missing_default_flag
FROM loan_default;

--Question 3: What is the overall loan default rate, and how many loans defaulted versus non-defaulted?
SELECT
    SUM(default_flag) AS defaulted_loans,
    COUNT(*) - SUM(default_flag) AS non_defaulted_loans,
    ROUND(
        100.0 * SUM(default_flag) / COUNT(*), 2
    ) AS default_rate_pct
FROM loan_default;

--Question 4: What is the default rate for each loan purpose?
SELECT
    loan_purpose,
    COUNT(*) AS total_loans,
    SUM(default_flag) AS defaulted_loans,
    ROUND(
        100.0 * SUM(default_flag) / COUNT(*), 2
    ) AS default_rate_pct
FROM loan_default
GROUP BY loan_purpose
ORDER BY default_rate_pct DESC;

--Question 5: What is the default rate across different credit score bands?
SELECT
    CASE
        WHEN credit_score < 580 THEN 'Poor'
        WHEN credit_score < 670 THEN 'Fair'
        WHEN credit_score < 740 THEN 'Good'
        ELSE 'Very Good'
    END AS credit_score_band,
    COUNT(*) AS total_loans,
    SUM(default_flag) AS defaulted_loans,
    ROUND(
        100.0 * SUM(default_flag) / COUNT(*), 2
    ) AS default_rate_pct
FROM loan_default
GROUP BY credit_score_band
ORDER BY default_rate_pct DESC;

--Question 6: How does DTI ratio relate to loan default?
SELECT
    ROUND(AVG(dti_ratio)::numeric, 2) AS avg_dti_defaulted,
    ROUND(
        (SELECT AVG(dti_ratio)::numeric
         FROM loan_default
         WHERE default_flag = 0), 2
    ) AS avg_dti_non_defaulted
FROM loan_default
WHERE default_flag = 1;

--Question 7: What is the default rate across different employment types?
SELECT
    employment_type,
    COUNT(*) AS total_loans,
    SUM(default_flag) AS defaulted_loans,
    ROUND(
        100.0 * SUM(default_flag) / COUNT(*), 2
    ) AS default_rate_pct
FROM loan_default
GROUP BY employment_type
ORDER BY default_rate_pct DESC;

---Question 8: What is the default rate across different interest rates?
SELECT
    default_flag,
    ROUND(AVG(interest_rate), 2) AS avg_interest_rate
FROM loan_default
GROUP BY default_flag;

--Question 9: What is the average loan amount for defaulted and non-defaulted loans?
SELECT
    default_flag,
    ROUND(AVG(loan_amount), 2) AS avg_loan_amount
FROM loan_default
GROUP BY default_flag;

--Question 10: Which factors show the clearest differences between defaulted and non-defaulted loans?
SELECT
    default_flag,
    ROUND(AVG(credit_score), 2) AS avg_credit_score,
    ROUND(AVG(dti_ratio), 2) AS avg_dti,
    ROUND(AVG(interest_rate), 2) AS avg_interest_rate,
    ROUND(AVG(loan_amount), 2) AS avg_loan_amount
FROM loan_default
GROUP BY default_flag;
















