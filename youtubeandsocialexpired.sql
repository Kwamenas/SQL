select distinct b.*,price_plan_id, offer_name from 
(select * from subs_upp_inst where price_plan_id in (4215,4214)
and exp_date is not null and trunc(exp_date)<trunc(sysdate)
and state='A') a, (select a.subs_id, a.acc_nbr from                                                                                                                                                                                                                                
(select max(subs_id) subs_id, acc_nbr from subs                                                                                                                                                                                                                                                                 
having count(*)>=1                                                                                                                                                                                                                                                                                              
group by acc_nbr) a, prod b                                                                                                                                                                                                                                  
where a.subs_id=prod_id                                                                                                                                                                                                                                                                         
and offer_id=526
and SUBS_PLAN_ID not in (3422,3423,2308,3818,3908,4206)) b, offer c
where a.SUBS_ID=b.SUBS_ID
and PRICE_PLAN_ID=offer_id
and acc_nbr>001099












select distinct b.*,price_plan_id, offer_name from 
(select a.*, price_plan_id from
(select subs_id, max(SUBS_UPP_INST_ID) SUBS_UPP_INST_ID from
(select subs_id,max(SUBS_UPP_INST_ID) SUBS_UPP_INST_ID from subs_upp_inst where 
price_plan_id =4215
and exp_date is not null and trunc(exp_date)<trunc(sysdate)
having count(*)>=1
group by subs_id
union all
select subs_id,max(SUBS_UPP_INST_ID) SUBS_UPP_INST_ID from subs_upp_inst where 
price_plan_id =4214
and exp_date is not null and trunc(exp_date)<trunc(sysdate)
having count(*)>=1
group by subs_id)
group by subs_id) a, subs_upp_inst b
where a.SUBS_UPP_INST_ID=b.SUBS_UPP_INST_ID) a, (select a.subs_id, a.acc_nbr from                                                                                                                                                                                                                                
(select max(subs_id) subs_id, acc_nbr from subs                                                                                                                                                                                                                                                                 
having count(*)>=1                                                                                                                                                                                                                                                                                              
group by acc_nbr) a, prod b                                                                                                                                                                                                                                  
where a.subs_id=prod_id                                                                                                                                                                                                                                                                         
and offer_id=526
) b, offer c, spr_msisdn d
where a.SUBS_ID=b.SUBS_ID
and PRICE_PLAN_ID=offer_id
and acc_nbr>001099
and acc_nbr=msisdn










***daily routine****

select b.* from (select distinct b.subs_id from 
(select a.*, price_plan_id from
(select subs_id, max(SUBS_UPP_INST_ID) SUBS_UPP_INST_ID from
(select subs_id,max(SUBS_UPP_INST_ID) SUBS_UPP_INST_ID from subs_upp_inst where 
price_plan_id =4215
and exp_date is not null and trunc(exp_date)=trunc(sysdate-1)
having count(*)>=1
group by subs_id
union all
select subs_id,max(SUBS_UPP_INST_ID) SUBS_UPP_INST_ID from subs_upp_inst where 
price_plan_id =4214
and exp_date is not null and trunc(exp_date)=trunc(sysdate-1)
having count(*)>=1
group by subs_id)
group by subs_id) a, subs_upp_inst b
where a.SUBS_UPP_INST_ID=b.SUBS_UPP_INST_ID) a, (select a.subs_id, a.acc_nbr from                                                                                                                                                                                                                                
(select max(subs_id) subs_id, acc_nbr from subs                                                                                                                                                                                                                                                                 
having count(*)>=1                                                                                                                                                                                                                                                                                              
group by acc_nbr) a, prod b                                                                                                                                                                                                                                  
where a.subs_id=prod_id                                                                                                                                                                                                                                                                         
and offer_id=526
) b, offer c, spr_msisdn d
where a.SUBS_ID=b.SUBS_ID
and PRICE_PLAN_ID=offer_id
and acc_nbr>001099
and acc_nbr=msisdn
minus
select distinct b.subs_id from 
(select a.*, price_plan_id from
(select subs_id, max(SUBS_UPP_INST_ID) SUBS_UPP_INST_ID from
(select subs_id,max(SUBS_UPP_INST_ID) SUBS_UPP_INST_ID from subs_upp_inst where 
price_plan_id =4215
and exp_date is not null and trunc(exp_date)>trunc(sysdate)
having count(*)>=1
group by subs_id
union all
select subs_id,max(SUBS_UPP_INST_ID) SUBS_UPP_INST_ID from subs_upp_inst where 
price_plan_id =4214
and exp_date is not null and trunc(exp_date)>trunc(sysdate)
having count(*)>=1
group by subs_id)
group by subs_id) a, subs_upp_inst b
where a.SUBS_UPP_INST_ID=b.SUBS_UPP_INST_ID) a, (select a.subs_id, a.acc_nbr from                                                                                                                                                                                                                                
(select max(subs_id) subs_id, acc_nbr from subs                                                                                                                                                                                                                                                                 
having count(*)>=1                                                                                                                                                                                                                                                                                              
group by acc_nbr) a, prod b                                                                                                                                                                                                                                  
where a.subs_id=prod_id                                                                                                                                                                                                                                                                         
and offer_id=526
) b, offer c, spr_msisdn d
where a.SUBS_ID=b.SUBS_ID
and PRICE_PLAN_ID=offer_id
and acc_nbr>001099
and acc_nbr=msisdn) a, (select distinct b.*,price_plan_id, offer_name,SUBS_UPP_INST_ID from 
(select a.*, price_plan_id from
(select subs_id, max(SUBS_UPP_INST_ID) SUBS_UPP_INST_ID from
(select subs_id,max(SUBS_UPP_INST_ID) SUBS_UPP_INST_ID from subs_upp_inst where 
price_plan_id =4215
and exp_date is not null and trunc(exp_date)=trunc(sysdate-1)
having count(*)>=1
group by subs_id
union all
select subs_id,max(SUBS_UPP_INST_ID) SUBS_UPP_INST_ID from subs_upp_inst where 
price_plan_id =4214
and exp_date is not null and trunc(exp_date)=trunc(sysdate-1)
having count(*)>=1
group by subs_id)
group by subs_id) a, subs_upp_inst b
where a.SUBS_UPP_INST_ID=b.SUBS_UPP_INST_ID) a, (select a.subs_id, a.acc_nbr from                                                                                                                                                                                                                                
(select max(subs_id) subs_id, acc_nbr from subs                                                                                                                                                                                                                                                                 
having count(*)>=1                                                                                                                                                                                                                                                                                              
group by acc_nbr) a, prod b                                                                                                                                                                                                                                  
where a.subs_id=prod_id                                                                                                                                                                                                                                                                         
and offer_id=526
) b, offer c, spr_msisdn d
where a.SUBS_ID=b.SUBS_ID
and PRICE_PLAN_ID=offer_id
and acc_nbr>001099
and acc_nbr=msisdn) b, prod c where a.subs_id=b.subs_id
and a.subs_id=prod_id
and SUBS_PLAN_ID not in (3422,3423,2308,3818,3908,4206)