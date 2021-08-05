select * from bfm_staff where state='A';---user_id,staff_name  A
select * from bfm_role  where is_locked='N';--role_id    B
---select count(distinct user_id) from bfm_user_role;--role_id 

select * from bfm_role_priv where priv_id='313';--PRIV_ID,ROLE_ID,PRIV_LEVEL   C
select * from BFM_PRIV---priv_id,priv_name
SELECT * FROM BFM_USER_ROLE---role_id,user_id   D

select a.staff_name,a.user_id,b.id,b.name,e.priv_name,c.priv_id
from bfm_staff a,bfm_role b,bfm_role_priv c,bfm_user_role d,bfm_priv e
where b.is_locked='N'
and a.user_id=d.user_id
and c.role_id=b.id
and c.priv_id=e.priv_id

select bu.user_code, bs.staff_id,d.org_name,bs.staff_name,bs.user_id,b.portal_name,c.PRIV_NAME from bfm_staff bs 
left join
(SELECT a.user_id,
       B.PORTAL_ID,
       B.PORTAL_NAME
  FROM BFM_USER_PORTAL A
  join BFM_PORTAL B
    on A.PORTAL_ID = B.PORTAL_ID
   AND B.STATE = 'A'
   AND B.APP_ID = 1
 ORDER BY PORTAL_ID) b
 on bs.user_id=b.user_id
 left join
 (SELECT A.PORTAL_ID,
       A.SEQ,
       A.PARTY_ID      PRIV_ID,
       A.PARTY_ID,
       C.PRIV_NAME,
       C.PRIV_NAME     PARTY_NAME,
       A.TYPE,
       C.IS_HOLD,
       C.IS_AUTHORIZED,
       C.URL,
       C.COMMENTS,
       D.PRIV_LEVEL
  FROM BFM_PORTAL_MENU A, BFM_MENU B, BFM_PRIV C
  LEFT JOIN BFM_USER_PRIV D
    ON C.PRIV_ID = D.PRIV_ID
   AND D.USER_ID = '1'
    AND NVL(D.SP_ID,0)=0 
 WHERE A.PARTY_ID = B.MENU_ID
   AND B.MENU_ID = C.PRIV_ID
   AND A.TYPE = 1
   AND C.PRIV_TYPE = 'M'
   AND A.PORTAL_ID = '1' 
    AND A.PARENT_ID IS NULL AND 1 = '1'   
    
    AND A.STATE = 'A' AND B.STATE = 'A' AND C.STATE = 'A'   
    AND NVL(A.SP_ID, 0) = 0  
    AND C.APP_ID = 1  ) c
    on b.portal_id=c.PORTAL_ID
    left join (select a.staff_id,b.org_name from bfm_staff_org a,bfm_org b where a.org_id=b.org_id) d
    on bs.staff_id=d.staff_id
    left join bfm_user bu on bs.user_id=bu.user_id
     and bs.state='A'