select CUST_NAME, subs_id,PARENT_ACC_NBR, BILL_ID,ACCT_ID,BILLING_PERIOD,PREVIOUS_BALANCE,PAYMENT,ADJUSTMENT,DUE_CHARGE CURRENT_CHARGE,
(PREVIOUS_BALANCE+PAYMENT+ADJUSTMENT+DUE_CHARGE) AMOUNT_DUE,SETTLE_CHARGE,CREDIT_LIMIT,CST_CHARGE,GETFUND_CHARGE,NHIL_CHARGE,VAT_CHARGE,RECUR_CHARGE,DISCOUNT_AMT,TOTAL_CHARGE,PARENT_DATA_PLAN,NUM_OF_ACCTS FROM (select distinct a.*,cst_charge,getfund_charge,
NHIL_CHARGE,VAT_CHARGE,RECUR_CHARGE,DISCOUNT_AMT*-1 DISCOUNT_AMT,Total_charge, (total_charge-settle_charge) Due_Charge, offer_name Parent_Data_Plan,Num_of_Accts from 
(select cust_name,subs_id,acc_nbr Parent_acc_nbr,bill_id,a.acct_id,to_char(CYCLE_BEGIN_DATE,'Month') Billing_Period,
PRE_BALANCE/100 Previous_Balance,RECV_CHARGE/100 Payment,ADJUST_CHARGE/100 Adjustment,SETT_CHARGE/100 settle_charge,CREDIT_LIMIT/100 CREDIT_LIMIT from bill a, 
(select cust_name,a.subs_id, a.acc_nbr, b.cust_id,acct_id from
(select max(subs_id) subs_id, acc_nbr from subs
having count(*)>=1
group by acc_nbr) a,(select * from subs) b, cust c
where a.subs_id=b.subs_id
and b.cust_id=c.cust_id) b, (select a.acct_id,CREDIT_LIMIT from
(select acct_id, max(eff_date) max_eff_date from cc_acct
having count(*)>=1
group by acct_id) a, (select * from cc_acct) b
where a.acct_id=b.acct_id
and max_eff_date=eff_date) c,billing_cycle d 
where a.acct_id=b.acct_id and DUE>0
and a.acct_id=c.acct_id
and a.BILLING_CYCLE_ID=d.BILLING_CYCLE_ID
and TO_CHAR(d.CYCLE_END_DATE,'YYYY-MM')=TO_CHAR(SYSDATE,'YYYY-MM')) a,
(select a.*,Num_of_Accts from (select bill_id, acct_id,cst_charge,getfund_charge,nhil_charge,vat_charge,recur_charge,DISCOUNT_AMT,
(cst_charge+getfund_charge+nhil_charge+vat_charge+recur_charge+discount_amt) total_charge from
(select a.bill_id, a.acct_id,cst_charge,getfund_charge,nhil_charge,vat_charge,recur_charge,
case when to_char(discount_amt) is null then '0'
else to_char(discount_amt)
end discount_amt
from
(select bill_id,acct_id,sum(cst_charge) cst_charge,sum(getfund_charge)getfund_charge,sum(nhil_charge)nhil_charge,sum(recur_charge)recur_charge,
sum(vat_charge)vat_charge
from (
select bill_id,acct_id,round((0.09*recur_charge),2) cst_charge,round((0.025*recur_charge),2) getfund_charge,
round((0.025*recur_charge),2) nhil_charge,round(recur_charge,2)recur_charge,round((cst_charge+getfund_charge+nhil_charge+recur_charge)*0.125,2) vat_charge
from
(select bill_id,acct_id,round((0.09*recur_charge),2) cst_charge,round((0.025*recur_charge),2) getfund_charge,round((0.025*recur_charge),2) nhil_charge,
round(recur_charge,2)recur_charge from 
(select bill_id,acct_id,(charge/124.875) recur_charge from acct_item a, billing_cycle b where a.state='C' and ACCT_ITEM_TYPE_ID=14
and a.BILLING_CYCLE_ID=b.BILLING_CYCLE_ID and TO_CHAR(a.CREATED_DATE,'YYYY-MM')=TO_CHAR(SYSDATE,'YYYY-MM')))
)
group by bill_id, acct_id) a, 
(select bill_id, acct_id, charge/100 discount_amt from acct_item a, billing_cycle b where a.state='C' and ACCT_ITEM_TYPE_ID=11
and a.BILLING_CYCLE_ID=b.BILLING_CYCLE_ID and TO_CHAR(a.CREATED_DATE,'YYYY-MM')=TO_CHAR(SYSDATE,'YYYY-MM')) b
where a.bill_id=b.bill_id(+))) a, (select count(*) Num_of_Accts,BILL_ID, acct_id from acct_item a, billing_cycle b where a.BILLING_CYCLE_ID=b.BILLING_CYCLE_ID
and a.state='C' and ACCT_ITEM_TYPE_ID=14
group by BILL_ID, acct_id) b
where a.bill_id=b.bill_id) b, 
(select subs_id,a.re_id, a.offer_ver_id, c.offer_id, offer_name from RE_PRICE_PLAN a, re b, OFFER_VER c, offer d, subs_upp_inst e
where a.re_id=b.re_id
and RE_TYPE=9
and a.offer_ver_id=c.offer_ver_id
and c.offer_id=d.offer_id
and price_plan_id=c.offer_id
and e.state='A' and (e.exp_date is null or e.exp_date>sysdate)) c
where a.bill_id=b.bill_id
and a.subs_id=c.subs_id
and offer_name<>'Default')




select * from cc_acct where acct_id in (


select acct_id from subs where subs_id in ('9784659',
'260003',
'11447723',
'2149686',
'998192',
'344170',
'11906083',
'610652',
'885932',
'11370306',
'13059522',
'13059549',
'13059536',
'13059529')
)











Insert into CC.CC_ACCT   (ACCT_ID, SEQ, CC_TYPE, CREDIT_LIMIT, EFF_DATE,     SP_ID) Values   (6023003, , 0, 2, 427819008000, TO_DATE('01/01/2016 00:00:00', 'MM/DD/YYYY HH24:MI:SS'),     0);