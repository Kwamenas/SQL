
SELECT ACC_NBR FROM SUBS A,PROD B
WHERE A.SUBS_ID=B.PROD_ID
AND PROD_ID IN (
select PROD_ID from  prod where prod_state='B'
)


select ma
select cust_id from cust where cust_name like'%233%'
and first_name is null


select /*prod_id*/acc_nbr from prod, subs where 
subs_id=prod_id
and prod_state= 'I'
and prod_id in (
--select acct_id from subs where subs_id in(
select max (a.subs_id) subs_id,b.acc_nbr , offer_name  from subs a,acc_nbr b,subs_upp_inst c,offer d /*where a.acc_nbr ='101671'*/
where a.acc_nbr=b.acc_nbr
and a.subs_id=c.subs_id
and d.offer_id=c.price_plan_id
and c.price_plan_id!='8506'
--and b.acc_nbr_state='A'
having count(*)>=1
group by a.acc_nbr

)



select * from offer where offer_name like'%Biz%'





select * from prod where prod_id='168208'


2465726


----provisioned acc_nbr=C,sim_state=C,prod_state=I

-----TERMINATED acc_nbr=A,sim_stat=I,prod_state=G

select * from acc_nbr where acc_nbr='101671'


select * from prod where prod_id='2465726'


select * from acc_nbr_state

* from prod_state

select * from sim_nbr where acc_nbr_id='108718'

select * from sim_card where sim_card_id='28806' where iccid='892330000000003157'


select * from sim_state


select * from prod where prod_id='2465726'

create table MARKETING_TERMINATION (
ACC_NBR VARCHAR2(60) )


select * from prod

update prod set prod_state='B' where prod_id in (
select /*prod_id*/ acc_nbr/*,prod_state*/ from prod, subs where 
subs_id=prod_id
and prod_state ='B'
and prod_id in (
SELECT MAX(SUBS_ID)SUBS_ID FROM SUBS A,MARKETING_INACTIVE27K B WHERE 
A.ACC_NBR=B.ACC_NBR
HAVING COUNT(*)>=1
GROUP BY A.ACC_NBR
)
)


create table MARKETING_INACTIVE27K (
ACC_NBR VARCHAR2(60) )


