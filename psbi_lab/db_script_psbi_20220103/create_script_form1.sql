USE [psbi_lab]
GO

/****** Object:  Table [dbo].[form1]    Script Date: 1/3/2022 4:22:45 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[form1](
	[ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[AS1_screening_ID] [varchar](20) NULL,
	[AS1_rand_id] [int] NULL,
	[AS1_name] [varchar](50) NULL,
	[AS1_sex] [int] NULL,
	[AS1_age] [int] NULL,
	[AS1_barcode] [varchar](50) NULL,
	[AS1_fsite] [int] NULL,
	[AS1_Samp] [int] NULL,
	[AS1_Q1_1] [int] NULL,
	[AS1_Q1_2] [varchar](20) NULL,
	[AS1_Q2_1] [int] NULL,
	[AS1_Q2_2] [varchar](20) NULL,
	[AS1_Q3] [int] NULL,
	[AS1_Q3a_1] [int] NULL,
	[AS1_Q3a_2] [varchar](20) NULL,
	[AS1_Q4] [datetime] NULL,
	[AS1_Q5] [datetime] NULL,
	[AS1_Q6] [varchar](50) NULL,
	[AS2_Q7_1] [int] NULL,
	[AS2_Q7_2] [varchar](20) NULL,
	[AS2_Q8] [int] NULL,
	[AS2_Q8_3] [varchar](20) NULL,
	[AS2_Q8a] [int] NULL,
	[AS2_Q9] [datetime] NULL,
	[AS2_Q10] [datetime] NULL,
	[AS2_Q11] [varchar](6) NULL,
	[AS2_Q12_1] [varchar](6) NULL,
	[AS2_Q12_2] [varchar](6) NULL,
	[AS2_Q12_3] [varchar](6) NULL,
	[AS2_Q12_4] [varchar](6) NULL,
	[AS2_Q13] [varchar](50) NULL,
	[AS3_Q14] [varchar](50) NULL,
	[AS3_Q15] [datetime] NULL,
	[AS3_Q16] [varchar](6) NULL,
	[AS3_Q17] [datetime] NULL,
	[AS3_Q18] [int] NULL,
	[AS3_Q19] [varchar](20) NULL,
	[AS3_Q20] [datetime] NULL,
	[AS3_Remarks] [varchar](300) NULL,
	[AS3_A1] [varchar](15) NULL,
	[AS3_A2] [datetime] NULL,
	[AS3_B1] [varchar](15) NULL,
	[AS3_B2] [datetime] NULL,
	[UserID] [varchar](50) NULL,
	[EntryDate] [datetime] NULL,
 CONSTRAINT [PK_form1id] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_form1] UNIQUE NONCLUSTERED 
(
	[AS1_screening_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


