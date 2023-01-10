WITH new_table AS 

(SELECT COUNT(job_id) job_count, company_id, title, description

FROM job_listings

GROUP BY company_id, title, description)

SELECT count(job_count) co_w_duplicate_jobs

FROM new_table

WHERE job_count > 1