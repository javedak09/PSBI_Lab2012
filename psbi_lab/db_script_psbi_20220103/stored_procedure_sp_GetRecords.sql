USE [psbi_lab]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetRecords]    Script Date: 1/3/2022 4:27:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[sp_GetRecords]
@screeningid varchar(20),
@fldvalue int,
@visitid int

AS
BEGIN	
		
	if @fldvalue = 0
	
		SELECT [AS1_screening_ID]
      ,[AS1_rand_id]
      ,[AS1_name]
      ,case when [AS1_sex] = 1 then 'Male'
	  when [AS1_sex] = 2 then 'Female'
	  end [AS1_sex]
      ,[AS1_age]
      ,[AS1_barcode]
      ,case when [AS1_fsite] = 1 then 'AKU Kharadar Hospital'
	  when [AS1_fsite] = 2 then 'Sindh Govt. Children Hospital'
	  when [AS1_fsite] = 3 then 'Liyari General Hospital'
	  end [AS1_fsite]
	  ,case when AS1_Q1_1 = 1 then 'RCT1'
	  when AS1_Q1_1 = 2 then 'RCT2'
	  end [AS1_Q1_1]
		FROM [form1] where [AS1_screening_ID] = @screeningid
	
END