******STAFF RECURRING ******
select cust_name,acc_nbr from cust a,subs b 
where a.cust_id=b.cust_id 
and b.subs_id in (

select  d.cust_name,c.acc_nbr,b.offer_name/*A.SUBS_ID*//*,c.acc_nbr*//*a.subs_upp_inst_id*/ /*a.*,offer_name*/ from subs_upp_inst a , offer b,subs c ,cust d,prod e where 
a.price_plan_id=b.offer_id
--and acc_nbr='000322'
and d.cust_id=c.cust_id
and a.subs_id=c.subs_id
and e.prod_id=c.subs_id
and e.prod_state='A'
and a.state='A'
and b.offer_id in ('2003',
'3403',
'767',
'135',
'211',
'209',
'210',
'208')
)

select * from cust

select * from subs where acc_nbr='000219'

select /*A.SUBS_ID*//*a.subs_upp_inst_id*/ a.*,offer_name from subs_upp_inst a , offer b  where 
a.price_plan_id=b.offer_id
and subs_id='529894'




select Cust_name, acc_nbr, offer_name from
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
order by 1




select * from offer where lower(offer_name) like'%staff%'