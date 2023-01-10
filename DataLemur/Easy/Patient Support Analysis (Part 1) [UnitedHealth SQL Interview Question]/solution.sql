WITH new_table AS

(SELECT policy_holder_id, COUNT(policy_holder_id) count

FROM callers

GROUP BY policy_holder_id

HAVING COUNT(policy_holder_id) >= 3)

SELECT COUNT(policy_holder_id) member_count

FROM new_table