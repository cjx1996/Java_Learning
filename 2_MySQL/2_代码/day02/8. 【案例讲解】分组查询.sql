USE myemployees;
#1. 查询各job_id的员工工资的最大值、最小值、平均值、总和，并按job_id升序
SELECT 
  MAX(salary) maximum,
  MIN(salary) minimum,
  AVG(salary) average,
  SUM(salary) 'sum' ,
  job_id
FROM
  employees 
GROUP BY job_id 
ORDER BY job_id ASC ;

#2. 查询员工最高工资和最低工资的差距
SELECT 
  MAX(salary) - MIN(salary) difference 
FROM
  employees ;
 
#3. 查询各个管理者手下员工的最低工资，其中最低工资不能低于6000，没有管理者的员工不计算在内
SELECT MIN(salary) minimum,manager_id
FROM employees
WHERE manager_id IS NOT NULL
GROUP BY manager_id
HAVING MIN(salary) >= 6000;

#4. 查询所有部门的编号，员工数量和工资平均值，并按平均值工资降序
SELECT COUNT(*) counts,ROUND(AVG(salary),2)AS average,department_id
FROM employees
GROUP BY department_id
ORDER BY AVG(salary) DESC;

#选择具有各个job_id的员工人数
SELECT COUNT(*) counts,job_id
FROM 	employees
GROUP BY job_id;

