select * from all_tables where table_name like '%TRAN%' and owner='DRM'

select * from all_tables where table_name like '%TRAN%' and owner='DRM'

select * from all_tab_cols where column_name like '%OPERATED_DATE%' and owner='DRM'


select * from DRM_CREDIT_OPER_LOG

SELECT * FROM DRM_SUBS_TOPUP_TRANS


BAK_CRED_LOG -----DEALER_ID,OPT_PARTY_CODE,BEFORE_AMOUNT,OPERATED_AMOUNT,AFTER_AMOUMT
DRM_DL_MODI_LOG ---- 
DRM_CREDIT_OPER_LOG ----BEFORE_AMOUNT,OPERATED_AMOUNT,AFTER_AMOUNT,DEALER_ID,OPT_PARTY_CODE

SELECT * FROM DRM.DRM_DEALER ---DEALER_ID,DEALER_NAME,DEALER_STATE




SELECT A.*,B.STAFF_NAME FROM DRM_SUBS_TOPUP_TRANS A,drm_dealer_staff B WHERE ACC_NBR='182016' 
AND TOPUP_SN='DRM20191111260403'
AND A.DEALER_ID=B.DEALER_ID

SELECT * FROM drm.drm_dealer_staff --- DEALER_ID,STAFF_ID,STAFF_NAME




SELECT * FROM drm.drm_sc_order_item ----- PARTY_TYPE,PARTY_ID,DEALER_ID


SELECT * FROM DRM_SUBS_TOPUP_TRANS ----DEALER_ID,PARTY_TYPE,PARTY_CODE

SELECT * FROM BFM_STAFF_NAME

