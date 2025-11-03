-- Subquery

-- WHERE절에서 사용
-- D001 부서장의 사번과 이름을 출력

SELECT  
	emp_id
	,`name`
FROM department_managers
WHERE 
	dert_code = 'D001'
	AND end_at IS NULL
;

-- 다중열 서브쿼리
-- 쿼리의 결과가 복수의 컬럼을 반환할 경우,
-- 메인 쿼리의 조건과 동시 비교
-- D002의 부서장이 해당부서에 소속된 날짜 출력

SELECT 
	department_emps.*
	FROM department_emps
	WHERE	
		(department_emps.emp_id,department_emps.dept_code) IN (
			SELECT 
				department_managers.emp_id
				,department_managers.dept_code
		FROM department_managers
		WHERE 
			department_managers.dept_code = 'D002'
			AND department_managers.end_at IS NULL
		)
;

-- 연관 서브커리
-- 서브쿼리 내에서 메인쿼리의 컬럼이 사용된 서브쿼리 
-- 부서장 직을 지냈던 경력이 있는 사원의 정보출력

SELECT 
	employees.*
FROM employees
WHERE 
	employees.emp_id IN(
		SELECT department_managers.emp_id	
		FROM department_managers
		WHERE 
			department_managers.emp_id = employees.emp_id
	)
;