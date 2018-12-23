SELECT * FROM EMPLOYEES WHERE DEPARTMENT_ID=50 AND JOB_ID ='ST_MAN';
SELECT * FROM PRODUCTS WHERE RATING_P>3 AND PRICE<1000;
SELECT * FROM SALES WHERE (PRODUCT_ID=4) AND (SALES_DATE='03.03.2015');
ALTER SESSION SET NLS_DATE_LANGUAGE='AMERICAN';
ALTER SESSION SET NLS_DATE_FORMAT  ='dd-mon-yyyy';
SELECT first_name,
  last_name,
  hire_date,
  job_id,
  salary,
  department_id
FROM EMPLOYEES
WHERE HIRE_DATE BETWEEN '11-MAY-1996' AND '31-OCT-1997';
SELECT first_name,
  last_name
FROM EMPLOYEES
WHERE (FIRST_NAME LIKE 'P%')
AND (LAST_NAME LIKE '%r%');
SELECT first_name,
  last_name,
  hire_date,
  job_id,
  salary,
  department_id
FROM EMPLOYEES
WHERE (SALARY       >9000)
AND (DEPARTMENT_ID IN (50,80,100));
SELECT first_name,
  last_name,
  hire_date,
  salary
FROM EMPLOYEES
WHERE HIRE_DATE LIKE '%95';
SELECT first_name,
  last_name,
  hire_date,
  job_id,
  department_id,
  SALARY*(1+NVL(commission_pct,0)) SUM
FROM EMPLOYEES
WHERE JOB_ID                       ='ST_MAN';
ALTER SESSION SET NLS_DATE_LANGUAGE='RUSSIAN';
ALTER SESSION SET NLS_DATE_FORMAT  ='dd-mon-yyyy';
SELECT department_id,
  TO_CHAR(first_name
  ||' '
  ||last_name) NAME,
  TO_CHAR(TO_DATE(hire_date,'DD-MM-YY'),'DD-MONTH-YYYY') HIRE_DATE,
  TO_CHAR(SALARY,'$9,999.00')
FROM EMPLOYEES
WHERE DEPARTMENT_ID = 60;