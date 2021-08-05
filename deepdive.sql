
select to_char(res_state_date,'yyyymmdd'),a.acc_nbr,a.wh_type,a.wh_id,DRM.for_comm_query.GET_PARTY_CODE_NAME(a.wh_type,a.wh_id)
from DRM.drm_res_inst a,cc.order_item b,cc.cust_order c
where a.res_state='C'
and to_char(res_state_date,'yyyymmdd') ='20160914'--to_char(res_state_date,'yyyymm') in ('201609')
and a.acc_nbr=to_char(b.acc_nbr)
and b.subs_event_id=104
and b.cust_order_id=c.cust_order_id
order by to_char(res_state_date,'yyyymmdd');


 D 465

select * from DRM.DRM_RES_INST where WH_ID='232' -->111199,117562,108196 and WH_ID ='145' D ---RES_INST_ID,RES_TYPE,WH_TYPE,WH_ID,SUBS_IS,ACC_NBR
--acc_nbr=117949

select * from DRM.DRM_SC_ORDER_ITEM where acc_nbr='108196'  ---SUBS_ID,ACC_NBR,PARTY_TYPE,PARTY_ID,DEALER_ID,EVENT_TYPE_ID,ORDER_TIME_ID
--DEALER ID =145

select * from DRM.DRM_DEALER_STAFF   ---STAFF_ID,STAFF_NAME,STAFF_CODE,dealer_id

select * from BFM_STAFF_ORG


Select a.staff_name,a.staff_id,a.dealer_id,b.WH_ID,b.WH_TYPE,b.ACC_NBR
FROM DRM.DRM_DEALER_STAFF a , DRM.DRM_RES_INST b Where 
a.dealer_id = b.WH_ID
and acc_nbr>001099



select * from offer where OFFER_NAME like'%Regular%'