
select c.acc_nbr,b.offer_name,d.cust_name from subs_upp_inst a 
left join offer b
on a.price_plan_id=b.offer_id
left join subs c
on a.subs_id=c.subs_id
left join cust d
on c.cust_id=d.cust_id
left join prod e
on a.subs_id=e.prod_id
where a.state='A'
and e.prod_state='A'
--and a.subs_id='1644702'
and a.price_plan_id='8416' 