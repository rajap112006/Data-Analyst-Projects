-- Loan Approval vs Rejection by Credit History
select credit_history,
loan_status,
count(*) as total_applications
from banak_data
group by credit_history, loan_status;

-- Approval Rate by Income Group
select 
	case
		when income < 25000 then 'Low income'
        when income between 30000 and 60000 then 'middle income'
        else 'high income'
	end as income_group,
    sum(case when loan_status='Approved' then 1 when loan_status='Rejected' then 0 else -1 end) * 100.0 / count(*) as approvel_rate
    from banak_data
    group by income_group;
    
    
    -- Default Rate
    select
    sum(defaulted) *100.0 / count(*) as defult_rate
    from banak_data;
    
    -- Average Loan Amount by Credit History
    select 
    credit_history,
    sum(loan_amount) as avg_loan_amount
    from banak_data
    group by credit_history;