--REMEBER TO CHANGE DATE (SYSDATE-21)------



SELECT CUST_NAME,
       subs_id,
       PARENT_ACC_NBR,
       BILL_ID,
       ACCT_ID,
       BILLING_PERIOD,
       CREDIT_LIMIT,
       PREVIOUS_BALANCE + sub_total + VAT_CHARGE - SETTLE_CHARGE  AS PREVIOUS_BALANCE /*added this to make adjustment*/,
       PAYMENT,
       ADJUSTMENT,
       (sub_total + VAT_CHARGE - SETTLE_CHARGE + 0) Current_charge,
       (  PREVIOUS_BALANCE
        + PAYMENT
        + ADJUSTMENT
        + sub_total
        + VAT_CHARGE
        - SETTLE_CHARGE
        +sub_total + VAT_CHARGE - SETTLE_CHARGE + 0 /*added this to make adjustment*/)
          Amount_Due,
       RECUR_CHARGE,
       DISCOUNT_AMT,
       CST_CHARGE,
       NHIL_CHARGE,
       GETFUND_CHARGE,
       sub_total,
       VAT_CHARGE,
       SETTLE_CHARGE,
       (sub_total + VAT_CHARGE - SETTLE_CHARGE) Total_Amt_Due,
       Parent_Data_Plan,
       Num_of_Accts
  FROM (SELECT CUST_NAME,
               subs_id,
               PARENT_ACC_NBR,
               BILL_ID,
               ACCT_ID,
               BILLING_PERIOD,
               PREVIOUS_BALANCE,
               PAYMENT,
               ADJUSTMENT,
               SETTLE_CHARGE,
               CREDIT_LIMIT,
               CST_CHARGE,
               GETFUND_CHARGE,
               NHIL_CHARGE,
               VAT_CHARGE,
               RECUR_CHARGE,
               DISCOUNT_AMT,
               sub_total,
               PARENT_DATA_PLAN,
               NUM_OF_ACCTS
          FROM (SELECT DISTINCT
                       a.*,
                       cst_charge,
                       getfund_charge,
                       NHIL_CHARGE,
                       VAT_CHARGE,
                       RECUR_CHARGE,
                       DISCOUNT_AMT * -1 DISCOUNT_AMT,
                       sub_total,
                       (sub_total + VAT_CHARGE - settle_charge) Total_Amt_Due,
                       offer_name Parent_Data_Plan,
                       Num_of_Accts
                  FROM (SELECT cust_name,
                               subs_id,
                               acc_nbr Parent_acc_nbr,
                               bill_id,
                               a.acct_id,
                               TO_CHAR(ADD_MONTHS(CYCLE_BEGIN_DATE,1),'Month')/*TO_CHAR (CYCLE_BEGIN_DATE, 'Month')*/Billing_Period,
                               PRE_BALANCE / 100 Previous_Balance,
                               RECV_CHARGE / 100 Payment,
                               ADJUST_CHARGE / 100 Adjustment,
                               SETT_CHARGE / 100 settle_charge,
                               CREDIT_LIMIT / 100 CREDIT_LIMIT
                          FROM bill a,
                               (SELECT cust_name,
                                       a.subs_id,
                                       a.acc_nbr,
                                       b.cust_id,
                                       acct_id
                                  FROM (  SELECT MAX (subs_id) subs_id, acc_nbr
                                            FROM subs
                                          HAVING COUNT (*) >= 1
                                        GROUP BY acc_nbr) a,
                                       (SELECT * FROM subs) b,
                                       cust c
                                 WHERE     a.subs_id = b.subs_id
                                       AND b.cust_id = c.cust_id) b,
                               (SELECT a.acct_id, CREDIT_LIMIT
                                  FROM (  SELECT acct_id,
                                                 MAX (eff_date) max_eff_date
                                            FROM cc_acct
                                          HAVING COUNT (*) >= 1
                                        GROUP BY acct_id) a,
                                       (SELECT * FROM cc_acct) b
                                 WHERE     a.acct_id = b.acct_id
                                       AND max_eff_date = eff_date) c,
                               billing_cycle d
                         WHERE     a.acct_id = b.acct_id
                               AND DUE > 0
                               AND a.acct_id = c.acct_id
                               AND a.BILLING_CYCLE_ID = d.BILLING_CYCLE_ID
                               AND TO_CHAR (d.CYCLE_END_DATE, 'YYYY-MM') =
                                      TO_CHAR (SYSDATE-21, 'YYYY-MM')) a,
                       (SELECT a.*, Num_of_Accts
                          FROM (SELECT bill_id,
                                       acct_id,
                                       cst_charge,
                                       getfund_charge,
                                       nhil_charge,
                                       vat_charge,
                                       recur_charge,
                                       DISCOUNT_AMT,
                                       (  cst_charge
                                        + getfund_charge
                                        + nhil_charge
                                        + recur_charge
                                        + discount_amt)
                                          sub_total
                                  FROM (SELECT a.bill_id,
                                               a.acct_id,
                                               cst_charge,
                                               getfund_charge,
                                               nhil_charge,
                                               vat_charge,
                                               recur_charge,
                                               CASE
                                                  WHEN TO_CHAR (discount_amt)
                                                          IS NULL
                                                  THEN
                                                     '0'
                                                  ELSE
                                                     TO_CHAR (discount_amt)
                                               END
                                                  discount_amt
                                          FROM (  SELECT bill_id,
                                                         acct_id,
                                                         SUM (cst_charge)
                                                            cst_charge,
                                                         SUM (getfund_charge)
                                                            getfund_charge,
                                                         SUM (nhil_charge)
                                                            nhil_charge,
                                                         SUM (recur_charge)
                                                            recur_charge,
                                                         SUM (vat_charge)
                                                            vat_charge
                                                    FROM (SELECT bill_id,
                                                                 acct_id,
                                                                 ROUND (
                                                                    (  0.05
                                                                     * recur_charge),
                                                                    2)
                                                                    cst_charge,
                                                                 ROUND (
                                                                    (  0.025
                                                                     * recur_charge),
                                                                    2)
                                                                    getfund_charge,
                                                                 ROUND (
                                                                    (  0.025
                                                                     * recur_charge),
                                                                    2)
                                                                    nhil_charge,
                                                                 ROUND (
                                                                    recur_charge,
                                                                    2)
                                                                    recur_charge,
                                                                 ROUND (
                                                                      (  cst_charge
                                                                       + getfund_charge
                                                                       + nhil_charge
                                                                       + recur_charge)
                                                                    * 0.125,
                                                                    2)
                                                                    vat_charge
                                                            FROM (SELECT bill_id,
                                                                         acct_id,
                                                                         ROUND (
                                                                            (  0.05
                                                                             * recur_charge),
                                                                            2)
                                                                            cst_charge,
                                                                         ROUND (
                                                                            (  0.025
                                                                             * recur_charge),
                                                                            2)
                                                                            getfund_charge,
                                                                         ROUND (
                                                                            (  0.025
                                                                             * recur_charge),
                                                                            2)
                                                                            nhil_charge,
                                                                         ROUND (
                                                                            recur_charge,
                                                                            2)
                                                                            recur_charge
                                                                    FROM (SELECT bill_id,
                                                                                 acct_id,
                                                                                 (  charge
                                                                                  / 124.875)
                                                                                    recur_charge
                                                                            FROM acct_item a,
                                                                                 billing_cycle b
                                                                           WHERE     a.state =
                                                                                        'C'
                                                                                 AND ACCT_ITEM_TYPE_ID =
                                                                                        14
                                                                                 AND a.BILLING_CYCLE_ID =
                                                                                        b.BILLING_CYCLE_ID
                                                                                 AND TO_CHAR (
                                                                                        a.CREATED_DATE,
                                                                                        'YYYY-MM') =
                                                                                        TO_CHAR (
                                                                                           SYSDATE-21,
                                                                                           'YYYY-MM'))))
                                                GROUP BY bill_id, acct_id) a,
                                               (SELECT bill_id,
                                                       acct_id,
                                                       charge / 100
                                                          discount_amt
                                                  FROM acct_item a,
                                                       billing_cycle b
                                                 WHERE     a.state = 'C'
                                                       AND ACCT_ITEM_TYPE_ID =
                                                              11
                                                       AND a.BILLING_CYCLE_ID =
                                                              b.BILLING_CYCLE_ID
                                                       AND TO_CHAR (
                                                              a.CREATED_DATE,
                                                              'YYYY-MM') =
                                                              TO_CHAR (
                                                                 SYSDATE-21,
                                                                 'YYYY-MM'))
                                               b
                                         WHERE a.bill_id = b.bill_id(+))) a,
                               (  SELECT COUNT (*) Num_of_Accts,
                                         BILL_ID,
                                         acct_id
                                    FROM acct_item a, billing_cycle b
                                   WHERE     a.BILLING_CYCLE_ID =
                                                b.BILLING_CYCLE_ID
                                         AND a.state = 'C'
                                         AND ACCT_ITEM_TYPE_ID = 14
                                GROUP BY BILL_ID, acct_id) b
                         WHERE a.bill_id = b.bill_id) b,
                       (SELECT subs_id,
                               a.re_id,
                               a.offer_ver_id,
                               c.offer_id,
                               offer_name
                          FROM RE_PRICE_PLAN a,
                               re b,
                               OFFER_VER c,
                               offer d,
                               subs_upp_inst e
                         WHERE     a.re_id = b.re_id
                               AND RE_TYPE = 9
                               AND a.offer_ver_id = c.offer_ver_id
                               AND c.offer_id = d.offer_id
                               AND price_plan_id = c.offer_id
                               AND e.state = 'A'
                               AND (   e.exp_date IS NULL
                                    OR e.exp_date > SYSDATE)) c
                 WHERE     a.bill_id = b.bill_id
                       AND a.subs_id = c.subs_id
                       --and a.subs_id = '2032745'  
                       AND offer_name <> 'Default'))