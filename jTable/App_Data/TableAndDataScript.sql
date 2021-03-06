--it will create a new table mstr_Country and add some records to the table.
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'mstr_Country', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'mstr_Country'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'mstr_Country', N'COLUMN',N'LastUpdatedByID'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'mstr_Country', @level2type=N'COLUMN',@level2name=N'LastUpdatedByID'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'mstr_Country', N'COLUMN',N'CreatedByID'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'mstr_Country', @level2type=N'COLUMN',@level2name=N'CreatedByID'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'mstr_Country', N'COLUMN',N'IsDeleted'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'mstr_Country', @level2type=N'COLUMN',@level2name=N'IsDeleted'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'mstr_Country', N'COLUMN',N'LastUpdatedOn'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'mstr_Country', @level2type=N'COLUMN',@level2name=N'LastUpdatedOn'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'mstr_Country', N'COLUMN',N'CreatedOn'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'mstr_Country', @level2type=N'COLUMN',@level2name=N'CreatedOn'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'mstr_Country', N'COLUMN',N'SortOrder'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'mstr_Country', @level2type=N'COLUMN',@level2name=N'SortOrder'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'mstr_Country', N'COLUMN',N'CountryCode'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'mstr_Country', @level2type=N'COLUMN',@level2name=N'CountryCode'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'mstr_Country', N'COLUMN',N'Description'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'mstr_Country', @level2type=N'COLUMN',@level2name=N'Description'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'mstr_Country', N'COLUMN',N'CountryID'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'mstr_Country', @level2type=N'COLUMN',@level2name=N'CountryID'

