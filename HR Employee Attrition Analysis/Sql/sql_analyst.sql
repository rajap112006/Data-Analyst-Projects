-- Attrition Rate (%)
select
round(100.0*sum(case when Attrition="Yes" then 1 else 0 end) / count(*),2) as AttritionRate_Percent
from hr;

-- Avg Salary by Job Role
select JobRole,
round(avg(MonthlyIncome),2) as avgsalary
from hr
group by JobRole
order by avgsalary;

-- Attrition by Age Group
with agebox  as(select 
case
	when Age between 18 and 25 then '18-25'
    when Age between 26 and 35 then '26-35'
    when Age between 36 and 45 then "36-45"
    when Age between 46 and 55 then '46-55'
    when Age between 56 and 65 then '56-65'
    else '65+'
end as Agegroup,
Attrition
from hr
)
select Agegroup,
Attrition,
round(100.0*count(*) / sum(count(*)) over(partition by Agegroup),2)as AttritionRate_Percent
from agebox
group by Agegroup,Attrition
order by Agegroup ,Attrition;

-- Attrition by Years at Company
select YearsAtCompany,
Attrition,
round(100.0*count(*) / sum(count(*)) over(partition by YearsAtCompany),2) as attritionrate_precent
from hr
group by YearsAtCompany,Attrition
order by YearsAtCompany,Attrition;

-- Attrition by Work-Life Balance
select WorkLifeBalance,
Attrition,
round(100.0*count(*) / sum(count(*)) over(partition by WorkLifeBalance),2) as AttritionRate_Percent
from hr
group by WorkLifeBalance,Attrition
order by WorkLifeBalance,Attrition;