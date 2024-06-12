/*
Find job postings from the first quarter that have a salary greater than $70k
combine job posting tabel from the first quarter of 2023 (Jan-Mar)
gets job postings with an average yearly salary > $70k
*/

SELECT 
    job_title_short,
    job_location,
    job_via,
    job_posted_date::date,
    salary_year_avg
FROM (
SELECT *
FROM january_jobs 
UNION ALL
select *
from february_jobs 
union ALL
select *
from march_jobs 
) AS quarter1_job_postings
where 
    salary_year_avg >70000 AND
    job_title_short = 'Data Analyst'
ORDER BY salary_year_avg DESC;
