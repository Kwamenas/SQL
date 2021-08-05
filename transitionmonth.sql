select a.*, BONUS_TO_GIVE/(1024*1024) BONUS_TO_GIVE_IN_GB from 
(select sum(total_usage) total_usage, case when sum(total_usage)>=2 and sum(total_usage)<5
then '2097152'
when sum(total_usage)>=5 and sum(total_usage)<10
then '5242880'
when sum(total_usage)>=10 and sum(total_usage)<25
then '10485760'
when sum(total_usage)>=25
then '26214400'
else '0'
END BONUS_TO_GIVE,ACCT_ID1,BILLING_NBR,first_name,phone_number  from 
(select total_usage,ACCT_ID1,substr(BILLING_NBR,4) BILLING_NBR,case when first_name is null
then 'Customer'
else first_name
end first_name,phone_number from 
(select distinct round(total_usage/(1024*1024),4) total_usage,ACCT_ID1,BILLING_NBR,first_name,phone_number from
(select sum(CHARGE1+CHARGE2+CHARGE3+CHARGE4) total_usage,ACCT_ID1,BILLING_NBR from event_usage_c_3037@link_rb a, bal b where trunc(start_time)
between TRUNC(sysdate-7) and TRUNC(sysdate-6) and BILLING_NBR>'233001099'
and bal_id=bal_id1
and ACCT_ID1=b.acct_id
and acct_res_id in (1,2,3,9,10,11,12)
GROUP BY ACCT_ID1,BILLING_NBR) a, subs b, cust c, prod d, offer e, subs_upp_inst f where 
acct_id1=acct_id
and b.cust_id=c.cust_id
and b.subs_id=d.prod_id
and d.offer_id=526
and d.offer_id=e.offer_id
and e.offer_type=2
and b.subs_id=f.subs_id
and price_plan_id in (129,130,131,132,133,134,1910,1909,1908,1907)
)
union all
select total_usage,ACCT_ID1,substr(BILLING_NBR,4) BILLING_NBR,case when first_name is null
then 'Customer'
else first_name
end first_name,phone_number from 
(select distinct round(total_usage/(1024*1024),4) total_usage,ACCT_ID1,BILLING_NBR,first_name,phone_number from
(select sum(CHARGE1+CHARGE2+CHARGE3+CHARGE4) total_usage,ACCT_ID1,BILLING_NBR from event_usage_c_3038@link_rb a, bal b where trunc(start_time)
between TRUNC(sysdate-5) and TRUNC(sysdate-4) and BILLING_NBR>'233001099'
and bal_id=bal_id1
and ACCT_ID1=b.acct_id
and acct_res_id in (1,2,3,9,10,11,12)
GROUP BY ACCT_ID1,BILLING_NBR) a, subs b, cust c, prod d, offer e, subs_upp_inst f where 
--(total_usage/(1024*1024))>=2
--and 
acct_id1=acct_id
and b.cust_id=c.cust_id
and b.subs_id=d.prod_id
and d.offer_id=526
and d.offer_id=e.offer_id
and e.offer_type=2
and b.subs_id=f.subs_id
and price_plan_id in (129,130,131,132,133,134,1910,1909,1908,1907)
)) a --where acct_id1=11015237
group by BILLING_NBR,ACCT_ID1,first_name,phone_number) a where total_usage>=2