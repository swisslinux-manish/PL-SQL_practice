DECLARE
   l_customer_name customers.name%TYPE;
   l_contact_fname contacts.first_name%TYPE;
   l_contact_lname contacts.last_name%TYPE;
BEGIN
-- get customer information and put into declared variables

  SELECT 
    name,
    first_name,
    last_name
   INTO
    l_customer_name,
    l_contact_fname,
    l_contact_lname
   FROM 
    customers
   INNER join contacts USING(customer_id)
   WHERE
    customer_id = 100;
   -- display information
   
   dbms_output.put_line(
     l_customer_name || ', Contact : ' || l_contact_fname || ' '||
     l_contact_lname);
END;
