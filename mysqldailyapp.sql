SELECT * FROM busyapis.WSC_AUTHENTICATION_DETAILS 
where date_format(firstLogin,'%Y-%m-%d')<date_format(current_date,'%Y-%m-%d')



SELECT * FROM busyapis.WSC_AUTHENTICATION_DETAILS 
where date_format(firstLogin,'%Y-%m-%d')=date_format(current_date - 1,'%Y-%m-%d')
 