select acct_id from subs where subs_id in(
(select max(subs_id)subs_id/**,acc_nbr**/ from subs 
where acc_nbr in ()
having count(*)>=1
group by acc_nbr)
)

32014400,
32015423,
11015555,
55015234,
79013157,
82013345,
59013590
select  acc_nbr,acc_nbr_state from acc_nbr where acc_nbr in(





select * from subs where acc_nbr='182556'

select * from cust where cust_id='163105'

select * from bal where acct_id='81013964' order by exp_Date desc 

select* from acct_book where acct_id='32015423'



select * from prod where prod_id='1454186'
update prod set prod_state='B' where prod_id='1454186'

select * from acc_nbr where acc_nbr='148280'

update acc_nbr set acc_nbr_state='A' where acc_nbr='148280'

update bal set acct_res_id= where bal_id='3025017'


select * from order_item where order_nbr='2017101001210802'

update order_item set order_state='E' where order_nbr='2017101001210802'

2017-06-22 16:15:28.000000
select * from cust where phone_number='0244287138'

update cust set phone_number='0000000000' where cust_id='113690'


select * from acc_nbr where acc_nbr_state='A' AND acc_nbr_type_id=6
update acc_nbr set acc_nbr_state='A' where acc_nbr_id='166102'

select * from price where price_id='37468'

select * from offer

select * from price


SELECT * FROM SUBS WHERE ACC_NBR='151116'

SELECT * FROM PROD WHERE PROD_ID='2387120'

SELECT * FROM PROD_STATE




SELECT * FROM ORDER_ITEM WHERE ACC_NBR='163945'


select * from sim_card where iccid='892330000000081281'

SELECT * FROM ACC_NBR_TYPE

SELECT * FROM ORDER_STATE

SELECT ACC_NBR FROM ACC_NBR WHERE ACC_NBR_STATE='A'  AND ACC_NBR_TYPE_ID=6
update acc_nbr set acc_nbr_state='C' WHERE ACC_NBR=


select * from sim_card where iccid='892330000000075681' and is_binding_flag='N'

update sim_card set is_binding_flag='N' where iccid='892330000000075681'




118201, 892330000000079358 : The number has been bound with SIM card. 
151099, 892330000000079359 : The number has been bound with SIM card. 
171443, 892330000000079360 : The number has been bound with SIM card. 
212335,  : The ICCID can not be null. 

SELECT * FROM acc_nbr WHERE ACC_NBR in (
'215534',
'215535',
'215536',
'215537')
UPDATE PROD SET PROD_STATE='A' WHERE ACC_NBR='118201'


SELECT * FROM PROD WHERE PROD_ID='649524'


select iccid,Sim_state from sim_card where iccid in 



update bal set gross_bal=-0 where acct_id=43015006 and bal_id ='3015323' ('3015323',' 3015337')


select acc_nbr from CRMSPRHSS
minus
select a.acc_nbr from 
(select a.subs_id, a.acc_nbr from
(select max(subs_id) subs_id, acc_nbr from subs
having count(*)>=1
group by acc_nbr) a,(select * from subs) b
where a.subs_id=b.subs_id) a, prod b,CRMSPRHSS c
where subs_id=prod_id
and a.acc_nbr=c.acc_nbr
and prod_state<>'B'

select distinct trim(subs_id) subs_id from subs_upp_inst where price_plan_id in (7407,7406,7405,7404,7403)
and state='A' and EXP_DATE>sysdate
and ceil(to_date(to_char(sysdate, 'yyyy/mm/dd'),'yyyy/mm/dd') - to_date(to_char(COMPLETED_DATE, 'yyyy/mm/dd'),'yyyy/mm/dd')) in (29,59,89);