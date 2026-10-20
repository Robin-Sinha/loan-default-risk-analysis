# Loan Default Risk & Credit Review Analysis

## 1. Project Overview

This project analyses loan default patterns using PostgreSQL and Power BI. The objective was to understand loan portfolio performance, investigate borrower risk factors and identify patterns that could support credit risk assessment.

The project follows an end-to-end analytical workflow, from downloading and importing the dataset to SQL-based analysis and interactive dashboard development.

## 2. Business Objectives

- Understand overall loan portfolio performance and default rates.
- Perform data quality checks and validate the dataset before analysis.
- Investigate business questions using SQL.
- Compare default rates across loan and borrower categories.
- Identify borrower and loan characteristics associated with higher observed default rates.
- Present findings through an interactive Power BI dashboard.
- Translate analytical findings into practical recommendations for further credit risk investigation.

## 3. Dataset

**Source:** [Loan Default Prediction Dataset – Kaggle](https://www.kaggle.com/datasets/nikhil1e9/loan-default)

The dataset contains 255,347 records and 18 columns covering loan details, borrower characteristics, financial indicators and default outcomes.

The dataset was downloaded from Kaggle and imported into PostgreSQL for structured analysis.

**Data note:** This is a publicly available dataset and is not presented as actual bank or customer data.

## 4. Tools & Techniques

### PostgreSQL

- Dataset import and exploration
- Data quality checks and validation
- SQL queries to investigate business questions
- Aggregation and comparison of default rates
- Analysis of loan and borrower categories
- Structured analysis of portfolio performance and default patterns

### Power BI

**Data modelling and DAX**

Created a dedicated `#Measures` table to organise the portfolio measures and developed seven DAX measures:

- `Total Loans`
- `Defaulted Loans`
- `Non-Defaulted Loans`
- `Default Rate`
- `Total Loan Amount`
- `Max Loan Amount`
- `Min Loan Amount`

**Calculated columns and risk bands**

Created calculated columns to group borrower and loan characteristics for analysis:

- `Age Band`
- `Credit Score Band`
- `Default Status`
- `DTI Band`
- `Education Band`
- `Employment Tenure Band`
- `Interest Rate Band`
- `Loan Amount Band`

Created additional sorting columns to control category ordering in visualisations:

- `Interest Rate Band Sort`
- `Loan Amount Band Sort`

**Dashboard development**

- KPI cards for key loan portfolio metrics
- Interactive slicers to explore borrower groups
- Bar charts, column charts and line charts
- Default rate comparisons across loan and borrower categories
- Two-page dashboard layout with consistent formatting
- Visual presentation of portfolio performance and borrower risk indicators

## 5. Project Workflow

### Step 1: Data Loading and SQL Import

Downloaded the loan default dataset from Kaggle and imported it into PostgreSQL to prepare it for structured analysis.

### Step 2: Data Quality and Validation

Performed SQL-based checks to understand the dataset structure, assess data quality and validate the data before drawing conclusions.

### Step 3: SQL Business Analysis

Developed SQL queries to investigate loan defaults, portfolio performance and borrower risk characteristics. Aggregated and compared default rates across relevant categories to identify meaningful patterns.

### Step 4: Power BI Data Modelling and DAX

Imported the dataset into Power BI and organised the portfolio measures in a dedicated measure table.

Created seven DAX measures to calculate loan portfolio metrics, including total loans, defaulted loans, non-defaulted loans, default rate, total loan amount, maximum loan amount and minimum loan amount.

Developed calculated columns to group continuous values into meaningful categories, including loan amount bands, interest rate bands, age bands, credit score bands, employment tenure bands and debt-to-income ratio bands.

Added sorting columns for loan amount and interest rate bands to support the intended category order in charts.

### Step 5: KPI Cards, Visualisations and Dashboard Development

Used the measures and calculated columns to build an interactive two-page Power BI dashboard. Added KPI cards, charts and slicers to support portfolio analysis and comparison of default patterns.

**Page 1: Loan Portfolio and Default Overview**

This page presents an overview of loan portfolio performance through KPI cards and visualisations.

The KPIs include:

- Total Loans
- Defaulted Loans
- Non-Defaulted Loans
- Default Rate
- Total Loan Amount

The visualisations compare default rates across loan amount bands, interest rate bands, loan purpose and loan term.

**Page 2: Borrower Profile and Financial Risk**

This page explores borrower characteristics and financial indicators associated with loan defaults.

The analysis includes:

- Credit rating
- Employment status
- Employment tenure
- Number of credit lines
- Debt-to-income ratio bands
- Co-signer status and other borrower characteristics

Interactive slicers allow users to explore the portfolio across borrower groups. Both dashboard pages use consistent formatting to support readability and comparison.

## 6. Dashboard Screenshots

### Page 1: Loan Portfolio and Default Overview

![Loan Portfolio and Default Overview](Loan%20Portfolio%20and%20Default%20Overview.png)

### Page 2: Borrower Profile and Financial Risk

![Borrower Profile and Financial Risk](Borrower%20Profile%20and%20financial%20risk.png)

## 7. Key Findings

- **Loan Amount:** Default rates increased from 8.06% in the lowest loan band to 15.79% in the highest.
- **Interest Rate:** Default rates increased from 6.02% in the lowest interest rate band to 17.82% in the highest.
- **Credit Rating:** The Poor rating band recorded a 12.47% default rate compared with 10.18% for Very Good.
- **Employment Tenure:** The default rate was 16.9% for borrowers with 0–1 year of employment compared with 8.9% for those with 5+ years.
- **Debt-to-Income Ratio:** Default rates increased from 10.66% in the Low band to 12.15% in the Very High band.
- **Loan Term:** Default rates remained relatively stable across the loan term categories, ranging from approximately 11.57% to 11.70%.

These findings highlight differences in observed default rates across loan and borrower categories. They identify areas for further investigation rather than establishing that any individual characteristic causes loan default.

## 8. Business Recommendations

- Review affordability and repayment capacity for higher loan amount segments.
- Consider credit ratings and existing credit obligations during borrower assessment.
- Assess employment stability alongside income and debt-to-income ratio.
- Investigate higher-default segments to understand their underlying risk characteristics.
- Review loan pricing and interest rate segments alongside borrower affordability and repayment capacity.
- Evaluate multiple risk indicators together rather than relying on a single factor.

## 9. Conclusion

This project demonstrates how PostgreSQL and Power BI can be used together to transform a publicly available dataset into business insights.

PostgreSQL was used for data exploration, quality checks, validation and business analysis. Power BI was used to develop DAX measures, calculated columns, risk bands, KPI cards, interactive slicers and visualisations across a two-page dashboard.

The analysis highlights differences in observed default rates across loan and borrower categories and provides a foundation for further credit risk investigation.

## 10. Disclaimer

This is an independent portfolio project using a publicly available dataset. The dataset is not actual bank or customer data. The findings represent observed associations and do not establish causation or constitute a validated lending model.
