SET SERVEROUTPUT ON;

DECLARE
var_nombre employees.first_name%type;
var_salario employees.salary%type;
var_apellido employees.last_name%type;

BEGIN

SELECT first_name, salary, last_name
INTO var_nombre, var_salario, var_apellido
FROM employees 
WHERE employee_ID = 100;

dbms_output.put_line('Empleado: ' || var_nombre || ' ' || var_apellido|| ' ' || 'Salario: ' || ' ' || var_salario);

END;


