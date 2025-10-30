-- 테이블 전체 조회
SELECT * 
FROM employees; 

-- 특정 컬럼만 지정하여 조회
SELECT 
	NAME 
	,birth
	,hire_at
FROM employees;
	
SELECT emp_id
FROM employees;

SELECT name
FROM employees;

SELECT birth
FROM employees;

-- where절: 특정컬럼의 값과 일치한 데이터만 조회
SELECT*
FROM employees
WHERE
	emp_id = 5
;

SELECT*
FROM employees
WHERE	
	NAME = "강영화"	
	AND gender = 'M'
;

-- 이름이 강영화 이고, 성별이 M인 사원 조회
