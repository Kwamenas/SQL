desc SUBS_UPP_INST

****UPDATING BAL EXP_DATE*********
UPDATE BAL SET EXP_DATE=EXP_DATE+6 WHERE BAL_ID IN (
SELECT BAL_ID FROM BAL where exp_date is not null 
and to_char(to_date(substr(exp_date,1,10), 'yyyy-mm-dd'),'yyyy-mm-dd') >= to_char(sysdate-5,'yyyy-mm-dd')
--WHERE  EXP_DATE >='2019-01-03 00:00:00.000000'
and acct_res_id not in (1,18)
and gross_bal <>0
and consume_bal<>-gross_bal
)


select bal_id/*, acct_id,eff_date,exp_date old_exp_date, 
to_char(to_date(substr(EXP_DATE,1,10),'yyyy-mm-dd')+5,'yyyy-mm-dd')||' '||substr(EXP_DATE,12) new_exp_Date*/ from  bal where exp_date is not null 
and to_char(to_date(substr(exp_date,1,10), 'yyyy-mm-dd'),'yyyy-mm-dd') >= to_char(sysdate-5,'yyyy-mm-dd')
--and to_char(to_date(substr(eff_date,1,10), 'yyyy-mm-dd'),'yyyy-mm-dd')>='2019-10-01'
and acct_res_id IN (3,2)


UPDATE BAL SET EFF_DATE='2019-01-07 09:00:00.000000' WHERE BAL_ID IN (
select BAL_ID from bal where eff_date like '%2019-01-07%' and acct_res_id=2 and exp_date like '%2019-02-05%'
)



****ULIMITED EXP******




SELECT * FROM BAL WHERE ACCT_ID='6023460' AND EXP_DATE >='2019-01-03 00:00:00.000000'


where acct_id='78015333' order by exp_date desc

select * from subs where acc_nbr='186148'



















##### 1####

select distinct a.cust_name,a.phone_number,a.acc_nbr,a.acct_id,bal_id,a.old_exp_date,a.new_exp_date,a.Total_Balance_Left
from (select a.*,to_char(to_date(substr(old_exp_date,1,10),'yyyy-mm-dd')+5,'yyyy-mm-dd')||' '||substr(old_exp_date,12) new_exp_Date
from (select cust_name,acc_nbr, phone_number, acct_id,max(old_exp_date) old_exp_date,
sum(Total_Balance_Left) Total_Balance_Left from (select cust_name,acc_nbr, phone_number, a.acct_id,eff_date,exp_date old_exp_date, 
round((gross_bal+reserve_bal+consume_bal)/(-1024*1024),3) Total_Balance_Left from  bal a, subs b, cust c where exp_date is not null 
and to_char(to_date(substr(exp_date,1,10), 'yyyy-mm-dd'),'yyyy-mm-dd') >= to_char(sysdate-3,'yyyy-mm-dd')
and to_char(to_date(substr(eff_date,1,10), 'yyyy-mm-dd'),'yyyy-mm-dd') between '2019-10-01' and '2019-12-12'
and acct_res_id IN (3,2)
and gross_bal+reserve_bal+consume_bal<0
and a.acct_id=b.acct_id
and b.cust_id=c.cust_id)
group by acct_id,cust_name,phone_number,acc_nbr) a) a,
((select cust_name, phone_number, acct_id,max(bal_id) bal_id
from (select cust_name, phone_number, bal_id, a.acct_id,eff_date,exp_date old_exp_date, 
to_char(to_date(substr(EXP_DATE,1,10),'yyyy-mm-dd')+5,'yyyy-mm-dd')||' '||substr(EXP_DATE,12) new_exp_Date,
gross_bal+reserve_bal+consume_bal Total_Balance_Left from  bal a, subs b, cust c where exp_date is not null 
and to_char(to_date(substr(exp_date,1,10), 'yyyy-mm-dd'),'yyyy-mm-dd') >= to_char(sysdate-3,'yyyy-mm-dd')
and to_char(to_date(substr(eff_date,1,10), 'yyyy-mm-dd'),'yyyy-mm-dd') between '2019-10-01' and '2019-12-12'
and acct_res_id IN (3,2)
and gross_bal+reserve_bal+consume_bal<0
and a.acct_id=b.acct_id
and b.cust_id=c.cust_id)
group by cust_name, phone_number, acct_id)) b
where a.acct_id=b.acct_id
order by 1



