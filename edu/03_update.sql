-- UPDATE 문
UPDATE employees
SET 
	fire_at = NOW()
	,deleted_at = NOW()
WHERE 
 emp_id = 100005
 AND emp_id = 100008
;

