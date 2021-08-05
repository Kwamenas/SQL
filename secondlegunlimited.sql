update SUBS_UPP_INST set state='X' where subs_upp_inst_id in (
select subs_upp_inst_id/*,subs_id/*,price_plan_id*/ from subs_upp_inst where 
price_plan_id in ('10606',
'1917',
'10605',
'1916',
'933',  
'935',  
'937',  
'128',  
'130',  
'134',  
'1911', 
'2103', 
'222',  
'221',  
'111',  
'113',  
'123',  
'124',  
'125',  
'126',  
'129',  
'132',  
'518',  
'754',  
'755',  
'932',  
'1203', 
'133',  
'934',  
'936',  
'938',  
'122',  
'131',  
'3011', 
'3828', 
'3829', 
'3830', 
'4706', 
'4711', 
'5809', 
'5819', 
'5820', 
'6038', 
'8103', 
'8304', 
'5407', 
'8306', 
'8903', 
'8904', 
'8905', 
'8909', 
'4707', 
'5403', 
'5821', 
'7903', 
'8305', 
'3203', 
'3204', 
'3205', 
'5404', 
'5823', 
'3827', 
'4709', 
'4710', 
'5406', 
'6039', 
'8104', 
'8303', 
'4003', 
'4705', 
'4708', 
'4807', 
'5408', 
'5405', 
'5822', 
'3831', 
'4703', 
'5843', 
'5844', 
'9303', 
'9403', 
'9405', 
'9903', 
'9907',  
'9910',  
'11019',
'11020',
'11021',
'11022',
'11025',
'9304', 
'9305', 
'9503', 
'9603', 
'11023',
'11024',
'11026',
'130',  
'134',  
'132',  
'133',  
'131',  
'3011', 
'8103', 
'8104', 
'10805',
'10910',
'10610',
'10906',
'10806',
'10911',
'10703',
'10907',
'10803',
'10904',
'10912',
'10704',
'10908',
'10609',
'10905',
'10804',
'10909',
'3243',
'3239',
'3241',
'8107',
'3245',
'3249',
'3233',
'3235',
'3237',
'3244',
'3247'
) AND EXP_DATE >=SYSDATE and subs_id in (
select A.SUBS_ID/*a.subs_upp_inst_id*//*a.*,offer_name*/ from subs_upp_inst a , offer b  where 
a.price_plan_id=b.offer_id
--and subs_id='413152'
and trunc(a.eff_date)BETWEEN '24-APR-20' and '29-APR-20'
and a.price_plan_id in ('8703',
'8704',
'8803',
'11103'
)
)
)

third leg

UPDATE  PROD SET PROD_STATE='B' WHERE OFFER_ID in (10709,10608,911,910)
AND INDEP_PROD_ID IN (
SELECT PROD_ID/*,SUBS_PLAN_ID*/ FROM PROD,SUBS WHERE
PROD_ID=SUBS_ID
--AND PROD_STATE='A'
AND PROD_ID IN  (
select A.SUBS_ID/*a.subs_upp_inst_id*//*a.*,offer_name*/ from subs_upp_inst a , offer b  where 
a.price_plan_id=b.offer_id
--and subs_id='8885024'
and trunc(a.eff_date)BETWEEN '28-NOV-19' and '29-NOV-19'
and a.price_plan_id in ('8703',
'8704',
'8803',
'11103'
)
)
)



10709
10608
911
910

SELECT * FROM OFFER  WHERE OFFER_NAME LIKE '%Loyalty%' and offer_type=4


Select * from offer where offer_name like '%Prepaid Business Bundle%' and offer_type=4
