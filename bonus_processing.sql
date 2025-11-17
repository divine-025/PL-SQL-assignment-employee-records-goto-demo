
SET SERVEROUTPUT ON;

DECLARE
   
   TYPE EmployeeRec IS RECORD (
      emp_id   NUMBER,
      emp_name VARCHAR2(50),
      salary   NUMBER,
      bonus    NUMBER
   );

   
   TYPE EmployeeTable IS TABLE OF EmployeeRec;

   
   employees EmployeeTable := EmployeeTable(
      EmployeeRec(101, 'Alice', 5000, NULL),
      EmployeeRec(102, 'Brian', 0, NULL),
      EmployeeRec(103, 'Clara', 7000, NULL),
      EmployeeRec(104, 'David', 6000, NULL)
   );

  
   i NUMBER := 1;
   performance_bonus NUMBER;

BEGIN
   DBMS_OUTPUT.PUT_LINE('--- Employee Bonus Processing Started ---');

   
   WHILE i <= employees.COUNT LOOP

      <<PROCESS_EMPLOYEE>>
      BEGIN
         IF employees(i).salary <= 0 THEN
            DBMS_OUTPUT.PUT_LINE('Skipping ' || employees(i).emp_name || ' (invalid salary)');
            GOTO SKIP_EMPLOYEE; 
         END IF;

         
         performance_bonus := employees(i).salary * 0.10;
         employees(i).bonus := performance_bonus;

         DBMS_OUTPUT.PUT_LINE('Processed: ' || employees(i).emp_name ||
                              ' | Salary: ' || employees(i).salary ||
                              ' | Bonus: ' || employees(i).bonus);
      EXCEPTION
         WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error processing employee ID: ' || employees(i).emp_id);
            GOTO SKIP_EMPLOYEE;
      END;

      <<SKIP_EMPLOYEE>>
      i := i + 1;

   END LOOP;

   DBMS_OUTPUT.PUT_LINE('--- Bonus Processing Completed ---');

   
   DBMS_OUTPUT.PUT_LINE(CHR(10) || '--- Final Employee Bonus Report ---');
   FOR j IN 1 .. employees.COUNT LOOP
      DBMS_OUTPUT.PUT_LINE(
         'ID: ' || employees(j).emp_id ||
         ' | Name: ' || employees(j).emp_name ||
         ' | Salary: ' || employees(j).salary ||
         ' | Bonus: ' || NVL(TO_CHAR(employees(j).bonus), 'Not Assigned')
      );
   END LOOP;

END;
/
