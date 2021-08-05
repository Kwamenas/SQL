

select c.acc_nbr,offer_name from subs_upp_inst a , offer b ,SUBS C  where 
a.price_plan_id=b.offer_id
and offer_name not like '%Default%'
and a.subs_id=c.subs_id
and a.STATE='A'
and offer_name like '%mbps%' and offer_type <> 3
and offer_name  not like '%SPR%'
and a.subs_id in (
select subs_id from prod a,subs b
where  subs_plan_id='308' and prod_state='A' 
and a.prod_id=b.subs_id
)


select * from subs where acc_nbr='100207'




select * from offer where offer_name like '%mbps%' and offer_type <> 3

select * from 



select * from offer where offer_name like'%Post%'
308