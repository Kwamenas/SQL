select * from wholesale_inst ---subs_id,sim_card_id,acc_nbr_id,
select* from sim_card  ----ICCID,SIM_CARD_ID
select * from gm_goods_inst ---goods_sn,model_id
select * from bfm_org --org_name,org_id
select * from subs--subs_id,acc_nbr
select * from acc_nbr--acc_nbr_id,acc_nbr
select * from drm.drm_res_inst where  res_state='A'--acc_nbr,iccid,res_sn,res_state,IMEI,WH_ID=DEALER_ID
select * from prod ---prod_id,prod_state A
select * from gm_goods
select * from GM_MODEL--mode_code,model_name,model_id

select * from drm.drm_dealer where dealer_id=3267----stores,DEALER ID

update drm.drm_dealer set parent_dealer_id=2026 where dealer_id=3267


select * from DRM.drm_res_inst

select c.model_name,d.acc_nbr,RES_SN, DEALER_NAME
  from gm_goods_inst a, bfm_org b,gm_model c,subs d, DRM.drm_res_inst E, DRM.DRM_DEALER F
  where a.model_id=c.model_id
  and a.goods_sn=to_char(d.subs_id)
 and a.goods_sn in
            (
          select to_char(max( a.subs_id))subs_id
          from wholesale_inst a, sim_card b,subs c,acc_nbr d,drm.drm_res_inst e,prod f
         where a.sim_card_id = b.sim_card_id
         and a.subs_id=c.subs_id
         and d.acc_nbr=c.acc_nbr
         and d.acc_nbr=e.acc_nbr
         and b.iccid=e.res_sn
         and res_state='A'
         and prod_id=c.subs_id
         and prod_state='I'
         group by a.subs_id
         having count(*)>=1
         )           
and a.org_id=b.org_id AND GOODS_SN=IMEI
AND WH_ID=DEALER_ID

select acc_nbr,iccid,org_name from wholesale_inst a,sim_card b

select * from subs where acc_nbr='170122'

select * from acct_res