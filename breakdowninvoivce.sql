(select bill_id, acct_id, sum(cst_charge) cst_charge,sum(getfund_charge) getfund_charge, sum(nhil_charge) nhil_charge,
sum(vat_charge) vat_charge, sum(recur_charge) recur_charge from

(select bill_id,acct_id,(9*charge)/10000 cst_charge,(2.5*charge)/10000 getfund_charge,(2.5*charge)/10000 nhil_charge,
(12.5*charge)/10000 vat_charge,charge/100-(((9*charge)/10000)+((2.5*charge)/10000)+((2.5*charge)/10000)+((12.5*charge)/10000)) 
recur_charge from acct_item a, billing_cycle b where a.state='C' and ACCT_ITEM_TYPE_ID=14
and a.BILLING_CYCLE_ID=b.BILLING_CYCLE_ID and TO_CHAR(a.CREATED_DATE,'YYYY-MM')=TO_CHAR(SYSDATE,'YYYY-MM'))
group by bill_id, acct_id) a, 

(select bill_id, acct_id, charge/100 discount_amt from acct_item a, billing_cycle b where a.state='C' and ACCT_ITEM_TYPE_ID=11
and a.BILLING_CYCLE_ID=b.BILLING_CYCLE_ID and TO_CHAR(a.CREATED_DATE,'YYYY-MM')=TO_CHAR(SYSDATE,'YYYY-MM')) b
where a.bill_id=b.bill_id(+))) b
where a.bill_id=b.bill_id








(select bill_id,acct_id,0.09*(charge/100)cst_charge,0.125*(charge/100)VAT,0.025*(charge/100)getfund_charge,0.025*(charge/100)nhil_charge
,charge/100-((0.09*(charge/100))+(0.125*(charge/100))+(0.025*(charge/100))+(0.025*(charge/100)) )recur_charge,
a.billing_cycle_id  from acct_item a, billing_cycle b where a.state ='C' and acct_item_type_id=14
and a.subs_id='9464004'
and to_char(a.CREATED_DATE,'YYYY-MM')=to_char(sysdate,'YYYY-MM')
and b.billing_cycle_id=a.billing_cycle_id) a,

(select bill_id,acct_id,(charge/100),a.billing_cycle_id  from acct_item a, billing_cycle b where a.state ='C' and acct_item_type_id=14
and a.subs_id='9464004'
and to_char(a.CREATED_DATE,'YYYY-MM')=to_char(sysdate,'YYYY-MM')
and b.billing_cycle_id=a.billing_cycle_id)b



9464004,

select 2.5/100 from dual


select * from acct_item
