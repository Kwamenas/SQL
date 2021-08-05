
---to get number of subs id available
select count(a.subs_id) from subs a,prod b
where a.subs_id=b.prod_id
and b.prod_state<>'B';

select * from PROD_STATE

select * from prod where prod_id='9970398'



select a.acc_nbr,b.prod_state from subs a,prod b
where a.subs_id=b.prod_id
and acc_nbr in();


select a.acc_nbr, iccid, imsi from subs a, cust b, prod c, (select max(subs_id) subs_id, acc_nbr from order_item where subs_plan_id=968 and order_state='C'
and subs_event_id=99
having count(*)>=1
group by acc_nbr,subs_event_id) d, acc_nbr e, sim_nbr f, sim_card g
where a.subs_id=prod_id
and a.subs_id=d.subs_id
and a.cust_id=b.cust_id
and a.acc_nbr=d.acc_nbr
and a.acc_nbr=e.acc_nbr
and e.ACC_NBR_ID=f.ACC_NBR_ID
and f.SIM_CARD_ID=g.SIM_CARD_ID
and prod_state='I'

----DRM--

select * from drm.drm_res_inst
--
--res_type--model_type--mostly must be B
--RES_MODEL=GM_MODEL
---RES_STATE c SOLD
---WHI_ID Dealer ID
select * from gm_model

delete from gm_goods_inst where goods_sn in 
()

update prod set prod_state='E' where prod_id in (
select prod_id from prod, subs where 
subs_id=prod_id
--and prod_state='A'
and prod_id in (
--update bal set acct_res_id=2 where acct_res_id=9 and acct_id  in (
--select acct_id from subs where subs_id in(
select max (subs_id) subs_id  from subs  where acc_nbr IN ('000350',
'000138',
'118109',
'000290',
'000201',
'000021',
'000349',
'000311',
'179834',
'000163',
'000316',
'000327')
having count(*)>=1
group by acc_nbr
)
)
)

select * from prod_state

select * from sim_card

update sim_card set org_id='' where iccid between '892330000000112479' and  '892330000000112480'


select * from subs where subs_id='12416554'


update bal set gross_bal=gross_bal-1300 where acct_res_id=1 and acct_id ='127014493'



update prod set prod_state='G' where prod_id in ()


select * from subs where acc_nbr='149729'

select * from prod where prod_id='12496533'