select * from offer where offer_name like '%Plus%'
offer----1306
select * from offer where offer_id='526' in ('111','122','128','129','130','131','132','133','134','3011','1911','1910','1909','1908','1907')
---offer_id 
select * from prod  where prod_state='I' AND OFFER_ID='526'

select * from subs_PLAN

SELECT * FROM subs
---subs_id
--acc_nbr
select * from acc_nbr
select * from cust


select * from offer

select * from price where  price_id='35362'

select * from price_plan where price_plan_id='3105'
----cust_name 
--- cust_id,offer_id=price_plan_id

select * from price order by price_name desc





select c.acc_nbr
  from subs_upp_inst a, prod b, subs c
 where a.subs_id = b.prod_id
   and b.prod_state = 'I'
   and a.price_plan_id = 3015
   and a.subs_id = c.subs_id order by acc_nbr;
   
   
   
select a.cust_name,e.offer_name,b.acc_nbr
from cust a,subs b,prod c,acc_nbr d,offer e
where c.prod_id=b.subs_id 
and a.cust_id=b.cust_id
and b.acc_nbr=d.acc_nbr
and prod_state='G'
and d.acc_nbr_state='A'
and e.offer_id=''


select * from prod_state
select * from prod where offer_id='1306'

select * from subs_up_inst


SELECT * FROM SUBS WHERE SUBS_ID='1142126'


select * from offer where offer_name like '%Xmas%'
