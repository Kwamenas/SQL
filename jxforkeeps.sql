select * from offer where offer_name like'%Abranti3%'
8615

select count(acc_nbr) acc_nbr,offer_name from subs a,prod b,offer c
where subs_id=prod_id
and prod_state='A'
and b.subs_plan_id=c.offer_id
--and c.offer_id=3826
group by offer_name

select * from subs where acc_nbr='000322'

select * from prod where prod_id='1644702'

select * from offer where offer_id='10504'





select acc_nbr from subs where cust_id ='114170'

select * from cust where cust_name like'%Ecoband Net%'


select max (subs_id) subs_id,acc_nbr  from subs  where acc_nbr IN (select msisdn from sme_migration_loyalty)
having count(*)>=1
group by acc_nbr


create table loyalty_cust2 as loyalty_cust 1



select * from  loyalty_cust2
  AS (SELECT * FROM loyalty_cust)

update loyalty_cust set original_migration_date=to_char(sysdate-7,'dd-mm-yy hh24:mi:ss') where data_num in (
select data_num from loyalty_cust where original_migration_date is null )


select * from loyalty_cust where data_num='190979'

update loyalty_cust set original_migration_date=to_char(sysdate-7,'dd-mm-yy hh24:mi:ss') where data_num='190979'

select to_char(sysdate,'dd-mm-yyy HH24:mi:ss') from dual