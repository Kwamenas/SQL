SELECT * FROM OFFER WHERE OFFER_code in ('718','716','717','720','721','851','852','853','862')

UPDATE SUBS_UPP_INST SET STATE='X' WHERE SUBS_UPP_INST_ID IN (
select /*A.SUBS_ID*/a.subs_upp_inst_id /*a.*,offer_name*/ from subs_upp_inst a , offer b  where 
a.price_plan_id=b.offer_id
-- subs_id='11268280'
AND A.PRICE_PLAN_ID='3245'
)


SELECT * FROM SUBS WHERE ACC_NBR='190310'

Max: 721,852,853,851

Medi: 718,862,720

mini: 716,717