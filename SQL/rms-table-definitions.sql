USE [RetailData]
GO

/****** Object:  Table [dbo].[PRODUCT]    Script Date: 01/20/2017 20:33:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[PRODUCT](
	[StyleCode] [int] NOT NULL,
	[SKU] [int] NOT NULL,
	[SizeId] [int] NULL,
	[SizeCode] [varchar](10) NULL,
	[ColorCode] [varchar](10) NULL,
	[AttrCode] [varchar](10) NULL,
	[Season] [varchar](20) NULL,
	[StatusCode] [char](1) NULL,
	[ALU] [varchar](150) NULL,
	[UPC] [varchar](30) NULL,
	[GLAccount] [varchar](30) NULL,
	[NonInventory] [bit] NOT NULL,
	[LastCost] [decimal](18, 5) NULL,
	[AvgCost] [decimal](18, 5) NULL,
	[WebProduct] [bit] NOT NULL,
	[CreationDate] [datetime] NULL,
	[ChangeDate] [datetime] NULL,
	[CreatedBy] [varchar](20) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[RetailPrice] [decimal](18, 5) NULL,
	[SuggestedPrice] [decimal](18, 5) NULL,
	[FirstPrice] [decimal](18, 5) NULL,
	[AskforSerialNumber] [bit] NOT NULL,
	[NonDiscountable] [bit] NOT NULL,
	[AskForPrice] [bit] NOT NULL,
	[AskForClerk] [bit] NOT NULL,
	[WebExported] [int] NOT NULL,
	[Exported] [int] NOT NULL,
	[ExportedDate] [datetime] NULL,
	[ExternalReferenceId] [varchar](50) NULL,
	[ProductReference] [varchar](50) NULL,
	[ProductReferenceNo] [int] NULL,
	[PrintInventoryTags] [bit] NOT NULL,
	[FirstMarkDownDate] [datetime] NULL,
	[LastMarkDownDate] [datetime] NULL,
	[FormerRetailPrice] [decimal](18, 5) NULL,
	[FormerCost] [decimal](18, 5) NULL,
	[AllowDecimalQty] [bit] NOT NULL,
	[DiscontinueDate] [datetime] NULL,
	[DeletedDate] [datetime] NULL,
	[FCLastCost] [decimal](18, 5) NULL,
	[FCRetailPrice] [decimal](18, 5) NULL,
	[FCLastCostCurrencyId] [int] NULL,
	[FCRetailPriceCurrencyId] [int] NULL,
	[TaxCode] [tinyint] NULL,
	[DWProcessed] [bit] NOT NULL,
	[COOnHandQty] [decimal](18, 5) NULL,
	[COOnOrderedQty] [decimal](18, 5) NULL,
	[COCommittedQty] [decimal](18, 5) NULL,
	[COInTransitQty] [decimal](18, 5) NULL,
	[LastSoldDate] [datetime] NULL,
	[LastOrderDate] [datetime] NULL,
	[FirstReceiveDate] [datetime] NULL,
	[LastReceiveDate] [datetime] NULL,
	[IsMarkDown] [bit] NOT NULL,
	[MkdwReasonCode] [varchar](8) NULL,
	[Info1] [varchar](30) NULL,
	[SpecialOrder] [bit] NOT NULL,
	[CartonCode] [smallint] NULL,
	[SKUWeight] [decimal](18, 5) NULL,
	[PollStatusCode] [tinyint] NOT NULL,
	[PriceEventNo] [int] NULL,
 CONSTRAINT [PK_PRODUCT] PRIMARY KEY CLUSTERED 
(
	[SKU] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF_PRODUCT_NonInventory]  DEFAULT ((0)) FOR [NonInventory]
GO

ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF_PRODUCT_WebProduct]  DEFAULT ((0)) FOR [WebProduct]
GO

ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF_PRODUCT_AskforSerialNumber]  DEFAULT ((0)) FOR [AskforSerialNumber]
GO

ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF_PRODUCT_NonDiscountable]  DEFAULT ((0)) FOR [NonDiscountable]
GO

ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF_PRODUCT_AskForPrice]  DEFAULT ((0)) FOR [AskForPrice]
GO

ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF_PRODUCT_AskForClerk]  DEFAULT ((0)) FOR [AskForClerk]
GO

ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF_PRODUCT_WebPollStatusCode]  DEFAULT ((0)) FOR [WebExported]
GO

ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF_PRODUCT_Exported]  DEFAULT ((0)) FOR [Exported]
GO

ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF_PRODUCT_PrintInventoryTags]  DEFAULT ((1)) FOR [PrintInventoryTags]
GO

ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF_PRODUCT_AllowDecimalQty]  DEFAULT ((0)) FOR [AllowDecimalQty]
GO

ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF_PRODUCT_DWProcessed]  DEFAULT ((0)) FOR [DWProcessed]
GO

ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF_PRODUCT_COOnHandQty]  DEFAULT ((0)) FOR [COOnHandQty]
GO

ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF_PRODUCT_COOnOrderQty]  DEFAULT ((0)) FOR [COOnOrderedQty]
GO

ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF_PRODUCT_COCommitedQty]  DEFAULT ((0)) FOR [COCommittedQty]
GO

ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF_PRODUCT_COInTransitQty]  DEFAULT ((0)) FOR [COInTransitQty]
GO

ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF_PRODUCT_IsMarkDown]  DEFAULT ((0)) FOR [IsMarkDown]
GO

ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF_PRODUCT_SpecialOrder]  DEFAULT ((0)) FOR [SpecialOrder]
GO

ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF_PRODUCT_SKUWeight]  DEFAULT ((0)) FOR [SKUWeight]
GO

ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF_PRODUCT_PollStatusCode]  DEFAULT ((0)) FOR [PollStatusCode]
GO

USE [RetailData]
GO

/****** Object:  Table [dbo].[PRODUCT_STORE]    Script Date: 01/20/2017 20:34:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PRODUCT_STORE](
	[StoreNo] [int] NOT NULL,
	[SKU] [int] NOT NULL,
	[OnHandQty] [decimal](18, 5) NULL,
	[OnOrderedQty] [decimal](18, 5) NULL,
	[CommittedQty] [decimal](18, 5) NULL,
	[InTransitQty] [decimal](18, 5) NULL,
	[LSoldDate] [datetime] NULL,
	[LOrderDate] [datetime] NULL,
	[FReceiveDate] [datetime] NULL,
	[LReceiveDate] [datetime] NULL,
	[PollStatusDate] [datetime] NULL,
	[PollStatusCode] [tinyint] NOT NULL,
	[Blocked] [bit] NOT NULL,
 CONSTRAINT [PK__PRODUCT_STORE] PRIMARY KEY CLUSTERED 
(
	[StoreNo] ASC,
	[SKU] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[PRODUCT_STORE] ADD  CONSTRAINT [DF_PRODUCT_STORE_PollStatusCode]  DEFAULT ((0)) FOR [PollStatusCode]
GO

ALTER TABLE [dbo].[PRODUCT_STORE] ADD  CONSTRAINT [DF_PRODUCT_STORE_Blocked]  DEFAULT ((0)) FOR [Blocked]
GO


USE [RetailData]
GO

/****** Object:  Table [dbo].[STORE]    Script Date: 01/20/2017 20:35:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[STORE](
	[StoreNo] [int] NOT NULL,
	[RegionCode] [varchar](10) NULL,
	[PriceLevelId] [tinyint] NULL,
	[StoreCode] [varchar](10) NULL,
	[StoreName] [varchar](50) NULL,
	[CountryId] [int] NULL,
	[Address1] [varchar](200) NULL,
	[Address2] [varchar](200) NULL,
	[Address3] [varchar](200) NULL,
	[City] [varchar](30) NULL,
	[State] [varchar](20) NULL,
	[ZipCode] [varchar](10) NULL,
	[Phone1] [varchar](20) NULL,
	[Phone2] [varchar](20) NULL,
	[Fax] [varchar](20) NULL,
	[Directions] [varchar](1000) NULL,
	[OpenDate] [datetime] NULL,
	[CloseDate] [datetime] NULL,
	[Warehouse] [bit] NOT NULL,
	[StoreType] [char](1) NULL,
	[ActiveStatus] [bit] NOT NULL,
	[MainTimeDiff] [int] NOT NULL,
	[Info1] [varchar](50) NULL,
	[Info2] [varchar](50) NULL,
	[Info3] [varchar](50) NULL,
	[Info4] [varchar](50) NULL,
	[Info5] [varchar](50) NULL,
	[RuleNo] [int] NULL,
	[CurrencyId] [tinyint] NULL,
	[GroupId] [int] NULL,
	[Virtual] [bit] NOT NULL,
	[SqFt] [decimal](9, 2) NULL,
	[Manager] [varchar](10) NULL,
	[MaxPercentAllowedReturn] [decimal](9, 2) NOT NULL,
	[BlockedCustomerType] [char](1) NULL,
	[UseReceiptFlag1ForReceiptSequence] [bit] NOT NULL,
	[StoreOrder] [smallint] NOT NULL,
	[Outlet] [bit] NOT NULL,
	[EOMExclude] [bit] NOT NULL,
	[GatewayParameters] [varchar](8000) NULL,
	[StoreEmail] [varchar](100) NULL,
	[TimeFormat] [tinyint] NOT NULL,
	[DummyCustomerNo] [int] NULL,
	[SOFraudDetection] [bit] NOT NULL,
	[GiftCardDummyItem] [int] NULL,
	[AllowNegativeOnHand] [bit] NOT NULL,
	[CheckAvailabilityOn] [int] NOT NULL,
	[MainDefaultNo] [int] NULL,
	[CartonPrefix] [varchar](5) NULL,
	[StoreExternalId] [varchar](50) NULL,
	[CleanHoldsAtZOut] [bit] NOT NULL,
	[TradeName] [varchar](30) NULL,
	[WebSiteUrl] [varchar](1000) NULL,
	[WebServicePollURL] [varchar](1000) NULL,
	[CheckZOutBeforeTrx] [bit] NOT NULL,
	[StoreVendors] [varchar](3000) NULL,
	[ShowInventoryAsCompany] [bit] NOT NULL,
	[CheckZOutDate] [datetime] NULL,
	[OnlyOneZOutPerDay] [bit] NOT NULL,
	[AllowRemoteShipment] [bit] NOT NULL,
	[CheckDepositInfoBeforeZOut] [bit] NOT NULL,
	[StoreLogo] [image] NULL,
	[PollStatusCode] [tinyint] NOT NULL,
	[AllowProcessShipment] [bit] NOT NULL,
	[ShowAlwaysLocalStock] [bit] NOT NULL,
	[BlindInTransitReceiving] [bit] NOT NULL,
	[FirstSearchReturnsOnMain] [bit] NOT NULL,
	[CreationDate] [datetime] NULL,
	[CreatedBy] [varchar](10) NULL,
	[ChangeDate] [datetime] NULL,
	[ModifiedBy] [varchar](10) NULL,
	[EReceiptAgentId] [tinyint] NULL,
	[ShowInMobile] [bit] NOT NULL,
	[EReceiptClientId] [varchar](20) NULL,
	[Info6] [varchar](50) NULL,
	[Info7] [varchar](50) NULL,
	[Info8] [varchar](50) NULL,
	[Info9] [varchar](50) NULL,
	[Info10] [varchar](50) NULL,
	[ImagesURL] [varchar](1000) NULL,
	[SOFraudDetectionMethod] [tinyint] NOT NULL,
	[StorageByCarton] [bit] NOT NULL,
	[FirstSearchCustomersOnMain] [bit] NOT NULL,
	[DBServerIp] [varchar](50) NULL,
	[DBName] [varchar](50) NULL,
 CONSTRAINT [PK__STORE] PRIMARY KEY CLUSTERED 
(
	[StoreNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[STORE]  WITH CHECK ADD  CONSTRAINT [FK__STORE__STORE_TYPE] FOREIGN KEY([StoreType])
REFERENCES [dbo].[STORE_TYPE] ([StoreType])
GO

ALTER TABLE [dbo].[STORE] CHECK CONSTRAINT [FK__STORE__STORE_TYPE]
GO

ALTER TABLE [dbo].[STORE]  WITH CHECK ADD  CONSTRAINT [FK_STORE_EMPLOYEE] FOREIGN KEY([Manager])
REFERENCES [dbo].[EMPLOYEE] ([EmployeeCode])
GO

ALTER TABLE [dbo].[STORE] CHECK CONSTRAINT [FK_STORE_EMPLOYEE]
GO

ALTER TABLE [dbo].[STORE]  WITH CHECK ADD  CONSTRAINT [FK_STORE_POLL_STATUS] FOREIGN KEY([PollStatusCode])
REFERENCES [dbo].[POLL_STATUS] ([PollStatusCode])
ON UPDATE CASCADE
GO

ALTER TABLE [dbo].[STORE] CHECK CONSTRAINT [FK_STORE_POLL_STATUS]
GO

ALTER TABLE [dbo].[STORE] ADD  CONSTRAINT [DF_STORE_Warehouse]  DEFAULT ((0)) FOR [Warehouse]
GO

ALTER TABLE [dbo].[STORE] ADD  CONSTRAINT [DF_STORE_ActiveStatus]  DEFAULT ((1)) FOR [ActiveStatus]
GO

ALTER TABLE [dbo].[STORE] ADD  CONSTRAINT [DF_STORE_MainTimeDiff]  DEFAULT ((0)) FOR [MainTimeDiff]
GO

ALTER TABLE [dbo].[STORE] ADD  CONSTRAINT [DF_STORE_Virtual]  DEFAULT ((0)) FOR [Virtual]
GO

ALTER TABLE [dbo].[STORE] ADD  CONSTRAINT [DF_STORE_MaxPercentAllowedReturn]  DEFAULT ((0)) FOR [MaxPercentAllowedReturn]
GO

ALTER TABLE [dbo].[STORE] ADD  CONSTRAINT [DF_STORE_UseReceiptFlag1ForReceiptSequence]  DEFAULT ((0)) FOR [UseReceiptFlag1ForReceiptSequence]
GO

ALTER TABLE [dbo].[STORE] ADD  CONSTRAINT [DF_STORE_StoreOrder]  DEFAULT ((0)) FOR [StoreOrder]
GO

ALTER TABLE [dbo].[STORE] ADD  CONSTRAINT [DF_STORE_Outlet]  DEFAULT ((0)) FOR [Outlet]
GO

ALTER TABLE [dbo].[STORE] ADD  CONSTRAINT [DF_STORE_EOMExclude]  DEFAULT ((0)) FOR [EOMExclude]
GO

ALTER TABLE [dbo].[STORE] ADD  CONSTRAINT [DF_STORE_TimeFormat]  DEFAULT ((0)) FOR [TimeFormat]
GO

ALTER TABLE [dbo].[STORE] ADD  CONSTRAINT [DF_STORE_FraudDetection]  DEFAULT ((0)) FOR [SOFraudDetection]
GO

ALTER TABLE [dbo].[STORE] ADD  CONSTRAINT [DF_STORE_AllowNegativeOnHand]  DEFAULT ((1)) FOR [AllowNegativeOnHand]
GO

ALTER TABLE [dbo].[STORE] ADD  CONSTRAINT [DF_STORE_CheckAvailabilityOn]  DEFAULT ((0)) FOR [CheckAvailabilityOn]
GO

ALTER TABLE [dbo].[STORE] ADD  CONSTRAINT [DF_STORE_CleanHoldsAtZOut]  DEFAULT ((0)) FOR [CleanHoldsAtZOut]
GO

ALTER TABLE [dbo].[STORE] ADD  CONSTRAINT [DF_STORE_CheckZOutBeforeTrx]  DEFAULT ((0)) FOR [CheckZOutBeforeTrx]
GO

ALTER TABLE [dbo].[STORE] ADD  CONSTRAINT [DF_STORE_LookInventoryAsCompany]  DEFAULT ((0)) FOR [ShowInventoryAsCompany]
GO

ALTER TABLE [dbo].[STORE] ADD  CONSTRAINT [DF_STORE_OnlyOneZOutPerDay]  DEFAULT ((0)) FOR [OnlyOneZOutPerDay]
GO

ALTER TABLE [dbo].[STORE] ADD  CONSTRAINT [DF_STORE_AllowRemoteShipment]  DEFAULT ((1)) FOR [AllowRemoteShipment]
GO

ALTER TABLE [dbo].[STORE] ADD  CONSTRAINT [DF_STORE_CheckDepositInfoBeforeZOut]  DEFAULT ((0)) FOR [CheckDepositInfoBeforeZOut]
GO

ALTER TABLE [dbo].[STORE] ADD  CONSTRAINT [DF_STORE_PollStatusCode]  DEFAULT ((0)) FOR [PollStatusCode]
GO

ALTER TABLE [dbo].[STORE] ADD  CONSTRAINT [DF_STORE_AllowProcessShipment]  DEFAULT ((1)) FOR [AllowProcessShipment]
GO

ALTER TABLE [dbo].[STORE] ADD  CONSTRAINT [DF_STORE_ShowAlwaysLocalStock]  DEFAULT ((0)) FOR [ShowAlwaysLocalStock]
GO

ALTER TABLE [dbo].[STORE] ADD  CONSTRAINT [DF_STORE_BlindInTransitReceiving]  DEFAULT ((0)) FOR [BlindInTransitReceiving]
GO

ALTER TABLE [dbo].[STORE] ADD  CONSTRAINT [DF_STORE_FirstSearchReturnsOnMain]  DEFAULT ((0)) FOR [FirstSearchReturnsOnMain]
GO

ALTER TABLE [dbo].[STORE] ADD  CONSTRAINT [DF_STORE_ShowInMobile]  DEFAULT ((1)) FOR [ShowInMobile]
GO

ALTER TABLE [dbo].[STORE] ADD  CONSTRAINT [DF_STORE_SOFraudDetectionMethod]  DEFAULT ((1)) FOR [SOFraudDetectionMethod]
GO

ALTER TABLE [dbo].[STORE] ADD  CONSTRAINT [DF_STORE_AllowPurchaseByCarton]  DEFAULT ((0)) FOR [StorageByCarton]
GO

ALTER TABLE [dbo].[STORE] ADD  CONSTRAINT [DF_STORE_FirstSearchCustomersOnMain]  DEFAULT ((0)) FOR [FirstSearchCustomersOnMain]
GO


