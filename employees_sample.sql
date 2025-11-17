
CREATE TABLE employees (
    employee_id NUMBER PRIMARY KEY,
    first_name  VARCHAR2(50),
    salary      NUMBER
);

INSERT INTO employees VALUES (101, 'Alice', 5000);
INSERT INTO employees VALUES (102, 'Brian', 0);
INSERT INTO employees VALUES (103, 'Clara', 7000);
INSERT INTO employees VALUES (104, 'David', 6000);

COMMIT;
