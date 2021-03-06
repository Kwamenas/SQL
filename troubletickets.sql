
"ONE"

SELECT CREATE_DATE||','||cust_name||','||concat('''',CC_CODE)||','||STAFF_NAME||','||CC_SUBJECT_NAME||','||CONTACT_CHANNEL_NAME||','||CC_CLASS_NAME||','||CC_ISSUE_NAME||','||G.STATUS_NAME
FROM AFRIMAX_CC A,AFRIMAX_CC_SUBJECT B,AFRIMAX_CC_ISSUE C, BFM_STAFF D, BFM_ORG E, AFRIMAX_CC_CLASS f, AFRIMAX_CC_STATUS G,
cust h, subs i, CONTACT_CHANNEL j WHERE TRUNC(CREATE_DATE) between '17-JUN-2019' and '18-JUN-2019'
AND A.CC_SUBJECT_ID=B.CC_SUBJECT_ID
AND A.CC_ISSUE_ID=C.CC_ISSUE_ID
AND STAFF_ID=EXECUTER_ID
AND e.ORG_ID=USER_GROUP_ID
and a.CC_CLASS_ID=f.CC_CLASS_ID
and a.STATUS_ID=g.STATUS_ID
and a.cust_id=h.cust_id
and a.cust_id=i.cust_id
and a.acct_id=i.acct_id
and a.CONTACT_CHANNEL_ID=j.CONTACT_CHANNEL_ID
order by CREATE_DATE;





"TWO"

SELECT CREATE_DATE||','||concat('''',CC_CODE)||','||cust_name||','||concat('''',phone_number)||','||concat('''',acc_nbr)||','||CC_SUBJECT_NAME||','||CC_CLASS_NAME||','||CC_ISSUE_NAME||','||STAFF_NAME
||','||status_NAME||','||CONTACT_CHANNEL_NAME
FROM AFRIMAX_CC A,AFRIMAX_CC_SUBJECT B,AFRIMAX_CC_ISSUE C, BFM_STAFF D, BFM_ORG E, AFRIMAX_CC_CLASS f, AFRIMAX_CC_STATUS G,
cust h, subs i,CONTACT_CHANNEL j WHERE TRUNC(CREATE_DATE) between '1-JAN-2019' and '20-AUG-2019'
AND A.CC_SUBJECT_ID=B.CC_SUBJECT_ID
AND A.CC_ISSUE_ID=C.CC_ISSUE_ID
AND STAFF_ID=EXECUTER_ID
AND e.ORG_ID=USER_GROUP_ID
and a.CC_CLASS_ID=f.CC_CLASS_ID
and a.STATUS_ID=g.STATUS_ID
and a.cust_id=h.cust_id
and a.cust_id=i.cust_id
and a.acct_id=i.acct_id
and a.CONTACT_CHANNEL_ID=j.CONTACT_CHANNEL_ID
order by CREATE_DATE;