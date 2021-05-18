SET SERVEROUTPUT ON; 
DECLARE
   l_cname customers.name%TYPE;
 BEGIN
 -- select the name from table and assign it to variable l_cname
   SELECT name INTO l_cname
   FROM customers
   WHERE customer_id = 100;
 -- display the customer name
 dbms_output.put_line(l_cname);
 END;
