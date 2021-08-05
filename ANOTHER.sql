select * from SUBS_UPP_INST

select * from offer where offer_name like'%1GB%'


select * from subs where subs_id='618002'



select a.price_plan_id,a.subs_id,b.offer_id,b.offer_name 
from subs_upp_inst a left join  offer b on 
a.price_plan_id=b.offer_id
where offer_name='Bonus Data 1GB'




SELECT * FROM sim_card WHERE ICCID='892330000000049145'

UPDATE SIM_CARD SET SIM_STATE='I' WHERE ICCID='892330000000049145'

UPDATE SIM_CARD SET IS_BINDING_FLAG='N' WHERE ICCID='892330000000049145'

SELECT * FROM SIM_STATE


select * from acc_nbr where acc_nbr='148224'




select * from drm.DRM_res_inst

