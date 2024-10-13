select * from [dbo].[prod_Churn]


create view VW_ChurnData as 
	select * from prod_churn where Customer_status IN('Churned','Stayed')

create View Vw_JoinData as
select * from prod_churn where Customer_status = 'Joined'

