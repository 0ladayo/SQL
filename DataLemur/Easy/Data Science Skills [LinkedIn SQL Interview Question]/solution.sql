(SELECT candidate_id

FROM candidates

WHERE skill = 'Python'

INTERSECT

SELECT candidate_id

FROM candidates

WHERE skill = 'Tableau'

INTERSECT

SELECT candidate_id

FROM candidates

WHERE skill = 'PostgreSQL')

ORDER BY candidate_id