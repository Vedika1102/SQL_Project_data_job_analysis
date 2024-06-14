/* Question:mWhat  are the most in-demand skills for data analyst
- Join job postings to inner join table similar to query 2
- Identify the top 5 in-demand skills for a data analyst 
- focus on all job postings
- why? retrieves the top 5 skills with highest demand in the job market
- providing insights into the most valuable skills for job-seeker
*/

SELECT 
    skills,
    count(skills_job_dim.job_id) AS demand_count
FROM job_postings_fact 
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE 
    job_title_short = 'Data Analyst' AND 
    job_work_from_home = TRUE
Group BY skills
order BY
    demand_count DESC
limit 5