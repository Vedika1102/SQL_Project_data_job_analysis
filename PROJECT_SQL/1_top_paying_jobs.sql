/*
Question: What are the top paying data analyst jobs?
- Identify the top 10 highest paying data analyst roles that are available remotely
- Focus on job postings with specified salaries (remove nulls)
- Who? Hughlight the top paying opportunities for data analysts, offering insights into optimal skills to learn(hgh demand and high paying)
*/

SELECT 
    job_id,
    job_title,
    name AS company_name,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date
    
FROM 
    job_postings_fact
LEFT JOIN company_dim on job_postings_fact.company_id = company_dim.company_id
WHERE 
job_title_short = 'Data Analyst' AND
job_location = 'Anywhere' AND
salary_year_avg is not NULL
ORDER BY 
salary_year_avg DESC
LIMIT 10