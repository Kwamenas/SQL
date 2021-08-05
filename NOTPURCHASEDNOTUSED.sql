SELECT A.ACC_NBR,C.CUST_NAME,C.PHONE_NUMBER FROM 
(select acc_nbr,subs_id,cust_id from subs where subs_id in (
select max (subs_id) subs_id  from subs  where subs_id IN (select subs_id from subs a,prod b
where a.subs_id=b.prod_id
and b.offer_id='526'
and prod_state in ('G','A'))
having count(*)>=1
group by acc_nbr
)) A, (SELECT * FROM PROD WHERE OFFER_ID='526') B, (SELECT * FROM CUST) C

WHERE A.SUBS_ID=B.PROD_ID
AND A.CUST_ID=C.CUST_ID
AND A.ACC_NBR IN (





(
(select acc_nbr from subs where subs_id in (
select max (subs_id) subs_id  from subs  where subs_id IN (select subs_id from subs a,prod b
where a.subs_id=b.prod_id
and b.offer_id='526'
and prod_state in ('G','A'))
having count(*)>=1
group by acc_nbr
)
and acc_nbr not in (

select  acc_nbr from
(select distinct a.acc_nbr, imsi, iccid, offer_name, cust_id from acc_nbr a, sim_card b, sim_nbr c, subs d, prod e, subs_upp_inst f, offer g where ACC_NBR_STATE='C'
and a.acc_nbr_id=c.acc_nbr_id
and c.sim_card_id=b.sim_card_id
and a.acc_nbr=d.acc_nbr
and SIM_STATE='C'
and c.state='A'
and d.subs_id=e.prod_id
and PROD_STATE in ('I','A')
and d.subs_id=f.subs_id
and lower(offer_name) like '%staff%'
and f.STATE='A'
and (trunc(f.exp_date) is null or trunc(f.exp_date) > trunc(sysdate))
and f.PRICE_PLAN_ID=g.offer_id) a, cust b
where a.cust_id=b.cust_id


)
)

MINUS


(SELECT distinct B.ACC_NBR
FROM CUST A,SUBS B,SUBS_UPP_INST C,OFFER D,ACC_NBR E,PROD F,OFFER_CATG_MEM G,CUST_TYPE H
WHERE E.ACC_NBR=B.ACC_NBR
--AND B.ACC_NBR >000099
AND A.CUST_ID=B.CUST_ID
AND C.STATE='A'
AND A.CUST_TYPE=H.CUST_TYPE
AND B.SUBS_ID=C.SUBS_ID
AND B.SUBS_ID=F.PROD_ID
AND C.PRICE_PLAN_ID=D.OFFER_ID
AND F.OFFER_ID<>'127'
AND D.OFFER_ID NOT IN('4108','4109')
AND d.offer_id=g.offer_id
and g.offer_catg_id in (204,1808,212,2408,2508,3208,1308,3809,3908,4110,4208,4408)
and d.offer_id=g.offer_id
and d.offer_type=4
and lower (d.offer_name) not like '%hybrid business%'
and lower (d.offer_name) not like '%4g shared unlimited%'
and lower (d.offer_name) not like '%hbb%'
AND trunc(C.CREATED_DATE)between '01-APR-20' and '03-AUG-21')
)



minus

(SELECT DISTINCT substr(BILLING_NBR,4)ACC_NBR FROM (
select * from event_usage_c_5191@link_rb
UNION ALL
select * from event_usage_c_5192@link_rb
UNION ALL
select * from event_usage_c_5193@link_rb
UNION ALL
select * from event_usage_c_5194@link_rb
UNION ALL
select * from event_usage_c_5195@link_rb
UNION ALL
select * from event_usage_c_5196@link_rb
UNION ALL
select * from event_usage_c_5197@link_rb
UNION ALL
select * from event_usage_c_5198@link_rb
UNION ALL
select * from event_usage_c_4170@link_rb
UNION ALL
select * from event_usage_c_4171@link_rb
UNION ALL
select * from event_usage_c_4172@link_rb
UNION ALL
select * from event_usage_c_4173@link_rb
UNION ALL
select * from event_usage_c_4174@link_rb
UNION ALL
select * from event_usage_c_4175@link_rb
UNION ALL
select * from event_usage_c_4176@link_rb
UNION ALL
select * from event_usage_c_4177@link_rb
UNION ALL
select * from event_usage_c_4178@link_rb
)
)

)
--select * from billing_cycle where cycle_begin_date BETWEEN '01-APR-20' AND '01-AUG-21' AND BILLING_CYCLE_TYPE_ID=1

