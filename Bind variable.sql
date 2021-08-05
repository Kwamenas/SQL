variable v_bind1 varchar2(10);

EXECUTE :v_bind1 :='Nas';

BEGIN
  :v_bind1 :='Yo';
END ;
/


select * from subs where acc_nbr =:v_bind1





---DISPLAYING BIND VARIABLE

PRINT :v_bind1;




SET AUTOPRINT ON;












