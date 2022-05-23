create database moduleExam;
USE moduleExam;

-- Section I 
-- Question 1
create table DEPT(deptno int,dname varchar(20),loc varchar(15));

DROP TABLE DEPT;
DROP TABLE EMP;

insert into DEPT values
(10,'ACCOUNTING','NEW YORK'),
(20,'RESEARCH','DALLAS'),
(30,'SALES','CHICAGO'),
(40,'OPERATIONS','BOSTON')
;




-- Question 2


create table EMP(EMPNO INT,ENAME VARCHAR(20),JOB VARCHAR(15),
HIREDATE DATE,SAL FLOAT,COMM FLOAT,DEPTNO INT);

INSERT INTO EMP VALUES(7839,'KING','MANAGER','1991-11-17',5000,NULL,10),
(7698,'BLAKE','CLERK','1981-05-01',2850	,NULL,30),(7782,'CLARK','MANAGER','1981-06-09',2450,NULL,10),
(7566,'JONES','CLERK','1981-04-02',2975,NULL,20),(7654,'MARTIN','SALESMAN','1981-09-28',1250,1400,30),
(7499,'ALLEN','SALESMAN','1981-02-20',1600,300,30);


-- que3
select * from EMP where sal between 2500 and 5000;

-- que4

select ENAME from EMP order by ENAME desc;

-- que5
select lower(job) from EMP where job = lower(job);

-- que6

select ename,length(ename) from EMP;

-- que7
select deptno,count(*) from EMP group by DEPTNO;

-- que9
select ename from EMP where ename like '%AR%';

-- que10
select sal*0.2 as "HRA" from EMP;

-- que8
select dname,ename from DEPT,EMP
where DEPT.deptno = EMP.deptno;