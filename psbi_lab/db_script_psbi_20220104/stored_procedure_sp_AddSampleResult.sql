USE [psbi_lab]
GO
/****** Object:  StoredProcedure [dbo].[sp_AddSampleResult]    Script Date: 1/4/2022 12:33:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [sp_AddSampleResult]
@la_sno varchar(20),
@LA_01 datetime,
@LA_02 int,
@LA_03_b int,
@LA_03_a varchar(20),
@LA_04_b int,
@LA_04_a varchar(20),
@LA_05_b int,
@LA_05_a varchar(20),
@LA_06_b int,
@LA_06_a varchar(20),
@LA_07_b int,
@LA_07_a varchar(20),
@LA_08_b int,
@LA_08_a varchar(20),
@LA_09_b int,
@LA_09_a varchar(20),
@LA_10_b int,
@LA_10_a varchar(20),
@LA_11_b int,
@LA_11_a varchar(20),
@LA_12_b int,
@LA_12_a varchar(20),
@LA_13_b int,
@LA_13_a varchar(20),
@LA_14_b int,
@LA_14_a varchar(20),
@LA_15_b int,
@LA_15_a varchar(20),
@LA_16_b int,
@LA_16_a varchar(20),
@LA_17 int,
@LA_18 int,
@LA_19 int,
@LA_20a_b int,
@LA_20a_a varchar(20),
@LA_20b_a int,
@LA_21a_b int,
@LA_21a_a varchar(20),
@LA_21b_a int,
@LA_22a_b int,
@LA_22a_a varchar(20),
@LA_22b_a int,
@LA_23a_b int,
@LA_23a_a varchar(20),
@LA_23b_a int,
@LA_24a_b int,
@LA_24a_a varchar(20),
@LA_24b_a int,
@LA_25a_b int,
@LA_25a_a varchar(20),
@LA_25b_a int,
@LA_26a_b int,
@LA_26a_a varchar(20),
@LA_26b_a int,
@LA_27a_b int,
@LA_27a_a varchar(20),
@LA_27b_a int,
@LA_28a_b int,
@LA_28a_a varchar(20),
@LA_28b_a int,
@LA_29a_b int,
@LA_29a_a varchar(20),
@LA_29b_a int,
@LA_30a_b int,
@LA_30a_a varchar(20),
@LA_30b_a int,
@LA_31a_b int,
@LA_31a_a varchar(20),
@LA_31b_a int,
@LA_32a_b int,
@LA_32a_a varchar(20),
@LA_32b_a int,
@LA_33a_b int,
@LA_33a_a varchar(20),
@LA_33b_a int,
@LA_34a_b int,
@LA_34a_a varchar(20),
@LA_34b_a int,
@LA_35a_b int,
@LA_35a_a varchar(20),
@LA_35b_a int,
@LA_36a_b int,
@LA_36a_a varchar(20),
@LA_36b_a int,
@LA_37a_b int,
@LA_37a_a varchar(20),
@LA_37b_a int,
@LA_38a_b int,
@LA_38a_a varchar(20),
@LA_38b_a int,
@LA_39a_b int,
@LA_39a_a varchar(20),
@LA_39b_a int,
@LA_40a_b int,
@LA_40a_a varchar(20),
@LA_40b_a int,
@LA_41a_b int,
@LA_41a_a varchar(20),
@LA_41b_a int,
@LA_42a_b int,
@LA_42a_a varchar(20),
@LA_42b_a int,
@LA_43a_b int,
@LA_43a_a varchar(20),
@LA_43b_a int,
@LA_44a_b int,
@LA_44a_a varchar(20),
@LA_44b_a int,
@LA_45a_b int,
@LA_45a_a varchar(20),
@LA_45b_a int,
@LA_46a_b int,
@LA_46a_a varchar(20),
@LA_46b_a int,
@LA_47a_b int,
@LA_47a_a varchar(20),
@LA_47b_a int,
@LA_48a_b int,
@LA_48a_a varchar(20),
@LA_48b_a int,
@LA_49a_b int,
@LA_49a_a varchar(20),
@LA_49b_a int,
@LA_50a_b int,
@LA_50a_a varchar(20),
@LA_50b_a int,
@LA_51a_b int,
@LA_51a_a varchar(20),
@LA_51b_a int,
@LA_52a_b int,
@LA_52a_a varchar(20),
@LA_52b_a int,
@UserID varchar(50),
@EntryDate datetime
	
AS
BEGIN
		
		
			INSERT INTO [sample_result]
           ([la_sno]
           ,[LA_01]
           ,[LA_02]
           ,[LA_03_b]
           ,[LA_03_a]
           ,[LA_04_b]
           ,[LA_04_a]
           ,[LA_05_b]
           ,[LA_05_a]
           ,[LA_06_b]
           ,[LA_06_a]
           ,[LA_07_b]
           ,[LA_07_a]
           ,[LA_08_b]
           ,[LA_08_a]
           ,[LA_09_b]
           ,[LA_09_a]
           ,[LA_10_b]
           ,[LA_10_a]
           ,[LA_11_b]
           ,[LA_11_a]
           ,[LA_12_b]
           ,[LA_12_a]
           ,[LA_13_b]
           ,[LA_13_a]
           ,[LA_14_b]
           ,[LA_14_a]
           ,[LA_15_b]
           ,[LA_15_a]
           ,[LA_16_b]
           ,[LA_16_a]
           ,[LA_17]
           ,[LA_18]
           ,[LA_19]
           ,[LA_20a_b]
           ,[LA_20a_a]
           ,[LA_20b_a]
           ,[LA_21a_b]
           ,[LA_21a_a]
           ,[LA_21b_a]
           ,[LA_22a_b]
           ,[LA_22a_a]
           ,[LA_22b_a]
           ,[LA_23a_b]
           ,[LA_23a_a]
           ,[LA_23b_a]
           ,[LA_24a_b]
           ,[LA_24a_a]
           ,[LA_24b_a]
           ,[LA_25a_b]
           ,[LA_25a_a]
           ,[LA_25b_a]
           ,[LA_26a_b]
           ,[LA_26a_a]
           ,[LA_26b_a]
           ,[LA_27a_b]
           ,[LA_27a_a]
           ,[LA_27b_a]
           ,[LA_28a_b]
           ,[LA_28a_a]
           ,[LA_28b_a]
           ,[LA_29a_b]
           ,[LA_29a_a]
           ,[LA_29b_a]
           ,[LA_30a_b]
           ,[LA_30a_a]
           ,[LA_30b_a]
           ,[LA_31a_b]
           ,[LA_31a_a]
           ,[LA_31b_a]
           ,[LA_32a_b]
           ,[LA_32a_a]
           ,[LA_32b_a]
           ,[LA_33a_b]
           ,[LA_33a_a]
           ,[LA_33b_a]
           ,[LA_34a_b]
           ,[LA_34a_a]
           ,[LA_34b_a]
           ,[LA_35a_b]
           ,[LA_35a_a]
           ,[LA_35b_a]
           ,[LA_36a_b]
           ,[LA_36a_a]
           ,[LA_36b_a]
           ,[LA_37a_b]
           ,[LA_37a_a]
           ,[LA_37b_a]
           ,[LA_38a_b]
           ,[LA_38a_a]
           ,[LA_38b_a]
           ,[LA_39a_b]
           ,[LA_39a_a]
           ,[LA_39b_a]
           ,[LA_40a_b]
           ,[LA_40a_a]
           ,[LA_40b_a]
           ,[LA_41a_b]
           ,[LA_41a_a]
           ,[LA_41b_a]
           ,[LA_42a_b]
           ,[LA_42a_a]
           ,[LA_42b_a]
           ,[LA_43a_b]
           ,[LA_43a_a]
           ,[LA_43b_a]
           ,[LA_44a_b]
           ,[LA_44a_a]
           ,[LA_44b_a]
           ,[LA_45a_b]
           ,[LA_45a_a]
           ,[LA_45b_a]
           ,[LA_46a_b]
           ,[LA_46a_a]
           ,[LA_46b_a]
           ,[LA_47a_b]
           ,[LA_47a_a]
           ,[LA_47b_a]
           ,[LA_48a_b]
           ,[LA_48a_a]
           ,[LA_48b_a]
           ,[LA_49a_b]
           ,[LA_49a_a]
           ,[LA_49b_a]
           ,[LA_50a_b]
           ,[LA_50a_a]
           ,[LA_50b_a]
           ,[LA_51a_b]
           ,[LA_51a_a]
           ,[LA_51b_a]
           ,[LA_52a_b]
           ,[LA_52a_a]
           ,[LA_52b_a]
           ,[UserID]
           ,[EntryDate])
     VALUES
           (@la_sno
           ,@LA_01
           ,@LA_02
           ,@LA_03_b
           ,@LA_03_a
           ,@LA_04_b
           ,@LA_04_a
           ,@LA_05_b
           ,@LA_05_a
           ,@LA_06_b
           ,@LA_06_a
           ,@LA_07_b
           ,@LA_07_a
           ,@LA_08_b
           ,@LA_08_a
           ,@LA_09_b
           ,@LA_09_a
           ,@LA_10_b
           ,@LA_10_a
           ,@LA_11_b
           ,@LA_11_a
           ,@LA_12_b
           ,@LA_12_a
           ,@LA_13_b
           ,@LA_13_a
           ,@LA_14_b
           ,@LA_14_a
           ,@LA_15_b
           ,@LA_15_a
           ,@LA_16_b
           ,@LA_16_a
           ,@LA_17
           ,@LA_18
           ,@LA_19
           ,@LA_20a_b
           ,@LA_20a_a
           ,@LA_20b_a
           ,@LA_21a_b
           ,@LA_21a_a
           ,@LA_21b_a
           ,@LA_22a_b
           ,@LA_22a_a
           ,@LA_22b_a
           ,@LA_23a_b
           ,@LA_23a_a
           ,@LA_23b_a
           ,@LA_24a_b
           ,@LA_24a_a
           ,@LA_24b_a
           ,@LA_25a_b
           ,@LA_25a_a
           ,@LA_25b_a
           ,@LA_26a_b
           ,@LA_26a_a
           ,@LA_26b_a
           ,@LA_27a_b
           ,@LA_27a_a
           ,@LA_27b_a
           ,@LA_28a_b
           ,@LA_28a_a
           ,@LA_28b_a
           ,@LA_29a_b
           ,@LA_29a_a
           ,@LA_29b_a
           ,@LA_30a_b
           ,@LA_30a_a
           ,@LA_30b_a
           ,@LA_31a_b
           ,@LA_31a_a
           ,@LA_31b_a
           ,@LA_32a_b
           ,@LA_32a_a
           ,@LA_32b_a
           ,@LA_33a_b
           ,@LA_33a_a
           ,@LA_33b_a
           ,@LA_34a_b
           ,@LA_34a_a
           ,@LA_34b_a
           ,@LA_35a_b
           ,@LA_35a_a
           ,@LA_35b_a
           ,@LA_36a_b
           ,@LA_36a_a
           ,@LA_36b_a
           ,@LA_37a_b
           ,@LA_37a_a
           ,@LA_37b_a
           ,@LA_38a_b
           ,@LA_38a_a
           ,@LA_38b_a
           ,@LA_39a_b
           ,@LA_39a_a
           ,@LA_39b_a
           ,@LA_40a_b
           ,@LA_40a_a
           ,@LA_40b_a
           ,@LA_41a_b
           ,@LA_41a_a
           ,@LA_41b_a
           ,@LA_42a_b
           ,@LA_42a_a
           ,@LA_42b_a
           ,@LA_43a_b
           ,@LA_43a_a
           ,@LA_43b_a
           ,@LA_44a_b
           ,@LA_44a_a
           ,@LA_44b_a
           ,@LA_45a_b
           ,@LA_45a_a
           ,@LA_45b_a
           ,@LA_46a_b
           ,@LA_46a_a
           ,@LA_46b_a
           ,@LA_47a_b
           ,@LA_47a_a
           ,@LA_47b_a
           ,@LA_48a_b
           ,@LA_48a_a
           ,@LA_48b_a
           ,@LA_49a_b
           ,@LA_49a_a
           ,@LA_49b_a
           ,@LA_50a_b
           ,@LA_50a_a
           ,@LA_50b_a
           ,@LA_51a_b
           ,@LA_51a_a
           ,@LA_51b_a
           ,@LA_52a_b
           ,@LA_52a_a
           ,@LA_52b_a
           ,@UserID
           ,@EntryDate)
	
			
END