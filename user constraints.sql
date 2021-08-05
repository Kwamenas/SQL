

DELETE subs_upp_inst  where subs_upp_inst_id IN (
select subs_upp_inst_id  /*A.SUBS_ID*//*a.subs_upp_inst_id*/  from subs_upp_inst a   where 
--and subs_id='1149641'
trunc(a.eff_date)BETWEEN '01-JAN-15' and '31- DEC-16'
and a.state='X'
and  trunc(a.exp_date)<=trunc(sysdate)
)


select * from sub_upp_inst_bak_20152016




SELECT r.table_name
FROM   user_constraints t
JOIN   user_constraints r ON t.r_constraint_name = r.constraint_name
WHERE  t.constraint_type = 'R' AND t.table_name = 'SUBS_UPP_INST'


CC.FK_SUBS_UPP_REFERENCE_SUBS_UPP


select * from USER_CONSTRAINTS WHERE CONSTRAINT_NAME='FK_SUBS_UPP_REFERENCE_SUBS_UPP'

SELECT * FROM SUBS_UPP_INST_VALUE

CONSTRAINT_NAME=PK_SUBS
AND 

'FK_SUBS_UPP_REFERENCE_SUBS'

'FK_SUBS_UPPI_REF_SUBS_UPP'

SELECT * FROM SUBS_UPP_INST


SELECT * FROM PRICE_PLAN