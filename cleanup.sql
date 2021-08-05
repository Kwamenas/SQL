select * from offer where offer_name like'%SME Starter Pack Mifi%'

select offer_name  from offer

select * from order_item where subs_plan_id =3105;  3103----subs_id,subs_event id

select * from offer_type 


157969

select * from offer

select * from acc_nbr where acc_nbr='157969'

select * from subs_event
123

select * from order_Item where acc_nbr='157969' and subs_event_id=123;


select * from subs where acc_nbr='157969'


1607017)

prod,
offer ----3105
subs_event 123
prod_state
prod_state_date

select * from prod where prod_id=649457;


select b.prod_state,b.prod_state_date,a.subs_id
from order_item a,prod b where 
a.subs_id=b.prod_id
and a.subs_plan_id=b.subs_plan_id
and b.subs_plan_id ='3106'
and a.subs_event_id=123
and b.prod_state='A'