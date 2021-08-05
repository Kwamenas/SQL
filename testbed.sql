create or replace procedure TEST_PROD 
is
VAR_NAME VARCHAR(20) :='Nii';
VAR_WEB VARCHAR(20) :='Nii.com';
begin
DBMS_OUTPUT.PUT_LINE('Whats up internet ,i am' ||VAR_NAME|| 'from' ||VAR_WEB||);
--Sql_ment := 'update order_item set order_state=''E'' where order_state in (''I'',''G'') and (sysdate-state_date)*24*60>20';
--execute immediate Sql_ment;
--commit;
end;




drop procedure "CC"."TEST_PROD"