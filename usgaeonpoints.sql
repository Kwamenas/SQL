
select  distinct a.STATE_DATE BROWSING_DATE,CUST_NAME,substr(BILLING_NBR,4) BILLING_NBR,C.PHONE_NUMBER,(total_usage)*1024 USAGE_MB, TOTAL_USAGE*(1024*10) POINTS_EARNED from 
(select sum(CHARGE1+CHARGE2+CHARGE3+CHARGE4) total_usage,ACCT_ID1,BILLING_NBR,trunc(a.STATE_DATE) STATE_DATE from event_usage_c_3038@link_rb a, bal b where trunc(a.state_date)
=trunc(sysdate-1) and BILLING_NBR>'233001099'
and bal_id=bal_id1
and ACCT_ID1=b.acct_id
and acct_res_id in (1,2,3,9,10,11,12)
GROUP BY ACCT_ID1,BILLING_NBR,trunc(STATE_DATE)) a, subs b, cust c, prod d, offer e, subs_upp_inst f
where acct_id1=acct_id
and b.cust_id=c.cust_id
and b.subs_id=d.prod_id
and d.offer_id =526
and d.offer_id=e.offer_id
and e.offer_type=2
and b.subs_id=f.subs_id
and price_plan_id in (111,122,128,129,130,131,132,133,134,3011,1911,1910,1909,1908,1907,3103)




select * from offer_type

select * from offer 
where offer_id in (111,122,128,129,130,131,132,133,134,3011,1911,1910,1909,1908,1907,3103)


select * from subs_upp_inst where price_plan_id='129'




