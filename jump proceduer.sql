DECLARE

CURSOR C1 IS

select a.subs_id, a.acc_nbr, a.cust_id, offer_name from (select a.subs_id, a.acc_nbr, cust_id from
(select max(subs_id) subs_id, acc_nbr from subs
having count(*)>=1
group by acc_nbr) a,(select * from subs) b
where a.subs_id=b.subs_id) a, cust b, prod c, offer d
where subs_id=prod_id
and a.cust_id=b.cust_id
and prod_state='A'
and SUBS_PLAN_ID=d.offer_id
and SUBS_PLAN_ID=3908
and cust_name not like '233%';

REC                 C1%ROWTYPE;


BEGIN 

    OPEN C1;
    
      LOOP

       FETCH C1 INTO REC ;
       EXIT WHEN C1%NOTFOUND ;
       
INSERT INTO SUBS_UPP_INST (SUBS_ID,PRICE_PLAN_ID,CREATED_DATE,EFF_DATE,UPDATE_DATE,STATE,STATE_DATE,PARENT_SUBS_UPP_INST_ID,COMPLETED_DATE,NEED_UPLOAD,PACKAGE_FLAG,AGM_EFF_DATE,AGM_EXP_DATE,SP_ID,PROD_ALIAS,PARENT_OFFER_ID,SUBS_UPP_INST_ID) 
VALUES(REC.SUBS_ID,5104,to_date(to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss'),'yyyy-mm-dd hh24:mi:ss'),to_date(to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss'),'yyyy-mm-dd hh24:mi:ss'),to_date(to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss'),'yyyy-mm-dd hh24:mi:ss'),'A',
to_date(to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss'),'yyyy-mm-dd hh24:mi:ss'),null,to_date(to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss'),'yyyy-mm-dd hh24:mi:ss'),null,'N',null,null,0,null,null,SUBS_UPP_INST_ID_SEQ.NEXTVAL);


INSERT INTO SUBS_UPP_INST (SUBS_ID,PRICE_PLAN_ID,CREATED_DATE,EFF_DATE,UPDATE_DATE,STATE,STATE_DATE,PARENT_SUBS_UPP_INST_ID,COMPLETED_DATE,NEED_UPLOAD,PACKAGE_FLAG,AGM_EFF_DATE,AGM_EXP_DATE,SP_ID,PROD_ALIAS,PARENT_OFFER_ID,SUBS_UPP_INST_ID) 
VALUES(REC.SUBS_ID,5103,to_date(to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss'),'yyyy-mm-dd hh24:mi:ss'),to_date(to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss'),'yyyy-mm-dd hh24:mi:ss'),to_date(to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss'),'yyyy-mm-dd hh24:mi:ss'),'A',
to_date(to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss'),'yyyy-mm-dd hh24:mi:ss'),null,to_date(to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss'),'yyyy-mm-dd hh24:mi:ss'),null,'N',null,null,0,null,null,SUBS_UPP_INST_ID_SEQ.NEXTVAL);

INSERT INTO SUBS_UPP_INST (SUBS_ID,PRICE_PLAN_ID,CREATED_DATE,EFF_DATE,UPDATE_DATE,STATE,STATE_DATE,PARENT_SUBS_UPP_INST_ID,COMPLETED_DATE,NEED_UPLOAD,PACKAGE_FLAG,AGM_EFF_DATE,AGM_EXP_DATE,SP_ID,PROD_ALIAS,PARENT_OFFER_ID,SUBS_UPP_INST_ID) 
VALUES(REC.SUBS_ID,5105,to_date(to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss'),'yyyy-mm-dd hh24:mi:ss'),to_date(to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss'),'yyyy-mm-dd hh24:mi:ss'),to_date(to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss'),'yyyy-mm-dd hh24:mi:ss'),'A',
to_date(to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss'),'yyyy-mm-dd hh24:mi:ss'),null,to_date(to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss'),'yyyy-mm-dd hh24:mi:ss'),null,'N',null,null,0,null,null,SUBS_UPP_INST_ID_SEQ.NEXTVAL);

INSERT INTO SUBS_UPP_INST (SUBS_ID,PRICE_PLAN_ID,CREATED_DATE,EFF_DATE,UPDATE_DATE,STATE,STATE_DATE,PARENT_SUBS_UPP_INST_ID,COMPLETED_DATE,NEED_UPLOAD,PACKAGE_FLAG,AGM_EFF_DATE,AGM_EXP_DATE,SP_ID,PROD_ALIAS,PARENT_OFFER_ID,SUBS_UPP_INST_ID) 
VALUES(REC.SUBS_ID,5106,to_date(to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss'),'yyyy-mm-dd hh24:mi:ss'),to_date(to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss'),'yyyy-mm-dd hh24:mi:ss'),to_date(to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss'),'yyyy-mm-dd hh24:mi:ss'),'A',
to_date(to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss'),'yyyy-mm-dd hh24:mi:ss'),null,to_date(to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss'),'yyyy-mm-dd hh24:mi:ss'),null,'N',null,null,0,null,null,SUBS_UPP_INST_ID_SEQ.NEXTVAL);

