CREATE OR REPLACE procedure CC.UPDATE_DRM_STATE
as
begin
DECLARE

CURSOR C1 IS

select RES_SN, COMPLETED_DATE from drm_res_inst a,cc.prod b,cc.subs c
where a.res_state<>'C'
and a.acc_nbr=c.acc_nbr
and c.subs_id=b.prod_id
and b.prod_state<>'I';


REC                 C1%ROWTYPE;


BEGIN 

    OPEN C1;
    
      LOOP

       FETCH C1 INTO REC ;
       EXIT WHEN C1%NOTFOUND ;
       
      update drm.drm_res_inst set res_state='C', RES_STATE_DATE=REC.COMPLETED_DATE where RES_SN=REC.RES_SN;
commit;

       END LOOP;
                   
                 CLOSE C1;
                 
                 COMMIT;
END;

commit;
end;
/