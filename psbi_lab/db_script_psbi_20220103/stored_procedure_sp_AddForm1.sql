USE [psbi_lab]
GO
/****** Object:  StoredProcedure [dbo].[sp_AddForm1]    Script Date: 1/3/2022 4:25:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[sp_AddForm1]
@AS1_screening_ID	varchar(20)	,
@AS1_rand_id	int	,
@AS1_name	varchar(50)	,
@AS1_sex	int	,
@AS1_age	int	,
@AS1_barcode	varchar(50)	,
@AS1_fsite	int	,
@AS1_Samp	int	,
@AS1_Q1_1	int	,
@AS1_Q1_2	varchar(20)	,
@AS1_Q2_1	int	,
@AS1_Q2_2	varchar(20)	,
@AS1_Q3	int	,
@AS1_Q3a_1	int	,
@AS1_Q3a_2	varchar(20)	,
@AS1_Q4	datetime	,
@AS1_Q5	datetime	,
@AS1_Q6	varchar(50)	,
@AS2_Q7_1	int	,
@AS2_Q7_2	varchar(20)	,
@AS2_Q8	int	,
@AS2_Q8_3	varchar(20)	,
@AS2_Q8a	int	,
@AS2_Q9	datetime	,
@AS2_Q10	datetime	,
@AS2_Q11	varchar(6)	,
@AS2_Q12_1	varchar(6)	,
@AS2_Q12_2	varchar(6)	,
@AS2_Q12_3	varchar(6)	,
@AS2_Q12_4	varchar(6)	,
@AS2_Q13	varchar(50)	,
@AS3_Q14	varchar(50)	,
@AS3_Q15	datetime	,
@AS3_Q16	varchar(6)	,
@AS3_Q17	datetime	,
@AS3_Q18	int	,
@AS3_Q19	varchar(20)	,
@AS3_Q20	datetime	,
@AS3_Remarks	varchar(300)	,
@AS3_A1	varchar(15)	,
@AS3_A2	datetime	,
@AS3_B1	varchar(15)	,
@AS3_B2	datetime,
@UserID varchar(50),
@EntryDate datetime
	
AS
BEGIN	
		
		
				INSERT INTO [form1]
           ([AS1_screening_ID]
           ,[AS1_rand_id]
           ,[AS1_name]
           ,[AS1_sex]
           ,[AS1_age]
           ,[AS1_barcode]
           ,[AS1_fsite]
           ,[AS1_Samp]
           ,[AS1_Q1_1]
           ,[AS1_Q1_2]
           ,[AS1_Q2_1]
           ,[AS1_Q2_2]
           ,[AS1_Q3]
           ,[AS1_Q3a_1]
           ,[AS1_Q3a_2]
           ,[AS1_Q4]
           ,[AS1_Q5]
           ,[AS1_Q6]
           ,[AS2_Q7_1]
           ,[AS2_Q7_2]
           ,[AS2_Q8]
           ,[AS2_Q8_3]
           ,[AS2_Q8a]
           ,[AS2_Q9]
           ,[AS2_Q10]
           ,[AS2_Q11]
           ,[AS2_Q12_1]
           ,[AS2_Q12_2]
           ,[AS2_Q12_3]
           ,[AS2_Q12_4]
           ,[AS2_Q13]
           ,[AS3_Q14]
           ,[AS3_Q15]
           ,[AS3_Q16]
           ,[AS3_Q17]
           ,[AS3_Q18]
           ,[AS3_Q19]
           ,[AS3_Q20]
           ,[AS3_Remarks]
           ,[AS3_A1]
           ,[AS3_A2]
           ,[AS3_B1]
           ,[AS3_B2]
		   ,[UserID]
		   ,[EntryDate]
		   )
     VALUES
           (@AS1_screening_ID
           ,@AS1_rand_id
           ,@AS1_name
           ,@AS1_sex
           ,@AS1_age
           ,@AS1_barcode
           ,@AS1_fsite
           ,@AS1_Samp
           ,@AS1_Q1_1
           ,@AS1_Q1_2
           ,@AS1_Q2_1
           ,@AS1_Q2_2
           ,@AS1_Q3
           ,@AS1_Q3a_1
           ,@AS1_Q3a_2
           ,@AS1_Q4
           ,@AS1_Q5
           ,@AS1_Q6
           ,@AS2_Q7_1
           ,@AS2_Q7_2
           ,@AS2_Q8
           ,@AS2_Q8_3
           ,@AS2_Q8a
           ,@AS2_Q9
           ,@AS2_Q10
           ,@AS2_Q11
           ,@AS2_Q12_1
           ,@AS2_Q12_2
           ,@AS2_Q12_3
           ,@AS2_Q12_4
           ,@AS2_Q13
           ,@AS3_Q14
           ,@AS3_Q15
           ,@AS3_Q16
           ,@AS3_Q17
           ,@AS3_Q18
           ,@AS3_Q19
           ,@AS3_Q20
           ,@AS3_Remarks
           ,@AS3_A1
           ,@AS3_A2
           ,@AS3_B1
           ,@AS3_B2
		   ,@UserID
		   ,@EntryDate
		   )
	
			
END