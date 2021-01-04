alter session set nls_date_format='RR/MM/DD';

drop table emp;
drop table dept;

CREATE TABLE DEPT
       (DEPTNO number(10),
        DNAME VARCHAR2(14),
        LOC VARCHAR2(13) );

INSERT INTO DEPT VALUES (10, 'ACCOUNTING', 'NEW YORK');
INSERT INTO DEPT VALUES (20, 'RESEARCH',   'DALLAS');
INSERT INTO DEPT VALUES (30, 'SALES',      'CHICAGO');
INSERT INTO DEPT VALUES (40, 'OPERATIONS', 'BOSTON');

CREATE TABLE EMP (
 EMPNO               NUMBER(4) NOT NULL,
 ENAME               VARCHAR2(10),
 JOB                 VARCHAR2(9),
 MGR                 NUMBER(4) ,
 HIREDATE            DATE,
 SAL                 NUMBER(7,2),
 COMM                NUMBER(7,2),
 DEPTNO              NUMBER(2) );

INSERT INTO EMP VALUES (7839,'KING','PRESIDENT',NULL,'81-11-17',5000,NULL,10);
INSERT INTO EMP VALUES (7698,'BLAKE','MANAGER',7839,'81-05-01',2850,NULL,30);
INSERT INTO EMP VALUES (7782,'CLARK','MANAGER',7839,'81-05-09',2450,NULL,10);
INSERT INTO EMP VALUES (7566,'JONES','MANAGER',7839,'81-04-01',2975,NULL,20);
INSERT INTO EMP VALUES (7654,'MARTIN','SALESMAN',7698,'81-09-10',1250,1400,30);
INSERT INTO EMP VALUES (7499,'ALLEN','SALESMAN',7698,'81-02-11',1600,300,30);
INSERT INTO EMP VALUES (7844,'TURNER','SALESMAN',7698,'81-08-21',1500,0,30);
INSERT INTO EMP VALUES (7900,'JAMES','CLERK',7698,'81-12-11',950,NULL,30);
INSERT INTO EMP VALUES (7521,'WARD','SALESMAN',7698,'81-02-23',1250,500,30);
INSERT INTO EMP VALUES (7902,'FORD','ANALYST',7566,'81-12-11',3000,NULL,20);
INSERT INTO EMP VALUES (7369,'SMITH','CLERK',7902,'80-12-11',800,NULL,20);
INSERT INTO EMP VALUES (7788,'SCOTT','ANALYST',7566,'82-12-22',3000,NULL,20);
INSERT INTO EMP VALUES (7876,'ADAMS','CLERK',7788,'83-01-15',1100,NULL,20);
INSERT INTO EMP VALUES (7934,'MILLER','CLERK',7782,'82-01-11',1300,NULL,10);

commit;

drop  table  salgrade;

create table salgrade
( grade   number(10),
  losal   number(10),
  hisal   number(10) );

insert into salgrade  values(1,700,1200);
insert into salgrade  values(2,1201,1400);
insert into salgrade  values(3,1401,2000);
insert into salgrade  values(4,2001,3000);
insert into salgrade  values(5,3001,9999);

commit;
alter session set nls_date_format='RR/MM/DD';

drop table emp;
drop table dept;

CREATE TABLE DEPT
       (DEPTNO number(10),
        DNAME VARCHAR2(14),
        LOC VARCHAR2(13) );

INSERT INTO DEPT VALUES (10, 'ACCOUNTING', 'NEW YORK');
INSERT INTO DEPT VALUES (20, 'RESEARCH',   'DALLAS');
INSERT INTO DEPT VALUES (30, 'SALES',      'CHICAGO');
INSERT INTO DEPT VALUES (40, 'OPERATIONS', 'BOSTON');

CREATE TABLE EMP (
 EMPNO               NUMBER(4) NOT NULL,
 ENAME               VARCHAR2(10),
 JOB                 VARCHAR2(9),
 MGR                 NUMBER(4) ,
 HIREDATE            DATE,
 SAL                 NUMBER(7,2),
 COMM                NUMBER(7,2),
 DEPTNO              NUMBER(2) );

INSERT INTO EMP VALUES (7839,'KING','PRESIDENT',NULL,'81-11-17',5000,NULL,10);
INSERT INTO EMP VALUES (7698,'BLAKE','MANAGER',7839,'81-05-01',2850,NULL,30);
INSERT INTO EMP VALUES (7782,'CLARK','MANAGER',7839,'81-05-09',2450,NULL,10);
INSERT INTO EMP VALUES (7566,'JONES','MANAGER',7839,'81-04-01',2975,NULL,20);
INSERT INTO EMP VALUES (7654,'MARTIN','SALESMAN',7698,'81-09-10',1250,1400,30);
INSERT INTO EMP VALUES (7499,'ALLEN','SALESMAN',7698,'81-02-11',1600,300,30);
INSERT INTO EMP VALUES (7844,'TURNER','SALESMAN',7698,'81-08-21',1500,0,30);
INSERT INTO EMP VALUES (7900,'JAMES','CLERK',7698,'81-12-11',950,NULL,30);
INSERT INTO EMP VALUES (7521,'WARD','SALESMAN',7698,'81-02-23',1250,500,30);
INSERT INTO EMP VALUES (7902,'FORD','ANALYST',7566,'81-12-11',3000,NULL,20);
INSERT INTO EMP VALUES (7369,'SMITH','CLERK',7902,'80-12-11',800,NULL,20);
INSERT INTO EMP VALUES (7788,'SCOTT','ANALYST',7566,'82-12-22',3000,NULL,20);
INSERT INTO EMP VALUES (7876,'ADAMS','CLERK',7788,'83-01-15',1100,NULL,20);
INSERT INTO EMP VALUES (7934,'MILLER','CLERK',7782,'82-01-11',1300,NULL,10);

