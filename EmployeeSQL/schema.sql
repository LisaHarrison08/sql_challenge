CREATE TABLE titles (
    title_id        VARCHAR(5) PRIMARY KEY      NOT NULL,
    title           VARCHAR(50)                 NOT NULL
    );

CREATE TABLE departments (
    dept_no         VARCHAR(4)      PRIMARY KEY    NOT NULL,
    dept_name       VARCHAR (50)    UNIQUE         NOT NULL
);


CREATE TABLE employees (
    emp_no          INT         PRIMARY KEY         NOT NULL,
    emp_title_id    VARCHAR (5)                     NOT NULL,
    birth_date      VARCHAR (10)                    NOT NULL,
    first_name      VARCHAR (50)                    NOT NULL,
    last_name       VARCHAR (50)                    NOT NULL,
    sex             VARCHAR (5)                     NOT NULL,
    hire_date       VARCHAR (10)                    NOT NULL,
    FOREIGN KEY (emp_title_id) REFERENCES titles (title_id)
);

CREATE TABLE dept_manager (
    dept_no        VARCHAR(4)       NOT NULL,
    emp_no         INT              NOT NULL,
    PRIMARY KEY (dept_no, emp_no),
    FOREIGN KEY (dept_no)  REFERENCES departments (dept_no),
    FOREIGN KEY (emp_no)   REFERENCES employees (emp_no)
);

CREATE TABLE dept_emp (
    emp_no         INT             NOT NULL,
    dept_no        VARCHAR(4)      NOT NULL,    
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (dept_no)  REFERENCES departments (dept_no),
    FOREIGN KEY (emp_no)  REFERENCES employees (emp_no)
);

CREATE TABLE salaries (
    emp_no         INT      PRIMARY KEY     NOT NULL,
    salary         INT                      NOT NULL    
);


