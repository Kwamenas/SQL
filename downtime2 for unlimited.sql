select 233||C.ACC_NBR,d.phone_number,a.SUBS_UPP_INST_ID,a.eff_date,a.exp_date,
sysdate+2 crm_exp_date,to_char(sysdate+6,'yyyymmddhh24mi') spr_new_exp_date,to_char(a.eff_date,'yyyymmddhh24mi') spr_new_eff_date, '10022' PAKID,b.offer_name
from subs_upp_inst a , offer b,SUBS C,CUST d  where 
a.price_plan_id=b.offer_id
AND A.SUBS_ID=C.SUBS_ID
and c.cust_id=d.cust_id
--and c.acc_nbr='107316'
and trunc(a.exp_date)between trunc(sysdate-4) and trunc(sysdate-2) 
and a.price_plan_id='11106'


in ('8703',
'8704',
'8803',
'11108')

'11106',
Datanumber,cust_name,crm_exp_date,spr_exp_date,offer_name