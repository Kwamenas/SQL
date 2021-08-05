DECLARE

CURSOR C1 IS

select total_usage,ACCT_ID1,substr(BILLING_NBR,4) BILLING_NBR,case when first_name is null
then 'Customer'
else first_name
end first_name,phone_number,BONUS_TO_GIVE, BONUS_TO_GIVE/(1024*1024) BONUS_TO_GIVE_GB from 
(select distinct round(total_usage/(1024*1024),2) total_usage,ACCT_ID1,BILLING_NBR,first_name,phone_number, case when /**total_usage/(1024*1024)>=2 and**/ total_usage/(1024*1024)>=5
then '5242880'
--when total_usage/(1024*1024)>=5 and total_usage/(1024*1024)<10
--then '5242880'
--when total_usage/(1024*1024)>=10 and total_usage/(1024*1024)<25
--then '10485760'
--when total_usage/(1024*1024)>=25 
--then '26214400'
else '0'
END BONUS_TO_GIVE from
(select sum(CHARGE1+CHARGE2+CHARGE3+CHARGE4) total_usage,ACCT_ID1,BILLING_NBR from event_usage_c_3042@link_rb a, bal b where trunc(start_time)
between trunc(sysdate-5)and trunc(sysdate-1) and BILLING_NBR>'233001099'
and bal_id=bal_id1
and ACCT_ID1=b.acct_id
and acct_res_id in (1,2,3,9,10,11,12)
GROUP BY ACCT_ID1,BILLING_NBR) a, subs b, cust c, prod d, offer e, subs_upp_inst f where (total_usage/(1024*1024))>=5
and acct_id1=acct_id
and b.cust_id=c.cust_id
and b.subs_id=d.prod_id
and d.offer_id=526
and d.offer_id=e.offer_id
and e.offer_type=2
and b.subs_id=f.subs_id
and c.phone_number IS NOT NULL
/**and price_plan_id in (129,130,131,132,133,134,1910,1909,1908,1907)**/);

REC                 C1%ROWTYPE;


BEGIN 

    OPEN C1;
    
      LOOP

       FETCH C1 INTO REC ;
       EXIT WHEN C1%NOTFOUND ;

Insert into CC.ADVICE  (ADVICE_ID, ADVICE_TYPE, SUBS_ID, ACC_NBR,MSG,CREATED_DATE, STATE, STATE_DATE, MESSAGE_ID, PART_ID, SP_ID) 
Values  (advice_id_seq.nextval, 89, -1, REC.PHONE_NUMBER,'Congrats! You have just recieved 5GB of weekend bonus data. Use more data next week to enjoy another weekend of free browsing. Dont forget to download My Busy app from the Google Playstore or Apple App store to track your data.',sysdate, 'A', sysdate,to_char(sysdate+2,'YYMMDDHH24MISS')||1675918, 5, 0);

commit;

       END LOOP;
                   
                 CLOSE C1;
                 
                 COMMIT;
END;



