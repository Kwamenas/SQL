select * from prod_state

UPDATE PROD SET PROD_STATE='B' where prod_id in(
select b.prod_id/**,a.subs_id,a.acc_nbr,g.IMSI,G.ICCID**/
from order_item a,prod b,acc_nbr c,subs e,sim_nbr f,sim_card g where 
a.subs_id=b.prod_id
and a.subs_id=e.subs_id
and a.acc_nbr=c.acc_nbr
and c.acc_nbr_id=f.acc_nbr_id
and f.SIM_CARD_ID=g.SIM_CARD_ID
and f.state='A'
and g.sim_state='C'
and a.subs_plan_id=b.subs_plan_id
and b.subs_plan_id ='3908'
and a.subs_event_id=99
and b.prod_state='G')



select * from order_item WHERE ACC_NBR=168881---subs_id,ACC_NBR
select * from acc_nbr where acc_nbr='168881'
----acc_nbr,acc_nbr_id
select * from subs WHERE SUBS_ID=1869537---subs_id
select * from sim_nbr where acc_nbr_id=175928--sim_card_id,sim_nbr_id,acc_nbr_id,state=A
select * from sim_card where sim_card_id=95776 ---sim_card_id,ICCID,SIM_STATE=C

SELECT * FROM SIM_STATE