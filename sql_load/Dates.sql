SELECT
    job_title_short AS title,
    job_location AS location,
    job_posted_date:: date AS date
FROM
    job_postings_fact;
LIMIT 5;