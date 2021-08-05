CUST_NAME,PHONE_NUMBER,EMAIL,ACC_NBR,OFFER_NAME,PROD_STATE_DATE ACTIVATION_DATE,E.COMMENTS




SELECT A.CUST_TYPE_NAME,A.ACC_NBR,C.OFFER_NAME,A.CUST_NAME,A.PHONE_NUMBER,A.EMAIL,A.BIRTHDAY_DAY,A.PREPAIDPOSTPAID FROM (
select b.*,d.cust_type_name,c.cust_id,c.cust_name,c.phone_number,c.email,c.birthday_day,offer_name PREPAIDPOSTPAID from prod a, subs b,cust c,cust_type d,offer e where 
b.subs_id=a.prod_id
and c.cust_id=b.cust_id
and c.cust_type=d.cust_type
and a.offer_id='526'
and a.offer_id=e.offer_id
and prod_id in (
select max (subs_id) subs_id  from subs  where acc_nbR IN (select acc_nbr from acc_nbr)
having count(*)>=1
group by acc_nbr) )A, SUBS B,OFFER C,PROD D
WHERE A.SUBS_ID=B.SUBS_ID
AND B.SUBS_ID=D.PROD_ID
AND D.SUBS_PLAN_ID=C.OFFER_ID
AND PROD_STATE IN ('A','G','E','D','H')
AND trunc(D.PROD_STATE_DATE) BETWEEN '01-JAN-15' AND '28-AUG-19'

 
 CUST_TYPE,offer


select * from cust where cust_id='93750'
select * from subs where acc_nbr='151498'
SELECT * FROM PROD WHERE PROD_ID='12816073'
select * from cust_type
select * from offer where offer_id='526'


SELECT acc_nbr,b.eff_date,b.exp_date,offer_name from 
(select max(subs_upp_inst_id)subs_upp_inst_id,subs_id from subs_upp_inst where subs_id in(

select max (subs_id) subs_id  from subs  where acc_nbr IN ('106232',
'107607',
'107505')
having count(*)>=1
group by acc_nbr

)
having count(*) >=1
group by subs_id) A ,(Select * from subs_upp_inst) B ,offer C, subs D
where a.subs_upp_inst_id=b.subs_upp_inst_id
and b.price_plan_id=c.offer_id
and a.subs_id=d.subs_id


3191412	495485 26th jan
3321058	495637 28-AUG-20


select * from subs_upp_inst where subs_id='495637'