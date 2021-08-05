select c.cust_name, 
       c.phone_number, 
       c.email, 
       d.offer_name, 
       a.created_date, 
       a.eff_date, 
       a.exp_date, 
       a.state 
  from subs_upp_inst a, subs b, cust c, offer d 
 where price_plan_id in (794, 798) 
   and to_char(a.created_date, 'YYYYMMDD') >= '20161201' 
   and to_char(a.created_date, ' YYYYMMDD ') <= ' 20161231 ' 
   and a.subs_id = b.subs_id 
   and b.cust_id = c.cust_id 
   and a.price_plan_id = d.offer_id; 
