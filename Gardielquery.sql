


select a.acct_id, 
       b.subs_id, 
       b.acc_nbr, 
       d.offer_name, 
       to_char(h.cycle_begin_date,'yyyymm') 
  from acct           a, 
       subs           b, 
       subs_upp_inst   c, 
       offer          d, 
       subs_price_plan e, 
       acct_item g, 
       (select distinct offer_id from offer_group_mem where offer_group_id in (204,633,636,641,637,604,655,402,603,640,630,605,606)) f, 
       billing_cycle h 
 where a.acct_id = b.acct_id 
   and b.subs_id = c.subs_id 
   and c.price_plan_id = d.offer_id 
   and c.price_plan_id = e.price_plan_id 
   and h.billing_cycle_id=&billing_cycle_id 
   and (c.state='A' or(c.state='X' 
   and c.created_date>h.cycle_begin_date 
   and c.created_date<h.cycle_end_date)) 
   and e.price_plan_id=f.offer_id 
   and g.subs_id=b.subs_id 
   and g.acct_id=b.acct_id 
   and g.acct_item_type_id=14 
   and g.billing_cycle_id=&billing_cycle_id 
   and e.price_plan_type=3 
 order by acct_id; 
















select c.cust_name,a.state,c.phone_number,c.email,a.acct_id,to_char(e.cycle_begin_date,'yyyy-mm'),sum(a.charge+a.settle_charge)/100.0,sum(a.settle_charge)/100.0,f.adjust_charge/100.0 
from acct_item a,acct b,cust c,subs d,billing_cycle e,bill f 
where a.billing_cycle_id = e.BILLING_CYCLE_ID and e.BILLING_CYCLE_TYPE_ID=2 
and a.acct_id=b.acct_id 
and b.cust_id=c.cust_id 
and a.subs_id=d.subs_id 
and d.acc_nbr>100 
and a.billing_cycle_id=e.billing_cycle_id 
and a.acct_id=f.acct_id 
and f.billing_cycle_id=e.billing_cycle_id 
group by a.state,a.billing_cycle_id,c.cust_name,c.phone_number,a.acct_id,c.email,to_char(e.cycle_begin_date,'yyyy-mm'),f.adjust_charge/100.0 
order by to_char(e.cycle_begin_date,'yyyy-mm'), acct_id;


select * from BILLING_CYCLE_type




select a.acct_id, 
       b.subs_id, 
       b.acc_nbr, 
       d.offer_name, 
       to_char(h.cycle_begin_date,'yyyymm') 
  from acct           a, 
       subs           b, 
       subs_upp_inst   c, 
       offer          d, 
       subs_price_plan e, 
       acct_item g, 
       (select distinct offer_id from offer_group_mem where offer_group_id in (204,633,636,641,637,604,655,402,603,640,630,605,606)) f, 
       billing_cycle h 
 where a.acct_id = b.acct_id 
   and b.subs_id = c.subs_id 
   and c.price_plan_id = d.offer_id 
   and c.price_plan_id = e.price_plan_id 
   and h.billing_cycle_id=&billing_cycle_id 
   and (c.state='A' or(c.state='X' 
   and c.created_date>h.cycle_begin_date 
   and c.created_date<h.cycle_end_date)) 
   and e.price_plan_id=f.offer_id 
   and g.subs_id=b.subs_id 
   and g.acct_id=b.acct_id 
   and g.acct_item_type_id=14 
   and g.billing_cycle_id=&billing_cycle_id 
   and e.price_plan_type=3 
 order by acct_id; 




SELECT * FROM BAL WHERE ACCT_ID='15014691' AND gross_bal='-5242880' and eff_date like'%2017-01-27%'

price_id=price_list
select * from billing_cycle