CREATE TABLE `dept` (
	`deptno` INT(11) NOT NULL COMMENT '部门编号',
	`dname` VARCHAR(32) NULL COMMENT '部门名称' COLLATE 'utf8_general_ci',
	`loc` VARCHAR(64) NULL COMMENT '部门地址' COLLATE 'utf8_general_ci',
	PRIMARY KEY (`deptno`) USING BTREE
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;
INSERT INTO dept VALUES
	(10,'ACCOUNTING','NEW YORK');
INSERT INTO dept VALUES (20,'RESEARCH','DALLAS');
INSERT INTO dept VALUES
	(30,'SALES','CHICAGO');
INSERT INTO dept VALUES
	(40,'OPERATIONS','BOSTON');
	
CREATE TABLE `emp` (
	`empno` INT(11) NOT NULL COMMENT '员工编号',
	`ename` VARCHAR(32) NULL COMMENT '员工姓名' COLLATE 'utf8_general_ci',
	`job` VARCHAR(10) NULL COMMENT '职位' COLLATE 'utf8_general_ci',
	`mgr` INT(11) NULL COMMENT '上级编号',
	`hiredate` DATE NOT NULL COMMENT '入职时间',
	`sal` DECIMAL(7,2) NOT NULL DEFAULT '0.00' COMMENT '薪资',
	`comm` DECIMAL(7,2) NULL COMMENT '年终奖金',
	`deptno` INT(11) NOT NULL COMMENT '部门编号',
	PRIMARY KEY (`empno`) USING BTREE,
	INDEX `FK_emp_dept` (`deptno`) USING BTREE
	-- CONSTRAINT `FK_emp_dept` FOREIGN KEY (`deptno`) REFERENCES `procedure_demo`.`dept` (`deptno`) ON UPDATE RESTRICT ON DELETE RESTRICT
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;

insert into emp values
(7369,'smith','clerk',7902,'1980-12-17',800,null,20);
insert into emp values
(7499,'allen','salesman',7698,'1981-02-20',1600,300,30);
insert into emp values
(7521,'ward','salesman',7698,'1981-02-22',1250,500,30);
insert into emp values
(7566,'jones','manager',7839,'1981-02-04',2975,null,20);
insert into emp values
(7654,'martin','salesman',7698,'1981-09-28',1250,1400,30);
insert into emp values
(7698,'blake','manager',7839,'1981-05-01',2850,null,30);
insert into emp values
(7782,'clark','manager',7839,'1981-06-09',2450,null,10);
insert into emp values
(7788,'scott','analyst',7566,'1987-07-13',3000,null,20);
insert into emp values
(7839,'king','president',null,'1981-11-17',5000,null,10);
insert into emp values
(7844,'turner','salesman',7698,'1981-09-08',1500,0,30);
insert into emp values
(7876,'adams','clerk',7788,'1987-07-13',1100,null,20);
insert into emp values
(7900,'james','clerk',7698,'1981-12-03',950,null,30);
insert into emp values
(7902,'ford','analyst',7566,'1981-12-03',3000,null,20);
insert into emp values
(7934,'miller','clerk',7782,'1982-01-23',1300,null,10);

CREATE TABLE `salgrade` (
	`grade` INT(11) NULL,
	`losal` INT(11) NULL,
	`hisal` INT(11) NULL
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;
insert into salgrade values (1,700,1200);
insert into salgrade values (2,1201,1400);
insert into salgrade values (3,1401,2000);
insert into salgrade values (4,2001,3000);
insert into salgrade values (5,3001,9999);
