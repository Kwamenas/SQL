select * from acc_nbr WHERE acc_nbr_state='A' AND ACC_NBR_TYPE_ID='6'----acc_nbr_id
select * from sim_state WHERE ICCID='892330000000058172' SIM_CARD_ID='27772'----sim_card_id,iccid
select * from sim_nbr WHERE ACC_NBR_ID='113237'---sim_card_id,acc_nbr_id

UPDATE SIM_CARD SET SIM_STATE='I' WHERE ICCID='892330000000050717'
SELECT * FROM ACC_NBR WHERE ACC_NBR='157926'


select * from subs where acc_nbr='130517'

select a.acc_nbr,b.ICCID,e.offer_name from acc_nbr a,sim_card b,sim_nbr c,subs_upp_inst d,offer e,subs f
where a.acc_nbr_id=c.acc_nbr_id
and b.sim_card_id=c.sim_card_id
and c.state='A'
and f.acc_nbr=a.acc_nbr
and f.subs_id=d.subs_id
and price_plan_id=offer_id
and offer_type='4'
and offer_name not like '%SPR%'
and offer_name not like '%SWAG%'
and offer_name not like '%Default%'
and offer_name not like '%Assist Plan%'
and offer_name not like '%WhatsApp%'
and offer_name not like '%Facebook%'
and offer_name not like '%Twitter%'
and offer_name not like '%Instagram%'
and offer_name not like '%Youtube%'
and f.subs_id in (
select max(subs_id)subs_id/**,acc_nbr**/ from subs 
where acc_nbr in ('106705',
'130517',
'163831',
'176612',
'180450',
'185228',
'187894',
'188372',
'188667',
'188678',
'189313',
'189317',
'190352',
'190363',
'190373',
'191921',
'197992',
'202622',
'203624')
having count(*)>=1
group by acc_nbr

)







select a.acc_nbr,b.ICCID,e.offer_name from acc_nbr a,sim_card b,sim_nbr c,subs_upp_inst d,offer e,subs f
where a.acc_nbr_id=c.acc_nbr_id
and b.sim_card_id=c.sim_card_id
and c.state='A'
and f.acc_nbr=a.acc_nbr
and f.subs_id=d.subs_id
and price_plan_id=offer_id
and offer_type='4'
and offer_name not like '%SPR%'
and offer_name not like '%SWAG%'
and offer_name not like '%Default%'
and offer_name not like '%Assist Plan%'
and b.ICCID in ('892330000000094696',
'892330000000093519',
'892330000000093512',
'892330000000093510',
'892330000000094386',
)


select * from offer where offer_name='Default'MiFi Starter Pack Basic_Standard

--update sim_card set org_id='' where sim_card_id in (
update sim_card set is_binding_flag='N' where sim_card_id in (
update sim_card set sim_state='I' where sim_card_id in (
select sim_card_id from sim_card where iccid IN ('892330000000110630','892330000000008241','892330000000075782')
)
620140000081463
select * from sim_state set 

620140000018338
620140000065143
620140000110540

select * from acc_nbr_state where sim_card_id ='101697'

update sim_card set is_binding_flag='N' where sim_card_id='101697'

update acc_nbr set acc_nbr_state='A' where acc_nbr in(
select  acc_nbr from acc_nbr where acc_nbr='149775'

)

in (
'104066',
'114001',
'116889',
'149307',
'186847',
'150747',
'104005')
)


update acc_nbr set is_binding_flag='N' where acc_nbr='174802'


181031
104005
116889
164897

select * from sim_nbr set sim_state='I' where iccid='892330000000075048'

select * from acc_nbr_state
update sim_card  set org_id='' where iccid in (


select acc_nbr,ICCID,b.STATE_DATE,IMSI from sim_card a,sim_nbr b,acc_nbr c
where c.acc_nbr_id=b.acc_nbr_id
and a.sim_card_id=b.sim_card_id
and b.state='A'
AND a.SIM_STATE='I'
AND a.IS_BINDING_FLAG='N'
--and a.iccid='892330000000105312'
--and c.acc_nbr='200397' 
)



103719	892330000000005205


select * from sim_card where iccid='892330000000000002' and SIM_STATE='I' and IS_BINDING_FLAG='N'



select * from sim_nbr where sim_card_id='131961'

select * from acc_nbr where acc_nbr_id=207444





SELECT * FROM subs WHERE ACC_NBR='168693'

select * from cust where cust_id='47384'

update prod set prod_state='A' where prod_id='1864786'



SELECT * FROM BAL WHERE ACCT_ID='105013047' and acct_res_id=1

update bal set gross_bal=-16000 where bal_id='570539'

UPDATE BAL SET ACCT_ID='105013047'/*NEW ACCOUNT*/ WHERE ACCT_ID='105013023' and acct_res_id!=1--(OLD ACCTOUNT)

select * from bal wh

delete from bal where bal_id='11750669'


'106822','106824','106816','116889','116885'



SELECT * FROM SIM_NBR WHERE ACC_NBR_ID='109433'

SELECT * FROM SIM_CARD WHERE SIM_CARD_ID='29521'


SELECT * FROM ACC_NBR WHERE ACC_NBR='198071'

UPDATE ACC_NBR SET ACC_NBR_STATE='A' WHERE ACC_NBR='198071'

UPDATE ORDER_ITEM SET ORDER_STATE='E' where order_nbr='2020010603876776'


SELECT * FROM ACC_NBR_STATE


select * from sim_card where iccid='8923300000000104966'

update sim_card set sim_state='I' where imsi='620140000102986'