GO
/****** Object:  Table [dbo].[mstr_Country]    Script Date: 12/27/2015 3:05:07 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[mstr_Country]') AND type in (N'U'))
DROP TABLE [dbo].[mstr_Country]
GO
/****** Object:  Table [dbo].[mstr_Country]    Script Date: 12/27/2015 3:05:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[mstr_Country]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[mstr_Country](
	[CountryID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[CountryCode] [nvarchar](3) NULL,
	[SortOrder] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastUpdatedOn] [datetime] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedByID] [int] NULL,
	[LastUpdatedByID] [int] NULL,
	[PhoneCode] [nvarchar](10) NULL,
 CONSTRAINT [PK_dbo.mstr_Country] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[mstr_Country] ON 

GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (1, N'United States of America', N'USA', 1, CAST(N'2014-02-12 00:00:00.000' AS DateTime), CAST(N'2014-02-12 00:00:00.000' AS DateTime), 0, NULL, NULL, N'1')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (2, N'Canada', N'CAN', 41, CAST(N'2014-02-12 00:00:00.000' AS DateTime), CAST(N'2014-02-12 00:00:00.000' AS DateTime), 0, NULL, NULL, N'1')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (3, N'India', N'IND', 104, CAST(N'2014-02-23 13:26:02.880' AS DateTime), CAST(N'2014-02-23 13:26:02.880' AS DateTime), 0, NULL, NULL, N'91')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (4, N'Georgia', N'GEO', 83, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'995')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (5, N'Afghanistan', N'AFG', 2, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'93')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (6, N'Åland Islands', N'ALA', 3, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'358')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (7, N'Albania', N'ALB', 4, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'355')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (8, N'Algeria', N'DZA', 5, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'213')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (9, N'American Samoa', N'ASM', 6, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'1')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (10, N'Andorra', N'AND', 7, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'376')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (11, N'Angola', N'AGO', 8, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'244')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (12, N'Anguilla', N'AIA', 9, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'1')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (13, N'Antarctica', N'ATA', 10, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'672')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (14, N'Antigua and Barbuda', N'ATG', 11, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'1')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (15, N'Argentina', N'ARG', 12, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'54')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (16, N'Armenia', N'ARM', 13, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'374')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (17, N'Aruba', N'ABW', 14, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'297')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (18, N'Australia', N'AUS', 15, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'61')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (19, N'Austria', N'AUT', 16, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'43')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (20, N'Azerbaijan', N'AZE', 17, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'994')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (21, N'Bahamas', N'BHS', 18, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'1')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (22, N'Bahrain', N'BHR', 19, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'973')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (23, N'Bangladesh', N'BGD', 20, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'880')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (24, N'Barbados', N'BRB', 21, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'1')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (25, N'Belarus', N'BLR', 22, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'375')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (26, N'Belgium', N'BEL', 23, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'32')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (27, N'Belize', N'BLZ', 24, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'501')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (28, N'Benin', N'BEN', 25, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'229')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (29, N'Bermuda', N'BMU', 26, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'1')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (30, N'Bhutan', N'BTN', 27, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'975')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (31, N'Bolivia, Plurinational State Of', N'BOL', 28, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'591')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (32, N'Bosnia and Herzegovina', N'BIH', 30, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'387')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (33, N'Botswana', N'BWA', 31, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'267')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (34, N'Bouvet Island', N'BVT', 32, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'47')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (35, N'Brazil', N'BRA', 33, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'55')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (36, N'British Indian Ocean Territory', N'IOT', 34, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'246')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (37, N'Brunei Darussalam', N'BRN', 35, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'673')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (38, N'Bulgaria', N'BGR', 36, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'359')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (39, N'Burkina Faso', N'BFA', 37, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'226')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (40, N'Burundi', N'BDI', 38, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'257')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (41, N'Cambodia', N'KHM', 39, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'855')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (42, N'Cameroon', N'CMR', 40, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'237')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (44, N'Cape Verde', N'CPV', 42, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'238')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (45, N'Cayman Islands', N'CYM', 43, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'1')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (46, N'Central African Republic', N'CAF', 44, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'236')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (47, N'Chad', N'TCD', 45, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'235')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (48, N'Chile', N'CHL', 46, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'56')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (49, N'China', N'CHN', 47, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'86')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (50, N'Christmas Island', N'CXR', 48, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'672')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (51, N'Cocos (Keeling) Islands', N'CCK', 49, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'672')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (52, N'Colombia', N'COL', 50, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'57')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (53, N'Comoros', N'COM', 51, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'269')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (54, N'Congo', N'COG', 52, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'242')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (55, N'Congo, The Democratic Republic Of The', N'COD', 53, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'243')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (56, N'Cook Islands', N'COK', 54, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'682')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (57, N'Costa Rica', N'CRI', 55, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'506')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (58, N'Côte DIvoire', N'CIV', 56, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'225')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (59, N'Croatia', N'HRV', 57, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'385')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (60, N'Cuba', N'CUB', 58, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'53')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (61, N'Cyprus', N'CYP', 60, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'357')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (62, N'Czech Republic', N'CZE', 61, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'420')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (63, N'Denmark', N'DNK', 62, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'45')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (64, N'Djibouti', N'DJI', 63, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'253')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (65, N'Dominica', N'DMA', 64, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'1')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (66, N'Dominican Republic', N'DOM', 65, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'1')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (67, N'Ecuador', N'ECU', 66, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'593')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (68, N'Egypt', N'EGY', 67, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'20')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (69, N'El Salvador', N'SLV', 68, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'503')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (70, N'Equatorial Guinea', N'GNQ', 69, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'240')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (71, N'Eritrea', N'ERI', 70, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'291')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (72, N'Estonia', N'EST', 71, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'372')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (73, N'Ethiopia', N'ETH', 72, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'251')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (74, N'Falkland Islands  (Malvinas)', N'FLK', 73, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'500')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (75, N'Faroe Islands', N'FRO', 74, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'298')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (76, N'Fiji', N'FJI', 75, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'679')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (77, N'Finland', N'FIN', 76, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'358')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (78, N'France', N'FRA', 77, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'33')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (79, N'French Guiana', N'GUF', 78, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'594')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (80, N'French Polynesia', N'PYF', 79, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'689')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (81, N'French Southern Territories', N'ATF', 80, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'672')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (82, N'Gabon', N'GAB', 81, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'241')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (83, N'Gambia', N'GMB', 82, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'220')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (84, N'Germany', N'DEU', 84, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'49')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (85, N'Ghana', N'GHA', 85, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'233')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (86, N'Gibraltar', N'GIB', 86, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'350')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (87, N'Greece', N'GRC', 87, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'30')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (88, N'Greenland', N'GRL', 88, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'299')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (89, N'Grenada', N'GRD', 89, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'1')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (90, N'Guadeloupe', N'GLP', 90, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'590')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (91, N'Guam', N'GUM', 91, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'1')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (92, N'Guatemala', N'GTM', 92, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'502')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (93, N'Guernsey', N'GGY', 93, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'44')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (94, N'Guinea', N'GIN', 94, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'224')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (95, N'Guinea-Bissau', N'GNB', 95, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'245')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (96, N'Guyana', N'GUY', 96, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'592')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (97, N'Haiti', N'HTI', 97, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'509')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (98, N'Heard and McDonald Islands', N'HMD', 98, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'672')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (99, N'Holy See (Vatican City State)', N'VAT', 99, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'39')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (100, N'Honduras', N'HND', 100, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'504')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (101, N'Hong Kong', N'HKG', 101, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'852')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (102, N'Hungary', N'HUN', 102, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'36')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (103, N'Iceland', N'ISL', 103, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'354')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (105, N'Indonesia', N'IDN', 105, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'62')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (106, N'Iran, Islamic Republic Of', N'IRN', 106, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'98')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (107, N'Iraq', N'IRQ', 107, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'964')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (108, N'Ireland', N'IRL', 108, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'353')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (109, N'Isle of Man', N'IMN', 109, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'44')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (110, N'Israel', N'ISR', 110, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'972')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (111, N'Italy', N'ITA', 111, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'39')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (112, N'Jamaica', N'JAM', 112, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'1')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (113, N'Japan', N'JPN', 113, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'81')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (114, N'Jersey', N'JEY', 114, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'44')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (115, N'Jordan', N'JOR', 115, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'962')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (116, N'Kazakhstan', N'KAZ', 116, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'7')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (117, N'Kenya', N'KEN', 117, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'254')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (118, N'Kiribati', N'KIR', 118, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'686')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (119, N'Korea, Republic of', N'KOR', 120, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'82')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (120, N'Korea, Democratic People\ Republic Of', N'PRK', 119, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'850')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (121, N'Kuwait', N'KWT', 121, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'965')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (122, N'Kyrgyzstan', N'KGZ', 122, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'996')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (123, N'Lao People\ Democratic Republic', N'LAO', 123, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'856')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (124, N'Latvia', N'LVA', 124, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'371')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (125, N'Lebanon', N'LBN', 125, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'961')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (126, N'Lesotho', N'LSO', 126, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'266')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (127, N'Liberia', N'LBR', 127, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'231')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (128, N'Libyan Arab Jamahiriya', N'LBY', 128, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'218')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (129, N'Liechtenstein', N'LIE', 129, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'423')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (130, N'Lithuania', N'LTU', 130, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'370')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (131, N'Luxembourg', N'LUX', 131, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'352')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (132, N'Macao', N'MAC', 132, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'853')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (133, N'Macedonia, the Former Yugoslav Republic Of', N'MKD', 133, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'389')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (134, N'Madagascar', N'MDG', 134, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'261')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (135, N'Malawi', N'MWI', 135, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'265')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (136, N'Malaysia', N'MYS', 136, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'60')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (137, N'Maldives', N'MDV', 137, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'960')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (138, N'Mali', N'MLI', 138, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'223')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (139, N'Malta', N'MLT', 139, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'356')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (140, N'Marshall Islands', N'MHL', 140, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'692')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (141, N'Martinique', N'MTQ', 141, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'596')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (142, N'Mauritania', N'MRT', 142, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'222')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (143, N'Mauritius', N'MUS', 143, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'230')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (144, N'Mayotte', N'MYT', 144, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'269')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (145, N'Mexico', N'MEX', 145, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'52')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (146, N'Micronesia, Federated States Of', N'FSM', 146, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'691')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (147, N'Moldova, Republic of', N'MDA', 147, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'373')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (148, N'Monaco', N'MCO', 148, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'377')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (149, N'Mongolia', N'MNG', 149, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'976')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (150, N'Montenegro', N'MNE', 150, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'382')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (151, N'Montserrat', N'MSR', 151, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'1')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (152, N'Morocco', N'MAR', 152, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'212')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (153, N'Mozambique', N'MOZ', 153, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'258')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (154, N'Myanmar', N'MMR', 154, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'95')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (155, N'Namibia', N'NAM', 155, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'264')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (156, N'Nauru', N'NRU', 156, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'674')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (157, N'Nepal', N'NPL', 157, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'977')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (158, N'Netherlands', N'NLD', 158, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'31')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (159, N'Netherlands Antilles', N'ANT', 159, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'599')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (160, N'New Caledonia', N'NCL', 160, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'687')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (161, N'New Zealand', N'NZL', 161, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'64')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (162, N'Nicaragua', N'NIC', 162, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'505')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (163, N'Niger', N'NER', 163, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'227')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (164, N'Nigeria', N'NGA', 164, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'234')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (165, N'Niue', N'NIU', 165, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'683')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (166, N'Norfolk Island', N'NFK', 166, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'672')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (167, N'Northern Mariana Islands', N'MNP', 167, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'1')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (168, N'Norway', N'NOR', 168, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'47')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (169, N'Oman', N'OMN', 169, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'968')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (170, N'Pakistan', N'PAK', 170, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'92')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (171, N'Palau', N'PLW', 171, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'680')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (172, N'Palestinian Territory, Occupied', N'PSE', 172, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'970')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (173, N'Panama', N'PAN', 173, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'507')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (174, N'Papua New Guinea', N'PNG', 174, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'675')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (175, N'Paraguay', N'PRY', 175, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'595')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (176, N'Peru', N'PER', 176, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'51')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (177, N'Philippines', N'PHL', 177, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'63')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (178, N'Saint Pierre And Miquelon', N'SPM', 192, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'508')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (179, N'Pitcairn', N'PCN', 178, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'872')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (180, N'Poland', N'POL', 179, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'48')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (181, N'Portugal', N'PRT', 180, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'351')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (182, N'Puerto Rico', N'PRI', 181, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'1')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (183, N'Qatar', N'QAT', 182, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'974')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (184, N'Réunion', N'REU', 183, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'262')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (185, N'Romania', N'ROU', 184, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'40')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (186, N'Russian Federation', N'RUS', 185, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'7')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (187, N'Rwanda', N'RWA', 186, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'250')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (188, N'Saint Helena, Ascension and Tristan Da Cunha', N'SHN', 188, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'290')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (189, N'Saint Kitts And Nevis', N'KNA', 189, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'1')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (190, N'Saint Lucia', N'LCA', 190, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'1')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (191, N'Saint Vincent And The Grenedines', N'VCT', 193, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'1')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (192, N'Samoa', N'WSM', 194, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'685')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (193, N'San Marino', N'SMR', 195, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'378')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (194, N'Sao Tome and Principe', N'STP', 196, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'239')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (195, N'Saudi Arabia', N'SAU', 197, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'966')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (196, N'Senegal', N'SEN', 198, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'221')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (197, N'Serbia', N'SRB', 199, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'381')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (198, N'Seychelles', N'SYC', 200, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'248')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (199, N'Sierra Leone', N'SLE', 201, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'232')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (200, N'Singapore', N'SGP', 202, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'65')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (201, N'Slovakia', N'SVK', 204, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'421')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (202, N'Slovenia', N'SVN', 205, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'386')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (203, N'Solomon Islands', N'SLB', 206, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'667')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (204, N'Somalia', N'SOM', 207, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'252')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (205, N'South Africa', N'ZAF', 208, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'27')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (206, N'South Georgia and the South Sandwich Islands', N'SGS', 209, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'500')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (207, N'Spain', N'ESP', 211, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'34')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (208, N'Sri Lanka', N'LKA', 212, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'94')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (209, N'Sudan', N'SDN', 213, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'249')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (210, N'Suriname', N'SUR', 214, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'597')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (211, N'Svalbard And Jan Mayen', N'SJM', 215, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'47')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (212, N'Swaziland', N'SWZ', 216, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'268')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (213, N'Sweden', N'SWE', 217, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'46')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (214, N'Switzerland', N'CHE', 218, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'41')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (215, N'Syrian Arab Republic', N'SYR', 219, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'963')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (216, N'Taiwan, Province Of China', N'TWN', 220, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'886')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (217, N'Tajikistan', N'TJK', 221, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'992')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (218, N'Tanzania, United Republic of', N'TZA', 222, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'255')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (219, N'Thailand', N'THA', 223, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'66')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (220, N'Timor-Leste', N'TLS', 224, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'670')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (221, N'Togo', N'TGO', 225, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'228')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (222, N'Tokelau', N'TKL', 226, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'690')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (223, N'Tonga', N'TON', 227, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'676')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (224, N'Trinidad and Tobago', N'TTO', 228, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'1')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (225, N'Tunisia', N'TUN', 229, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'216')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (226, N'Turkey', N'TUR', 230, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'90')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (227, N'Turkmenistan', N'TKM', 231, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'993')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (228, N'Turks and Caicos Islands', N'TCA', 232, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'1')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (229, N'Tuvalu', N'TUV', 233, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'688')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (230, N'Uganda', N'UGA', 234, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'256')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (231, N'Ukraine', N'UKR', 235, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'380')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (232, N'United Arab Emirates', N'ARE', 236, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'971')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (233, N'United Kingdom', N'GBR', 237, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'44')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (235, N'United States Minor Outlying Islands', N'UMI', 238, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'1')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (236, N'Uruguay', N'URY', 240, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'598')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (237, N'Uzbekistan', N'UZB', 241, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'998')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (238, N'Vanuatu', N'VUT', 242, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'678')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (239, N'Venezuela, Bolivarian Republic of', N'VEN', 243, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'58')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (240, N'Viet Nam', N'VNM', 244, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'84')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (241, N'Virgin Islands, British', N'VGB', 245, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'1')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (242, N'Virgin Islands, U.S.', N'VIR', 246, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'1')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (243, N'Wallis and Futuna', N'WLF', 247, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'681')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (244, N'Western Sahara', N'ESH', 248, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'212')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (245, N'Yemen', N'YEM', 249, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'967')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (246, N'Zambia', N'ZMB', 250, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'260')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (247, N'Zimbabwe', N'ZWE', 251, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'263')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (248, N'Saint Barthélemy', N'BLM', 187, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'590')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (249, N'Saint Martin', N'MAF', 191, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'590')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (250, N'Bonaire, Sint Eustatius and Saba', N'BES', 29, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'599')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (251, N'Curaçao', N'CUW', 59, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'599')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (252, N'Sint Maarten (Dutch part)', N'SXM', 203, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'721')
GO
INSERT [dbo].[mstr_Country] ([CountryID], [Description], [CountryCode], [SortOrder], [CreatedOn], [LastUpdatedOn], [IsDeleted], [CreatedByID], [LastUpdatedByID], [PhoneCode]) VALUES (253, N'South Sudan', N'SSD', 210, CAST(N'2014-02-28 00:00:00.000' AS DateTime), CAST(N'2014-02-28 00:00:00.000' AS DateTime), 0, NULL, NULL, N'211')
GO
SET IDENTITY_INSERT [dbo].[mstr_Country] OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'mstr_Country', N'COLUMN',N'CountryID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique key to refer to the country record.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'mstr_Country', @level2type=N'COLUMN',@level2name=N'CountryID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'mstr_Country', N'COLUMN',N'Description'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The readable description of the country name.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'mstr_Country', @level2type=N'COLUMN',@level2name=N'Description'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'mstr_Country', N'COLUMN',N'CountryCode'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The abbreviation of the country.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'mstr_Country', @level2type=N'COLUMN',@level2name=N'CountryCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'mstr_Country', N'COLUMN',N'SortOrder'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Index used when sorting countries.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'mstr_Country', @level2type=N'COLUMN',@level2name=N'SortOrder'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'mstr_Country', N'COLUMN',N'CreatedOn'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date on which the record was created.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'mstr_Country', @level2type=N'COLUMN',@level2name=N'CreatedOn'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'mstr_Country', N'COLUMN',N'LastUpdatedOn'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date on which the record was last updated on.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'mstr_Country', @level2type=N'COLUMN',@level2name=N'LastUpdatedOn'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'mstr_Country', N'COLUMN',N'IsDeleted'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Boolean representing whether or not the record has been deleted.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'mstr_Country', @level2type=N'COLUMN',@level2name=N'IsDeleted'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'mstr_Country', N'COLUMN',N'CreatedByID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Represents the User`s ID whom created the record.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'mstr_Country', @level2type=N'COLUMN',@level2name=N'CreatedByID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'mstr_Country', N'COLUMN',N'LastUpdatedByID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Represents the User`s ID whom last updated the record.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'mstr_Country', @level2type=N'COLUMN',@level2name=N'LastUpdatedByID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'mstr_Country', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Master table representing all possible countries.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'mstr_Country'
GO
