CREATE DATABASE 2512982709_company;

USE 2512982709_company;

CREATE TABLE dept
(
  dept_no int NOT NULL,
  dept_name varchar(100) NOT NULL,
  dept_location varchar(100) NOT NULL,
  PRIMARY KEY (dept_no)
);
CREATE TABLE employee 
(
  emp_id INT NOT NULL,
  emp_name varchar(100) NOT NULL,
  mgr_emp_id int,
  dept_no int NOT NULL,
  salary  double  NOT NULL,
  PRIMARY KEY (emp_id),
  KEY employee_mgr_emp_id (mgr_emp_id),
  FOREIGN KEY fk_employee_dept_dept_no (dept_no) REFERENCES dept (dept_no) ON DELETE NO ACTION ON UPDATE NO ACTION
);
INSERT INTO dept VALUES 
(1, 'Dept-1', 'Chicago'), 
(2, 'Dept-2', 'London'),
(3, 'Dept-3', 'Reykjavik'),
(4, 'Dept-4', 'Rabat');

INSERT INTO employee VALUES 
(1, 'Clark Mgr', NULL, 1, 450000),
(2, 'Cameron Emp', 2, 1, 300000),
(3, 'Charlie Emp', 3, 1, 500000),
(4, 'Layton Emp', NULL, 2, 250000),
(5, 'Linda Emp', NULL, 2, 370000),
(6, 'Mikel Mor', NULL, 3, 290000),
(7, 'Mic Coleman', NULL, 3, 400000),
(8, 'Doud Valantino', NULL, 3, 300000);

CREATE TABLE deptsal
(
	dept_no int NOT NULL,
	totalsalary double  NOT NULL,
	FOREIGN KEY fk_deptsal_dept_dept_no (dept_no) REFERENCES dept (dept_no) ON DELETE NO ACTION ON UPDATE NO ACTION
);