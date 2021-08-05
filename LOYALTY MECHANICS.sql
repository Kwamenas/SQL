select * from loyalty_bzness_cust where data_num in
(select DATA_NUM from loyalty_bzness_cust
minus
(

select distinct DATA_NUM,trunc(COMPLETED_DATE) from loyalty_bzness_cust a, subs_upp_inst b where price_plan_id in (10904,10905,10908,10909,10911,10912,10906,10907,10910)
--and trunc(sysdate)-trunc(COMPLETED_DATE)>=45
and a.subs_id=b.subs_id and MIGRATION_STATUS=0
intersect
select DATA_NUM from loyalty_bzness_cust));



update LOYALTY_BZNESS_CUST set last_purchase_date=ORIGINAL_MIGRATION_DATE

select * from LOYALTY_BZNESS_CUST

SELECT * FROM subs_upp_inst where price_plan_id in (10904,10905,10908,10909,10911,10912,10906,10907,10910)
and subs_id='12137115'


SELECT * FROM OFFER WHERE OFFER_NAME LIKE'%Loyalty Business%' and offer_type=3
10206
10207

create table loyalty_bzness_cust as (
DELETE from loyalty_cust where  original_migration_date='19-08-19 20:05:10'
)


select * from subs where subs_id='411535'

insert into loyalty_bzness_cust(CUST_NAME,DATA_NUM,ORGINAL_DEFAULT_PLAN,ORIGINAL_MIGRATION_DATE,NEW_MIGRATION_DATE,NEW_DEFAULT_PLAN,MIGRATION_STATUS,
LAST_PURCHASE_DATE,SUBS_ID)VALUES('Ernest Dankwah','190979','Loyalty Offer','19-08-19 20:04:25',NULL,NULL,0,NULL,'12137446')


select * from loyalty_bzness_cust where subs_id='12137115'




select a.*,to_char(completed_date,'dd-mm-yyyy hh24:mi:ss') completed_date from  loyalty_bzness_cust a, subs_upp_inst b where price_plan_id in (10805,10610,10806,10703,10704,10804,8803,8704,8703)
and a.subs_id=b.subs_id and MIGRATION_STATUS=0
and state='A' and data_num>001099;



update Loyalty_Cust set LAST_PURCHASE_DATE=completed_date where subs_id='11878312'
179550





update subs_upp_inst set state='X' where subs_upp_inst_id in (
select /*A.SUBS_ID*/a.subs_upp_inst_id /*a.*,offer_name*/ from subs_upp_inst a , offer b  where 
a.price_plan_id=b.offer_id
and subs_id in (
select subs_id from loyalty_cust where new_migration_date like '%01-11-2019%'
)
and a.price_plan_id in ('1916',
'1917',
'10605',
'10606')
)




















