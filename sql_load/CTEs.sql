/*
Find the companies that have the most job openings.
-Get total number of job postings per company id(job_postings_fact)
- Return total number of jobs with the company nam(company dim)
*/


WITH company_job_count AS (
SELECT
    company_id,
    COUNT(*)AS total_jobs
FROM    
    job_postings_fact
GROUP BY
    company_id
)

SELECT 
    company_dim.name AS company_name,
    company_job_count.total_jobs
FROM company_dim
LEFT JOIN company_job_count ON company_job_count.company_id = company_dim.company_id 
ORDER BY
    total_jobs DESC