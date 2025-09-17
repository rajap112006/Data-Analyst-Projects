# Bank Loan Data Analysis (SQL, Power BI)

## Project Overview
This project involves the analysis of bank loan applications to understand approval patterns, credit risks, and customer behavior.

Key Highlights:
- Processed and cleaned 40,000+ bank loan application records.
- Used SQL queries to analyze loan approval vs. rejection patterns across income groups and credit history.
- Built KPIs such as approval rate, default rate, and average loan amount.
- Designed a Power BI dashboard to track loan disbursement and risk segments.
- Helped identify customer profiles with the highest likelihood of loan approval.

## How to Execute the Project Step by Step

### Step 1: Prepare Your Environment
1. Install necessary tools:
   - SQL Server / MySQL / PostgreSQL
   - Power BI Desktop
   - Python (optional) with Pandas for preprocessing
2. Clone or download the GitHub repository.

### Step 2: Load the Data
1. Place your raw data in the `Data/` folder:
   - `bank_loans_raw.csv` → original dataset
   - `bank_loans_clean.csv` → cleaned dataset (if available)
2. Import the CSV into your database as table `bank_loans`.

### Step 3: Execute SQL Queries
1. Navigate to the `SQL/` folder.
2. Run the `.sql` files in your database:
   - `loan_status_analysis.sql`
   - `approval_rate_by_credit_history.sql`
   - `income_group_analysis.sql`
3. Save query results if needed for Power BI.

### Step 4: Prepare Power BI Dashboard
1. Open `PowerBI/Bank_Loan_Dashboard.pbix` in Power BI Desktop.
2. Connect to your database or load `bank_loans_clean.csv`.
3. Refresh and review visuals:
   - Line Chart → Loan Disbursement Trend over Time
   - Donut Chart → Distribution by Gender
   - Bar/Stacked Column Charts → Approval patterns by Income/Credit History

### Step 5: Analyze KPIs
- Key KPIs include Approval Rate, Default Rate, and Average Loan Amount.
- Use these to identify high-approval customer profiles and risky segments.

### Step 6: Generate Reports
- Export charts/dashboards from Power BI as images or PDF.
- Save reports in `Docs/` folder.

### Step 7: Optional - Python Data Processing
```python
import pandas as pd

# Load raw data
df = pd.read_csv('Data/bank_loans_raw.csv')

# Clean data
df = df.dropna()

# Save cleaned data
df.to_csv('Data/bank_loans_clean.csv', index=False)
```

### Step 8: Upload to GitHub
1. Commit all updated files (CSV, SQL, PBIX, PDFs) to your repository.
2. Push to GitHub for sharing or version control.