##### 2 ######
select cust_name, phone_number, bal_id, a.acct_id,eff_date,exp_date old_exp_date, 
to_char(to_date(substr(EXP_DATE,1,10),'yyyy-mm-dd')+5,'yyyy-mm-dd')||' '||substr(EXP_DATE,12) new_exp_Date,
gross_bal+reserve_bal+consume_bal Total_Balance_Left from  bal a, subs b, cust c where exp_date is not null 
and to_char(to_date(substr(exp_date,1,10), 'yyyy-mm-dd'),'yyyy-mm-dd') >= to_char(sysdate-3,'yyyy-mm-dd')
and to_char(to_date(substr(eff_date,1,10), 'yyyy-mm-dd'),'yyyy-mm-dd') between '2019-10-01' and '2019-12-12'
and acct_res_id IN (3,2)
and gross_bal+reserve_bal+consume_bal<0
and a.acct_id=b.acct_id
and b.cust_id=c.cust_id
order by 4


#### 3 #####
select bal_id, acct_id,eff_date,exp_date old_exp_date, 
to_char(to_date(substr(EXP_DATE,1,10),'yyyy-mm-dd')+5,'yyyy-mm-dd')||' '||substr(EXP_DATE,12) new_exp_Date from  bal where exp_date is not null 
and to_char(to_date(substr(exp_date,1,10), 'yyyy-mm-dd'),'yyyy-mm-dd') >= to_char(sysdate-3,'yyyy-mm-dd')
and to_char(to_date(substr(eff_date,1,10), 'yyyy-mm-dd'),'yyyy-mm-dd')>='2019-10-01'
and acct_res_id IN (3,2)
order by 4


##### USE THE ONE BELOW ####

------------- for the result of all 3 scenarios -------------------
select distinct a.cust_name,a.phone_number,a.acc_nbr,a.acct_id,bal_id,a.old_exp_date,a.new_exp_date,a.Total_Balance_Left
 from (select a.*,
case when to_char(to_date(substr(old_exp_date,1,10), 'yyyy-mm-dd'),'yyyy-mm-dd') /*between '2019-12-09' and '2019-12-12'*/ = to_char(sysdate-5,'yyyy-mm-dd')
then to_char(sysdate+5,'yyyy-mm-dd')||' '||substr(old_exp_date,12)
when to_char(to_date(substr(old_exp_date,1,10), 'yyyy-mm-dd'),'yyyy-mm-dd') >= to_char(sysdate-5,'yyyy-mm-dd')
then to_char(to_date(substr(old_exp_date,1,10),'yyyy-mm-dd')+6,'yyyy-mm-dd')||' '||substr(old_exp_date,12)
end new_exp_Date
from (select cust_name,acc_nbr, phone_number, acct_id,max(old_exp_date) old_exp_date,
sum(Total_Balance_Left) Total_Balance_Left from (select cust_name,acc_nbr, phone_number, a.acct_id,eff_date,exp_date old_exp_date, 
round((gross_bal+reserve_bal+consume_bal)/(-1024*1024),3) Total_Balance_Left from  bal a, subs b, cust c where exp_date is not null 
and to_char(to_date(substr(exp_date,1,10), 'yyyy-mm-dd'),'yyyy-mm-dd') >= to_char(sysdate-5,'yyyy-mm-dd')
--and to_char(to_date(substr(eff_date,1,10), 'yyyy-mm-dd'),'yyyy-mm-dd') between '2019-10-01' and '2019-12-12'
and acct_res_id IN (3,2)
and gross_bal+reserve_bal+consume_bal<0
and a.acct_id=b.acct_id
and b.cust_id=c.cust_id)
group by acct_id,cust_name,phone_number,acc_nbr) a) a,
((select cust_name, phone_number, acct_id,max(bal_id) bal_id
 from (select cust_name, phone_number, bal_id, a.acct_id,eff_date,exp_date old_exp_date, 
to_char(to_date(substr(EXP_DATE,1,10),'yyyy-mm-dd')+6,'yyyy-mm-dd')||' '||substr(EXP_DATE,12) new_exp_Date,
gross_bal+reserve_bal+consume_bal Total_Balance_Left from  bal a, subs b, cust c where exp_date is not null 
and to_char(to_date(substr(exp_date,1,10), 'yyyy-mm-dd'),'yyyy-mm-dd') >= to_char(sysdate-5,'yyyy-mm-dd')
--and to_char(to_date(substr(eff_date,1,10), 'yyyy-mm-dd'),'yyyy-mm-dd') between '2019-10-01' and '2019-12-12'
and acct_res_id IN (3,2)
and gross_bal+reserve_bal+consume_bal<0
and a.acct_id=b.acct_id
and b.cust_id=c.cust_id)
group by cust_name, phone_number, acct_id)) b
where a.acct_id=b.acct_id
order by 1



