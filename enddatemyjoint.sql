select * from subs where acc_nbr=147318;
147318
701694

SELECT * FROM OFFER WHERE OFFER_ID='1307'

SELECT * FROM OFFER WHERE OFFER_NAME like '%Plus%'
1307


SELECT * FROM OFFER WHERE OFFER_ID IN (3422,3423,2308,3818,3908,4206)

select * from subs_upp_inst where price_plan_id=3422

select * from prod where prod_id='701694'--subs_plan_id=3422

select * from subs---subs_id

select c.acc_nbr,a.price_plan_id,a.eff_date,a.exp_date,a.state,a.subs_upp_inst_id, b.offer_name
from subs_upp_inst a left join  offer b on 
a.price_plan_id=b.offer_id
left join  subs c on a.subs_id=c.subs_id





select c.acc_nbr,a.price_plan_id,a.eff_date,a.exp_date,a.state,a.subs_upp_inst_id, b.offer_name
from subs_upp_inst a left join  offer b on 
a.price_plan_id=b.offer_id
left join prod c on 
a.subs_id=c.prod_id
left join  subs c on 
a.subs_id=c.subs_id
where price_plan_id in ('1914',
'1915',
'1918',
'1919',
'1920',
'1921')
and b.offer_id not in ('4215','4214')
---and a.eff_date LIKE'%04-JAN-17%'
and trunc(a.exp_date)<trunc(sysdate)
and a.exp_date is not null
and c.SUBS_PLAN_ID not in (3422,3423,2308,3818,3908,4206)
ORDER BY PRICE_PLAN_ID ASC











****OSAs own*******


[?7/?11/?2017 1:00 PM] David Osabutey: 

select a.*, offer_name, b.eff_date, b.exp_date, acc_nbr from (select subs_id,max(SUBS_UPP_INST_ID) SUBS_UPP_INST_ID from subs_upp_inst where 
price_plan_id  in ('1914','1915','1918','1919','1920','1921')
and exp_date is not null --and trunc(exp_date)<=trunc(sysdate-1)
having count(*)>=1
group by subs_id,price_plan_id) a, subs_upp_inst b, offer c, subs d, prod e, spr_msisdn
where a.subs_id=b.subs_id
and a.subs_id=d.subs_id
and a.SUBS_UPP_INST_ID=b.SUBS_UPP_INST_ID
and price_plan_id=c.offer_id
and a.subs_id=e.prod_id
and SUBS_PLAN_ID not in (3422,3423,2308,3818,3908,4206)
and acc_nbr=msisdn 
and acc_nbr>001099





******COrresction************




select a.*, offer_name, to_char(b.eff_date,'yyyymmddhhmi') eff_date, to_char(b.exp_date,'yyyymmddhhmi') exp_date, acc_nbr from (select subs_id,max(SUBS_UPP_INST_ID) SUBS_UPP_INST_ID from subs_upp_inst where 
price_plan_id  in ('1914','1915','1918','1919','1920','1921')
and exp_date is not null and trunc(exp_date)>=trunc(sysdate-1)
having count(*)>=1
group by subs_id,price_plan_id) a, subs_upp_inst b, offer c, subs d, prod e, spr_msisdn
where a.subs_id=b.subs_id
and a.subs_id=d.subs_id
and a.SUBS_UPP_INST_ID=b.SUBS_UPP_INST_ID
and price_plan_id=c.offer_id
and a.subs_id=e.prod_id
and SUBS_PLAN_ID not in (3422,3423,2308,3818,3908,4206)
and acc_nbr=msisdn
and acc_nbr>001099
order by acc_nbr 



********THOSE WITHOUT JOINT*******
select a.subs_id,a.price_plan_id,a.eff_date,a.exp_date,a.state,a.subs_upp_inst_id, b.offer_name
from subs_upp_inst a,offer b, prod c,subs d
where sub
a.price_plan_id=b.offer_id
and  
subs_id='701694'
and subs_id=c.prod_id
AND price_plan_id in ('1914',
'1915',
'1918',
'1919',
'1920',
'1921')
and b.offer_id not in ('4215','4214')
and trunc(a.exp_date)<trunc(sysdate)
and c.subs_plan_id ='1307'
ORDER BY a.PRICE_PLAN_ID ASC