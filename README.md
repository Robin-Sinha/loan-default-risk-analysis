# Loan Default Risk & Credit Review Analysis

## 1. Project Overview

This project analyses loan default patterns using PostgreSQL and Power BI. The objective was to explore loan portfolio performance, investigate borrower risk factors and identify patterns that could support credit risk assessment.

The project covers the complete analytical workflow, from downloading and importing the dataset to SQL-based analysis and interactive dashboard development.

## 2. Business Objectives

- Understand overall loan portfolio performance and default rates.
- Check data quality and validate the dataset before analysis.
- Investigate business questions using SQL.
- Identify loan and borrower characteristics associated with higher default rates.
- Present findings through an interactive Power BI dashboard.

## 3. Dataset

**Source:** [Loan Default Prediction Dataset – Kaggle](https://www.kaggle.com/datasets/nikhil1e9/loan-default)

The dataset contains 255,347 records and 18 columns covering loan details, borrower characteristics, financial indicators and default outcomes.

The dataset was downloaded from Kaggle and imported into PostgreSQL for analysis.

**Data note:** This is a publicly available dataset and is not presented as actual bank or customer data.

## 4. Tools & Techniques

**PostgreSQL**
- Dataset import and exploration
- Data quality checks and validation
- SQL queries to answer business questions
- Aggregation and comparison of default rates
- Analysis of loan and borrower categories

**Power BI**
- Data modelling and DAX measures
- Calculated columns and risk bands
- Interactive slicers and visualisations
- Two-page dashboard development

## 5. Project Workflow

### Step 1: Data Loading and SQL Import

Downloaded the loan default dataset from Kaggle and imported it into PostgreSQL to prepare it for structured analysis.

### Step 2: Data Quality and Validation

Performed SQL-based checks to understand the dataset structure, assess data quality and validate the data before drawing conclusions.

### Step 3: SQL Business Analysis

Developed SQL queries to investigate business questions related to loan defaults, portfolio performance and borrower risk characteristics. Compared default rates across relevant categories to identify meaningful patterns.

### Step 4: Power BI Dashboard

Used Power BI to present the analysis through an interactive two-page dashboard.

**Page 1: Loan Portfolio and Default Overview**

Provides an overview of total loans, defaulted loans, default rate and loan characteristics. The analysis includes default rates by loan amount, interest rate, loan purpose and loan term.

**Page 2: Borrower Profile and Financial Risk**

Explores borrower characteristics and financial indicators, including credit rating, employment status, employment tenure, number of credit lines and debt-to-income ratio. Interactive slicers allow further exploration across borrower groups.

## 6. Key Findings

- **Loan Amount:** Default rates increased from 8.06% in the lowest loan band to 15.79% in the highest.
- **Interest Rate:** Default rates increased from 6.02% in the lowest interest rate band to 17.82% in the highest.
- **Credit Rating:** The Poor rating band recorded a 12.47% default rate compared with 10.18% for Very Good.
- **Employment Tenure:** Default rates were 16.9% for borrowers with 0–1 year of employment and 8.9% for those with 5+ years.
- **Debt-to-Income Ratio:** Default rates increased from 10.66% in the Low band to 12.15% in the Very High band.

## 7. Business Recommendations

- Review affordability for higher loan amount segments.
- Consider credit ratings and existing credit obligations during borrower assessment.
- Assess employment stability alongside income and debt-to-income ratio.
- Evaluate multiple risk indicators together rather than relying on a single factor.

## 8. Conclusion

This project demonstrates how PostgreSQL and Power BI can be used together to move from raw data to business insights. SQL was used for data quality checks, validation and business analysis, while Power BI was used to communicate findings through an interactive dashboard.

The findings highlight differences in observed default rates across loan and borrower categories and provide areas for further credit risk investigation.

## 9. Disclaimer

This is an independent portfolio project using a publicly available dataset. The findings represent observed associations and do not establish causation or constitute a validated lending model.