------------- update query ---------------------
update bal set gross_bal=gross_bal-2097152,exp_date='NEW_EXP_DATE' where acct_id=ACCT_ID and bal_id=BAL_ID


------------------ UNLIMITED SUBSCRIPTIONS --------------------
select distinct a.*,to_char(a.eff_date,'yyyymmddhh24mi') spr_new_eff_date, '10022' PAKID from
(SELECT cust_name, phone_number,acc_nbr, subs_id, offer_name, price_plan_id, MAX(eff_date) eff_date, MAX(EXP_date) EXP_date,crm_new_exp_date, SPR_new_exp_date FROM 
(select cust_name, phone_number, acc_nbr, subs_id, offer_name, price_plan_id, max(eff_date) eff_date, max(exp_date) exp_date, 
max(crm_new_exp_date) crm_new_exp_date,max(spr_new_exp_date) spr_new_exp_date from
(select a.*,to_char(crm_new_exp_date,'yyyymmddhh24mi') spr_new_exp_date from (select a.*, 
case when trunc(a.exp_date)=trunc(sysdate+1) then sysdate+2
else sysdate+1
end crm_new_exp_date from (select cust_name, phone_number,acc_nbr, a.subs_id, offer_name, price_plan_id, max(a.eff_date) eff_date, max(a.exp_date) exp_date from subs_upp_inst a, offer b, subs c, cust d where price_plan_id=11103 
and offer_id=price_plan_id
and a.state='A'
and trunc(a.EFF_DATE)>=trunc(sysdate-4)
and a.subs_id=c.subs_id
and c.cust_id=d.cust_id
group by cust_name,phone_number, acc_nbr, a.subs_id, offer_name, price_plan_id) a) a
union all
select cust_name, phone_number,acc_nbr, a.subs_id, offer_name, price_plan_id, max(a.eff_date) eff_date, max(a.exp_date) exp_date, sysdate+1 crm_new_exp_date,to_char(sysdate+1,'yyyymmddhh24mi') spr_new_exp_date from subs_upp_inst a, offer b, subs c, cust d where price_plan_id=11103 
and offer_id=price_plan_id
and a.state='A'
and trunc(a.EXP_DATE) between '09-Dec-2019' and '13-Dec-2019'
and a.subs_id=c.subs_id
and c.cust_id=d.cust_id
group by cust_name,phone_number, acc_nbr, a.subs_id, offer_name, price_plan_id)
group by cust_name,phone_number, acc_nbr, subs_id, offer_name, price_plan_id)
GROUP BY cust_name, phone_number,acc_nbr, subs_id, offer_name, price_plan_id,crm_new_exp_date,SPR_new_exp_date
union all
select cust_name, phone_number, acc_nbr, subs_id, offer_name, price_plan_id, max(eff_date) eff_date, max(exp_date) exp_date, max(exp_date)+5 new_exp_date,to_char(max(exp_date)+5,'yyyymmddhh24mi') spr_new_exp_date
 from (select cust_name, phone_number, acc_nbr, a.subs_id, offer_name, price_plan_id, max(a.eff_date) eff_date, max(a.exp_date) exp_date, max(a.exp_date)+5 new_exp_date,to_char(max(a.exp_date)+5,'yyyymmddhh24mi') spr_new_exp_date from subs_upp_inst a, offer b,subs c, cust d where price_plan_id in (11108,11106,8704,8703,8803)
and offer_id=price_plan_id
and a.state='A'
and trunc(a.eff_DATE)>=trunc(sysdate-4)
and a.subs_id=c.subs_id
and c.cust_id=d.cust_id
group by cust_name,phone_number, acc_nbr, a.subs_id, offer_name, price_plan_id
union all
select cust_name,phone_number, acc_nbr, a.subs_id, offer_name, price_plan_id, max(a.eff_date) eff_date, max(a.exp_date) exp_date, sysdate+5 crm_new_exp_date,to_char(sysdate+5,'yyyymmddhh24mi') spr_new_exp_date from subs_upp_inst a, offer b,subs c, cust d where price_plan_id in (11108,11106,8704,8703,8803)
and offer_id=price_plan_id
and a.state='A'
and trunc(a.exp_DATE) between '09-Dec-2019' and '13-Dec-2019'
and a.subs_id=c.subs_id
and c.cust_id=d.cust_id
group by cust_name,phone_number, acc_nbr, a.subs_id, offer_name, price_plan_id)
group by cust_name,phone_number, acc_nbr, subs_id, offer_name, price_plan_id
) a
order by 1







