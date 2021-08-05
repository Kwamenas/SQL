select substr(BILLING_NBR,4)ACC_NBR from event_usage_c_4139@link_rb UNION ALL 
select substr(BILLING_NBR,4)ACC_NBR from event_usage_c_4174@link_rb


SELECT A.ACC_NBR,B.CUST_NAME FROM 
(SELECT * FROM SUBS WHERE SUBS_ID IN (
select max (subs_id) subs_id  from subs  where acc_nbr IN (
SELECT DISTINCT substr(BILLING_NBR,4)ACC_NBR FROM (
select * from event_usage_c_4135@link_rb
) 
)
having count(*)>=1
group by acc_nbr
)) A ,(SELECT * FROM CUST) B
WHERE A.CUST_ID=B.CUST_ID








SELECT DISTINCT substr(BILLING_NBR,4)ACC_NBR FROM (
select * from event_usage_c_4139@link_rb
union all
select * from event_usage_c_4174@link_rb
) 



select * from billing_cycle where cycle_begin_date BETWEEN '01-APR-20' AND '01-JUN-20' AND BILLING_CYCLE_TYPE_ID=2
