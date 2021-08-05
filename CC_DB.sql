select Cust_name, acc_nbr,email, phone_number, offer_name,Bundle_Exp_Date,
case when Bundle_Exp_Date<trunc(sysdate) then 'Bundle_Has_Expired'
else 'Bundle_Not_Expired'
end State_of_Bundle from
(select distinct a.acc_nbr, imsi, iccid, offer_name,
trunc(f.exp_date) Bundle_Exp_Date, cust_id from acc_nbr a, sim_card b, sim_nbr c, subs d, prod e, subs_upp_inst f, offer g where ACC_NBR_STATE='C'
and a.acc_nbr_id=c.acc_nbr_id
and c.sim_card_id=b.sim_card_id
and a.acc_nbr=d.acc_nbr
and SIM_STATE='C'
and c.state='A'
and d.subs_id=e.prod_id
and PROD_STATE in ('I','A')
and d.subs_id=f.subs_id
and f.STATE='A'
and (offer_name not like '%SPR%'
and offer_name not like '%Starter%')
and OFFER_TYPE=4
and a.acc_nbr>000099
and f.PRICE_PLAN_ID=g.offer_id) a, cust b
where a.cust_id=b.cust_id
order by acc_nbr