DECLARE
   l_customer customers%ROWTYPE;
BEGIN
-- collect row of cutsomer_id 100 into variable l_customer
   SELECT * INTO l_customer
   FROM customers
   WHERE customer_id = 100;
   
   dbms_output.put_line(l_customer.name || ',website: ' || l_customer.website);
 END;
