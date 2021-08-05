select  sum((CHARGE1+CHARGE2)/(1024*1024)),ACCT_ID1,BILLING_NBR from event_usage_c_3037@link_rb where trunc(start_time)
between'02-JAN-2017' and '06-JAN-2017' and BILLING_NBR>'233001099' --AND sum((CHARGE1+CHARGE2)/(1024*1024))>='2.0'
GROUP BY ACCT_ID1,BILLING_NBR

--34014361
--113157

select distinct phone_number from 
(select sum(CHARGE1+CHARGE2+CHARGE3+CHARGE4) total_usage,ACCT_ID1,BILLING_NBR, phone_number from event_usage_c_303@link_rb a, bal b, subs c, cust d where trunc(start_time)
between'02-JAN-2017' and '06-JAN-2017' and BILLING_NBR>'233001099'
and bal_id=bal_id1
and ACCT_ID1=b.acct_id
and acct_res_id in (1,2,3,9,10,11,12)
and b.acct_id=c.acct_id
and c.cust_id=d.cust_id
GROUP BY ACCT_ID1,BILLING_NBR) a where (total_usage/(1024*1024))>=2;




select a.* from
(select sum(CHARGE1+CHARGE2+CHARGE3+CHARGE4) total_usage,ACCT_ID1,BILLING_NBR from event_usage_c_3037@link_rb a, bal b where trunc(start_time)
between trunc(sysdate-2)and trunc(sysdate-1) and BILLING_NBR>'233001099'
and bal_id=bal_id1
and ACCT_ID1=b.acct_id
and acct_res_id in (1,2,3,9,10,11,12)
GROUP BY ACCT_ID1,BILLING_NBR) a where (total_usage/(1024*1024))>=2






select total_usage,ACCT_ID1,substr(BILLING_NBR,4) BILLING_NBR,case when first_name is null
then 'Customer'
else first_name
end first_name,phone_number,BONUS_TO_GIVE, BONUS_TO_GIVE/(1024*1024) BONUS_TO_GIVE_GB from 
(select distinct round(total_usage/(1024*1024),2) total_usage,ACCT_ID1,BILLING_NBR,first_name,phone_number, case when /**total_usage/(1024*1024)>=2 and**/ total_usage/(1024*1024)>=5
then '5242880'
--when total_usage/(1024*1024)>=5 and total_usage/(1024*1024)<10
--then '5242880'
--when total_usage/(1024*1024)>=10 and total_usage/(1024*1024)<25
--then '10485760'
--when total_usage/(1024*1024)>=25 
--then '26214400'
else '0'
END BONUS_TO_GIVE from
(select sum(CHARGE1+CHARGE2+CHARGE3+CHARGE4) total_usage,ACCT_ID1,BILLING_NBR from event_usage_c_3046@link_rb a, bal b where trunc(start_time)
between trunc(sysdate-7)and trunc(sysdate-3) and BILLING_NBR>'233001099'
and bal_id=bal_id1
and ACCT_ID1=b.acct_id
and acct_res_id in (1,3,9,10,11,12)
GROUP BY ACCT_ID1,BILLING_NBR) a, subs b, cust c, prod d, offer e, subs_upp_inst f where (total_usage/(1024*1024))>=5
and acct_id1=acct_id
and b.cust_id=c.cust_id
and b.subs_id=d.prod_id
and d.offer_id=526
and d.offer_id=e.offer_id
and e.offer_type=2
and b.subs_id=f.subs_id
--and c.phone_number IS NOT NULL
)
--and price_plan_id in (129,130,131,132,133,134,1910,1909,1908,1907))


select * from acct_res


select * from billing_cycle

select * from billing_cycle where billing_cycle_type_id=1;

select * from billing_cycle_type
select * from acct_res



select total_usage,ACCT_ID1,substr(BILLING_NBR,4) BILLING_NBR,case when first_name is null
then 'Customer'
else first_name
end first_name,phone_number,BONUS_TO_GIVE, BONUS_TO_GIVE/(1024*1024) BONUS_TO_GIVE_GB from 
(select distinct round(total_usage/(1024*1024),2) total_usage,ACCT_ID1,BILLING_NBR,first_name,phone_number,
case when total_usage/(1024*1024)>=2 
and total_usage/(1024*1024)<5 then '2097152'
when total_usage/(1024*1024)>=5 and total_usage/(1024*1024)<10
then '5242880'
when total_usage/(1024*1024)>=10 and total_usage/(1024*1024)<25
then '10485760'
when total_usage/(1024*1024)>=25 
then '26214400'
else '0'
END BONUS_TO_GIVE from
(select sum(CHARGE1+CHARGE2+CHARGE3+CHARGE4) total_usage,ACCT_ID1,BILLING_NBR from event_usage_c_3043@link_rb a, bal b where trunc(start_time)
between trunc(sysdate-8)and trunc(sysdate-4) and BILLING_NBR>'233001099'
and bal_id=bal_id1
and ACCT_ID1=b.acct_id
and acct_res_id in (1,2,3,9,10,11,12)
GROUP BY ACCT_ID1,BILLING_NBR) a, subs b, cust c, prod d, offer e, subs_upp_inst f where (total_usage/(1024*1024))>=2
and acct_id1=acct_id
and b.cust_id=c.cust_id
and b.subs_id=d.prod_id
and d.offer_id=526
and d.offer_id=e.offer_id
and e.offer_type=2
and b.subs_id=f.subs_id
--and price_plan_id in (129,130,131,132,133,134,1910,1909,1908,1907))
and phone_number is not NULL
)







select * from billing_cycle where billing_cycle_type_id =1

select * from bal where acct_id='43019880' and bal_id='2375153';

update bal set exp_date='2017-05-01 06:57:06.000000'
select * from   bal where gross_bal='-5242880' and acct_res_id=7 and eff_date like'%2017-04-29%' and exp_date like '%2017-05-02%'
select * from subs

select * from cust

select * from prod

select * from offer where offer_name like '%Corporate%'

SELECT ACCT_ID FROM BAL where EFF_DATE like'%2017-01-27%' AND ACCT_RES_ID=2 AND EXP_DATE like'%2017-01-31%'
AND ACCT_ID IN()
