
SELECT BILLING_NBR, round (total_usage/(1024*1024*1024),2) total_usageGB from (
SELECT BILLING_NBR,SUM(BYTE_UP + BYTE_DOWN) total_usage from (
select * from event_usage_c_4162@link_rb where TRUNC(start_time)BETWEEN '1-AUG-19' AND '31-AUG-19' and  billing_nbr IN ()) a, re b
WHERE a.re_id=b.re_id
and a.re_id in ('101',
'607',
'616',
'619',
'620',
'632',
'1421',
'1422',
'2321')
GROUP BY BILLING_NBR
)
SELECT * FROM RE  WHERE RE_ID IN ('101',
'607',
'616',
'619',
'620',
'632',
'1421',
'1422',
'2321')


select /*SURFING_DATE||','||UPLOAD_GB||','||DOWNLOAD_GB*/substr(ACC_NBR,4) RESULT from 
(select --trunc(START_TIME) SURFING_DATE,
--sum(round(BYTE_UP/(1024*1024*1024),2)) UPLOAD_GB, 
--sum(round(BYTE_DOWN/(1024*1024*1024),2))DOWNLOAD_GB,
BILLING_NBR ACC_NBR
from (select * from event_usage_c_4139@link_rb where trunc(START_TIME)between trunc(sysdate-200) and trunc(sysdate-1) 
union all select * from event_usage_c_4174@link_rb where
trunc(START_TIME)between trunc(sysdate-400) and trunc(sysdate-1)) GROUP BY BILLING_NBR/*trunc(START_TIME)*/);



select * from billing_cycle where cycle_begin_date='01-AUG-21'


select * from event_usage_c_5198@link_rb where BILLING_NBR=233119017

select * from re where re_id=632






select substr(a.BILLING_NBR,4)ACC_NBR,cust_type_name,OFFER_NAME
from (select * from event_usage_c_4126@link_rb where trunc(START_TIME)between trunc(sysdate-200) and trunc(sysdate-1) 
union all select * from event_usage_c_4161@link_rb where
trunc(START_TIME)between trunc(sysdate-500) and trunc(sysdate-1))a,subs b, cust c,prod d,cust_type e,offer f
where substr(a.BILLING_NBR,4)=b.acc_nbr
and b.subs_id=d.prod_id
and b.cust_id=c.cust_id
and d.offer_id=f.offer_id
and prod_state in ('A','G','E','D')
and c.cust_type=e.cust_type
GROUP BY BILLING_NBR,cust_type_name,OFFER_NAME /*trunc(START_TIME)*/




select * from prod where


select distinct BILLING_NBR FROM(
select * from event_usage_c_4139@link_rb
union all
select * from event_usage_c_4174@link_rb
)









SELECT ACC_NBR FROM MIGRATE_DATA

MINUS

select distinct  billing_nbr from (
select billing_nbr from event_usage_c_4155@link_rb  
union all                                           
select billing_nbr from event_usage_c_4156@link_rb  
union all                                           
select billing_nbr from event_usage_c_4157@link_rb  
union all                                           
select billing_nbr from event_usage_c_4158@link_rb  
union all                                           
select billing_nbr from event_usage_c_4159@link_rb  
union all                                           
select billing_nbr from event_usage_c_4160@link_rb  
union all                                           
select billing_nbr from event_usage_c_4161@link_rb  
union all                                           
select billing_nbr from event_usage_c_4162@link_rb  
union all                                           
select billing_nbr from event_usage_c_4163@link_rb  
union all                                           
select billing_nbr from event_usage_c_4164@link_rb  
union all                                           
select billing_nbr from event_usage_c_4165@link_rb  
union all                                           
select billing_nbr from event_usage_c_4166@link_rb  
union all                                           
select billing_nbr from event_usage_c_4167@link_rb  
union all                                           
select billing_nbr from event_usage_c_4168@link_rb  
union all                                           
select billing_nbr from event_usage_c_4169@link_rb  
union all                                           
select billing_nbr from event_usage_c_4170@link_rb  
union all                                           
select billing_nbr from event_usage_c_4171@link_rb  
union all                                           
select billing_nbr from event_usage_c_4172@link_rb  
)
where billing_nbr IN (SELECT ACC_NBR FROM MIGRATE_DATA)


