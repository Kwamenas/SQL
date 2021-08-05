select * from acct_res


delete bal where bal_id in ('8851','8847','8849')


update bal set gross_bal=0 where bal_id in 

select * from bal where acct_id='10090001' order by eff_date desc


select * from subs where subs_id='739001'

select * from subs_acm


update subs_acm set value='20191217' where subs_id='739001' and resource_id=7;

insert into subs_acm (SUBS_ID,RESOURCE_ID,VALUE) VALUES ('739048','7','20190117')


select * from subs where 
