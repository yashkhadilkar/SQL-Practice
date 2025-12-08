WITH something AS (SELECT p.project_id, p.employee_id, name, 
RANK() OVER (PARTITION BY project_id 
ORDER BY experience_years DESC) AS year_rank
FROM Project p 
JOIN Employee e 
ON p.employee_id = e.employee_id)                                                                                                                                                                                                                                                                                                                                                            

SELECT project_id, employee_id
FROM something s 
WHERE year_rank = 1
