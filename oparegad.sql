(select s.ACC_NBR as MSISDN, 
            TO_CHAR(gbph.CREATED_DATE, 'YYYY-MM-DD HH:MI:SS') as CREATED_DATE1, 
            gbph.*, 
            c.CUST_NAME,e.offer_name 
       from GHANA_BANK_PAY_HIS gbph, subs s, cust c,dp_offer_order d,offer e 
      where BANK_PAY_CHANNEL_ID = 1 
        and gbph.ACCT_ID = s.ACCT_ID 
        and c.CUST_ID = s.CUST_ID 
        and gbph.order_item_id=d.order_item_id 
        and d.offer_id=e.offer_id 
        and d.offer_id in (111,122,128,129,130,131,132,133,134,1907,1908,1909,1910) 
        and gbph.BANK_PAY_HIS_ID='132722') 
     union all  
     (select s.ACC_NBR as MSISDN, 
            TO_CHAR(gbph.CREATED_DATE, 'YYYY-MM-DD HH:MI:SS') as CREATED_DATE1, 
            gbph.*, 
            c.CUST_NAME, 
            null as offer_name  
       from GHANA_BANK_PAY_HIS gbph, subs s, cust c 
      where BANK_PAY_CHANNEL_ID = 1 
        and gbph.ACCT_ID = s.ACCT_ID 
        and c.CUST_ID = s.CUST_ID 
        and gbph.order_item_id is null and gbph.BANK_PAY_HIS_ID='132722')
        
        
        
        select * from GHANA_BANK_PAY_HIS where BANK_PAY_HIS_ID='132722'
        
        UPDATE GHANA_BANK_PAY_HIS SET SUBS_ID='805641' WHERE BANK_PAY_HIS_ID='132722'
        
        select * from subs where acct_id='13016640'
        
        
        select * from dp_offer_order