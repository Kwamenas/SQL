select t.*,t.rowid from DRM_RES_INST_HIS  t where t.res_inst_id = 552;
select t.*,t.rowid from DRM_RES_MODI_LOG  t where t.res_inst_id = 552;
select t.*,t.rowid from drm.drm_res_inst  t order by created_date desc;

SELECT * FROM drm.drm_res_model

13--mifi plus


11 
19--exmas offer


delete from drm.drm_res_inst where res_inst_id in('11111',
'11112',
'11120',
'11123',
'11132',
'11135',
'11142',
'11143',
'11189',
'11192',
'11194',
'11195',
'11196',
'11199',
'11203',
'11207',
'11214',
'11216'
) 

select * from drm.drm_res_inst where acc_nbr in ('149721',
'149729',
'149732',
'149741',
'149744',
'149751',
'149752',
'149758',
'149761',
'149763',
'149764',
'149765',
'149768',
'149772',
'149776',
'149783',
'149785',
'149720')




select * from drm.drm_res_inst where acc_nbr='191047'


****have been sold in DRM but in active in CBS cos prod state is I************
update drm.drm_res_inst set res_state='A' where acc_nbr in(
select a.acc_nbr from drm.drm_res_inst a,subs b,prod c
where a.acc_nbr=b.acc_nbr
and a.res_state='C'
---and a.acc_nbr in ('162343','159098')
and b.subs_id=c.prod_id
and c.prod_state='I');


--update drm.drm_res_inst set res_state='A' where acc_nbr='144685'

--select * from prod_state
--**A


select subs_id from subs where acc_nbr='183444' in ('115421',
'115427',
'115432',
'115436',
'115437',
'115438',
'115439')


select * from gm_goods_inst where goods_sn in('1969186',
'1935241')
update gm_goods_inst set org_id='1' where goods_sn='9222785' in('596124',
'578947',
'578948',
'596130',
'578949',
'578995',
'596034')

select * from sim_card where iccid='892330000000075088';

select * from sim_nbr where sim_card_id='101737'

select * from acc_nbr where acc_nbr_id='181889'

select acc_nbr,ICCID from acc_nbr a,sim_nbr b ,sim_card c
where a.acc_nbr_id=b.acc_nbr_id
and b.sim_card_id=c.sim_card_id
and sim_state='C'
and state='A'
and iccid='892330000000092509' in ()




select * from sim_card where iccid='892330000000075284'

select * from sim_nbr where sim_card_id='101933'