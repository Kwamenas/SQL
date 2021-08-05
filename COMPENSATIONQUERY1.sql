select 233||C.ACC_NBR,a.*,b.offer_name from subs_upp_inst a , offer b,SUBS C where 
a.price_plan_id=b.offer_id
AND A.SUBS_ID=C.SUBS_ID
and a.subs_id='11268324'
--and a.eff_date not between '01-MAY-20' AND '10-MAY-20'
and a.price_plan_id in ('8703',
'8803',
'11103',
'11108')


select  233||d.ACC_NBR,B.SUBS_UPP_INST_ID,TO_CHAR(B.EFF_DATE,'YYYYMMDDHH24MI')EFF_DATE,TO_CHAR(B.EXP_DATE,'YYYYMMDDHH24MI')EXP_DATE,
TO_CHAR(SYSDATE+7,'YYYYMMDDHH24MI')NEW_EXP_DATE,c.offer_name from 
(select max (subs_id) subs_id  from subs  where acc_nbr IN (Select ACC_NBR from (SELECT ACC_NBR FROM HELIOS WHERE ACC_NBR NOT IN (
(select acc_nbr from HELIOS 
intersect 
select acc_nbr from UNLIMITEDANDDATA)
)AND ACC_NBR='190948') )
having count(*)>=1
group by acc_nbr)a,

select max (subs_upp_inst_id) subs_upp_inst_id   from subs_upp_inst a  /*where a.subs_id='11796984'*/
where price_plan_id in (8703,8803,11103,11108)
and a.subs_id in (select max (subs_id) subs_id  from subs  where acc_nbr IN (Select ACC_NBR from (SELECT ACC_NBR FROM HELIOS WHERE ACC_NBR NOT IN (
(select acc_nbr from HELIOS 
intersect 
select acc_nbr from UNLIMITEDANDDATA)
)AND ACC_NBR='190948') )
having count(*)>=1
group by acc_nbr)
having count(*)>=1
group by a.subs_id,subs_upp_inst b,offer c,subs d
where a.subs_id=b.subs_id
and d.subs_id=a.subs_id
and d.subs_id=b.subs_id
and b.price_plan_id=c.offer_id
--and b.eff_date not between '01-MAY-20' and '10-MAY-20'
and trunc(b.exp_date)>='12-MAY-20'
--and trunc(b.exp_date) >= trunc(sysdate)
and price_plan_id in ('8703',
'8803',
'11103',
'11108')
and a.subs_id='12137464'

202005131604
























(select a.subs_id,acc_nbr from 
(select max (subs_id) subs_id  from subs  where acc_nbr IN (Select ACC_NBR from HELIOS where acc_nbr=190948)
having count(*)>=1
group by acc_nbr) A,subs b
where a.subs_id=b.subs_id)




select distinct a.*, max_bal_id from (select distinct cust_name,acc_nbr,a.acct_id,phone_number,email, (DATA_LEFT*-1) DATA_LEFT from
(SELECT ACCT_ID,SUM(DATA_LEFT) DATA_LEFT FROM
(SELECT ACCT_ID,GROSS_BAL,CONSUME_BAL,(GROSS_BAL+CONSUME_BAL+RESERVE_BAL) DATA_LEFT,EXP_DATE FROM BAL WHERE exp_date<>'NULL'
and trunc(TO_DATE(SUBSTR(EXP_DATE, 1, 19), 'yyyy-mm-dd hh24:mi:ss'))BETWEEN '10-MAY-2020' and '31-DEC-2020'
--and trunc(TO_DATE(SUBSTR(EFF_DATE, 1, 19), 'yyyy-mm-dd hh24:mi:ss')) between '09-MAY-2020' and '11-MAY-2020'
AND ACCT_RES_ID=2)
GROUP BY ACCT_ID) a, 
(select a.subs_id,cust_name, a.acc_nbr, phone_number, email,acct_id from
(select a.subs_id,acc_nbr from 
(select max (subs_id) subs_id  from subs  where acc_nbr IN ('191686',
'121328',
'133052',
'133144',
'185214',
'119827',
'145949',
'201823',
'203303',
'144496',
'203010',
'109835',
'179568',
'199546',
'201590',
'201372',
'131685',
'119415',
'192899',
'191034')
having count(*)>=1
group by acc_nbr) A,subs b
where a.subs_id=b.subs_id) a,
(select * from subs) b, cust c, prod d
where a.subs_id=b.subs_id
and a.subs_id=d.prod_id
and prod_state='A'
and b.cust_id=c.cust_id
and d.offer_id=526) b
where DATA_LEFT/(-1)>0
and a.acct_id=b.acct_id
and subs_id not in ((select subs_id from subs_upp_inst a, offer b
where price_plan_id=offer_id
and lower(offer_name) like '%staff%' and a.state='A'))
and ACC_NBR >000099) a, (select acct_id, max_exp_date, max(bal_id) max_bal_id from 
(select a.*, bal_id from
(select acct_id, max(exp_date) max_exp_date from bal where acct_res_id=2
group by acct_id) a, (select * from bal where acct_res_id=2) b
where a.acct_id=b.acct_id
and max_exp_date=exp_date) 
having count(*)>=1
group by acct_id,max_exp_date) b
where a.acct_id=b.acct_id


141455
190958
177834


select * from subs where acc_nbr='190415'

select * from bal where acct_id='9021413' order by eff_date desc

update bal set exp_date='2020-04-28 21:46:51.000000' where bal_id='162896'

select * from subs_upp_inst where subs_id='666240'