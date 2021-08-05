select a.ACC_NBR,cust_name, to_char(a.completed_date,'YYYYMMDD HH:MM:SS'),g.offer_name
from ORDER_ITEM a, acc_nbr b, prod c, subs d, cust e,subs_upp_inst f,offer g
where a.subs_event_id ='104' 
and a.acc_nbr=b.acc_nbr
and a.order_state='C'
and b.acc_nbr_state='C'
and c.prod_id = d.subs_id
and a.subs_id = d.subs_id
and f.subs_id=a.subs_id
and g.offer_id=f.price_plan_id
and e.cust_id = d.cust_id
and c.prod_state='G' --in ('G','A')
and g.offer_type='4'
and offer_name not in ('Assist Plan','Default','10GB Data','Whatsapp','Snapchat','Twitter','Instagram','Youtube','Facebook')
and offer_name not like '%SPR%'
and b.acc_nbr >'001099'
--and a.subs_plan_id='4806'
and to_char(a.completed_date,'yyyymmdd') like'%20170613%'
order by a.completed_date,e.PHONE_NUMBER;


select * from ORDER_ITEM where acc_nbr='178814'


select a.*,b.offer_name from subs_upp_inst a,offer b where subs_id='11246361'
and b.offer_id=a.price_plan_id

select * from offer where offer_id='8505'
offer_type=4

8505

select * from subs_event where subs_event_id=104

select * from order_item

select * from prod_state

select acct_id from subs where subs_id in (select max(subs_id)subs_id/**,acc_nbr**/ from subs 
where acc_nbr in ()
having count(*)>=1
group by acc_nbr)
 

select * from offer where offer_name like '%Standard%'

select acct_id from  bal where acct_res_id=7 and gross_bal=-8388608 and acct_id in ()