###case 2

(select distinct bal_id,cust_name, phone_number, a.acct_id,eff_date,exp_date old_exp_date, 
to_char(to_date(substr(EXP_DATE,1,10),'yyyy-mm-dd')+10,'yyyy-mm-dd')||' '||substr(EXP_DATE,12) new_exp_Date
/*gross_bal+reserve_bal+consume_bal Total_Balance_Left*/ from  bal a, subs b, cust c where exp_date is not null 
and to_char(to_date(substr(exp_date,1,10), 'yyyy-mm-dd'),'yyyy-mm-dd') between to_char(sysdate-15,'yyyy-mm-dd') and to_char(sysdate-3,'yyyy-mm-dd')
--and to_char(to_date(substr(eff_date,1,10), 'yyyy-mm-dd'),'yyyy-mm-dd') between '2019-10-01' and '2019-12-12'
and acct_res_id =3
and gross_bal+reserve_bal+consume_bal<0
and a.acct_id=b.acct_id
and b.cust_id=c.cust_id)


###case3
select 233||C.ACC_NBR,a.*,b.offer_name from subs_upp_inst a , offer b,SUBS C  where 
a.price_plan_id=b.offer_id
AND A.SUBS_ID=C.SUBS_ID
---and a.subs_id='2145920'
and trunc(a.exp_date)between trunc(sysdate-7) AND trunc(sysdate



###case2 osa
select distinct a.*, max_bal_id from (select distinct cust_name,acc_nbr,a.acct_id,phone_number,email, (DATA_LEFT*-1) DATA_LEFT from
(SELECT ACCT_ID,SUM(DATA_LEFT) DATA_LEFT FROM
(SELECT ACCT_ID,GROSS_BAL,CONSUME_BAL,(GROSS_BAL+CONSUME_BAL+RESERVE_BAL) DATA_LEFT,EXP_DATE FROM BAL WHERE exp_date<>'NULL'
and trunc(TO_DATE(SUBSTR(EXP_DATE, 1, 19), 'yyyy-mm-dd hh24:mi:ss')) between '16-Feb-2020' and '28-Feb-2020'
AND ACCT_RES_ID=3)
GROUP BY ACCT_ID) a, (select a.subs_id,cust_name, a.acc_nbr, phone_number, email,acct_id from
(select max(subs_id) subs_id, acc_nbr from subs
having count(*)>=1
group by acc_nbr) a,(select * from subs) b, cust c, prod d
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
(select acct_id, max(exp_date) max_exp_date from bal where acct_res_id=3
group by acct_id) a, (select * from bal where acct_res_id=3) b
where a.acct_id=b.acct_id
and max_exp_date=exp_date) 
having count(*)>=1
group by acct_id,max_exp_date) b
where a.acct_id=b.acct_id


update bal set gross_bal=gross_bal-9638622,exp_date=exp_date+10 where bal_id='14101905'



select * from bal where acct_id='10029063' and acct_res_id=3

 8928879