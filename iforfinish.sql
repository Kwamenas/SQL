select * from payment where acc_nbr='110398' ---submit_amount,acc_nbr,payment_date

select * from acct where acct_id='7051082'---acct_id,cust_id,acct_nbr,billing_cycle_type_id,state

select * from cust where cust_id='18295'---cust_id,cust_name,cust_type,email,phone_number

select * from subs where acc_nbr='110398'--- cust_id,acct_id,acc_nbr,

select * from  billing_cycle----billing_cycle_type_id,cycle_begin_date,debt_date,state,billing_cycle_id

select * from bill where acct_id='7051082'---billing_cycle_id,acct_id,adjust_charge,bill_id

select * from acct_item where acct_id='7051082'---acct_id,sus_id,charge,settle_charge,state_date,billing_cyccle_id,acct_item_id,bill_id



select c.cust_name CUST_NAME,a.state STATE,c.phone_number PHONE_NUMBER,c.email EMAIL,a.acct_id ACCT_ID,to_char(e.cycle_begin_date,'yyyy-mm')BEGIN_CYCLE,sum(a.settle_charge)/100.0 PAYMENT,f.adjust_charge/100.0 ADJUST_CHARGE,
sum(a.charge)/100.0 INVOICE,a.state_date
from acct_item a,acct b,cust c,subs d,billing_cycle e,bill f
where e.billing_cycle_type_id=2
and b.billing_cycle_type_id=b.billing_cycle_type_id 
and a.acct_id=b.acct_id
and a.acct_id=d.acct_id
and a.acct_id='7051082'
and b.cust_id=c.cust_id
and c.cust_id=d.cust_id
and  d.acc_nbr>100
and a.acct_id=f.acct_id
and e.billing_cycle_id=f.billing_cycle_id
and to_char(e.cycle_begin_date,'yyyy-mm')=to_char(payment_date,'yyyy-mm')
group by a.state,a.billing_cycle_id,c.cust_name,c.phone_number,a.acct_id,c.email,to_char(e.cycle_begin_date,'yyyy-mm'),f.adjust_charge/100.0,a.state_date 
order by to_char(e.cycle_begin_date,'yyyy-mm'), acct_id;






and to_char(e.created_date,'yyyy-mm')=to_char(state_date,'yyyy-mm')