INSERT INTO SUBS_UPP_INST (SUBS_ID,PRICE_PLAN_ID,CREATED_DATE,EFF_DATE,UPDATE_DATE,STATE,STATE_DATE,PARENT_SUBS_UPP_INST_ID,COMPLETED_DATE,NEED_UPLOAD,PACKAGE_FLAG,AGM_EFF_DATE,AGM_EXP_DATE,SP_ID,PROD_ALIAS,PARENT_OFFER_ID,SUBS_UPP_INST_ID) 
VALUES(REC.SUBS_ID,5203,to_date(to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss'),'yyyy-mm-dd hh24:mi:ss'),to_date(to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss'),'yyyy-mm-dd hh24:mi:ss'),to_date(to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss'),'yyyy-mm-dd hh24:mi:ss'),'A',
to_date(to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss'),'yyyy-mm-dd hh24:mi:ss'),null,to_date(to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss'),'yyyy-mm-dd hh24:mi:ss'),null,'N',null,null,0,null,null,SUBS_UPP_INST_ID_SEQ.NEXTVAL);


commit;

Insert into CC.PROD
   (PROD_ID, COMPLETED_DATE, PROD_STATE, OFFER_ID, PACKAGE_FLAG, 
    INDEP_PROD_ID, PROD_STATE_DATE, UPDATE_DATE, CREATED_DATE, STATE, 
    STATE_DATE, SP_ID)
 Values
   (PROD_ID_SEQ.NEXTVAL,to_date(to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss'),'yyyy-mm-dd hh24:mi:ss'), 'A', 906, 'Y', 
    REC.SUBS_ID, to_date(to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss'),'yyyy-mm-dd hh24:mi:ss'),to_date(to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss'),'yyyy-mm-dd hh24:mi:ss'), to_date(to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss'),'yyyy-mm-dd hh24:mi:ss'), 'A', 
    to_date(to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss'),'yyyy-mm-dd hh24:mi:ss'), 0);


Insert into CC.PROD
   (PROD_ID, COMPLETED_DATE, PROD_STATE, OFFER_ID, PACKAGE_FLAG, 
    INDEP_PROD_ID, PROD_STATE_DATE, UPDATE_DATE, CREATED_DATE, STATE, 
    STATE_DATE, SP_ID)
 Values
   (PROD_ID_SEQ.NEXTVAL,to_date(to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss'),'yyyy-mm-dd hh24:mi:ss'), 'A', 909, 'Y', 
    REC.SUBS_ID, to_date(to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss'),'yyyy-mm-dd hh24:mi:ss'),to_date(to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss'),'yyyy-mm-dd hh24:mi:ss'), to_date(to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss'),'yyyy-mm-dd hh24:mi:ss'), 'A', 
    to_date(to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss'),'yyyy-mm-dd hh24:mi:ss'), 0);



Insert into CC.PROD
   (PROD_ID, COMPLETED_DATE, PROD_STATE, OFFER_ID, PACKAGE_FLAG, 
    INDEP_PROD_ID, PROD_STATE_DATE, UPDATE_DATE, CREATED_DATE, STATE, 
    STATE_DATE, SP_ID)
 Values
   (PROD_ID_SEQ.NEXTVAL,to_date(to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss'),'yyyy-mm-dd hh24:mi:ss'), 'A', 1924, 'Y', 
    REC.SUBS_ID, to_date(to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss'),'yyyy-mm-dd hh24:mi:ss'),to_date(to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss'),'yyyy-mm-dd hh24:mi:ss'), to_date(to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss'),'yyyy-mm-dd hh24:mi:ss'), 'A', 
    to_date(to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss'),'yyyy-mm-dd hh24:mi:ss'), 0);


Insert into CC.PROD
   (PROD_ID, COMPLETED_DATE, PROD_STATE, OFFER_ID, PACKAGE_FLAG, 
    INDEP_PROD_ID, PROD_STATE_DATE, UPDATE_DATE, CREATED_DATE, STATE, 
    STATE_DATE, SP_ID)
 Values
   (PROD_ID_SEQ.NEXTVAL,to_date(to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss'),'yyyy-mm-dd hh24:mi:ss'), 'A', 903, 'Y', 
    REC.SUBS_ID, to_date(to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss'),'yyyy-mm-dd hh24:mi:ss'),to_date(to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss'),'yyyy-mm-dd hh24:mi:ss'), to_date(to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss'),'yyyy-mm-dd hh24:mi:ss'), 'A', 
    to_date(to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss'),'yyyy-mm-dd hh24:mi:ss'), 0);



Insert into CC.PROD
   (PROD_ID, COMPLETED_DATE, PROD_STATE, OFFER_ID, PACKAGE_FLAG, 
    INDEP_PROD_ID, PROD_STATE_DATE, UPDATE_DATE, CREATED_DATE, STATE, 
    STATE_DATE, SP_ID)
 Values
   (PROD_ID_SEQ.NEXTVAL,to_date(to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss'),'yyyy-mm-dd hh24:mi:ss'), 'A', 1922, 'Y', 
    REC.SUBS_ID, to_date(to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss'),'yyyy-mm-dd hh24:mi:ss'),to_date(to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss'),'yyyy-mm-dd hh24:mi:ss'), to_date(to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss'),'yyyy-mm-dd hh24:mi:ss'), 'A', 
    to_date(to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss'),'yyyy-mm-dd hh24:mi:ss'), 0);


commit;

       END LOOP;
                   
                 CLOSE C1;
                 
                 COMMIT;
END;