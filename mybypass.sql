
"concat"
select concat('Nii','Sowah') as Results from dual

select concat (FIRST_NAME,SECOND_NAME) from CUST


"using concat"
select ('select * from event_usage_c_','@link_rb where trunc(START_TIME)=trunc(sysdate-1)) GROUP BY trunc(START_TIME') from 
dual

"pipe"
select 'FIRST_NAME'||'SECOND_NAME'||CUST_ID from cust
select 'Nii'||'Adjei'|| 'Sowah' from dual


"first part of query"
select
select a.*from (select ('select * from event_usage_c_'||billing_cycle_id||'@link_rb where trunc(START_TIME)=trunc(sysdate-1)')
from billing_cycle where billing_cycle_type_id=2
AND to_char(ADD_MONTHS(TRUNC(CYCLE_BEGIN_DATE,'MM'),0),'YYYY/MM/DD')=to_char(ADD_MONTHS(TRUNC(SYSDATE,'MM'),0),'YYYY/MM/DD') )a
union all
"second part of the query"
select b.* from (select ('select * from event_usage_c_'||billing_cycle_id||'@link_rb where trunc(START_TIME)=trunc(sysdate-1)')
from billing_cycle where billing_cycle_type_id=1
AND to_char(ADD_MONTHS(TRUNC(CYCLE_BEGIN_DATE,'MM'),0),'YYYY/MM/DD')=
to_char(ADD_MONTHS(TRUNC(SYSDATE,'MM'),0),'YYYY/MM/DD') 
)b


"to_char"
select to_char(sysdate , 'Month') from dual;
select billing_cycle_id,to_char(trunc(cycle_begin_date,'MM'),'YYYY-MM-DD') FROM BILLING_CYCLE
"helps with date"
select billing_cycle_id,to_char(ADD_MONTHS(TRUNC(CYCLE_BEGIN_DATE,'MM'),0),'YYYY/MM/DD')FROM BILLING_CYCLE

"DATE"
select * from  billing_cycle where to_char(add_months(trunc(cycle_begin_date,'mm'),'yyyy-mm-dd'),0)=
to_char(add_months(trunc(sysdate,'mm'),'yyyy-mm-dd'),0) and billing_cycle_id=2





 


 

