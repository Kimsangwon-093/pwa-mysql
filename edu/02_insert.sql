-- INSERT 문
-- 신규 데이터를 저장하기 위해 사용하는 문법이다.
INSERT INTO employees (
	`name`
	,birth
	,gender
	,hire_at
	,fire_at
	,sup_id
	,created_at
	,updated_at
	,deleted_at
)
VALUES (
-- 실제 저장할 값들	
	'김상원'
	,'1993-03-21'
	,'M'
	,'2025-10-31'
	,NULL
	,NULL
	,NOW()
	,NOW()
	,NULL
);

-- 생성일이 가장 최근 인것
-- 그냥 이름으로 찾기
-- 입사일이  오늘 기준
-- 생일로 찾기
-- 가장 PK로 찾기

SELECT *
FROM employees
WHERE	
	 `name` = '김상원'
	 AND birth = '1993-03-21'
	 AND hire_at = '2025-10-31'
;

-- 자신(name)의 연봉(salary) 데이터를 넣어(insert)주세요

INSERT INTO	salaries (
	emp_id
	,salary
	,start_at
   -- ,end_at
   -- ,created_at
   -- ,updated_at
   -- ,deleted_at
)
VALUES(
	100005
	,30000000
	,NOW()
);

-- SELECT INSERT
INSERT INTO	employees(
	`name`
	,birth
	,gender
	,hire_at
	,fire_at
	,sup_id
	,created_at
	,updated_at
	,deleted_at	
)
VALUES (
	'Yutaro'
	,'1999-07-21'
	,'M'
	,'2025-10-31'
	,NULL
	,NULL
	,NOW()
	,NOW()
	,NULL
);