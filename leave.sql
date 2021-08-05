select * from bfm_org

129

update sim_card set org_id='129' where iccid in ()



select * from bal where acct_id='9043446' order by eff_date desc;

update bal set gross_bal=-3800 where bal_id='85877'

update bal set acct_res_id=2 where acct_res_id=7 where acct_id='66013012' in ('7540769','7540561')


update bal set exp_date='2018-01-21 12:04:12.000000' where bal_id='7142101'



select * from subs where acc_nbr='000130'

select * from bal where acct_id='85013046' order by eff_Date desc

update bal set reserve_bal=0 where bal_id='15701'

select * from sim_nbr where acc_nbr_id='107272'

select * from sim_card where sim_card_id='3146'


select * from acc_nbr where acc_nbr='100225'



delete from bal where bal_id='7026587'


select * from sim_card where iccid='892330000000080372'

select * from subs_upp_inst

select * from offer where offer_name like'%Staff%' and offer_type='4'


select a.subs_id,b.offer_name,acct_id from subs_upp_inst a,offer b,subs c where price_plan_id in('2003','208','210','209','211','135','767','3403')
and a.price_plan_id=b.offer_id and a.state='A'
and a.subs_id=c.subs_id







select 'update bal set gross_bal=gross_bal'||init_bal,' where acct_res_id=2 and acct_id='||b.acct_id,'and  bal_id='||bal_id,';'
  from subs_upp_inst a,(select a.subs_id, a.acc_nbr, cust_id, acct_id from
(select max(subs_id) subs_id, acc_nbr from subs
having count(*)>=1
group by acc_nbr) a,(select * from subs) b
where a.subs_id=b.subs_id) b,offer c,cust d, bal e
 where a.price_plan_id in
       (select a.offer_id from offer a where a.offer_name like 'Staff%')
   and a.state = 'A'
   and a.subs_id=b.subs_id
   and a.price_plan_id=c.offer_id
   and b.cust_id=d.cust_id
   and b.acct_id=e.acct_id
   and acct_res_id=2 and e.eff_date='2017-12-01 00:00:00.000000' and e.exp_date='2018-01-01 00:00:00.000000'