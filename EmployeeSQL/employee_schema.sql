CREATE TABLE Titles (
    title_id VARCHAR(6)   NOT NULL PRIMARY KEY,
    title VARCHAR(20)   NOT NULL
);

CREATE TABLE Employees (
    emp_no INT PRIMARY KEY  NOT NULL,
    emp_title_id VARCHAR(6)   NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES Titles(title_id),
    birth_date DATE   NOT NULL,
    first_name VARCHAR(20)   NOT NULL,
    last_name VARCHAR(20)   NOT NULL,
    sex CHAR(1)   NOT NULL,
    hire_date DATE   NOT NULL
);

CREATE TABLE Department (
    dept_no VARCHAR(6) PRIMARY KEY  NOT NULL,
    dept_name VARCHAR(20)   NOT NULL

);

CREATE TABLE Salaries (
    emp_no INT PRIMARY KEY NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
    salary INT   NOT NULL
);

DROP TABLE Dept_Emp

CREATE TABLE Dept_Emp (
    emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
    dept_no VARCHAR(6)   NOT NULL,
    FOREIGN KEY (dept_no) REFERENCES Department(dept_no),
	PRIMARY KEY (emp_no, dept_no)
);




DROP TABLE Dept_Manager

CREATE TABLE Dept_Manager (
    dept_no VARCHAR(6)  NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES Department(dept_no),
    emp_no INT  NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	PRIMARY KEY (dept_no, emp_no)
);