commit;

drop  table  salgrade;

create table salgrade
( grade   number(10),
  losal   number(10),
  hisal   number(10) );

insert into salgrade  values(1,700,1200);
insert into salgrade  values(2,1201,1400);
insert into salgrade  values(3,1401,2000);
insert into salgrade  values(4,2001,3000);
insert into salgrade  values(5,3001,9999);

commit;


select ename, hiredate
    from emp
    where hiredate = to_date('81/11/17','rr/mm/dd');

select *
    from NLS_SESSION_PARAMETERS
    where parameter = 'NLS_DATE_FORMAT';
    
SELECT *
  FROM NLS_SESSION_PARAMETERS
  WHERE parameter ='NLS_DATE_FORMAT'; 

alter session set nls_date_format='dd/mm/rr';

select ename, hiredate
    from emp
        where hiredate = '17/11/81';
        
select ename, hiredate
    from emp
    where hiredate = to_date('81/11/17', 'rr/mm/dd');
    
alter session set nls_date_format = 'rr/mm/dd';

/* ##2020.10.21## */
create table emp32
(Ename varchar2(10),
 sal varchar2(10));

Insert into emp32 values('scott', '3000');
Insert into emp32 values('smith', '1200');

select ename, sal
 from emp32
 where sal = '3000';
 
select * from emp32;

select ename, sal
    from emp32
    where sal = 3000;
    
select ename, sal, comm, sal+comm
    from emp
    where job in ('SALESMAN', 'ANALYST');

select ename, sal, comm
    from emp
    where job in ('SALESMAN', 'ANALYST');

/* DECODE(if문과 비슷한 기능) */
select ename, deptno, decode(deptno, 10, 300, 20, 400, 0) as 보너스
    from emp;
    
select empno, mod(empno,2), decode(mod(empno,2), 0, '짝수', 1, '홀수') as 보너스
    from emp;

select ename, job, decode(job,'SALESMAN', 3000, 2000) as 보너스
    from emp;
    
select ename, job, comm, NVL2(comm, 0, 500) as bonus
    from emp
    where job in ('SALESMAN','ANALYST');
    
select ename, job, comm, NVL2(comm, 0, 500) as bonus
    from emp
    where job in (upper('salesman'), upper('analyst'));

select ename, job, comm, case when comm is null then 500 else 0 end as bonus
    from emp
    where job in('SALESMAN','ANALYST');

select ename, job, case when job = 'SALESMAN' or job = 'ANALYST' then 500 
                        when job = 'CLERK' or job ='MANAGER' then 400 else 0 end bonus
    from emp;

select ename, job, case when job in('SALESMAN', 'ANALYT') then 500 
                        when job in('CLERL', 'MANAGER') then  400 else 0 end bonus
    from emp;

select job
    from emp
    where job='SALESMAN';
    
select job, min(sal) 최소값
    from emp
    group by job;

select job, min(sal) 최소값
    from emp
    group by job
    order by 최소값 asc;

select job, min(sal) 최소월급
    from emp
    where job !='SALESMAN'
    group by job
    order by 최소월급 desc;

/*39 */
select job, sum(sal) 토탈월급 
    from  emp
    group by job
    order by 토탈월급 desc;

/*having by에 total은 안먹힘 => 실행 순서가 select 전이라서 먹히지 않는다. */
select job, sum(sal) total
    from emp
    group by job
    having job != 'SALESMAN' and sum(sal) >= 4000; 
    
select avg(nvl(comm,0))
from emp;

select ename, job, sal, rank() over (order by sal desc), dense_rank() over (order by sal desc)
    from emp
    where job in ('ANALYST', 'MANAGER');

select job, sal, rank() over(partition by job order by sal desc)
    from emp;

select ename, job, sal, rank() over(partition by job order by sal)
    from emp
    where hiredate between to_date('81/01/01', 'rr/mm/dd') and to_date('81/12/31', 'rr/mm/dd');
    
select ename, job, sal, ntile(4) over (order by sal desc nulls last) 등급
    from emp;
    
/*2020.10.22 _ 45 */
select job, listagg(ename, ' ') within group (order by ename) employee
    from emp
    group by job;
    
select job, listagg(ename, ' ') within group (ename) employee
    from emp
    group by job;
    
select empno, ename, hiredate, lag(hiredate, 1) over (order by hiredate asc), lead(hiredate, 1)over (order by hiredate asc)
    from emp
    where job in('ANALYST', 'MANAGER');

select deptno, empno, ename, hiredate, 
        lag(hiredate, 1) over (partition by deptno order by hiredate asc),
        lead(hiredate, 1) over(partition by deptno order by hiredate asc)
        
    from emp;
    
/*2020.10.23 _48 */

select job 
    from emp
    group by job;

select job, sal
    from emp
    pivot (sum(sal) for job in 'ANALYST');

select *
    from (select job, sal from emp)
    pivot (sum(sal) for job in ('ANALYST', 'CLERK'));
    
SELECT *
  FROM (select job, sal from emp)
  PIVOT (sum(sal) for job in ('ANALYST', 'CLERK','MANAGER', 'SALESMAN'));

select deptno, sum(sal)
    from emp
    group by deptno;

select deptno, sum(sal)
    from emp
    group by cube(deptno);

select deptno, sum(sal)
    from emp
    group by rollup(deptno);