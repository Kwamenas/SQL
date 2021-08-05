SELECT A.STATE,
       D.LOOKUP_NAME STATE_NAME,
       A.SIM_CARD_ID,
       C.ACC_NBR_ID,
       C.PREFIX,
       C.ACC_NBR,
       E.ORG_ID,
       E.ORG_NAME,
       A.SUBS_ID,
       P.COMPLETED_DATE,
       O.OFFER_ID,
       O.OFFER_NAME
  FROM WHOLESALE_INST A,
       ACC_NBR        C,
       SIM_CARD       S,
       DOMAIN         D,
       BFM_ORG        E,
       WHOLESALE      W,
       PROD           P,
       OFFER          O
 WHERE A.WHOLESALE_ID = W.WHOLESALE_ID
   AND A.ACC_NBR_ID = C.ACC_NBR_ID
   AND A.SIM_CARD_ID = S.SIM_CARD_ID
   AND A.STATE = D.VALUE
   AND D.TABLE_NAME = 'WHOLESALE_INST'
   AND W.ORG_ID = E.ORG_ID
   AND A.SUBS_ID = P.PROD_ID
   AND P.OFFER_ID = O.OFFER_ID
   AND P.PROD_STATE IN('G','H')
   AND A.STATE = 'F'
   AND C.ACC_NBR_STATE = 'C'
   AND S.SIM_STATE = 'C'
   AND W.STATE = 'C'
   AND C.PREFIX = '233' 
   AND LENGTH(C.ACC_NBR) = LENGTH('000222') 
   AND C.ACC_NBR >= '000222' 
   AND LENGTH(C.ACC_NBR) = LENGTH('000222') 
   AND C.ACC_NBR <= '000222' 
   AND NVL(A.SP_ID,0)= 0