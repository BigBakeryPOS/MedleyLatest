USE [Medly_Wh]
GO
/****** Object:  Table [dbo].[AddCustomer]    Script Date: 06/07/2023 18:47:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AddCustomer](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[Initialadditiondate] [date] NULL,
	[CustomerName] [varchar](50) NULL,
	[ContactName] [varchar](50) NULL,
	[ContactEmail] [varchar](50) NULL,
	[ContactNumber] [nvarchar](50) NULL,
	[Validtill] [date] NULL,
	[Defaultcurrency] [varchar](50) NULL,
	[CustomerStatus] [varchar](50) NULL,
	[CustomerQualification] [varchar](50) NULL,
	[AddressLine1] [varchar](50) NULL,
	[AddressLine2] [varchar](50) NULL,
	[AddressLine3] [varchar](50) NULL,
	[Town] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[Postcode] [int] NULL,
	[SelectApprover] [varchar](50) NULL,
 CONSTRAINT [PK_AddCustomer] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CreatePO]    Script Date: 06/07/2023 18:47:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CreatePO](
	[PONumber] [int] NOT NULL,
	[Product] [varchar](50) NULL,
	[LicenseNo] [varchar](50) NULL,
	[ProductName] [varchar](50) NULL,
	[Dosageform] [varchar](50) NULL,
	[Strength] [varchar](50) NULL,
	[PackType] [varchar](50) NULL,
	[PackSize] [varchar](50) NULL,
	[Supplier] [varchar](50) NULL,
	[POQty] [varchar](50) NULL,
	[PriceperPack] [varchar](50) NULL,
	[TotalProductAmt] [int] NULL,
	[SelectApprover] [varchar](50) NULL,
 CONSTRAINT [PK_CreatePO] PRIMARY KEY CLUSTERED 
(
	[PONumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Designation]    Script Date: 06/07/2023 18:47:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Designation](
	[DesignationID] [int] IDENTITY(1,1) NOT NULL,
	[Designation] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Goodsreceipt]    Script Date: 06/07/2023 18:47:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Goodsreceipt](
	[GRNnumber] [int] NOT NULL,
	[BatchNumber] [int] NULL,
	[Receivedquantity] [int] NULL,
	[Manufacturingdate] [date] NULL,
	[Expirydate] [date] NULL,
	[Noofpallets] [int] NULL,
	[Batchstatus] [varchar](50) NULL,
	[Selectwarehouse] [varchar](50) NULL,
	[Unitquantity] [int] NULL,
	[Palatereferencenumber] [int] NULL,
	[Selectapprover] [varchar](50) NULL,
 CONSTRAINT [PK_Goodsreceipt] PRIMARY KEY CLUSTERED 
(
	[GRNnumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Suplier]    Script Date: 06/07/2023 18:47:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Suplier](
	[SupplierID] [int] IDENTITY(1,1) NOT NULL,
	[Initialadditionaldate] [date] NULL,
	[CompanyName] [varchar](max) NULL,
	[ContactName] [varchar](max) NULL,
	[ContactEmail] [varchar](50) NULL,
	[ContactNumber] [nvarchar](50) NULL,
	[ValidTill] [date] NULL,
	[DefaultCurrency] [nvarchar](50) NULL,
	[SupplierStatus] [varchar](50) NULL,
	[SupplierQualification] [varchar](50) NULL,
	[AddressLine1] [varchar](max) NULL,
	[AddressLine2] [varchar](max) NULL,
	[AddressLine3] [varchar](max) NULL,
	[Town] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[PostCode] [nvarchar](50) NULL,
	[Status] [varchar](50) NULL,
	[SelectApproverid] [int] NULL,
	[AddressLine4] [varchar](50) NULL,
	[AddressLine5] [varchar](50) NULL,
	[ContactName1] [nvarchar](max) NULL,
	[ContactName2] [nvarchar](max) NULL,
	[ContactName3] [nvarchar](max) NULL,
	[ContactName4] [nvarchar](max) NULL,
 CONSTRAINT [PK_AddSuplier] PRIMARY KEY CLUSTERED 
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblCountry]    Script Date: 06/07/2023 18:47:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCountry](
	[CountryID] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [nvarchar](50) NULL,
	[CountryCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblCountry] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblEmployee]    Script Date: 06/07/2023 18:47:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblEmployee](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeName] [varchar](50) NULL,
	[DateofBirth] [date] NULL,
	[DateofJoining] [date] NULL,
	[Gender] [varchar](50) NULL,
	[Designation] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[PhoneNumber] [nvarchar](50) NULL,
	[Address] [varchar](max) NULL,
	[Approvarid] [int] NULL,
	[Status] [varchar](50) NULL,
 CONSTRAINT [PK_tblEmployee] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblGoodReceipts]    Script Date: 06/07/2023 18:47:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblGoodReceipts](
	[GRId] [int] IDENTITY(1,1) NOT NULL,
	[Poid] [int] NULL,
	[ProductId] [int] NULL,
	[License] [nvarchar](50) NULL,
	[Dosage] [nvarchar](50) NULL,
	[Strength] [nvarchar](50) NULL,
	[Packtype] [nvarchar](50) NULL,
	[Packsize] [int] NULL,
	[OrderQty] [int] NULL,
	[OrderAmt] [money] NULL,
	[Batchnumber] [nvarchar](50) NULL,
	[ReceivedQty] [int] NULL,
	[Manfactdate] [datetime] NULL,
	[ExpiryDate] [datetime] NULL,
	[PalletsQty] [int] NULL,
	[BatchStatus] [nvarchar](50) NULL,
	[ApproverId] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[GoodsReceiveddate] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblGoodsPicking]    Script Date: 06/07/2023 18:47:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblGoodsPicking](
	[PickupDate] [datetime] NULL,
	[SoId] [int] NULL,
	[SuppId] [int] NULL,
	[TotalQty] [int] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblLogin]    Script Date: 06/07/2023 18:47:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLogin](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblLogin] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TblPO]    Script Date: 06/07/2023 18:47:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TblPO](
	[Poid] [int] IDENTITY(1,1) NOT NULL,
	[SupplierId] [varchar](50) NULL,
	[Podatetime] [datetime] NULL,
	[ApproverId] [varchar](50) NULL,
	[Amount] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[IsGoodReceived] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblProduct]    Script Date: 06/07/2023 18:47:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblProduct](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[Initialadditiondate] [date] NULL,
	[Productname] [varchar](max) NULL,
	[Licenseno] [varchar](max) NULL,
	[Dosageform] [varchar](max) NULL,
	[Packtype] [varchar](max) NULL,
	[Packsize] [varchar](max) NULL,
	[Priceperpack] [varchar](50) NULL,
	[Strength] [varchar](max) NULL,
	[Currency] [varchar](50) NULL,
	[Productmanufacture] [varchar](50) NULL,
	[Productmanufacturecountry] [varchar](max) NULL,
	[Productcode] [varchar](50) NULL,
	[ProductGTINbarcode] [varchar](50) NULL,
	[Productaprovalauthority] [varchar](max) NULL,
	[Productaprovalstatus] [varchar](max) NULL,
	[Tax] [varchar](50) NULL,
	[Taxationtype] [varchar](50) NULL,
	[Productphoto] [image] NULL,
	[Selectaproval] [varchar](50) NULL,
	[Approvarid] [int] NULL,
	[Status] [varchar](50) NULL,
	[Validtill] [date] NULL,
	[Productcatogory] [varchar](50) NULL,
	[ProductQty] [int] NULL,
 CONSTRAINT [PK_Addproduct] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblSampling]    Script Date: 06/07/2023 18:47:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSampling](
	[SamplingId] [int] IDENTITY(1,1) NOT NULL,
	[BatchNo] [varchar](50) NULL,
	[SampleNo] [varchar](50) NULL,
	[Selectapproverid] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[CreatedDate] [date] NULL,
 CONSTRAINT [PK_tblSampling] PRIMARY KEY CLUSTERED 
(
	[SamplingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblSamproduct]    Script Date: 06/07/2023 18:47:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSamproduct](
	[SamplingId] [int] IDENTITY(1,1) NOT NULL,
	[GRId] [int] NULL,
	[BatchNo] [varchar](50) NULL,
	[ProductID] [int] NULL,
	[ProductName] [varchar](50) NULL,
	[Strength] [varchar](50) NULL,
	[Packtype] [varchar](50) NULL,
	[Packsize] [varchar](50) NULL,
	[BatchQty] [varchar](50) NULL,
	[Units] [varchar](50) NULL,
	[PalletsRefNo] [varchar](50) NULL,
	[SampleQty] [varchar](50) NULL,
	[FinalBatchQty] [varchar](50) NULL,
	[BatchStatus] [varchar](50) NULL,
	[Remark] [varchar](50) NULL,
 CONSTRAINT [PK_tblSamproduct] PRIMARY KEY CLUSTERED 
(
	[SamplingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TblSO]    Script Date: 06/07/2023 18:47:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TblSO](
	[Soid] [int] IDENTITY(1,1) NOT NULL,
	[SupplierId] [varchar](50) NULL,
	[SOdatetime] [datetime] NULL,
	[ApproverId] [varchar](50) NULL,
	[Amount] [varchar](50) NULL,
	[Status] [nchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblTraceablity]    Script Date: 06/07/2023 18:47:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblTraceablity](
	[TraceId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[GRId] [int] NULL,
	[ApproverId] [int] NULL,
	[Soid] [int] NULL,
	[CutomerId] [int] NULL,
	[GPNId] [int] NULL,
	[Batchnumber] [varchar](50) NULL,
	[Poid] [int] NULL,
 CONSTRAINT [PK_tblTraceablity] PRIMARY KEY CLUSTERED 
(
	[TraceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblTrancetraceablity]    Script Date: 06/07/2023 18:47:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblTrancetraceablity](
	[TransetraceId] [int] IDENTITY(1,1) NOT NULL,
	[Poid] [int] NULL,
	[Unitname] [varchar](50) NULL,
	[Qty] [int] NULL,
	[Status] [varchar](50) NULL,
	[GRId] [int] NULL,
	[TraceId] [int] NULL,
	[Palletsrefno] [nvarchar](50) NULL,
	[Batchnumber] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblTrancetraceablity] PRIMARY KEY CLUSTERED 
(
	[TransetraceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblTransGoodPicking]    Script Date: 06/07/2023 18:47:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTransGoodPicking](
	[GoodPickid] [int] NULL,
	[ProdId] [int] NULL,
	[PackSize] [int] NULL,
	[Qty] [int] NULL,
	[PricePerPack] [money] NULL,
	[VATPerc] [decimal](18, 0) NULL,
	[AmtTotal] [money] NULL,
	[Batchnumber] [nvarchar](50) NULL,
	[Unitname] [nvarchar](50) NULL,
	[TransGoodPicking] [int] IDENTITY(1,1) NOT NULL,
	[Palletsrefno] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblTransGoodReceipts]    Script Date: 06/07/2023 18:47:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTransGoodReceipts](
	[TransGRId] [int] IDENTITY(1,1) NOT NULL,
	[GRId] [int] NULL,
	[Unitname] [nvarchar](50) NULL,
	[Qty] [int] NULL,
	[SampleQty] [int] NULL,
	[FinalbatchQty] [int] NULL,
	[Palletsrefno] [nvarchar](50) NULL,
	[BatchStatus] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblTransPo]    Script Date: 06/07/2023 18:47:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblTransPo](
	[TransPo] [int] IDENTITY(1,1) NOT NULL,
	[Poid] [int] NULL,
	[Productid] [varchar](50) NULL,
	[LicenseNo] [varchar](50) NULL,
	[Productname] [varchar](50) NULL,
	[Dosageform] [varchar](50) NULL,
	[Strength] [varchar](50) NULL,
	[Packtype] [varchar](50) NULL,
	[Packsize] [varchar](50) NULL,
	[PoQty] [varchar](50) NULL,
	[Priceperpack] [varchar](50) NULL,
	[Productamt] [varchar](50) NULL,
	[IsGoodReceived] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblTranspotMaster]    Script Date: 06/07/2023 18:47:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblTranspotMaster](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[transpot] [varchar](50) NULL,
 CONSTRAINT [PK_tblTranspotMaster] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblTransSo]    Script Date: 06/07/2023 18:47:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblTransSo](
	[TransSo] [int] IDENTITY(1,1) NOT NULL,
	[Soid] [int] NULL,
	[Productid] [varchar](50) NULL,
	[LicenseNo] [varchar](50) NULL,
	[Productname] [varchar](50) NULL,
	[Dosageform] [varchar](50) NULL,
	[Strength] [varchar](50) NULL,
	[Packtype] [varchar](50) NULL,
	[Packsize] [varchar](50) NULL,
	[Customernameaddress] [varchar](max) NULL,
	[SoQty] [varchar](50) NULL,
	[Priceperpack] [varchar](50) NULL,
	[VAT] [varchar](50) NULL,
	[Totalamount] [varchar](50) NULL,
	[SupplierID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblTransSupplier]    Script Date: 06/07/2023 18:47:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTransSupplier](
	[TransSupplierID] [int] IDENTITY(1,1) NOT NULL,
	[SupplierID] [int] NULL,
	[PersonName] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Country] [nvarchar](50) NULL,
	[Postcode] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[CountryCode] [nvarchar](50) NULL,
	[EmailId] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblUnit]    Script Date: 06/07/2023 18:47:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUnit](
	[UnitId] [bigint] IDENTITY(1,1) NOT NULL,
	[Unitname] [nvarchar](50) NULL,
	[Floor] [int] NULL,
	[Isempty] [int] NULL,
	[TransGRId] [int] NULL,
	[ProductId] [int] NULL,
	[Batchnumber] [nvarchar](50) NULL,
	[Expirydate] [date] NULL,
	[TotalQty] [int] NULL,
	[Status] [nvarchar](50) NULL,
	[Palletsrefno] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblWarehouse]    Script Date: 06/07/2023 18:47:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblWarehouse](
	[WarehouseID] [int] IDENTITY(1,1) NOT NULL,
	[WarehouseName] [varchar](50) NULL,
	[WarehouseCode] [varchar](50) NULL,
	[FloorNo] [int] NULL,
	[UnitName] [varchar](50) NULL,
	[NumberofUnity] [varchar](50) NULL,
	[Selectapproval] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TempPo]    Script Date: 06/07/2023 18:47:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TempPo](
	[Poid] [int] IDENTITY(1,1) NOT NULL,
	[Productid] [int] NOT NULL,
	[Licenseno] [varchar](50) NULL,
	[Productname] [varchar](50) NULL,
	[Dosageform] [varchar](50) NULL,
	[Strength] [varchar](50) NULL,
	[Packtype] [varchar](50) NULL,
	[Packsize] [varchar](50) NULL,
	[PoQty] [varchar](50) NULL,
	[Priceperpack] [varchar](50) NULL,
	[Productamt] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TempSo]    Script Date: 06/07/2023 18:47:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TempSo](
	[Soid] [int] IDENTITY(1,1) NOT NULL,
	[Productid] [int] NULL,
	[Licenseno] [varchar](50) NULL,
	[Productname] [varchar](50) NULL,
	[Dosageform] [varchar](50) NULL,
	[Strength] [varchar](50) NULL,
	[Packtype] [varchar](50) NULL,
	[Packsize] [varchar](50) NULL,
	[Customernameaddress] [varchar](50) NULL,
	[SoQty] [varchar](50) NULL,
	[Priceperpack] [varchar](50) NULL,
	[VAT] [varchar](50) NULL,
	[Totalamount] [varchar](50) NULL,
 CONSTRAINT [PK_TempSo] PRIMARY KEY CLUSTERED 
(
	[Soid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Warehouse]    Script Date: 06/07/2023 18:47:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Warehouse](
	[Warehousename] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Warehousecode] [varchar](50) NULL,
	[Numberofaisle] [varchar](50) NULL,
	[Numberoffloors/aisle] [varchar](50) NULL,
	[Numberofunit/floors] [nchar](10) NULL,
	[Selectapproval] [nchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[AddCustomer] ON 

INSERT [dbo].[AddCustomer] ([CustomerID], [Initialadditiondate], [CustomerName], [ContactName], [ContactEmail], [ContactNumber], [Validtill], [Defaultcurrency], [CustomerStatus], [CustomerQualification], [AddressLine1], [AddressLine2], [AddressLine3], [Town], [Country], [Postcode], [SelectApprover]) VALUES (1, CAST(0x49450B00 AS Date), N'test', N'test1', N'test@gmail.com', N'9874561230', CAST(0x4A450B00 AS Date), N'1', N'1', N'1', N'mdu', N'dgl', N'vadipatti', N'theni', N'1', 654123, N'1')
SET IDENTITY_INSERT [dbo].[AddCustomer] OFF
SET IDENTITY_INSERT [dbo].[Designation] ON 

INSERT [dbo].[Designation] ([DesignationID], [Designation]) VALUES (15, N'Senior Manager')
INSERT [dbo].[Designation] ([DesignationID], [Designation]) VALUES (2, N'Superviser')
INSERT [dbo].[Designation] ([DesignationID], [Designation]) VALUES (5, N'CEO')
INSERT [dbo].[Designation] ([DesignationID], [Designation]) VALUES (4, N'Team Leader')
INSERT [dbo].[Designation] ([DesignationID], [Designation]) VALUES (6, N'Project Leader')
INSERT [dbo].[Designation] ([DesignationID], [Designation]) VALUES (11, N'Manager')
INSERT [dbo].[Designation] ([DesignationID], [Designation]) VALUES (12, N'Floor Supervisor')
INSERT [dbo].[Designation] ([DesignationID], [Designation]) VALUES (14, N'Goods Checker')
INSERT [dbo].[Designation] ([DesignationID], [Designation]) VALUES (17, N'Leader')
INSERT [dbo].[Designation] ([DesignationID], [Designation]) VALUES (18, N'Sales Excutive')
SET IDENTITY_INSERT [dbo].[Designation] OFF
SET IDENTITY_INSERT [dbo].[Suplier] ON 

INSERT [dbo].[Suplier] ([SupplierID], [Initialadditionaldate], [CompanyName], [ContactName], [ContactEmail], [ContactNumber], [ValidTill], [DefaultCurrency], [SupplierStatus], [SupplierQualification], [AddressLine1], [AddressLine2], [AddressLine3], [Town], [Country], [PostCode], [Status], [SelectApproverid], [AddressLine4], [AddressLine5], [ContactName1], [ContactName2], [ContactName3], [ContactName4]) VALUES (1, CAST(0x5B950A00 AS Date), N'', N'', N'', N'', CAST(0x5B950A00 AS Date), N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 0, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Suplier] ([SupplierID], [Initialadditionaldate], [CompanyName], [ContactName], [ContactEmail], [ContactNumber], [ValidTill], [DefaultCurrency], [SupplierStatus], [SupplierQualification], [AddressLine1], [AddressLine2], [AddressLine3], [Town], [Country], [PostCode], [Status], [SelectApproverid], [AddressLine4], [AddressLine5], [ContactName1], [ContactName2], [ContactName3], [ContactName4]) VALUES (2, CAST(0x7A450B00 AS Date), N'AAA', N'BBB', N'bbb@gmail.com', N'9988445566', CAST(0x74450B00 AS Date), NULL, N'Active', N'Wholesaler', N'Chennai', N'', N'', NULL, N'1', N'6525DD', N'Draft', 7, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Suplier] ([SupplierID], [Initialadditionaldate], [CompanyName], [ContactName], [ContactEmail], [ContactNumber], [ValidTill], [DefaultCurrency], [SupplierStatus], [SupplierQualification], [AddressLine1], [AddressLine2], [AddressLine3], [Town], [Country], [PostCode], [Status], [SelectApproverid], [AddressLine4], [AddressLine5], [ContactName1], [ContactName2], [ContactName3], [ContactName4]) VALUES (3, CAST(0x7A450B00 AS Date), N'CRIMSON', N'JOHN', N'john@crimson.com', N'89798798', CAST(0x444A0B00 AS Date), NULL, N'Active', N'Wholesaler', N'LA', N'', N'', NULL, N'1', N'5555', N'Draft', 1, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Suplier] ([SupplierID], [Initialadditionaldate], [CompanyName], [ContactName], [ContactEmail], [ContactNumber], [ValidTill], [DefaultCurrency], [SupplierStatus], [SupplierQualification], [AddressLine1], [AddressLine2], [AddressLine3], [Town], [Country], [PostCode], [Status], [SelectApproverid], [AddressLine4], [AddressLine5], [ContactName1], [ContactName2], [ContactName3], [ContactName4]) VALUES (4, CAST(0x7B450B00 AS Date), N'SASAS', N'SAS', N'sas@gmail.com', N'9874534561', CAST(0x7E450B00 AS Date), NULL, N'Active', N'Wholesaler', N'UK', N'', N'', NULL, N'2', N'625487', N'Draft', 3, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Suplier] ([SupplierID], [Initialadditionaldate], [CompanyName], [ContactName], [ContactEmail], [ContactNumber], [ValidTill], [DefaultCurrency], [SupplierStatus], [SupplierQualification], [AddressLine1], [AddressLine2], [AddressLine3], [Town], [Country], [PostCode], [Status], [SelectApproverid], [AddressLine4], [AddressLine5], [ContactName1], [ContactName2], [ContactName3], [ContactName4]) VALUES (5, CAST(0x7B450B00 AS Date), N'MEDLEYTAP', N'MEDLEYFIRST', N'medley@gmail.com', N'9874534561', CAST(0x1E460B00 AS Date), NULL, N'Active', N'Pharmacy', N'UK', N'', N'', NULL, N'3', N'625487', N'Draft', 1, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Suplier] ([SupplierID], [Initialadditionaldate], [CompanyName], [ContactName], [ContactEmail], [ContactNumber], [ValidTill], [DefaultCurrency], [SupplierStatus], [SupplierQualification], [AddressLine1], [AddressLine2], [AddressLine3], [Town], [Country], [PostCode], [Status], [SelectApproverid], [AddressLine4], [AddressLine5], [ContactName1], [ContactName2], [ContactName3], [ContactName4]) VALUES (6, CAST(0x7C450B00 AS Date), N'CARBA2B', N'RIYASH', N'riyash@gmail.com', N'9874534561', CAST(0xF5450B00 AS Date), NULL, N'Active', N'Pharmacy', N'us', N'', N'', NULL, N'2', N'658749', N'Draft', 1, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Suplier] ([SupplierID], [Initialadditionaldate], [CompanyName], [ContactName], [ContactEmail], [ContactNumber], [ValidTill], [DefaultCurrency], [SupplierStatus], [SupplierQualification], [AddressLine1], [AddressLine2], [AddressLine3], [Town], [Country], [PostCode], [Status], [SelectApproverid], [AddressLine4], [AddressLine5], [ContactName1], [ContactName2], [ContactName3], [ContactName4]) VALUES (7, CAST(0x84450B00 AS Date), N'TAFPHARM', N'BABU', N'babu@gmail.com', N'9988445566', CAST(0x1F460B00 AS Date), NULL, N'Active', N'Wholesaler', N'MUMBAI', N'', N'', NULL, N'4', N'625487', N'Approved', 1, N'', N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[Suplier] OFF
SET IDENTITY_INSERT [dbo].[tblCountry] ON 

INSERT [dbo].[tblCountry] ([CountryID], [CountryName], [CountryCode]) VALUES (1, N'USA', N'+1')
INSERT [dbo].[tblCountry] ([CountryID], [CountryName], [CountryCode]) VALUES (2, N'Russia', N'+7')
INSERT [dbo].[tblCountry] ([CountryID], [CountryName], [CountryCode]) VALUES (3, N'UAE', N'+917')
INSERT [dbo].[tblCountry] ([CountryID], [CountryName], [CountryCode]) VALUES (4, N'India', N'+91')
INSERT [dbo].[tblCountry] ([CountryID], [CountryName], [CountryCode]) VALUES (5, N'China', N'+86')
INSERT [dbo].[tblCountry] ([CountryID], [CountryName], [CountryCode]) VALUES (6, N'UK', N'+44')
SET IDENTITY_INSERT [dbo].[tblCountry] OFF
SET IDENTITY_INSERT [dbo].[tblEmployee] ON 

INSERT [dbo].[tblEmployee] ([EmployeeID], [EmployeeName], [DateofBirth], [DateofJoining], [Gender], [Designation], [Email], [PhoneNumber], [Address], [Approvarid], [Status]) VALUES (1, N'Ashok', CAST(0x27310B00 AS Date), CAST(0x50450B00 AS Date), N'Male', N'11', N'ashok@gmail.com', N'099887 74455', N'Tamilnadu
Madurai
Pasumalai', 1, N'Dreaft')
INSERT [dbo].[tblEmployee] ([EmployeeID], [EmployeeName], [DateofBirth], [DateofJoining], [Gender], [Designation], [Email], [PhoneNumber], [Address], [Approvarid], [Status]) VALUES (2, N'Joshani', CAST(0x85240B00 AS Date), CAST(0x5A450B00 AS Date), N'Female', N'6', N'joshani@gmail.com', N'07339507366', N'Madurai ', 1, N'Dreaft')
INSERT [dbo].[tblEmployee] ([EmployeeID], [EmployeeName], [DateofBirth], [DateofJoining], [Gender], [Designation], [Email], [PhoneNumber], [Address], [Approvarid], [Status]) VALUES (3, N'Darwin', CAST(0xC7320B00 AS Date), CAST(0x5C450B00 AS Date), N'Male', N'5', N'darwin@gmail.com', N'9988774455', N'Dindigul', 1, N'Dreaft')
INSERT [dbo].[tblEmployee] ([EmployeeID], [EmployeeName], [DateofBirth], [DateofJoining], [Gender], [Designation], [Email], [PhoneNumber], [Address], [Approvarid], [Status]) VALUES (4, N'Monish', CAST(0x1B230B00 AS Date), CAST(0x59450B00 AS Date), N'Female', N'2', N'monsih@gmail.com', N'8877445565', N'Selam', 2, N'Dreaft')
INSERT [dbo].[tblEmployee] ([EmployeeID], [EmployeeName], [DateofBirth], [DateofJoining], [Gender], [Designation], [Email], [PhoneNumber], [Address], [Approvarid], [Status]) VALUES (5, N'JaiKumar', CAST(0x3A230B00 AS Date), CAST(0x5F450B00 AS Date), N'Male', N'14', N'jai@gmail.om', N'07339507366', N' Batlakundu Mainroad', 3, N'Dreaft')
INSERT [dbo].[tblEmployee] ([EmployeeID], [EmployeeName], [DateofBirth], [DateofJoining], [Gender], [Designation], [Email], [PhoneNumber], [Address], [Approvarid], [Status]) VALUES (6, N'James', CAST(0xE7200B00 AS Date), CAST(0x52450B00 AS Date), N'', N'2', N'james@gmail.com', N'9955226633', N'Kerala', 1, N'Dreaft')
INSERT [dbo].[tblEmployee] ([EmployeeID], [EmployeeName], [DateofBirth], [DateofJoining], [Gender], [Designation], [Email], [PhoneNumber], [Address], [Approvarid], [Status]) VALUES (7, N'Mahesh', CAST(0x55450B00 AS Date), CAST(0xF5450B00 AS Date), N'Male', N'4', N'mahesh@gmail.com', N'6895412365', N'coimbatore', 1, N'Dreaft')
INSERT [dbo].[tblEmployee] ([EmployeeID], [EmployeeName], [DateofBirth], [DateofJoining], [Gender], [Designation], [Email], [PhoneNumber], [Address], [Approvarid], [Status]) VALUES (9, N'vino', CAST(0x5C2A0B00 AS Date), CAST(0x5F450B00 AS Date), N'Male', N'11', N'vino@gmail.com', N'07339507366', N'VMR Power Tools, Near BSNL tower
Madurai to Batlakundu Mainroad', 3, N'Dreaft')
INSERT [dbo].[tblEmployee] ([EmployeeID], [EmployeeName], [DateofBirth], [DateofJoining], [Gender], [Designation], [Email], [PhoneNumber], [Address], [Approvarid], [Status]) VALUES (10, N'YogeshVK', CAST(0xB6390B00 AS Date), CAST(0x76450B00 AS Date), N'Male', N'15', N'yogesh@gamil.com', N'9874563210', N'MDU', NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblEmployee] OFF
SET IDENTITY_INSERT [dbo].[tblGoodReceipts] ON 

INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (1, 14, 8, N'ZO11', N'Third', N'22', N'Grms', 25, 22, 2000.0000, N'r44', 44, CAST(0x0000B00000000000 AS DateTime), CAST(0x0000B00700000000 AS DateTime), 3, N'Pending', N'1', N'Approved', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (2, 15, 11, N'121', N'First', N'33', N'Ltrs', 20, 9, 1500.0000, N'r44', 44, CAST(0x0000AFF900000000 AS DateTime), CAST(0x0000B00E00000000 AS DateTime), 5, N'Completed', N'2', NULL, NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (4, 13, 5, N'TO221', N'First', N'160', N'Grms', 78, 9, 1000.0000, N'M123', 100, CAST(0x0000AFF500000000 AS DateTime), CAST(0x0000B01000000000 AS DateTime), 2, N'Pending', N'6', N'Approved', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (13, 22, 14, N'JUL50', N'Solution', N'650', N'44', 500, 100, 6000.0000, N'JULS221', 60, NULL, CAST(0x0000B1B800000000 AS DateTime), 3, N'Pending', N'3', N'Draft', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (14, 21, 14, N'JUL50', N'Solution', N'650', N'44', 500, 9, 675.0000, N'JUL2', 5, NULL, CAST(0x0000000000000000 AS DateTime), 2, N'Pending', N'4', N'Draft', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (15, 22, 14, N'JUL50', N'Solution', N'650', N'44', 500, 100, 6000.0000, N'UN11', 40, NULL, CAST(0x0000000000000000 AS DateTime), 3, N'Pending', N'2', N'Draft', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (16, 22, 14, N'JUL50', N'Solution', N'650', N'44', 500, 100, 6000.0000, N'CAFF', 30, NULL, CAST(0x0000B02300000000 AS DateTime), 5, N'Completed', N'2', N'Draft', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (17, 22, 14, N'JUL50', N'Solution', N'650', N'44', 500, 100, 6000.0000, N'NAW21', 20, NULL, CAST(0x0000B22800000000 AS DateTime), 3, N'Pending', N'4', N'Draft', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (18, 22, 14, N'JUL50', N'Solution', N'650', N'44', 500, 100, 6000.0000, N'GRET12', 60, NULL, CAST(0x0000B0A100000000 AS DateTime), 5, N'Pending', N'5', N'Draft', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (5, 13, 5, N'TO221', N'First', N'160', N'Grms', 78, 9, 1000.0000, N'M123', 100, CAST(0x0000AFF500000000 AS DateTime), CAST(0x0000B01000000000 AS DateTime), 2, N'Pending', N'2', N'Draft', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (6, 19, 8, N'L112', N'Second', N'650', N'Ltrs', 10, 20, 2000.0000, N'MA123', 10, CAST(0x0000B00C00000000 AS DateTime), CAST(0x0000B01200000000 AS DateTime), 2, N'Pending', N'2', N'Draft', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (7, 18, 5, N'HO122', N'Third', N'55', N'Ltrs', 30, 12, 1500.0000, N'VA1122', 5, CAST(0x0000B00C00000000 AS DateTime), CAST(0x0000B00B00000000 AS DateTime), 2, N'Pending', N'1', N'Draft', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (8, 15, 12, N'121', N'First', N'33', N'Ltrs', 20, 9, 1500.0000, N'AA112', 6, CAST(0x0000AFF700000000 AS DateTime), CAST(0x0000B01E00000000 AS DateTime), 2, N'Pending', N'2', N'Draft', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (9, 15, 13, N'121', N'First', N'33', N'Ltrs', 20, 9, 1500.0000, N'AA112', 6, CAST(0x0000AFF700000000 AS DateTime), CAST(0x0000B01E00000000 AS DateTime), 2, N'Pending', N'2', N'Draft', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (10, 18, 5, N'HO122', N'Third', N'55', N'Ltrs', 30, 12, 1500.0000, N'AB12', 4, CAST(0x0000AFF500000000 AS DateTime), CAST(0x0000B01D00000000 AS DateTime), 2, N'Pending', N'4', N'Draft', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (11, 19, 8, N'L112', N'Second', N'650', N'Ltrs', 10, 20, 2000.0000, N'LL221', 12, CAST(0x0000B01100000000 AS DateTime), CAST(0x0000B01E00000000 AS DateTime), 3, N'Pending', N'1', N'Draft', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (12, 18, 13, N'HO122', N'Third', N'55', N'Ltrs', 30, 12, 1500.0000, N'JUL1', 6, NULL, CAST(0x0000000000000000 AS DateTime), 2, N'Completed', N'2', N'Draft', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (19, 22, 14, N'JUL50', N'Solution', N'650', N'44', 500, 100, 6000.0000, N'EVE11', 70, NULL, CAST(0x0000B02100000000 AS DateTime), 5, N'Pending', N'3', N'Draft', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (20, 23, 15, N'ASP12121', N'Tablet', N'150MCG', N'10', 10, 10, 1000.0000, N'ASPBAT101', 10, NULL, CAST(0x0000000000000000 AS DateTime), 2, N'Completed', N'1', N'Draft', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (21, 24, 5, N'TO221', N'First', N'160', N'Grms', 78, 10, 1000.0000, N'meta123', 8, NULL, CAST(0x0000B03100000000 AS DateTime), 2, N'Pending', N'1', N'Draft', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (22, 24, 9, N'454', N'First', N'650', N'Grms', 20, 20, 900.0000, N'dolo456', 20, NULL, CAST(0x0000000000000000 AS DateTime), 1, N'Pending', N'1', N'Draft', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (23, 24, 15, N'ASP12121', N'Tablet', N'150MCG', N'10', 10, 15, 1500.0000, N'asp151', 15, NULL, CAST(0x0000000000000000 AS DateTime), 1, N'Pending', N'1', N'Draft', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (24, 25, 16, N'ATV123', N'Capsule', N'250MCG', N'CAP', 22, 10, 2000.0000, N'ATV123', 10, NULL, CAST(0x0000B65D00000000 AS DateTime), 1, N'Pending', N'1', N'Draft', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (25, 27, 16, N'ATV123', N'Capsule', N'250MCG', N'strip', 22, 20, 4000.0000, N'ATV345', 20, NULL, CAST(0x0000B7CB00000000 AS DateTime), 2, N'Pending', N'1', N'Draft', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (26, 28, 17, N'MED100', N'Solution', N'600', N'100', 500, 50, 3500.0000, N'VI112', 40, NULL, CAST(0x0000B11600000000 AS DateTime), 4, N'Completed', N'2', N'Draft', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (27, 28, 17, N'MED100', N'Solution', N'600', N'100', 500, 50, 3500.0000, N'HO121', 35, NULL, CAST(0x0000000000000000 AS DateTime), 3, N'Completed', N'2', N'Draft', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (28, 28, 18, N'VIZ121', N'Capsule', N'200', N'150', 300, 50, 3250.0000, N'VZ112', 35, NULL, CAST(0x0000B1B700000000 AS DateTime), 3, N'Pending', N'3', N'Draft', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (29, 29, 19, N'SEN112', N'Suspension', N'33', N'SML', 20, 70, 4200.0000, N'SE12', 50, NULL, CAST(0x0000B0DE00000000 AS DateTime), 3, N'Pending', N'3', N'Draft', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (30, 30, 5, N'TO221', N'First', N'160', N'Grms', 78, 40, 1200.0000, N'MET11', 30, NULL, CAST(0x0000B0EE00000000 AS DateTime), 2, N'Pending', N'5', N'Draft', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (31, 31, 20, N'QU11', N'Solution', N'33', N'SML', 20, 60, 3000.0000, N'QQ1', 40, NULL, CAST(0x0000000000000000 AS DateTime), 3, N'Completed', N'2', N'Draft', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (32, 32, 21, N'JET11', N'Tablet', N'12', N'', 20, 30, 1650.0000, N'JE11', 20, NULL, CAST(0x0000B0D100000000 AS DateTime), 2, N'Pending', N'1', N'Draft', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (33, 33, 19, N'SEN112', N'Suspension', N'33', N'SML', 20, 65, 5200.0000, N'SON11', 45, NULL, CAST(0x0000B0F700000000 AS DateTime), 3, N'Completed', N'4', N'Draft', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (34, 34, 22, N'PAIN112', N'Tablet', N'55', N'44', 20, 30, 2400.0000, N'PA332', 20, NULL, CAST(0x0000B11000000000 AS DateTime), 2, N'Completed', N'5', N'Draft', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (36, 36, 23, N'ABC12', N'Effervescent Tablets', N'100', N'20', 0, 50, 2250.0000, N'ABC', 30, NULL, CAST(0x0000B0E000000000 AS DateTime), 2, N'Pending', N'2', N'Draft', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (37, 36, 23, N'ABC12', N'Effervescent Tablets', N'100', N'20', 0, 50, 2250.0000, N'ABC', 30, NULL, CAST(0x0000B0E000000000 AS DateTime), 2, N'Pending', N'2', N'Draft', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (38, 37, 24, N'TRA11', N'Caplet', N'150', N'SML', 100, 30, 2250.0000, N'TRA1', 25, NULL, CAST(0x0000B0E200000000 AS DateTime), 2, N'Completed', N'2', N'Draft', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (40, 39, 25, N'BLA11', N'Effervescent Tablets', N'150', N'SML', 100, 30, 2700.0000, N'BLA1', 20, NULL, CAST(0x0000B10500000000 AS DateTime), 1, N'Completed', N'3', N'Approved', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (41, 40, 25, N'BLA11', N'Effervescent Tablets', N'150', N'SML', 100, 25, 1750.0000, N'BLA33', 22, NULL, CAST(0x0000B0FD00000000 AS DateTime), 1, N'Completed', N'2', N'Rejected', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (42, 41, 26, N'MAZ11', N'Capsule', N'150', N'SML', 100, 60, 3000.0000, N'MAZ112', 40, NULL, CAST(0x0000B12600000000 AS DateTime), 2, N'Pending', N'1', N'Approved', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (43, 42, 27, N'DEE12', N'Capsule', N'150', N'SML', 100, 55, 2475.0000, N'DEE1', 40, NULL, CAST(0x0000B0CA00000000 AS DateTime), 2, N'Completed', N'2', N'Draft', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (44, 43, 27, N'DEE12', N'Capsule', N'150', N'SML', 100, 50, 3250.0000, N'DEE2', 40, NULL, CAST(0x0000B0CA00000000 AS DateTime), 2, N'Completed', N'2', N'Draft', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (45, 44, 28, N'NE1', N'Capsule', N'60', N'SML', 50, 50, 2000.0000, N'NE1', 30, NULL, CAST(0x0000000000000000 AS DateTime), 2, N'Completed', N'1', N'Draft', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (46, 45, 29, N'NEWPR11', N'Capsule', N'150', N'SML', 100, 50, 3500.0000, N'ADN001NEW', 45, NULL, CAST(0x0000B03100000000 AS DateTime), 1, N'Pending', N'1', N'Draft', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (47, 45, 16, N'ATV123', N'Capsule', N'250MCG', N'SML', 22, 40, 2800.0000, N'ADNATIVAN001', 40, NULL, CAST(0x0000B03100000000 AS DateTime), 2, N'Pending', N'1', N'Draft', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (50, 46, 28, N'NE1', N'Capsule', N'60', N'SML', 50, 40, 2000.0000, N'NEWPRO11', 30, NULL, CAST(0x0000B0A200000000 AS DateTime), 1, N'Completed', N'1', N'Draft', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (52, 47, 29, N'NEWPR11', N'Capsule', N'150', N'', 100, 30, 1350.0000, N'NPER1', 20, NULL, CAST(0x0000000000000000 AS DateTime), 1, N'Completed', N'2', N'Draft', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (55, 49, 16, N'ATV123', N'Capsule', N'250MCG', N'', 22, 50, 1250.0000, N'LAST12', 45, NULL, CAST(0x0000B02B00000000 AS DateTime), 2, N'Pending', N'1', N'Draft', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (56, 50, 28, N'NE1', N'Capsule', N'60', N'', 50, 40, 2000.0000, N'ASHOK1', 25, NULL, CAST(0x0000B07E00000000 AS DateTime), 1, N'Pending', N'1', N'Draft', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (57, 51, 32, N'NA', N'Tablet', N'125', N'box', 5, 10, 1000.0000, N'ATENOL100', 10, NULL, CAST(0x0000B63300000000 AS DateTime), 2, N'Quarantine', N'1', N'Draft', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (60, 53, 33, N'SS1', N'Tablet', N'33', NULL, NULL, 30, 4500.0000, N'SA1', 20, NULL, CAST(0x0000B11600000000 AS DateTime), 2, N'Quarantine', N'1', N'Draft', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (39, 38, 24, N'TRA11', N'Caplet', N'150', N'SML', 100, 20, 1600.0000, N'TRA2', 15, NULL, CAST(0x0000B0EF00000000 AS DateTime), 2, N'Completed', N'3', N'Draft', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (48, 46, 28, N'NE1', N'Capsule', N'60', N'SML', 50, 40, 2000.0000, N'NEWPRO11', 30, NULL, CAST(0x0000B0A200000000 AS DateTime), 1, N'Completed', N'1', N'Draft', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (49, 46, 28, N'NE1', N'Capsule', N'60', N'SML', 50, 40, 2000.0000, N'NEWPRO11', 30, NULL, CAST(0x0000B0A200000000 AS DateTime), 1, N'Completed', N'1', N'Draft', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (53, 47, 16, N'ATV123', N'Capsule', N'250MCG', N'', 22, 40, 1200.0000, N'NEWATIVAN112', 30, NULL, CAST(0x0000B09A00000000 AS DateTime), 2, N'Pending', N'2', N'Draft', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (54, 48, 29, N'NEWPR11', N'Capsule', N'150', N'', 100, 25, 500.0000, N'NEPR1122', 22, NULL, CAST(0x0000000000000000 AS DateTime), 1, N'Pending', N'1', N'Draft', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (59, 52, 32, N'NA', N'Tablet', N'125', NULL, NULL, 30, 6000.0000, N'ATCRIMSON', 30, NULL, CAST(0x0000B2F900000000 AS DateTime), 3, N'Quarantine', N'1', N'Draft', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (61, 53, 32, N'NA', N'Tablet', N'125', NULL, NULL, 20, 2000.0000, N'SAS2', 10, NULL, CAST(0x0000B1AC00000000 AS DateTime), 2, N'Quarantine', N'2', N'Draft', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (62, 54, 34, NULL, N'Tablet', N'500', NULL, NULL, 30, 1500.0000, N'METFOR11', 25, NULL, CAST(0x0000B11700000000 AS DateTime), 2, N'Release', N'1', N'Draft', CAST(0x6F450B00 AS Date))
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (63, 55, 36, NULL, N'Tablet', N'33', NULL, NULL, 50, 4000.0000, N'CARBO11', 35, NULL, CAST(0x0000B10300000000 AS DateTime), 2, N'Quarantine', N'10', N'Draft', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (64, 54, 35, NULL, N'Tablet', N'33', NULL, NULL, 40, 2400.0000, N'KKKK', 50, NULL, CAST(0x0000B02400000000 AS DateTime), 3, N'Rejected', N'2', N'Draft', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (65, 36, 23, NULL, N'Effervescent Tablets', N'100', NULL, NULL, 50, 2250.0000, N'IIII', 20, NULL, CAST(0x0000B02B00000000 AS DateTime), 2, N'Quarantine', N'3', N'Draft', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (66, 58, 24, NULL, N'Tablet', N'10mg', NULL, NULL, 50, 3000.0000, N'EEE1', 40, NULL, CAST(0x0000B02F00000000 AS DateTime), 2, N'Quarantine', N'1', N'Draft', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (67, 59, 28, NULL, N'Tablet', N'850mg', NULL, NULL, 70, 6650.0000, N'AXPIN01', 60, NULL, CAST(0x0000B0CA00000000 AS DateTime), 2, N'Release', N'10', N'Approved', CAST(0x83450B00 AS Date))
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (68, 59, 17, NULL, N'Capsule', N'20mg', NULL, NULL, 50, 4250.0000, N'OME01', 40, NULL, CAST(0x0000B0E000000000 AS DateTime), 2, N'Release', N'10', N'Approved', CAST(0x83450B00 AS Date))
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (69, 60, 26, NULL, N'Tablet', N'70mg', NULL, NULL, 40, 2000.0000, N'ALEN01', 30, NULL, CAST(0x0000B0C500000000 AS DateTime), 2, N'Release', N'7', N'Approved', CAST(0x84450B00 AS Date))
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (70, 61, 43, NULL, N'Capsule', N'800mg', NULL, NULL, 50, 3000.0000, N'COLE01', 40, NULL, CAST(0x0000B0A200000000 AS DateTime), 2, N'Release', N'7', N'Draft', CAST(0x84450B00 AS Date))
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (71, 62, 38, NULL, N'Tablet', N'200mg', NULL, NULL, 60, 4200.0000, N'CIME01', 45, NULL, CAST(0x0000B12000000000 AS DateTime), 2, N'Release', N'1', N'Approved', CAST(0x84450B00 AS Date))
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (72, 63, 13, NULL, N'Tablet', N'2mg', NULL, NULL, 50, 1500.0000, N'TERA01', 40, NULL, CAST(0x0000B10900000000 AS DateTime), 2, N'Release', N'1', N'Approved', CAST(0x84450B00 AS Date))
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (73, 69, 18, NULL, N'Tablet', N'500mg', NULL, NULL, 11, 1221.0000, N'pppp', 11, NULL, CAST(0x0000B17200000000 AS DateTime), 2, N'Release', N'1', N'Approved', CAST(0x84450B00 AS Date))
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (74, 69, 14, NULL, N'Tablet', N'10mg', NULL, NULL, 1111, 1234321.0000, N'tttt', 1000, NULL, CAST(0x0000B48F00000000 AS DateTime), 2, N'Quarantine', N'1', N'Approved', CAST(0x84450B00 AS Date))
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (75, 70, 18, NULL, N'Tablet', N'500mg', NULL, NULL, 3, 99.0000, N'trea', 3, NULL, CAST(0x0000B03000000000 AS DateTime), 1, N'Quarantine', N'1', N'Draft', CAST(0x84450B00 AS Date))
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (76, 71, 17, NULL, N'Capsule', N'20mg', NULL, NULL, 20, 4000.0000, N'OM', 20, NULL, CAST(0x0000B03000000000 AS DateTime), 2, N'Release', N'1', N'Draft', CAST(0x84450B00 AS Date))
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (77, 72, 52, NULL, N'Tablet', N'50mg', NULL, NULL, 30, 1800.0000, N'ATT', 25, NULL, CAST(0x0000B0AA00000000 AS DateTime), 2, N'', N'7', N'Approved', CAST(0x84450B00 AS Date))
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (78, 71, 13, NULL, N'Tablet', N'2mg', NULL, NULL, 20, 400.0000, N'CCCC', 20, NULL, CAST(0x0000B03100000000 AS DateTime), 2, N'Quarantine', N'1', N'Approved', CAST(0x84450B00 AS Date))
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (79, 73, 49, NULL, N'Drops', N'1mg', NULL, NULL, 30, 1800.0000, N'ATR1', 20, NULL, CAST(0x0000B03100000000 AS DateTime), 2, N'Release', N'1', N'Approved', CAST(0x84450B00 AS Date))
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (51, 46, 29, N'NEWPR11', N'Capsule', N'150', N'SML', 100, 40, 2400.0000, N'PRODUCTNEW11', 30, NULL, CAST(0x0000B03200000000 AS DateTime), 1, N'Completed', N'7', N'Draft', NULL)
INSERT [dbo].[tblGoodReceipts] ([GRId], [Poid], [ProductId], [License], [Dosage], [Strength], [Packtype], [Packsize], [OrderQty], [OrderAmt], [Batchnumber], [ReceivedQty], [Manfactdate], [ExpiryDate], [PalletsQty], [BatchStatus], [ApproverId], [Status], [GoodsReceiveddate]) VALUES (58, 36, 23, N'ABC12', N'Effervescent Tablets', N'100', NULL, NULL, 50, 2250.0000, N'A2Z', 20, NULL, CAST(0x0000B02900000000 AS DateTime), 2, N'Quarantine', N'2', N'Draft', NULL)
SET IDENTITY_INSERT [dbo].[tblGoodReceipts] OFF
SET IDENTITY_INSERT [dbo].[tblGoodsPicking] ON 

INSERT [dbo].[tblGoodsPicking] ([PickupDate], [SoId], [SuppId], [TotalQty], [id]) VALUES (CAST(0x0000AFFA00000000 AS DateTime), 6, 17, 15, 1)
INSERT [dbo].[tblGoodsPicking] ([PickupDate], [SoId], [SuppId], [TotalQty], [id]) VALUES (CAST(0x0000B01900000000 AS DateTime), 6, 17, 15, 2)
INSERT [dbo].[tblGoodsPicking] ([PickupDate], [SoId], [SuppId], [TotalQty], [id]) VALUES (CAST(0x0000B01900000000 AS DateTime), 5, 4, 20, 3)
INSERT [dbo].[tblGoodsPicking] ([PickupDate], [SoId], [SuppId], [TotalQty], [id]) VALUES (CAST(0x0000B01900000000 AS DateTime), 7, 10, 15, 4)
INSERT [dbo].[tblGoodsPicking] ([PickupDate], [SoId], [SuppId], [TotalQty], [id]) VALUES (CAST(0x0000B01900000000 AS DateTime), 8, 10, 30, 5)
INSERT [dbo].[tblGoodsPicking] ([PickupDate], [SoId], [SuppId], [TotalQty], [id]) VALUES (CAST(0x0000B01900000000 AS DateTime), 9, 14, 10, 6)
INSERT [dbo].[tblGoodsPicking] ([PickupDate], [SoId], [SuppId], [TotalQty], [id]) VALUES (CAST(0x0000B01900000000 AS DateTime), 5, 4, 20, 7)
INSERT [dbo].[tblGoodsPicking] ([PickupDate], [SoId], [SuppId], [TotalQty], [id]) VALUES (CAST(0x0000B01900000000 AS DateTime), 10, 2, 10, 8)
INSERT [dbo].[tblGoodsPicking] ([PickupDate], [SoId], [SuppId], [TotalQty], [id]) VALUES (CAST(0x0000B01900000000 AS DateTime), 10, 2, 10, 9)
INSERT [dbo].[tblGoodsPicking] ([PickupDate], [SoId], [SuppId], [TotalQty], [id]) VALUES (CAST(0x0000B01900000000 AS DateTime), 12, 19, 10, 10)
INSERT [dbo].[tblGoodsPicking] ([PickupDate], [SoId], [SuppId], [TotalQty], [id]) VALUES (CAST(0x0000B03700000000 AS DateTime), 12, 19, 10, 11)
INSERT [dbo].[tblGoodsPicking] ([PickupDate], [SoId], [SuppId], [TotalQty], [id]) VALUES (CAST(0x0000B03700000000 AS DateTime), 13, 10, 15, 12)
INSERT [dbo].[tblGoodsPicking] ([PickupDate], [SoId], [SuppId], [TotalQty], [id]) VALUES (CAST(0x0000B03700000000 AS DateTime), 14, 5, 50, 13)
INSERT [dbo].[tblGoodsPicking] ([PickupDate], [SoId], [SuppId], [TotalQty], [id]) VALUES (CAST(0x0000B03700000000 AS DateTime), 17, 4, 10, 14)
INSERT [dbo].[tblGoodsPicking] ([PickupDate], [SoId], [SuppId], [TotalQty], [id]) VALUES (CAST(0x0000B03700000000 AS DateTime), 17, 4, 20, 15)
INSERT [dbo].[tblGoodsPicking] ([PickupDate], [SoId], [SuppId], [TotalQty], [id]) VALUES (CAST(0x0000B05600000000 AS DateTime), 18, 4, 20, 16)
INSERT [dbo].[tblGoodsPicking] ([PickupDate], [SoId], [SuppId], [TotalQty], [id]) VALUES (CAST(0x0000B07500000000 AS DateTime), 19, 4, 20, 17)
INSERT [dbo].[tblGoodsPicking] ([PickupDate], [SoId], [SuppId], [TotalQty], [id]) VALUES (CAST(0x0000B07500000000 AS DateTime), 20, 4, 5, 18)
INSERT [dbo].[tblGoodsPicking] ([PickupDate], [SoId], [SuppId], [TotalQty], [id]) VALUES (CAST(0x0000B07500000000 AS DateTime), 21, 4, 10, 19)
INSERT [dbo].[tblGoodsPicking] ([PickupDate], [SoId], [SuppId], [TotalQty], [id]) VALUES (CAST(0x0000B07500000000 AS DateTime), 23, 4, 10, 20)
INSERT [dbo].[tblGoodsPicking] ([PickupDate], [SoId], [SuppId], [TotalQty], [id]) VALUES (CAST(0x0000B09300000000 AS DateTime), 24, 4, 10, 21)
INSERT [dbo].[tblGoodsPicking] ([PickupDate], [SoId], [SuppId], [TotalQty], [id]) VALUES (CAST(0x0000B0D000000000 AS DateTime), 25, 16, 5, 22)
INSERT [dbo].[tblGoodsPicking] ([PickupDate], [SoId], [SuppId], [TotalQty], [id]) VALUES (CAST(0x0000B0D000000000 AS DateTime), 25, 16, 5, 23)
INSERT [dbo].[tblGoodsPicking] ([PickupDate], [SoId], [SuppId], [TotalQty], [id]) VALUES (CAST(0x0000B0D000000000 AS DateTime), 26, 2, 20, 24)
INSERT [dbo].[tblGoodsPicking] ([PickupDate], [SoId], [SuppId], [TotalQty], [id]) VALUES (CAST(0x0000B02000000000 AS DateTime), 27, 4, 10, 26)
INSERT [dbo].[tblGoodsPicking] ([PickupDate], [SoId], [SuppId], [TotalQty], [id]) VALUES (CAST(0x0000B02000000000 AS DateTime), 27, 4, 10, 27)
INSERT [dbo].[tblGoodsPicking] ([PickupDate], [SoId], [SuppId], [TotalQty], [id]) VALUES (CAST(0x0000B02000000000 AS DateTime), 28, 5, 10, 28)
INSERT [dbo].[tblGoodsPicking] ([PickupDate], [SoId], [SuppId], [TotalQty], [id]) VALUES (CAST(0x0000B02100000000 AS DateTime), 29, 6, 20, 29)
INSERT [dbo].[tblGoodsPicking] ([PickupDate], [SoId], [SuppId], [TotalQty], [id]) VALUES (CAST(0x0000B02800000000 AS DateTime), 31, 6, 30, 30)
INSERT [dbo].[tblGoodsPicking] ([PickupDate], [SoId], [SuppId], [TotalQty], [id]) VALUES (CAST(0x0000B02800000000 AS DateTime), 31, 6, 30, 31)
INSERT [dbo].[tblGoodsPicking] ([PickupDate], [SoId], [SuppId], [TotalQty], [id]) VALUES (CAST(0x0000B02900000000 AS DateTime), 32, 7, 20, 32)
INSERT [dbo].[tblGoodsPicking] ([PickupDate], [SoId], [SuppId], [TotalQty], [id]) VALUES (CAST(0x0000B02900000000 AS DateTime), 33, 7, 25, 33)
INSERT [dbo].[tblGoodsPicking] ([PickupDate], [SoId], [SuppId], [TotalQty], [id]) VALUES (CAST(0x0000B02900000000 AS DateTime), 34, 7, 20, 34)
INSERT [dbo].[tblGoodsPicking] ([PickupDate], [SoId], [SuppId], [TotalQty], [id]) VALUES (CAST(0x0000B02900000000 AS DateTime), 34, 7, 20, 35)
INSERT [dbo].[tblGoodsPicking] ([PickupDate], [SoId], [SuppId], [TotalQty], [id]) VALUES (CAST(0x0000B02900000000 AS DateTime), 36, 7, 20, 36)
INSERT [dbo].[tblGoodsPicking] ([PickupDate], [SoId], [SuppId], [TotalQty], [id]) VALUES (CAST(0x0000B02900000000 AS DateTime), 36, 7, 10, 37)
INSERT [dbo].[tblGoodsPicking] ([PickupDate], [SoId], [SuppId], [TotalQty], [id]) VALUES (CAST(0x0000B02900000000 AS DateTime), 38, 2, 2, 38)
INSERT [dbo].[tblGoodsPicking] ([PickupDate], [SoId], [SuppId], [TotalQty], [id]) VALUES (CAST(0x0000B02900000000 AS DateTime), 39, 4, 3, 39)
INSERT [dbo].[tblGoodsPicking] ([PickupDate], [SoId], [SuppId], [TotalQty], [id]) VALUES (CAST(0x0000B02900000000 AS DateTime), 40, 5, 5, 40)
SET IDENTITY_INSERT [dbo].[tblGoodsPicking] OFF
SET IDENTITY_INSERT [dbo].[tblLogin] ON 

INSERT [dbo].[tblLogin] ([EmployeeID], [Username], [Password]) VALUES (1, N'ashok123', N'ashok123')
INSERT [dbo].[tblLogin] ([EmployeeID], [Username], [Password]) VALUES (2, N'joshan123', N'joshan123')
INSERT [dbo].[tblLogin] ([EmployeeID], [Username], [Password]) VALUES (3, N'darwin123', N'darwin123')
INSERT [dbo].[tblLogin] ([EmployeeID], [Username], [Password]) VALUES (4, N'moni123', N'moni123')
INSERT [dbo].[tblLogin] ([EmployeeID], [Username], [Password]) VALUES (5, N'jai2211', N'jai2211')
INSERT [dbo].[tblLogin] ([EmployeeID], [Username], [Password]) VALUES (6, N'james123', N'james123')
INSERT [dbo].[tblLogin] ([EmployeeID], [Username], [Password]) VALUES (7, N'mahesh123', N'mahesh123')
INSERT [dbo].[tblLogin] ([EmployeeID], [Username], [Password]) VALUES (9, N'vino123', N'vino123')
INSERT [dbo].[tblLogin] ([EmployeeID], [Username], [Password]) VALUES (10, N'yogesh123', N'yogesh123')
SET IDENTITY_INSERT [dbo].[tblLogin] OFF
SET IDENTITY_INSERT [dbo].[TblPO] ON 

INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (13, N'1', CAST(0x0000AFFE00000000 AS DateTime), N'2', N'2925', N'Approved', NULL)
INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (2, N'2', CAST(0x0000AFFC00000000 AS DateTime), N'3', N'5520', N'Draft', NULL)
INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (14, N'2', CAST(0x0000AFFE00000000 AS DateTime), N'1', N'4300', N'Draft', NULL)
INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (4, N'1', CAST(0x0000AFFF00000000 AS DateTime), N'2', N'2900', N'Approved', NULL)
INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (5, N'1', CAST(0x0000AFFC00000000 AS DateTime), N'1', N'1500', N'Draft', NULL)
INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (6, N'5', CAST(0x0000AFFC00000000 AS DateTime), N'2', N'8930', N'Draft', NULL)
INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (15, N'2', CAST(0x0000AFFF00000000 AS DateTime), N'1', N'2700', N'Draft', NULL)
INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (17, N'2', CAST(0x0000B00600000000 AS DateTime), N'1', N'', N'Draft', NULL)
INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (18, N'2', CAST(0x0000B00600000000 AS DateTime), N'1', N'1500', N'Approved', NULL)
INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (21, N'1', CAST(0x0000B01500000000 AS DateTime), N'1', N'675', N'Draft', NULL)
INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (22, N'5', CAST(0x0000B01500000000 AS DateTime), N'3', N'6000', N'Draft', NULL)
INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (20, N'2', CAST(0x0000B01400000000 AS DateTime), N'4', N'1050', N'Draft', NULL)
INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (23, N'16', CAST(0x0000B01600000000 AS DateTime), N'1', N'1000', N'Draft', NULL)
INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (24, N'16', CAST(0x0000B01600000000 AS DateTime), N'1', N'3400', N'Draft', 0)
INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (25, N'17', CAST(0x0000B01700000000 AS DateTime), N'1', N'2000', N'Draft', 0)
INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (27, N'4', CAST(0x0000B01800000000 AS DateTime), N'1', N'4000', N'Draft', 0)
INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (28, N'18', CAST(0x0000B01900000000 AS DateTime), N'4', N'6750', N'Draft', 0)
INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (29, N'19', CAST(0x0000B01900000000 AS DateTime), N'1', N'4200', N'Draft', 0)
INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (30, N'9', CAST(0x0000B01900000000 AS DateTime), N'7', N'1200', N'Draft', 0)
INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (31, N'4', CAST(0x0000B01900000000 AS DateTime), N'3', N'3000', N'Draft', 0)
INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (32, N'5', CAST(0x0000B01900000000 AS DateTime), N'3', N'1650', N'Draft', 0)
INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (33, N'1', CAST(0x0000B01900000000 AS DateTime), N'6', N'5200', N'Draft', 0)
INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (34, N'5', CAST(0x0000B01900000000 AS DateTime), N'7', N'2400', N'Draft', 0)
INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (35, N'8', CAST(0x0000B01A00000000 AS DateTime), N'2', N'2000', N'Draft', 0)
INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (36, N'4', CAST(0x0000B01A00000000 AS DateTime), N'2', N'2250', N'Approved', 0)
INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (37, N'2', CAST(0x0000B01A00000000 AS DateTime), N'6', N'2250', N'Draft', 0)
INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (38, N'5', CAST(0x0000B01A00000000 AS DateTime), N'6', N'1600', N'Draft', 0)
INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (39, N'4', CAST(0x0000B01A00000000 AS DateTime), N'4', N'2700', N'Draft', 0)
INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (40, N'5', CAST(0x0000B01A00000000 AS DateTime), N'6', N'1750', N'Draft', 0)
INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (41, N'1', CAST(0x0000B01B00000000 AS DateTime), N'1', N'3000', N'Approved', 0)
INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (42, N'2', CAST(0x0000B01C00000000 AS DateTime), N'1', N'2475', N'Draft', 0)
INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (43, N'2', CAST(0x0000B01C00000000 AS DateTime), N'2', N'3250', N'Draft', 0)
INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (44, N'4', CAST(0x0000B01C00000000 AS DateTime), N'1', N'2000', N'Draft', 0)
INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (45, N'20', CAST(0x0000B01C00000000 AS DateTime), N'1', N'6300', N'Draft', 0)
INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (46, N'20', CAST(0x0000B01C00000000 AS DateTime), N'1', N'4400', N'Draft', 0)
INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (47, N'20', CAST(0x0000B01C00000000 AS DateTime), N'6', N'2550', N'Draft', 0)
INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (48, N'19', CAST(0x0000B01C00000000 AS DateTime), N'5', N'500', N'Draft', 0)
INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (49, N'4', CAST(0x0000B01C00000000 AS DateTime), N'3', N'1250', N'Draft', 0)
INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (50, N'20', CAST(0x0000B01C00000000 AS DateTime), N'1', N'2000', N'Draft', 0)
INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (51, N'22', CAST(0x0000B01F00000000 AS DateTime), N'1', N'1000', N'Draft', 0)
INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (52, N'3', CAST(0x0000B01F00000000 AS DateTime), N'1', N'6000', N'Draft', 0)
INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (53, N'4', CAST(0x0000B02000000000 AS DateTime), N'1', N'6500', N'Draft', 0)
INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (54, N'5', CAST(0x0000B02000000000 AS DateTime), N'2', N'3900', N'Draft', 0)
INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (55, N'6', CAST(0x0000B02100000000 AS DateTime), N'10', N'4000', N'Draft', 0)
INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (56, N'3', CAST(0x0000B02400000000 AS DateTime), N'2', N'', N'Draft', 0)
INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (57, N'3', CAST(0x0000B02400000000 AS DateTime), N'7', N'1500', N'Draft', 0)
INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (58, N'6', CAST(0x0000B02500000000 AS DateTime), N'10', N'3000', N'Draft', 0)
INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (59, N'6', CAST(0x0000B02800000000 AS DateTime), N'10', N'10900', N'Approved', 0)
INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (60, N'7', CAST(0x0000B02900000000 AS DateTime), N'7', N'2000', N'Approved', 0)
INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (61, N'6', CAST(0x0000B02900000000 AS DateTime), N'7', N'3000', N'Approved', 0)
INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (62, N'6', CAST(0x0000B02900000000 AS DateTime), N'7', N'4200', N'Approved', 0)
INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (63, N'6', CAST(0x0000B02900000000 AS DateTime), N'1', N'1500', N'Approved', 0)
INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (66, N'7', CAST(0x0000B02900000000 AS DateTime), N'1', N'30525', N'Draft', 0)
INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (67, N'7', CAST(0x0000B02900000000 AS DateTime), N'1', N'30525', N'Approved', 0)
INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (68, N'7', CAST(0x0000B02900000000 AS DateTime), N'1', N'30525', N'Approved', 0)
INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (69, N'5', CAST(0x0000B02900000000 AS DateTime), N'1', N'1235542', N'Approved', 0)
INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (70, N'2', CAST(0x0000B02900000000 AS DateTime), N'1', N'99', N'Approved', 0)
INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (71, N'3', CAST(0x0000B02900000000 AS DateTime), N'1', N'4400', N'Approved', 0)
INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (72, N'3', CAST(0x0000B02900000000 AS DateTime), N'7', N'1800', N'Approved', 0)
INSERT [dbo].[TblPO] ([Poid], [SupplierId], [Podatetime], [ApproverId], [Amount], [Status], [IsGoodReceived]) VALUES (73, N'3', CAST(0x0000B02900000000 AS DateTime), N'1', N'1800', N'Approved', 0)
SET IDENTITY_INSERT [dbo].[TblPO] OFF
SET IDENTITY_INSERT [dbo].[tblProduct] ON 

INSERT [dbo].[tblProduct] ([ProductID], [Initialadditiondate], [Productname], [Licenseno], [Dosageform], [Packtype], [Packsize], [Priceperpack], [Strength], [Currency], [Productmanufacture], [Productmanufacturecountry], [Productcode], [ProductGTINbarcode], [Productaprovalauthority], [Productaprovalstatus], [Tax], [Taxationtype], [Productphoto], [Selectaproval], [Approvarid], [Status], [Validtill], [Productcatogory], [ProductQty]) VALUES (1, CAST(0x78450B00 AS Date), N'METFORMIN 500MG 28S', N'PL 43870/0004', N'Tablet', NULL, N'28', NULL, N'500mg', NULL, N'Medley', NULL, N'M004MET500T28', N'5060545240205', NULL, NULL, NULL, N'Cash', 0x, N'1', 1, N'Draft', CAST(0x6D460B00 AS Date), N'POM', 10)
INSERT [dbo].[tblProduct] ([ProductID], [Initialadditiondate], [Productname], [Licenseno], [Dosageform], [Packtype], [Packsize], [Priceperpack], [Strength], [Currency], [Productmanufacture], [Productmanufacturecountry], [Productcode], [ProductGTINbarcode], [Productaprovalauthority], [Productaprovalstatus], [Tax], [Taxationtype], [Productphoto], [Selectaproval], [Approvarid], [Status], [Validtill], [Productcatogory], [ProductQty]) VALUES (2, CAST(0x78450B00 AS Date), N'METFORMIN 500MG 84S', N'PL 43870/0004', N'Tablet', NULL, N'84', NULL, N'500mg', NULL, N'Medley', NULL, N'M004MET500T84', N'5060545240212', NULL, NULL, NULL, N'Cash', 0x, N'1', 1, N'Draft', CAST(0x94450B00 AS Date), N'POM', 10)
INSERT [dbo].[tblProduct] ([ProductID], [Initialadditiondate], [Productname], [Licenseno], [Dosageform], [Packtype], [Packsize], [Priceperpack], [Strength], [Currency], [Productmanufacture], [Productmanufacturecountry], [Productcode], [ProductGTINbarcode], [Productaprovalauthority], [Productaprovalstatus], [Tax], [Taxationtype], [Productphoto], [Selectaproval], [Approvarid], [Status], [Validtill], [Productcatogory], [ProductQty]) VALUES (3, CAST(0x78450B00 AS Date), N'METFORMIN 500MG 500S', N'PL 43870/0004', N'Tablet', NULL, N'500', NULL, N'500mg', NULL, N'Medley', NULL, N'M004MET500T500', N'5060545240243', NULL, NULL, NULL, N'Cash', 0x, N'1', 1, N'Draft', CAST(0x76470B00 AS Date), N'POM', 10)
INSERT [dbo].[tblProduct] ([ProductID], [Initialadditiondate], [Productname], [Licenseno], [Dosageform], [Packtype], [Packsize], [Priceperpack], [Strength], [Currency], [Productmanufacture], [Productmanufacturecountry], [Productcode], [ProductGTINbarcode], [Productaprovalauthority], [Productaprovalstatus], [Tax], [Taxationtype], [Productphoto], [Selectaproval], [Approvarid], [Status], [Validtill], [Productcatogory], [ProductQty]) VALUES (4, CAST(0x78450B00 AS Date), N'METFORMIN 850MG 56s', N'PL 43870/0005', N'Tablet', NULL, N'56', NULL, N'850mg', NULL, N'Medley', NULL, N'M005MET850T56', N'5060545240229', NULL, NULL, NULL, N'Cash', 0x, N'1', 1, N'Draft', CAST(0xD3450B00 AS Date), N'POM', 10)
INSERT [dbo].[tblProduct] ([ProductID], [Initialadditiondate], [Productname], [Licenseno], [Dosageform], [Packtype], [Packsize], [Priceperpack], [Strength], [Currency], [Productmanufacture], [Productmanufacturecountry], [Productcode], [ProductGTINbarcode], [Productaprovalauthority], [Productaprovalstatus], [Tax], [Taxationtype], [Productphoto], [Selectaproval], [Approvarid], [Status], [Validtill], [Productcatogory], [ProductQty]) VALUES (5, CAST(0x78450B00 AS Date), N'METFORMIN 850MG 300S', N'PL 43870/0005', N'Tablet', NULL, N'300', NULL, N'850mg', NULL, N'Medley', NULL, N'M005MET850T300', N'5060545240236', NULL, NULL, NULL, N'Cash', 0x, N'1', 1, N'Draft', CAST(0x0F460B00 AS Date), N'POM', 10)
INSERT [dbo].[tblProduct] ([ProductID], [Initialadditiondate], [Productname], [Licenseno], [Dosageform], [Packtype], [Packsize], [Priceperpack], [Strength], [Currency], [Productmanufacture], [Productmanufacturecountry], [Productcode], [ProductGTINbarcode], [Productaprovalauthority], [Productaprovalstatus], [Tax], [Taxationtype], [Productphoto], [Selectaproval], [Approvarid], [Status], [Validtill], [Productcatogory], [ProductQty]) VALUES (6, CAST(0x78450B00 AS Date), N'PARACETAMOL 500mg  CAPS 100s', N'PL 43870/0009', N'Caplet', NULL, N'100', NULL, N'500mg', NULL, N'Medley', NULL, N'M009PAR500CT100', N'5060545240960', NULL, NULL, NULL, N'Cash', 0x, N'1', 1, N'Draft', CAST(0x7B470B00 AS Date), N'POM', 10)
INSERT [dbo].[tblProduct] ([ProductID], [Initialadditiondate], [Productname], [Licenseno], [Dosageform], [Packtype], [Packsize], [Priceperpack], [Strength], [Currency], [Productmanufacture], [Productmanufacturecountry], [Productcode], [ProductGTINbarcode], [Productaprovalauthority], [Productaprovalstatus], [Tax], [Taxationtype], [Productphoto], [Selectaproval], [Approvarid], [Status], [Validtill], [Productcatogory], [ProductQty]) VALUES (7, CAST(0x78450B00 AS Date), N'PARACETAMOL 500MG EFF 100S', N'PL 43870/0012', N'Tablet', NULL, N'100', NULL, N'500mg', NULL, N'Medley', NULL, N'M012PAR500ET100', N'5060545240335', NULL, NULL, NULL, N'Cash', 0x, N'1', 1, N'Draft', CAST(0x79470B00 AS Date), N'POM', 10)
INSERT [dbo].[tblProduct] ([ProductID], [Initialadditiondate], [Productname], [Licenseno], [Dosageform], [Packtype], [Packsize], [Priceperpack], [Strength], [Currency], [Productmanufacture], [Productmanufacturecountry], [Productcode], [ProductGTINbarcode], [Productaprovalauthority], [Productaprovalstatus], [Tax], [Taxationtype], [Productphoto], [Selectaproval], [Approvarid], [Status], [Validtill], [Productcatogory], [ProductQty]) VALUES (8, CAST(0x78450B00 AS Date), N'PARACETAMOL 500MG EFF 60S', N'PL 43870/0012', N'Tablet', NULL, N'60', NULL, N'500mg', NULL, N'Medley', NULL, N'M012PAR500ET60', N'5060545240304', NULL, NULL, NULL, N'Cash', 0x, N'1', 1, N'Draft', CAST(0x3C460B00 AS Date), N'POM', 10)
INSERT [dbo].[tblProduct] ([ProductID], [Initialadditiondate], [Productname], [Licenseno], [Dosageform], [Packtype], [Packsize], [Priceperpack], [Strength], [Currency], [Productmanufacture], [Productmanufacturecountry], [Productcode], [ProductGTINbarcode], [Productaprovalauthority], [Productaprovalstatus], [Tax], [Taxationtype], [Productphoto], [Selectaproval], [Approvarid], [Status], [Validtill], [Productcatogory], [ProductQty]) VALUES (9, CAST(0x78450B00 AS Date), N'RANITIDINE 150MG 60S', N'PL 43870/0026', N'Tablet', NULL, N'60', NULL, N'150mg', NULL, N'Medley', NULL, N'M026RAN150T60', N'5060545240359', NULL, NULL, NULL, N'Cash', 0x, N'1', 1, N'Draft', CAST(0x4A460B00 AS Date), N'POM', 10)
INSERT [dbo].[tblProduct] ([ProductID], [Initialadditiondate], [Productname], [Licenseno], [Dosageform], [Packtype], [Packsize], [Priceperpack], [Strength], [Currency], [Productmanufacture], [Productmanufacturecountry], [Productcode], [ProductGTINbarcode], [Productaprovalauthority], [Productaprovalstatus], [Tax], [Taxationtype], [Productphoto], [Selectaproval], [Approvarid], [Status], [Validtill], [Productcatogory], [ProductQty]) VALUES (10, CAST(0x78450B00 AS Date), N'RANITIDINE 300MG 30S', N'PL 43870/0027', N'Tablet', NULL, N'30', NULL, N'150mg', NULL, N'Medley', NULL, N'M027RAN300T30', N'5060545240366', NULL, NULL, NULL, N'Cash', 0x, N'1', 1, N'Draft', CAST(0xE7450B00 AS Date), N'POM', 10)
INSERT [dbo].[tblProduct] ([ProductID], [Initialadditiondate], [Productname], [Licenseno], [Dosageform], [Packtype], [Packsize], [Priceperpack], [Strength], [Currency], [Productmanufacture], [Productmanufacturecountry], [Productcode], [ProductGTINbarcode], [Productaprovalauthority], [Productaprovalstatus], [Tax], [Taxationtype], [Productphoto], [Selectaproval], [Approvarid], [Status], [Validtill], [Productcatogory], [ProductQty]) VALUES (11, CAST(0x78450B00 AS Date), N'IBUPROFEN 200MG 500S', N'PL 43870/0021', N'Tablet', NULL, N'500', NULL, N'500mg', NULL, N'Select', NULL, N'M021IBU200T500', N'5060545240052', NULL, NULL, NULL, N'Cash', 0x, N'1', 1, N'Draft', CAST(0x3B460B00 AS Date), N'POM', 10)
INSERT [dbo].[tblProduct] ([ProductID], [Initialadditiondate], [Productname], [Licenseno], [Dosageform], [Packtype], [Packsize], [Priceperpack], [Strength], [Currency], [Productmanufacture], [Productmanufacturecountry], [Productcode], [ProductGTINbarcode], [Productaprovalauthority], [Productaprovalstatus], [Tax], [Taxationtype], [Productphoto], [Selectaproval], [Approvarid], [Status], [Validtill], [Productcatogory], [ProductQty]) VALUES (12, CAST(0x78450B00 AS Date), N'IBUPROFEN 400MG 500S', N'PL 43870/0022', N'Tablet', NULL, N'500', NULL, N'500mg', NULL, N'Medley', NULL, N'M022IBU400T500', N'5060545240816', NULL, NULL, NULL, N'Cash', 0x, N'1', 1, N'Draft', CAST(0x04460B00 AS Date), N'POM', 10)
INSERT [dbo].[tblProduct] ([ProductID], [Initialadditiondate], [Productname], [Licenseno], [Dosageform], [Packtype], [Packsize], [Priceperpack], [Strength], [Currency], [Productmanufacture], [Productmanufacturecountry], [Productcode], [ProductGTINbarcode], [Productaprovalauthority], [Productaprovalstatus], [Tax], [Taxationtype], [Productphoto], [Selectaproval], [Approvarid], [Status], [Validtill], [Productcatogory], [ProductQty]) VALUES (13, CAST(0x78450B00 AS Date), N'TERAZOSIN 2mg 28s', N'PL 43870/0001', N'Tablet', NULL, N'28', NULL, N'2mg', NULL, N'Medley', NULL, N'M001TER2T28', N'5060545240380', NULL, NULL, NULL, N'Cash', 0x, N'1', 1, N'Draft', CAST(0xD5460B00 AS Date), N'POM', 10)
INSERT [dbo].[tblProduct] ([ProductID], [Initialadditiondate], [Productname], [Licenseno], [Dosageform], [Packtype], [Packsize], [Priceperpack], [Strength], [Currency], [Productmanufacture], [Productmanufacturecountry], [Productcode], [ProductGTINbarcode], [Productaprovalauthority], [Productaprovalstatus], [Tax], [Taxationtype], [Productphoto], [Selectaproval], [Approvarid], [Status], [Validtill], [Productcatogory], [ProductQty]) VALUES (14, CAST(0x78450B00 AS Date), N'TERAZOSIN 10mg 28s', N'PL 43870/0003', N'Tablet', NULL, N'28', NULL, N'10mg', NULL, N'Medley', NULL, N'M003TER10T28', N'5060545240373', NULL, NULL, NULL, N'Cheque', 0x, N'2', 2, N'Draft', CAST(0x00470B00 AS Date), N'POM', 10)
INSERT [dbo].[tblProduct] ([ProductID], [Initialadditiondate], [Productname], [Licenseno], [Dosageform], [Packtype], [Packsize], [Priceperpack], [Strength], [Currency], [Productmanufacture], [Productmanufacturecountry], [Productcode], [ProductGTINbarcode], [Productaprovalauthority], [Productaprovalstatus], [Tax], [Taxationtype], [Productphoto], [Selectaproval], [Approvarid], [Status], [Validtill], [Productcatogory], [ProductQty]) VALUES (15, CAST(0x78450B00 AS Date), N'TERAZOSIN 5MG 28S', N'PL 43870/0002', N'Tablet', NULL, N'28', NULL, N'5mg', NULL, N'Medley', NULL, N'M002TER5T28', N'5060545240397', NULL, NULL, NULL, N'Cash', 0x, N'2', 2, N'Draft', CAST(0xA1450B00 AS Date), N'POM', 10)
INSERT [dbo].[tblProduct] ([ProductID], [Initialadditiondate], [Productname], [Licenseno], [Dosageform], [Packtype], [Packsize], [Priceperpack], [Strength], [Currency], [Productmanufacture], [Productmanufacturecountry], [Productcode], [ProductGTINbarcode], [Productaprovalauthority], [Productaprovalstatus], [Tax], [Taxationtype], [Productphoto], [Selectaproval], [Approvarid], [Status], [Validtill], [Productcatogory], [ProductQty]) VALUES (16, CAST(0x78450B00 AS Date), N'METFORMIN 500MG 1000S', N'PL 43870/0004', N'Tablet', NULL, N'1000', NULL, N'500mg', NULL, N'Medley', NULL, N'M004MET500T1000', N'5060545240250', NULL, NULL, NULL, N'Cheque', 0x, N'4', 4, N'Draft', CAST(0x3D460B00 AS Date), N'POM', 10)
INSERT [dbo].[tblProduct] ([ProductID], [Initialadditiondate], [Productname], [Licenseno], [Dosageform], [Packtype], [Packsize], [Priceperpack], [Strength], [Currency], [Productmanufacture], [Productmanufacturecountry], [Productcode], [ProductGTINbarcode], [Productaprovalauthority], [Productaprovalstatus], [Tax], [Taxationtype], [Productphoto], [Selectaproval], [Approvarid], [Status], [Validtill], [Productcatogory], [ProductQty]) VALUES (17, CAST(0x78450B00 AS Date), N'OMEPRAZOLE 20MG 28S ', N'PL 43870/0014', N'Capsule', NULL, N'28', NULL, N'20mg', NULL, N'Medley', NULL, N'M014OME20CP28', N'5060545240472', NULL, NULL, NULL, N'Cheque', 0x, N'3', 3, N'Draft', CAST(0xF2450B00 AS Date), N'POM', 10)
INSERT [dbo].[tblProduct] ([ProductID], [Initialadditiondate], [Productname], [Licenseno], [Dosageform], [Packtype], [Packsize], [Priceperpack], [Strength], [Currency], [Productmanufacture], [Productmanufacturecountry], [Productcode], [ProductGTINbarcode], [Productaprovalauthority], [Productaprovalstatus], [Tax], [Taxationtype], [Productphoto], [Selectaproval], [Approvarid], [Status], [Validtill], [Productcatogory], [ProductQty]) VALUES (18, CAST(0x78450B00 AS Date), N'PARACETAMOL 500MG EFF 24S GSL', N'PL 43870/0010', N'Tablet', NULL, N'24', NULL, N'500mg', NULL, N'Medley', NULL, N'M010PAR500ET24', N'5060545240083', NULL, NULL, NULL, N'Cheque', 0x, N'2', 2, N'Draft', CAST(0x4C470B00 AS Date), N'GSL', 10)
INSERT [dbo].[tblProduct] ([ProductID], [Initialadditiondate], [Productname], [Licenseno], [Dosageform], [Packtype], [Packsize], [Priceperpack], [Strength], [Currency], [Productmanufacture], [Productmanufacturecountry], [Productcode], [ProductGTINbarcode], [Productaprovalauthority], [Productaprovalstatus], [Tax], [Taxationtype], [Productphoto], [Selectaproval], [Approvarid], [Status], [Validtill], [Productcatogory], [ProductQty]) VALUES (19, CAST(0x78450B00 AS Date), N'PERINDOPRIL 4MG 30S', N'PL 43870/0039', N'Tablet', NULL, N'30', NULL, N'4mg', NULL, N'Medley', NULL, N'M039PER4T30', N'5060545240274', NULL, NULL, NULL, N'Cash', 0x, N'2', 2, N'Draft', CAST(0x32460B00 AS Date), N'POM', 10)
INSERT [dbo].[tblProduct] ([ProductID], [Initialadditiondate], [Productname], [Licenseno], [Dosageform], [Packtype], [Packsize], [Priceperpack], [Strength], [Currency], [Productmanufacture], [Productmanufacturecountry], [Productcode], [ProductGTINbarcode], [Productaprovalauthority], [Productaprovalstatus], [Tax], [Taxationtype], [Productphoto], [Selectaproval], [Approvarid], [Status], [Validtill], [Productcatogory], [ProductQty]) VALUES (20, CAST(0x78450B00 AS Date), N'PERINDOPRIL 8MG 30S', N'PL 43870/0040', N'Tablet', NULL, N'30', NULL, N'8mg', NULL, N'Medley', NULL, N'M040PER8T30', N'5060545240342', NULL, NULL, NULL, N'Cash', 0x, N'5', 5, N'Draft', CAST(0x23470B00 AS Date), N'POM', 10)
INSERT [dbo].[tblProduct] ([ProductID], [Initialadditiondate], [Productname], [Licenseno], [Dosageform], [Packtype], [Packsize], [Priceperpack], [Strength], [Currency], [Productmanufacture], [Productmanufacturecountry], [Productcode], [ProductGTINbarcode], [Productaprovalauthority], [Productaprovalstatus], [Tax], [Taxationtype], [Productphoto], [Selectaproval], [Approvarid], [Status], [Validtill], [Productcatogory], [ProductQty]) VALUES (21, CAST(0x78450B00 AS Date), N'PARACETAMOL 500MG TABS 1000S', N'PL 43870/0009', N'Tablet', NULL, N'1000', NULL, N'500mg', NULL, N'Medley', NULL, N'M009PAR500T1000', N'5060545240496', NULL, NULL, NULL, N'Cash', 0x, N'7', 7, N'Draft', CAST(0x02460B00 AS Date), N'POM', 10)
INSERT [dbo].[tblProduct] ([ProductID], [Initialadditiondate], [Productname], [Licenseno], [Dosageform], [Packtype], [Packsize], [Priceperpack], [Strength], [Currency], [Productmanufacture], [Productmanufacturecountry], [Productcode], [ProductGTINbarcode], [Productaprovalauthority], [Productaprovalstatus], [Tax], [Taxationtype], [Productphoto], [Selectaproval], [Approvarid], [Status], [Validtill], [Productcatogory], [ProductQty]) VALUES (22, CAST(0x78450B00 AS Date), N'PERINDOPRIL 2MG 30S', N'PL 43870/0038', N'Tablet', NULL, N'30', NULL, N'2mg', NULL, N'Medley', NULL, N'M038PER2T30', N'5060545240328', NULL, NULL, NULL, N'Cash', 0x, N'7', 7, N'Draft', CAST(0x07460B00 AS Date), N'POM', 10)
INSERT [dbo].[tblProduct] ([ProductID], [Initialadditiondate], [Productname], [Licenseno], [Dosageform], [Packtype], [Packsize], [Priceperpack], [Strength], [Currency], [Productmanufacture], [Productmanufacturecountry], [Productcode], [ProductGTINbarcode], [Productaprovalauthority], [Productaprovalstatus], [Tax], [Taxationtype], [Productphoto], [Selectaproval], [Approvarid], [Status], [Validtill], [Productcatogory], [ProductQty]) VALUES (23, CAST(0x78450B00 AS Date), N'THIAMINE 50MG 100S', N'NA', N'Tablet', NULL, N'100', NULL, N'50mg', NULL, N'Medley', NULL, N'MVTHI50T100', N'NA', NULL, NULL, NULL, N'Cash', 0x, N'2', 2, N'Draft', CAST(0xAD460B00 AS Date), N'FOOD SUPLEMENT', 10)
INSERT [dbo].[tblProduct] ([ProductID], [Initialadditiondate], [Productname], [Licenseno], [Dosageform], [Packtype], [Packsize], [Priceperpack], [Strength], [Currency], [Productmanufacture], [Productmanufacturecountry], [Productcode], [ProductGTINbarcode], [Productaprovalauthority], [Productaprovalstatus], [Tax], [Taxationtype], [Productphoto], [Selectaproval], [Approvarid], [Status], [Validtill], [Productcatogory], [ProductQty]) VALUES (24, CAST(0x78450B00 AS Date), N'ENALAPRIL MALEATE 10MG 28S', N'PL 43870/0033', N'Tablet', NULL, N'28', NULL, N'10mg', NULL, N'Medley', NULL, N'M033ENA10T28', N'5060545240748', NULL, NULL, NULL, N'Cash', 0x, N'1', 1, N'Draft', CAST(0x6A470B00 AS Date), N'POM', 10)
INSERT [dbo].[tblProduct] ([ProductID], [Initialadditiondate], [Productname], [Licenseno], [Dosageform], [Packtype], [Packsize], [Priceperpack], [Strength], [Currency], [Productmanufacture], [Productmanufacturecountry], [Productcode], [ProductGTINbarcode], [Productaprovalauthority], [Productaprovalstatus], [Tax], [Taxationtype], [Productphoto], [Selectaproval], [Approvarid], [Status], [Validtill], [Productcatogory], [ProductQty]) VALUES (25, CAST(0x78450B00 AS Date), N'ENALAPRIL MALEATE 20MG 28S', N'PL 43870/0034', N'Tablet', NULL, N'28', NULL, N'20mg', NULL, N'Medley', NULL, N'M034ENA20T28', N'5060545240755', NULL, NULL, NULL, N'Cheque', 0x, N'4', 4, N'Draft', CAST(0xC9450B00 AS Date), N'POM', 10)
INSERT [dbo].[tblProduct] ([ProductID], [Initialadditiondate], [Productname], [Licenseno], [Dosageform], [Packtype], [Packsize], [Priceperpack], [Strength], [Currency], [Productmanufacture], [Productmanufacturecountry], [Productcode], [ProductGTINbarcode], [Productaprovalauthority], [Productaprovalstatus], [Tax], [Taxationtype], [Productphoto], [Selectaproval], [Approvarid], [Status], [Validtill], [Productcatogory], [ProductQty]) VALUES (26, CAST(0x78450B00 AS Date), N'ALENDRONIC ACID 70MG TABS 4S', N'PL 43870/0037', N'Tablet', NULL, N'4', NULL, N'70mg', NULL, N'Medley', NULL, N'M037ALE70T4', N'5060545240120', NULL, NULL, NULL, N'Cash', 0x, N'7', 7, N'Draft', CAST(0x20470B00 AS Date), N'POM', 10)
INSERT [dbo].[tblProduct] ([ProductID], [Initialadditiondate], [Productname], [Licenseno], [Dosageform], [Packtype], [Packsize], [Priceperpack], [Strength], [Currency], [Productmanufacture], [Productmanufacturecountry], [Productcode], [ProductGTINbarcode], [Productaprovalauthority], [Productaprovalstatus], [Tax], [Taxationtype], [Productphoto], [Selectaproval], [Approvarid], [Status], [Validtill], [Productcatogory], [ProductQty]) VALUES (27, CAST(0x78450B00 AS Date), N'AXPINET METFORMIN 500MG 28S', N'PL 43870/0004', N'Tablet', NULL, N'28', NULL, N'500mg', NULL, N'Medley', NULL, N'M004AXP500T28', N'NA', NULL, NULL, NULL, N'Cash', 0x, N'3', 3, N'Draft', CAST(0x8C450B00 AS Date), N'POM', 10)
INSERT [dbo].[tblProduct] ([ProductID], [Initialadditiondate], [Productname], [Licenseno], [Dosageform], [Packtype], [Packsize], [Priceperpack], [Strength], [Currency], [Productmanufacture], [Productmanufacturecountry], [Productcode], [ProductGTINbarcode], [Productaprovalauthority], [Productaprovalstatus], [Tax], [Taxationtype], [Productphoto], [Selectaproval], [Approvarid], [Status], [Validtill], [Productcatogory], [ProductQty]) VALUES (28, CAST(0x78450B00 AS Date), N'AXPINET METFORMIN 850MG 56S', N'PL 43870/0004', N'Tablet', NULL, N'56', NULL, N'850mg', NULL, N'Medley', NULL, N'M005AXP850T56', N'NA', NULL, NULL, NULL, N'Cash', 0x, N'1', 1, N'Draft', CAST(0x92470B00 AS Date), N'POM', 10)
INSERT [dbo].[tblProduct] ([ProductID], [Initialadditiondate], [Productname], [Licenseno], [Dosageform], [Packtype], [Packsize], [Priceperpack], [Strength], [Currency], [Productmanufacture], [Productmanufacturecountry], [Productcode], [ProductGTINbarcode], [Productaprovalauthority], [Productaprovalstatus], [Tax], [Taxationtype], [Productphoto], [Selectaproval], [Approvarid], [Status], [Validtill], [Productcatogory], [ProductQty]) VALUES (29, CAST(0x78450B00 AS Date), N'FERROUS FUMARATE 210MG 84S', N'NA', N'Tablet', NULL, N'84', NULL, N'210mg', NULL, N'Medley', NULL, N'MVFER210T84', N'NA', NULL, NULL, NULL, N'Cash', 0x, N'3', 3, N'Draft', CAST(0x1C460B00 AS Date), N'FOOD SUPLEMENT', 10)
INSERT [dbo].[tblProduct] ([ProductID], [Initialadditiondate], [Productname], [Licenseno], [Dosageform], [Packtype], [Packsize], [Priceperpack], [Strength], [Currency], [Productmanufacture], [Productmanufacturecountry], [Productcode], [ProductGTINbarcode], [Productaprovalauthority], [Productaprovalstatus], [Tax], [Taxationtype], [Productphoto], [Selectaproval], [Approvarid], [Status], [Validtill], [Productcatogory], [ProductQty]) VALUES (30, CAST(0x78450B00 AS Date), N'FERROUS SULPHATE 200MG 28S', N'NA', N'Tablet', NULL, N'28', NULL, N'200mg', NULL, N'Select', NULL, N'MVFER200T28', N'NA', NULL, NULL, NULL, N'Cash', 0x, N'2', 2, N'Draft', CAST(0x06460B00 AS Date), N'FOOD SUPLEMENT', 10)
INSERT [dbo].[tblProduct] ([ProductID], [Initialadditiondate], [Productname], [Licenseno], [Dosageform], [Packtype], [Packsize], [Priceperpack], [Strength], [Currency], [Productmanufacture], [Productmanufacturecountry], [Productcode], [ProductGTINbarcode], [Productaprovalauthority], [Productaprovalstatus], [Tax], [Taxationtype], [Productphoto], [Selectaproval], [Approvarid], [Status], [Validtill], [Productcatogory], [ProductQty]) VALUES (31, CAST(0x78450B00 AS Date), N'SODIUM BICARB 500MG TABS 100S', N'NA', N'Tablet', NULL, N'100', NULL, N'500mg', NULL, N'Medley', NULL, N'MVSOD500T100', N'NA', NULL, NULL, NULL, N'Cash', 0x, N'1', 1, N'Draft', CAST(0x75470B00 AS Date), N'FOOD SUPLEMENT', 10)
INSERT [dbo].[tblProduct] ([ProductID], [Initialadditiondate], [Productname], [Licenseno], [Dosageform], [Packtype], [Packsize], [Priceperpack], [Strength], [Currency], [Productmanufacture], [Productmanufacturecountry], [Productcode], [ProductGTINbarcode], [Productaprovalauthority], [Productaprovalstatus], [Tax], [Taxationtype], [Productphoto], [Selectaproval], [Approvarid], [Status], [Validtill], [Productcatogory], [ProductQty]) VALUES (32, CAST(0x78450B00 AS Date), N'VITAMIN B CO STRONG 28S', N'NA', N'Tablet', NULL, N'28', NULL, N'28mg', NULL, N'Medley', NULL, N'MVVIT00T28', N'NA', NULL, NULL, NULL, N'Cash', 0x, N'1', 1, N'Draft', CAST(0xEC460B00 AS Date), N'FOOD SUPLEMENT', 10)
INSERT [dbo].[tblProduct] ([ProductID], [Initialadditiondate], [Productname], [Licenseno], [Dosageform], [Packtype], [Packsize], [Priceperpack], [Strength], [Currency], [Productmanufacture], [Productmanufacturecountry], [Productcode], [ProductGTINbarcode], [Productaprovalauthority], [Productaprovalstatus], [Tax], [Taxationtype], [Productphoto], [Selectaproval], [Approvarid], [Status], [Validtill], [Productcatogory], [ProductQty]) VALUES (33, CAST(0x78450B00 AS Date), N'CYANOCOBALAMIN 50MG 50S', N'NA', N'Tablet', NULL, N'50', NULL, N'50mg', NULL, N'Medley', NULL, N'MVCYA50T50', N'NA', NULL, NULL, NULL, N'Cash', 0x, N'1', 1, N'Draft', CAST(0x3F460B00 AS Date), N'FOOD SUPLEMENT', 10)
INSERT [dbo].[tblProduct] ([ProductID], [Initialadditiondate], [Productname], [Licenseno], [Dosageform], [Packtype], [Packsize], [Priceperpack], [Strength], [Currency], [Productmanufacture], [Productmanufacturecountry], [Productcode], [ProductGTINbarcode], [Productaprovalauthority], [Productaprovalstatus], [Tax], [Taxationtype], [Productphoto], [Selectaproval], [Approvarid], [Status], [Validtill], [Productcatogory], [ProductQty]) VALUES (34, CAST(0x78450B00 AS Date), N'THIAMINE 100MG 100S', N'NA', N'Tablet', NULL, N'100', NULL, N'100mg', NULL, N'Medley', NULL, N'MVTHI100T100', N'NA', NULL, NULL, NULL, N'Cheque', 0x, N'5', 5, N'Draft', CAST(0x03460B00 AS Date), N'FOOD SUPLEMENT', 10)
INSERT [dbo].[tblProduct] ([ProductID], [Initialadditiondate], [Productname], [Licenseno], [Dosageform], [Packtype], [Packsize], [Priceperpack], [Strength], [Currency], [Productmanufacture], [Productmanufacturecountry], [Productcode], [ProductGTINbarcode], [Productaprovalauthority], [Productaprovalstatus], [Tax], [Taxationtype], [Productphoto], [Selectaproval], [Approvarid], [Status], [Validtill], [Productcatogory], [ProductQty]) VALUES (35, CAST(0x78450B00 AS Date), N'SODIUM BICARB 600MG TABS 100S', N'NA', N'Tablet', NULL, N'100', NULL, N'600mg', NULL, N'Medley', NULL, N'MVSOD600T100', N'NA', NULL, NULL, NULL, N'Cheque', 0x, N'1', 1, N'Draft', CAST(0xF9460B00 AS Date), N'FOOD SUPLEMENT', 10)
INSERT [dbo].[tblProduct] ([ProductID], [Initialadditiondate], [Productname], [Licenseno], [Dosageform], [Packtype], [Packsize], [Priceperpack], [Strength], [Currency], [Productmanufacture], [Productmanufacturecountry], [Productcode], [ProductGTINbarcode], [Productaprovalauthority], [Productaprovalstatus], [Tax], [Taxationtype], [Productphoto], [Selectaproval], [Approvarid], [Status], [Validtill], [Productcatogory], [ProductQty]) VALUES (36, CAST(0x78450B00 AS Date), N'VITAMIN B CO STRONG 1000S', N'NA', N'Tablet', NULL, N'1000', NULL, N'1000mg', NULL, N'Medley', NULL, N'MVVIT00T1000', N'NA', NULL, NULL, NULL, N'Cash', 0x, N'9', 9, N'Draft', CAST(0xDB460B00 AS Date), N'FOOD SUPLEMENT', 10)
INSERT [dbo].[tblProduct] ([ProductID], [Initialadditiondate], [Productname], [Licenseno], [Dosageform], [Packtype], [Packsize], [Priceperpack], [Strength], [Currency], [Productmanufacture], [Productmanufacturecountry], [Productcode], [ProductGTINbarcode], [Productaprovalauthority], [Productaprovalstatus], [Tax], [Taxationtype], [Productphoto], [Selectaproval], [Approvarid], [Status], [Validtill], [Productcatogory], [ProductQty]) VALUES (37, CAST(0x78450B00 AS Date), N'SODIUM BICARB 500MG CAPS 100S', N'NA', N'Tablet', NULL, N'100', NULL, N'500mg', NULL, N'Medley', NULL, N'MVSOD500CT100', N'NA', NULL, NULL, NULL, N'Cash', 0x, N'3', 3, N'Draft', CAST(0x37470B00 AS Date), N'FOOD SUPLEMENT', 10)
INSERT [dbo].[tblProduct] ([ProductID], [Initialadditiondate], [Productname], [Licenseno], [Dosageform], [Packtype], [Packsize], [Priceperpack], [Strength], [Currency], [Productmanufacture], [Productmanufacturecountry], [Productcode], [ProductGTINbarcode], [Productaprovalauthority], [Productaprovalstatus], [Tax], [Taxationtype], [Productphoto], [Selectaproval], [Approvarid], [Status], [Validtill], [Productcatogory], [ProductQty]) VALUES (38, CAST(0x78450B00 AS Date), N'CIMETIDINE 200MG 60S', N'PL 43870/0018', N'Tablet', NULL, N'60', NULL, N'200mg', NULL, N'Medley', NULL, N'M018CIM200T60', N'5060545242124', NULL, NULL, NULL, N'Cash', 0x, N'1', 1, N'Draft', CAST(0xDE450B00 AS Date), N'POM', 10)
INSERT [dbo].[tblProduct] ([ProductID], [Initialadditiondate], [Productname], [Licenseno], [Dosageform], [Packtype], [Packsize], [Priceperpack], [Strength], [Currency], [Productmanufacture], [Productmanufacturecountry], [Productcode], [ProductGTINbarcode], [Productaprovalauthority], [Productaprovalstatus], [Tax], [Taxationtype], [Productphoto], [Selectaproval], [Approvarid], [Status], [Validtill], [Productcatogory], [ProductQty]) VALUES (39, CAST(0x78450B00 AS Date), N'CIMETIDINE 800MG 60S', N'PL 43870/0020', N'Tablet', NULL, N'60', NULL, N'800mg', NULL, N'Medley', NULL, N'M020CIM800T60', N'5060545242131', NULL, NULL, NULL, N'Select', 0x, NULL, 2, N'Draft', CAST(0x1F460B00 AS Date), N'POM', 10)
INSERT [dbo].[tblProduct] ([ProductID], [Initialadditiondate], [Productname], [Licenseno], [Dosageform], [Packtype], [Packsize], [Priceperpack], [Strength], [Currency], [Productmanufacture], [Productmanufacturecountry], [Productcode], [ProductGTINbarcode], [Productaprovalauthority], [Productaprovalstatus], [Tax], [Taxationtype], [Productphoto], [Selectaproval], [Approvarid], [Status], [Validtill], [Productcatogory], [ProductQty]) VALUES (40, CAST(0x78450B00 AS Date), N'CIMETIDINE 400MG 60S', N'PL 43870/0019', N'Tablet', NULL, N'60', NULL, N'400mg', NULL, N'Medley', NULL, N'M019CIM400T60', N'5060545242148', NULL, NULL, NULL, N'Cash', 0x, NULL, 5, N'Draft', CAST(0x9D460B00 AS Date), N'POM', 10)
INSERT [dbo].[tblProduct] ([ProductID], [Initialadditiondate], [Productname], [Licenseno], [Dosageform], [Packtype], [Packsize], [Priceperpack], [Strength], [Currency], [Productmanufacture], [Productmanufacturecountry], [Productcode], [ProductGTINbarcode], [Productaprovalauthority], [Productaprovalstatus], [Tax], [Taxationtype], [Productphoto], [Selectaproval], [Approvarid], [Status], [Validtill], [Productcatogory], [ProductQty]) VALUES (41, CAST(0x78450B00 AS Date), N'PARACETAMOL 500MG EFF 16S GSL', N'PL 43870/0010', N'Tablet', NULL, N'16', NULL, N'500mg', NULL, N'Medley', NULL, N'M010PAR500ET16', N'5060545241189', NULL, NULL, NULL, N'Cash', 0x, NULL, 2, N'Draft', CAST(0x09460B00 AS Date), N'GSL', 10)
INSERT [dbo].[tblProduct] ([ProductID], [Initialadditiondate], [Productname], [Licenseno], [Dosageform], [Packtype], [Packsize], [Priceperpack], [Strength], [Currency], [Productmanufacture], [Productmanufacturecountry], [Productcode], [ProductGTINbarcode], [Productaprovalauthority], [Productaprovalstatus], [Tax], [Taxationtype], [Productphoto], [Selectaproval], [Approvarid], [Status], [Validtill], [Productcatogory], [ProductQty]) VALUES (42, CAST(0x78450B00 AS Date), N'PROPYLTHIOURACIL 50MG 100S', N'NA', N'Tablet', NULL, N'100', NULL, N'50mg', NULL, N'Wholesale', NULL, N'WPRO50T100', N'NA', NULL, NULL, NULL, N'Cash', 0x, NULL, 6, N'Draft', CAST(0x40460B00 AS Date), N'POM', 10)
INSERT [dbo].[tblProduct] ([ProductID], [Initialadditiondate], [Productname], [Licenseno], [Dosageform], [Packtype], [Packsize], [Priceperpack], [Strength], [Currency], [Productmanufacture], [Productmanufacturecountry], [Productcode], [ProductGTINbarcode], [Productaprovalauthority], [Productaprovalstatus], [Tax], [Taxationtype], [Productphoto], [Selectaproval], [Approvarid], [Status], [Validtill], [Productcatogory], [ProductQty]) VALUES (43, CAST(0x78450B00 AS Date), N'COLECALCIFEROL 800IU CAPS 30S', N'NA', N'Capsule', NULL, N'30', NULL, N'800mg', NULL, N'Wholesale', NULL, N'WCOL800CT30', N'NA', NULL, NULL, NULL, N'Cheque', 0x, NULL, 1, N'Draft', CAST(0x1F460B00 AS Date), N'POM', 10)
INSERT [dbo].[tblProduct] ([ProductID], [Initialadditiondate], [Productname], [Licenseno], [Dosageform], [Packtype], [Packsize], [Priceperpack], [Strength], [Currency], [Productmanufacture], [Productmanufacturecountry], [Productcode], [ProductGTINbarcode], [Productaprovalauthority], [Productaprovalstatus], [Tax], [Taxationtype], [Productphoto], [Selectaproval], [Approvarid], [Status], [Validtill], [Productcatogory], [ProductQty]) VALUES (44, CAST(0x78450B00 AS Date), N'DOSULEPIN 75MG 28S', N'NA', N'Tablet', NULL, N'28', NULL, N'75mg', NULL, N'Wholesale', NULL, N'WDOS75T28', N'NA', NULL, NULL, NULL, N'Cash', 0x, NULL, 1, N'Draft', CAST(0x19470B00 AS Date), N'POM', 10)
INSERT [dbo].[tblProduct] ([ProductID], [Initialadditiondate], [Productname], [Licenseno], [Dosageform], [Packtype], [Packsize], [Priceperpack], [Strength], [Currency], [Productmanufacture], [Productmanufacturecountry], [Productcode], [ProductGTINbarcode], [Productaprovalauthority], [Productaprovalstatus], [Tax], [Taxationtype], [Productphoto], [Selectaproval], [Approvarid], [Status], [Validtill], [Productcatogory], [ProductQty]) VALUES (45, CAST(0x78450B00 AS Date), N'MELATONIN 3MG 30S', N'NA', N'Tablet', NULL, N'30', NULL, N'3mg', NULL, N'Wholesale', NULL, N'WMEL3T30', N'NA', NULL, NULL, NULL, N'Cheque', 0x, NULL, 6, N'Draft', CAST(0x3A460B00 AS Date), N'POM', 10)
INSERT [dbo].[tblProduct] ([ProductID], [Initialadditiondate], [Productname], [Licenseno], [Dosageform], [Packtype], [Packsize], [Priceperpack], [Strength], [Currency], [Productmanufacture], [Productmanufacturecountry], [Productcode], [ProductGTINbarcode], [Productaprovalauthority], [Productaprovalstatus], [Tax], [Taxationtype], [Productphoto], [Selectaproval], [Approvarid], [Status], [Validtill], [Productcatogory], [ProductQty]) VALUES (46, CAST(0x78450B00 AS Date), N'CARBOMER 10MG GEL', N'NA', N'Gel', NULL, N'1', NULL, N'10mg', NULL, N'Wholesale', NULL, N'WCAR10S10', N'NA', NULL, NULL, NULL, N'Cash', 0x, NULL, 1, N'Draft', CAST(0x93470B00 AS Date), N'POM', 10)
INSERT [dbo].[tblProduct] ([ProductID], [Initialadditiondate], [Productname], [Licenseno], [Dosageform], [Packtype], [Packsize], [Priceperpack], [Strength], [Currency], [Productmanufacture], [Productmanufacturecountry], [Productcode], [ProductGTINbarcode], [Productaprovalauthority], [Productaprovalstatus], [Tax], [Taxationtype], [Productphoto], [Selectaproval], [Approvarid], [Status], [Validtill], [Productcatogory], [ProductQty]) VALUES (47, CAST(0x78450B00 AS Date), N'AMLODIPINE 5MG 28S', N'NA', N'Tablet', NULL, N'28', NULL, N'5mg', NULL, N'Wholesale', NULL, N'WAML5T28', N'NA', NULL, NULL, NULL, N'Cash', 0x, NULL, 4, N'Draft', CAST(0x13470B00 AS Date), N'POM', 10)
INSERT [dbo].[tblProduct] ([ProductID], [Initialadditiondate], [Productname], [Licenseno], [Dosageform], [Packtype], [Packsize], [Priceperpack], [Strength], [Currency], [Productmanufacture], [Productmanufacturecountry], [Productcode], [ProductGTINbarcode], [Productaprovalauthority], [Productaprovalstatus], [Tax], [Taxationtype], [Productphoto], [Selectaproval], [Approvarid], [Status], [Validtill], [Productcatogory], [ProductQty]) VALUES (48, CAST(0x78450B00 AS Date), N'AMLODIPINE 10MG 28S', N'NA', N'Tablet', NULL, N'28', NULL, N'10mg', NULL, N'Wholesale', NULL, N'WAML10T28', N'NA', NULL, NULL, NULL, N'Cash', 0x, NULL, 6, N'Draft', CAST(0xC9450B00 AS Date), N'POM', 10)
INSERT [dbo].[tblProduct] ([ProductID], [Initialadditiondate], [Productname], [Licenseno], [Dosageform], [Packtype], [Packsize], [Priceperpack], [Strength], [Currency], [Productmanufacture], [Productmanufacturecountry], [Productcode], [ProductGTINbarcode], [Productaprovalauthority], [Productaprovalstatus], [Tax], [Taxationtype], [Productphoto], [Selectaproval], [Approvarid], [Status], [Validtill], [Productcatogory], [ProductQty]) VALUES (49, CAST(0x78450B00 AS Date), N'ATROPINE 1% DROPS 10ML', N'NA', N'Drops', NULL, N'1', NULL, N'1mg', NULL, N'Wholesale', NULL, N'WATR1S10', N'NA', NULL, NULL, NULL, N'Cheque', 0x, NULL, 1, N'Draft', CAST(0x08460B00 AS Date), N'POM', 10)
INSERT [dbo].[tblProduct] ([ProductID], [Initialadditiondate], [Productname], [Licenseno], [Dosageform], [Packtype], [Packsize], [Priceperpack], [Strength], [Currency], [Productmanufacture], [Productmanufacturecountry], [Productcode], [ProductGTINbarcode], [Productaprovalauthority], [Productaprovalstatus], [Tax], [Taxationtype], [Productphoto], [Selectaproval], [Approvarid], [Status], [Validtill], [Productcatogory], [ProductQty]) VALUES (50, CAST(0x78450B00 AS Date), N'FLUCLOXACILLIN 500mg / 28S CAP', N'NA', N'Capsule', NULL, N'28', NULL, N'500mg', NULL, N'Wholesale', NULL, N'WFLU500CP28', N'NA', NULL, NULL, NULL, N'Cash', 0x, NULL, 5, N'Draft', CAST(0x18470B00 AS Date), N'POM', 10)
INSERT [dbo].[tblProduct] ([ProductID], [Initialadditiondate], [Productname], [Licenseno], [Dosageform], [Packtype], [Packsize], [Priceperpack], [Strength], [Currency], [Productmanufacture], [Productmanufacturecountry], [Productcode], [ProductGTINbarcode], [Productaprovalauthority], [Productaprovalstatus], [Tax], [Taxationtype], [Productphoto], [Selectaproval], [Approvarid], [Status], [Validtill], [Productcatogory], [ProductQty]) VALUES (51, CAST(0x78450B00 AS Date), N'Atenolol 25mg Tablets 28s', N'PL 43870/0030', N'Tablet', NULL, N'28', NULL, N'25mg', NULL, N'Medley', NULL, N'M030ATE25T28', N'5060545241226', NULL, NULL, NULL, N'Cash', 0x, NULL, 2, N'Draft', CAST(0xB5460B00 AS Date), N'POM', 10)
INSERT [dbo].[tblProduct] ([ProductID], [Initialadditiondate], [Productname], [Licenseno], [Dosageform], [Packtype], [Packsize], [Priceperpack], [Strength], [Currency], [Productmanufacture], [Productmanufacturecountry], [Productcode], [ProductGTINbarcode], [Productaprovalauthority], [Productaprovalstatus], [Tax], [Taxationtype], [Productphoto], [Selectaproval], [Approvarid], [Status], [Validtill], [Productcatogory], [ProductQty]) VALUES (52, CAST(0x78450B00 AS Date), N'Atenolol 50mg Tablets 28s', N'PL 43870/0031', N'Tablet', NULL, N'28', NULL, N'50mg', NULL, N'Medley', NULL, N'M031ATE50T28', N'5060545241219', NULL, NULL, NULL, N'Cash', 0x, NULL, 1, N'Draft', CAST(0xDC460B00 AS Date), N'POM', 10)
INSERT [dbo].[tblProduct] ([ProductID], [Initialadditiondate], [Productname], [Licenseno], [Dosageform], [Packtype], [Packsize], [Priceperpack], [Strength], [Currency], [Productmanufacture], [Productmanufacturecountry], [Productcode], [ProductGTINbarcode], [Productaprovalauthority], [Productaprovalstatus], [Tax], [Taxationtype], [Productphoto], [Selectaproval], [Approvarid], [Status], [Validtill], [Productcatogory], [ProductQty]) VALUES (54, CAST(0x78450B00 AS Date), N'Atenolol 100mg Tablets 28s', N'PL 43870/0032', N'Tablet', NULL, N'28', NULL, N'100mg', NULL, N'Medley', NULL, N'M032ATE100T28', N'', NULL, NULL, NULL, N'Cash', 0x, NULL, 6, N'Draft', CAST(0x44460B00 AS Date), N'POM', 10)
INSERT [dbo].[tblProduct] ([ProductID], [Initialadditiondate], [Productname], [Licenseno], [Dosageform], [Packtype], [Packsize], [Priceperpack], [Strength], [Currency], [Productmanufacture], [Productmanufacturecountry], [Productcode], [ProductGTINbarcode], [Productaprovalauthority], [Productaprovalstatus], [Tax], [Taxationtype], [Productphoto], [Selectaproval], [Approvarid], [Status], [Validtill], [Productcatogory], [ProductQty]) VALUES (55, CAST(0x7F450B00 AS Date), N'CARBOMER 10MG GEL', N'CARBO01', N'Tablet', NULL, N'100', NULL, N'50', NULL, N'Medley', NULL, N'CARBO11', N'CAR001', NULL, NULL, NULL, N'Cash', NULL, NULL, 1, N'Draft', NULL, N'POM', 10)
SET IDENTITY_INSERT [dbo].[tblProduct] OFF
SET IDENTITY_INSERT [dbo].[tblSampling] ON 

INSERT [dbo].[tblSampling] ([SamplingId], [BatchNo], [SampleNo], [Selectapproverid], [Status], [CreatedDate]) VALUES (1, N'r44', N'May26', N'1', N'Draft', NULL)
INSERT [dbo].[tblSampling] ([SamplingId], [BatchNo], [SampleNo], [Selectapproverid], [Status], [CreatedDate]) VALUES (2, N'LL221', N'LL2210', N'2', N'Draft', NULL)
INSERT [dbo].[tblSampling] ([SamplingId], [BatchNo], [SampleNo], [Selectapproverid], [Status], [CreatedDate]) VALUES (3, N'LL221', N'MA29', N'2', N'Draft', NULL)
INSERT [dbo].[tblSampling] ([SamplingId], [BatchNo], [SampleNo], [Selectapproverid], [Status], [CreatedDate]) VALUES (4, N'MA123', N'MAA12', N'3', N'Draft', NULL)
INSERT [dbo].[tblSampling] ([SamplingId], [BatchNo], [SampleNo], [Selectapproverid], [Status], [CreatedDate]) VALUES (5, N'asp151', N'', N'1', N'Draft', NULL)
INSERT [dbo].[tblSampling] ([SamplingId], [BatchNo], [SampleNo], [Selectapproverid], [Status], [CreatedDate]) VALUES (6, N'asp151', N'', N'1', N'Draft', NULL)
INSERT [dbo].[tblSampling] ([SamplingId], [BatchNo], [SampleNo], [Selectapproverid], [Status], [CreatedDate]) VALUES (7, N'asp151', N'', N'1', N'Draft', NULL)
INSERT [dbo].[tblSampling] ([SamplingId], [BatchNo], [SampleNo], [Selectapproverid], [Status], [CreatedDate]) VALUES (8, N'asp151', N'NEWSAMP', N'1', N'Draft', NULL)
INSERT [dbo].[tblSampling] ([SamplingId], [BatchNo], [SampleNo], [Selectapproverid], [Status], [CreatedDate]) VALUES (9, N'asp151', N'MYSAMP', N'1', N'Draft', NULL)
INSERT [dbo].[tblSampling] ([SamplingId], [BatchNo], [SampleNo], [Selectapproverid], [Status], [CreatedDate]) VALUES (10, N'JUL2', N'samplejul2', N'1', N'Draft', NULL)
INSERT [dbo].[tblSampling] ([SamplingId], [BatchNo], [SampleNo], [Selectapproverid], [Status], [CreatedDate]) VALUES (11, N'ATV123', N'SAMPLE ATV123', N'1', N'Draft', NULL)
INSERT [dbo].[tblSampling] ([SamplingId], [BatchNo], [SampleNo], [Selectapproverid], [Status], [CreatedDate]) VALUES (12, N'ATENOL100', N'SampleATENOL100', N'1', N'Draft', NULL)
INSERT [dbo].[tblSampling] ([SamplingId], [BatchNo], [SampleNo], [Selectapproverid], [Status], [CreatedDate]) VALUES (13, N'ATENOL100', N'SampleATENOL100', N'1', N'Draft', NULL)
INSERT [dbo].[tblSampling] ([SamplingId], [BatchNo], [SampleNo], [Selectapproverid], [Status], [CreatedDate]) VALUES (14, N'ATENOL100', N'SampleATENOL100', N'1', N'Draft', NULL)
INSERT [dbo].[tblSampling] ([SamplingId], [BatchNo], [SampleNo], [Selectapproverid], [Status], [CreatedDate]) VALUES (15, N'SA1', N'JUL13', N'1', N'Draft', NULL)
INSERT [dbo].[tblSampling] ([SamplingId], [BatchNo], [SampleNo], [Selectapproverid], [Status], [CreatedDate]) VALUES (16, N'METFOR11', N'MET113', N'2', N'Draft', NULL)
INSERT [dbo].[tblSampling] ([SamplingId], [BatchNo], [SampleNo], [Selectapproverid], [Status], [CreatedDate]) VALUES (17, N'kkkk', N'kkkk', N'2', N'Draft', NULL)
INSERT [dbo].[tblSampling] ([SamplingId], [BatchNo], [SampleNo], [Selectapproverid], [Status], [CreatedDate]) VALUES (18, N'EEE1', N'EE11', N'1', N'Draft', NULL)
INSERT [dbo].[tblSampling] ([SamplingId], [BatchNo], [SampleNo], [Selectapproverid], [Status], [CreatedDate]) VALUES (20, N'AXPIN01', N'AXPIN11', N'10', N'Draft', CAST(0x83450B00 AS Date))
INSERT [dbo].[tblSampling] ([SamplingId], [BatchNo], [SampleNo], [Selectapproverid], [Status], [CreatedDate]) VALUES (21, N'AXPIN01', N'AXPIN22', N'10', N'Draft', CAST(0x83450B00 AS Date))
INSERT [dbo].[tblSampling] ([SamplingId], [BatchNo], [SampleNo], [Selectapproverid], [Status], [CreatedDate]) VALUES (22, N'OME01', N'OME11', N'10', N'Draft', CAST(0x83450B00 AS Date))
INSERT [dbo].[tblSampling] ([SamplingId], [BatchNo], [SampleNo], [Selectapproverid], [Status], [CreatedDate]) VALUES (23, N'ALEN01', N'ALE11', N'7', N'Draft', CAST(0x84450B00 AS Date))
INSERT [dbo].[tblSampling] ([SamplingId], [BatchNo], [SampleNo], [Selectapproverid], [Status], [CreatedDate]) VALUES (24, N'ALEN01', N'ALE11', N'7', N'Draft', CAST(0x84450B00 AS Date))
INSERT [dbo].[tblSampling] ([SamplingId], [BatchNo], [SampleNo], [Selectapproverid], [Status], [CreatedDate]) VALUES (25, N'ALEN01', N'ALE22', N'7', N'Draft', CAST(0x84450B00 AS Date))
INSERT [dbo].[tblSampling] ([SamplingId], [BatchNo], [SampleNo], [Selectapproverid], [Status], [CreatedDate]) VALUES (26, N'COLE01', N'COL11', N'7', N'Draft', CAST(0x84450B00 AS Date))
INSERT [dbo].[tblSampling] ([SamplingId], [BatchNo], [SampleNo], [Selectapproverid], [Status], [CreatedDate]) VALUES (27, N'CIME01', N'CIME112', N'1', N'Draft', CAST(0x84450B00 AS Date))
INSERT [dbo].[tblSampling] ([SamplingId], [BatchNo], [SampleNo], [Selectapproverid], [Status], [CreatedDate]) VALUES (28, N'TERA01', N'TER22', N'1', N'Draft', CAST(0x84450B00 AS Date))
INSERT [dbo].[tblSampling] ([SamplingId], [BatchNo], [SampleNo], [Selectapproverid], [Status], [CreatedDate]) VALUES (29, N'tttt', N'tttt', N'1', N'Draft', CAST(0x84450B00 AS Date))
INSERT [dbo].[tblSampling] ([SamplingId], [BatchNo], [SampleNo], [Selectapproverid], [Status], [CreatedDate]) VALUES (30, N'trea', N'samtrea', N'1', N'Draft', CAST(0x84450B00 AS Date))
INSERT [dbo].[tblSampling] ([SamplingId], [BatchNo], [SampleNo], [Selectapproverid], [Status], [CreatedDate]) VALUES (31, N'om', N'samom', N'1', N'Draft', CAST(0x84450B00 AS Date))
INSERT [dbo].[tblSampling] ([SamplingId], [BatchNo], [SampleNo], [Selectapproverid], [Status], [CreatedDate]) VALUES (32, N'om', N'samom2', N'1', N'Draft', CAST(0x84450B00 AS Date))
INSERT [dbo].[tblSampling] ([SamplingId], [BatchNo], [SampleNo], [Selectapproverid], [Status], [CreatedDate]) VALUES (33, N'att', N'att12', N'7', N'Draft', CAST(0x84450B00 AS Date))
INSERT [dbo].[tblSampling] ([SamplingId], [BatchNo], [SampleNo], [Selectapproverid], [Status], [CreatedDate]) VALUES (34, N'ATR1', N'ATR11', N'1', N'Draft', CAST(0x84450B00 AS Date))
SET IDENTITY_INSERT [dbo].[tblSampling] OFF
SET IDENTITY_INSERT [dbo].[tblSamproduct] ON 

INSERT [dbo].[tblSamproduct] ([SamplingId], [GRId], [BatchNo], [ProductID], [ProductName], [Strength], [Packtype], [Packsize], [BatchQty], [Units], [PalletsRefNo], [SampleQty], [FinalBatchQty], [BatchStatus], [Remark]) VALUES (1, 11, N'8', 8, N'Dolo', N'650', N'Ltrs', N'10', N'20', N'D002', N'3', N'2', N'3', N'Pending', N'')
INSERT [dbo].[tblSamproduct] ([SamplingId], [GRId], [BatchNo], [ProductID], [ProductName], [Strength], [Packtype], [Packsize], [BatchQty], [Units], [PalletsRefNo], [SampleQty], [FinalBatchQty], [BatchStatus], [Remark]) VALUES (2, 11, N'8', 8, N'Dolo', N'650', N'Ltrs', N'10', N'20', N'D003', N'3', N'3', N'1', N'Pending', N'')
INSERT [dbo].[tblSamproduct] ([SamplingId], [GRId], [BatchNo], [ProductID], [ProductName], [Strength], [Packtype], [Packsize], [BatchQty], [Units], [PalletsRefNo], [SampleQty], [FinalBatchQty], [BatchStatus], [Remark]) VALUES (3, 11, N'8', 8, N'Dolo', N'650', N'Ltrs', N'10', N'20', N'D004', N'3', N'1', N'2', N'Pending', N'')
INSERT [dbo].[tblSamproduct] ([SamplingId], [GRId], [BatchNo], [ProductID], [ProductName], [Strength], [Packtype], [Packsize], [BatchQty], [Units], [PalletsRefNo], [SampleQty], [FinalBatchQty], [BatchStatus], [Remark]) VALUES (4, 6, N'8', 8, N'Dolo', N'650', N'Ltrs', N'10', N'20', N'C008', N'2', N'0', N'1', N'Pending', N'')
INSERT [dbo].[tblSamproduct] ([SamplingId], [GRId], [BatchNo], [ProductID], [ProductName], [Strength], [Packtype], [Packsize], [BatchQty], [Units], [PalletsRefNo], [SampleQty], [FinalBatchQty], [BatchStatus], [Remark]) VALUES (5, 6, N'8', 8, N'Dolo', N'650', N'Ltrs', N'10', N'20', N'C009', N'2', N'0', N'1', N'Pending', N'')
INSERT [dbo].[tblSamproduct] ([SamplingId], [GRId], [BatchNo], [ProductID], [ProductName], [Strength], [Packtype], [Packsize], [BatchQty], [Units], [PalletsRefNo], [SampleQty], [FinalBatchQty], [BatchStatus], [Remark]) VALUES (6, 6, N'8', 8, N'Dolo', N'650', N'Ltrs', N'10', N'20', N'C010', N'2', N'3', N'2', N'Pending', N'')
INSERT [dbo].[tblSamproduct] ([SamplingId], [GRId], [BatchNo], [ProductID], [ProductName], [Strength], [Packtype], [Packsize], [BatchQty], [Units], [PalletsRefNo], [SampleQty], [FinalBatchQty], [BatchStatus], [Remark]) VALUES (7, 6, N'8', 8, N'Dolo', N'650', N'Ltrs', N'10', N'20', N'C011', N'2', N'2', N'3', N'Pending', N'')
INSERT [dbo].[tblSamproduct] ([SamplingId], [GRId], [BatchNo], [ProductID], [ProductName], [Strength], [Packtype], [Packsize], [BatchQty], [Units], [PalletsRefNo], [SampleQty], [FinalBatchQty], [BatchStatus], [Remark]) VALUES (8, 6, N'8', 8, N'Dolo', N'650', N'Ltrs', N'10', N'20', N'B007', N'2', N'1', N'1', N'Pending', N'')
INSERT [dbo].[tblSamproduct] ([SamplingId], [GRId], [BatchNo], [ProductID], [ProductName], [Strength], [Packtype], [Packsize], [BatchQty], [Units], [PalletsRefNo], [SampleQty], [FinalBatchQty], [BatchStatus], [Remark]) VALUES (9, 6, N'8', 8, N'Dolo', N'650', N'Ltrs', N'10', N'20', N'B008', N'2', N'4', N'6', N'Pending', N'')
INSERT [dbo].[tblSamproduct] ([SamplingId], [GRId], [BatchNo], [ProductID], [ProductName], [Strength], [Packtype], [Packsize], [BatchQty], [Units], [PalletsRefNo], [SampleQty], [FinalBatchQty], [BatchStatus], [Remark]) VALUES (10, 6, N'8', 8, N'Dolo', N'650', N'Ltrs', N'10', N'20', N'', N'2', N'', N'', N'Pending', N'')
INSERT [dbo].[tblSamproduct] ([SamplingId], [GRId], [BatchNo], [ProductID], [ProductName], [Strength], [Packtype], [Packsize], [BatchQty], [Units], [PalletsRefNo], [SampleQty], [FinalBatchQty], [BatchStatus], [Remark]) VALUES (11, 6, N'8', 8, N'Dolo', N'650', N'Ltrs', N'10', N'20', N'', N'2', N'', N'', N'Pending', N'')
INSERT [dbo].[tblSamproduct] ([SamplingId], [GRId], [BatchNo], [ProductID], [ProductName], [Strength], [Packtype], [Packsize], [BatchQty], [Units], [PalletsRefNo], [SampleQty], [FinalBatchQty], [BatchStatus], [Remark]) VALUES (12, 6, N'8', 8, N'Dolo', N'650', N'Ltrs', N'10', N'20', N'B009', N'2', N'2', N'3', N'Pending', N'')
INSERT [dbo].[tblSamproduct] ([SamplingId], [GRId], [BatchNo], [ProductID], [ProductName], [Strength], [Packtype], [Packsize], [BatchQty], [Units], [PalletsRefNo], [SampleQty], [FinalBatchQty], [BatchStatus], [Remark]) VALUES (13, 6, N'8', 8, N'Dolo', N'650', N'Ltrs', N'10', N'20', N'B010', N'2', N'3', N'2', N'Pending', N'')
INSERT [dbo].[tblSamproduct] ([SamplingId], [GRId], [BatchNo], [ProductID], [ProductName], [Strength], [Packtype], [Packsize], [BatchQty], [Units], [PalletsRefNo], [SampleQty], [FinalBatchQty], [BatchStatus], [Remark]) VALUES (14, 6, N'8', 8, N'Dolo', N'650', N'Ltrs', N'10', N'20', N'B011', N'2', N'1', N'3', N'Pending', N'')
INSERT [dbo].[tblSamproduct] ([SamplingId], [GRId], [BatchNo], [ProductID], [ProductName], [Strength], [Packtype], [Packsize], [BatchQty], [Units], [PalletsRefNo], [SampleQty], [FinalBatchQty], [BatchStatus], [Remark]) VALUES (15, 6, N'8', 8, N'Dolo', N'650', N'Ltrs', N'10', N'20', N'B012', N'2', N'2', N'2', N'Pending', N'')
INSERT [dbo].[tblSamproduct] ([SamplingId], [GRId], [BatchNo], [ProductID], [ProductName], [Strength], [Packtype], [Packsize], [BatchQty], [Units], [PalletsRefNo], [SampleQty], [FinalBatchQty], [BatchStatus], [Remark]) VALUES (16, 6, N'8', 8, N'Dolo', N'650', N'Ltrs', N'10', N'20', N'B013', N'2', N'1', N'1', N'Pending', N'')
INSERT [dbo].[tblSamproduct] ([SamplingId], [GRId], [BatchNo], [ProductID], [ProductName], [Strength], [Packtype], [Packsize], [BatchQty], [Units], [PalletsRefNo], [SampleQty], [FinalBatchQty], [BatchStatus], [Remark]) VALUES (17, 6, N'8', 8, N'Dolo', N'650', N'Ltrs', N'10', N'20', N'B014', N'2', N'1', N'2', N'Pending', N'')
INSERT [dbo].[tblSamproduct] ([SamplingId], [GRId], [BatchNo], [ProductID], [ProductName], [Strength], [Packtype], [Packsize], [BatchQty], [Units], [PalletsRefNo], [SampleQty], [FinalBatchQty], [BatchStatus], [Remark]) VALUES (18, 6, N'8', 8, N'Dolo', N'650', N'Ltrs', N'10', N'20', N'C001', N'2', N'0', N'1', N'Pending', N'')
INSERT [dbo].[tblSamproduct] ([SamplingId], [GRId], [BatchNo], [ProductID], [ProductName], [Strength], [Packtype], [Packsize], [BatchQty], [Units], [PalletsRefNo], [SampleQty], [FinalBatchQty], [BatchStatus], [Remark]) VALUES (19, 6, N'8', 8, N'Dolo', N'650', N'Ltrs', N'10', N'20', N'C002', N'2', N'0', N'1', N'Pending', N'')
INSERT [dbo].[tblSamproduct] ([SamplingId], [GRId], [BatchNo], [ProductID], [ProductName], [Strength], [Packtype], [Packsize], [BatchQty], [Units], [PalletsRefNo], [SampleQty], [FinalBatchQty], [BatchStatus], [Remark]) VALUES (20, 6, N'8', 8, N'Dolo', N'650', N'Ltrs', N'10', N'20', N'C003', N'2', N'1', N'4', N'Pending', N'')
INSERT [dbo].[tblSamproduct] ([SamplingId], [GRId], [BatchNo], [ProductID], [ProductName], [Strength], [Packtype], [Packsize], [BatchQty], [Units], [PalletsRefNo], [SampleQty], [FinalBatchQty], [BatchStatus], [Remark]) VALUES (21, 6, N'8', 8, N'Dolo', N'650', N'Ltrs', N'10', N'20', N'C004', N'2', N'0', N'0', N'Pending', N'')
INSERT [dbo].[tblSamproduct] ([SamplingId], [GRId], [BatchNo], [ProductID], [ProductName], [Strength], [Packtype], [Packsize], [BatchQty], [Units], [PalletsRefNo], [SampleQty], [FinalBatchQty], [BatchStatus], [Remark]) VALUES (22, 6, N'8', 8, N'Dolo', N'650', N'Ltrs', N'10', N'20', N'C005', N'2', N'3', N'1', N'Pending', N'')
INSERT [dbo].[tblSamproduct] ([SamplingId], [GRId], [BatchNo], [ProductID], [ProductName], [Strength], [Packtype], [Packsize], [BatchQty], [Units], [PalletsRefNo], [SampleQty], [FinalBatchQty], [BatchStatus], [Remark]) VALUES (23, 6, N'8', 8, N'Dolo', N'650', N'Ltrs', N'10', N'20', N'C006', N'2', N'1', N'0', N'Pending', N'')
INSERT [dbo].[tblSamproduct] ([SamplingId], [GRId], [BatchNo], [ProductID], [ProductName], [Strength], [Packtype], [Packsize], [BatchQty], [Units], [PalletsRefNo], [SampleQty], [FinalBatchQty], [BatchStatus], [Remark]) VALUES (24, 6, N'8', 8, N'Dolo', N'650', N'Ltrs', N'10', N'20', N'C007', N'2', N'0', N'0', N'Pending', N'')
INSERT [dbo].[tblSamproduct] ([SamplingId], [GRId], [BatchNo], [ProductID], [ProductName], [Strength], [Packtype], [Packsize], [BatchQty], [Units], [PalletsRefNo], [SampleQty], [FinalBatchQty], [BatchStatus], [Remark]) VALUES (25, 14, N'14', 14, N'JULS501', N'650', N'44', N'500', N'9', N'C014', N'2', N'1', N'2', N'Pending', N'')
INSERT [dbo].[tblSamproduct] ([SamplingId], [GRId], [BatchNo], [ProductID], [ProductName], [Strength], [Packtype], [Packsize], [BatchQty], [Units], [PalletsRefNo], [SampleQty], [FinalBatchQty], [BatchStatus], [Remark]) VALUES (26, 14, N'14', 14, N'JULS501', N'650', N'44', N'500', N'9', N'D001', N'2', N'1', N'1', N'Pending', N'')
INSERT [dbo].[tblSamproduct] ([SamplingId], [GRId], [BatchNo], [ProductID], [ProductName], [Strength], [Packtype], [Packsize], [BatchQty], [Units], [PalletsRefNo], [SampleQty], [FinalBatchQty], [BatchStatus], [Remark]) VALUES (27, 24, N'16', 16, N'ATIVAN', N'250MCG', N'CAP', N'22', N'10', N'E011', N'1', N'3', N'7', N'Pending', N'')
INSERT [dbo].[tblSamproduct] ([SamplingId], [GRId], [BatchNo], [ProductID], [ProductName], [Strength], [Packtype], [Packsize], [BatchQty], [Units], [PalletsRefNo], [SampleQty], [FinalBatchQty], [BatchStatus], [Remark]) VALUES (28, 57, N'32', 32, N'Atenolol 100mg Tablets 28s', N'125', N'box', N'5', N'10', N'B111', N'2', N'1', N'9', N'Quarantine', N'Checking')
INSERT [dbo].[tblSamproduct] ([SamplingId], [GRId], [BatchNo], [ProductID], [ProductName], [Strength], [Packtype], [Packsize], [BatchQty], [Units], [PalletsRefNo], [SampleQty], [FinalBatchQty], [BatchStatus], [Remark]) VALUES (29, 57, N'32', 32, N'Atenolol 100mg Tablets 28s', N'125', N'box', N'5', N'10', N'B111', N'2', N'2', N'3', N'Quarantine', N'Checking')
INSERT [dbo].[tblSamproduct] ([SamplingId], [GRId], [BatchNo], [ProductID], [ProductName], [Strength], [Packtype], [Packsize], [BatchQty], [Units], [PalletsRefNo], [SampleQty], [FinalBatchQty], [BatchStatus], [Remark]) VALUES (30, 57, N'32', 32, N'Atenolol 100mg Tablets 28s', N'125', N'box', N'5', N'10', N'B111', N'2', N'1', N'4', N'Quarantine', N'Checking')
INSERT [dbo].[tblSamproduct] ([SamplingId], [GRId], [BatchNo], [ProductID], [ProductName], [Strength], [Packtype], [Packsize], [BatchQty], [Units], [PalletsRefNo], [SampleQty], [FinalBatchQty], [BatchStatus], [Remark]) VALUES (31, 62, N'34', 34, N'METFORMIN 500MG 500S', N'500', N'', N'', N'30', N'C108', N'2', N'2', N'13', N'Quarantine', N'sample11')
INSERT [dbo].[tblSamproduct] ([SamplingId], [GRId], [BatchNo], [ProductID], [ProductName], [Strength], [Packtype], [Packsize], [BatchQty], [Units], [PalletsRefNo], [SampleQty], [FinalBatchQty], [BatchStatus], [Remark]) VALUES (32, 62, N'34', 34, N'METFORMIN 500MG 500S', N'500', N'', N'', N'30', N'C109', N'2', N'1', N'9', N'Quarantine', N'sample12')
INSERT [dbo].[tblSamproduct] ([SamplingId], [GRId], [BatchNo], [ProductID], [ProductName], [Strength], [Packtype], [Packsize], [BatchQty], [Units], [PalletsRefNo], [SampleQty], [FinalBatchQty], [BatchStatus], [Remark]) VALUES (33, 64, N'35', 35, N'SODIUM BICARB 600MG TABS 100S', N'33', NULL, NULL, N'40', N'C112', N'3', N'2', N'8', N'Rejected', NULL)
INSERT [dbo].[tblSamproduct] ([SamplingId], [GRId], [BatchNo], [ProductID], [ProductName], [Strength], [Packtype], [Packsize], [BatchQty], [Units], [PalletsRefNo], [SampleQty], [FinalBatchQty], [BatchStatus], [Remark]) VALUES (34, 64, N'35', 35, N'SODIUM BICARB 600MG TABS 100S', N'33', NULL, NULL, N'40', N'C113', N'3', N'2', N'18', N'Rejected', NULL)
INSERT [dbo].[tblSamproduct] ([SamplingId], [GRId], [BatchNo], [ProductID], [ProductName], [Strength], [Packtype], [Packsize], [BatchQty], [Units], [PalletsRefNo], [SampleQty], [FinalBatchQty], [BatchStatus], [Remark]) VALUES (35, 64, N'35', 35, N'SODIUM BICARB 600MG TABS 100S', N'33', NULL, NULL, N'40', N'C114', N'3', N'2', N'18', N'Rejected', NULL)
INSERT [dbo].[tblSamproduct] ([SamplingId], [GRId], [BatchNo], [ProductID], [ProductName], [Strength], [Packtype], [Packsize], [BatchQty], [Units], [PalletsRefNo], [SampleQty], [FinalBatchQty], [BatchStatus], [Remark]) VALUES (36, 66, N'24', 24, N'ENALAPRIL MALEATE 10MG 28S', N'10mg', NULL, NULL, N'50', N'D103', N'2', N'5', N'35', N'Quarantine', NULL)
INSERT [dbo].[tblSamproduct] ([SamplingId], [GRId], [BatchNo], [ProductID], [ProductName], [Strength], [Packtype], [Packsize], [BatchQty], [Units], [PalletsRefNo], [SampleQty], [FinalBatchQty], [BatchStatus], [Remark]) VALUES (37, 67, N'28', 28, N'AXPINET METFORMIN 850MG 56S', N'850mg', NULL, NULL, N'70', N'D105', N'2', N'5', N'15', N'Quarantine', NULL)
INSERT [dbo].[tblSamproduct] ([SamplingId], [GRId], [BatchNo], [ProductID], [ProductName], [Strength], [Packtype], [Packsize], [BatchQty], [Units], [PalletsRefNo], [SampleQty], [FinalBatchQty], [BatchStatus], [Remark]) VALUES (38, 67, N'28', 28, N'AXPINET METFORMIN 850MG 56S', N'850mg', NULL, NULL, N'70', N'D105', N'2', N'2', N'38', N'Quarantine', NULL)
INSERT [dbo].[tblSamproduct] ([SamplingId], [GRId], [BatchNo], [ProductID], [ProductName], [Strength], [Packtype], [Packsize], [BatchQty], [Units], [PalletsRefNo], [SampleQty], [FinalBatchQty], [BatchStatus], [Remark]) VALUES (39, 67, N'28', 28, N'AXPINET METFORMIN 850MG 56S', N'850mg', NULL, NULL, N'70', N'D106', N'2', N'1', N'19', N'Quarantine', NULL)
INSERT [dbo].[tblSamproduct] ([SamplingId], [GRId], [BatchNo], [ProductID], [ProductName], [Strength], [Packtype], [Packsize], [BatchQty], [Units], [PalletsRefNo], [SampleQty], [FinalBatchQty], [BatchStatus], [Remark]) VALUES (40, 68, N'17', 17, N'OMEPRAZOLE 20MG 28S ', N'20mg', NULL, NULL, N'50', N'D107', N'2', N'2', N'13', N'Quarantine', NULL)
INSERT [dbo].[tblSamproduct] ([SamplingId], [GRId], [BatchNo], [ProductID], [ProductName], [Strength], [Packtype], [Packsize], [BatchQty], [Units], [PalletsRefNo], [SampleQty], [FinalBatchQty], [BatchStatus], [Remark]) VALUES (41, 68, N'17', 17, N'OMEPRAZOLE 20MG 28S ', N'20mg', NULL, NULL, N'50', N'D108', N'2', N'3', N'22', N'Quarantine', NULL)
INSERT [dbo].[tblSamproduct] ([SamplingId], [GRId], [BatchNo], [ProductID], [ProductName], [Strength], [Packtype], [Packsize], [BatchQty], [Units], [PalletsRefNo], [SampleQty], [FinalBatchQty], [BatchStatus], [Remark]) VALUES (42, 69, N'26', 26, N'ALENDRONIC ACID 70MG TABS 4S', N'70mg', NULL, NULL, N'40', N'D109', N'2', N'5', N'25', N'Quarantine', NULL)
INSERT [dbo].[tblSamproduct] ([SamplingId], [GRId], [BatchNo], [ProductID], [ProductName], [Strength], [Packtype], [Packsize], [BatchQty], [Units], [PalletsRefNo], [SampleQty], [FinalBatchQty], [BatchStatus], [Remark]) VALUES (43, 69, N'26', 26, N'ALENDRONIC ACID 70MG TABS 4S', N'70mg', NULL, NULL, N'40', N'D109', N'2', N'5', N'25', N'Quarantine', NULL)
INSERT [dbo].[tblSamproduct] ([SamplingId], [GRId], [BatchNo], [ProductID], [ProductName], [Strength], [Packtype], [Packsize], [BatchQty], [Units], [PalletsRefNo], [SampleQty], [FinalBatchQty], [BatchStatus], [Remark]) VALUES (44, 69, N'26', 26, N'ALENDRONIC ACID 70MG TABS 4S', N'70mg', NULL, NULL, N'40', N'D109', N'2', N'5', N'10', N'Quarantine', NULL)
INSERT [dbo].[tblSamproduct] ([SamplingId], [GRId], [BatchNo], [ProductID], [ProductName], [Strength], [Packtype], [Packsize], [BatchQty], [Units], [PalletsRefNo], [SampleQty], [FinalBatchQty], [BatchStatus], [Remark]) VALUES (45, 69, N'26', 26, N'ALENDRONIC ACID 70MG TABS 4S', N'70mg', NULL, NULL, N'40', N'D110', N'2', N'0', N'15', N'Quarantine', NULL)
INSERT [dbo].[tblSamproduct] ([SamplingId], [GRId], [BatchNo], [ProductID], [ProductName], [Strength], [Packtype], [Packsize], [BatchQty], [Units], [PalletsRefNo], [SampleQty], [FinalBatchQty], [BatchStatus], [Remark]) VALUES (46, 70, N'43', 43, N'COLECALCIFEROL 800IU CAPS 30S', N'800mg', NULL, NULL, N'50', N'D111', N'2', N'5', N'20', N'Quarantine', NULL)
INSERT [dbo].[tblSamproduct] ([SamplingId], [GRId], [BatchNo], [ProductID], [ProductName], [Strength], [Packtype], [Packsize], [BatchQty], [Units], [PalletsRefNo], [SampleQty], [FinalBatchQty], [BatchStatus], [Remark]) VALUES (47, 70, N'43', 43, N'COLECALCIFEROL 800IU CAPS 30S', N'800mg', NULL, NULL, N'50', N'D112', N'2', N'0', N'15', N'Quarantine', NULL)
INSERT [dbo].[tblSamproduct] ([SamplingId], [GRId], [BatchNo], [ProductID], [ProductName], [Strength], [Packtype], [Packsize], [BatchQty], [Units], [PalletsRefNo], [SampleQty], [FinalBatchQty], [BatchStatus], [Remark]) VALUES (48, 71, N'38', 38, N'CIMETIDINE 200MG 60S', N'200mg', NULL, NULL, N'60', N'D113', N'2', N'10', N'15', N'Quarantine', NULL)
INSERT [dbo].[tblSamproduct] ([SamplingId], [GRId], [BatchNo], [ProductID], [ProductName], [Strength], [Packtype], [Packsize], [BatchQty], [Units], [PalletsRefNo], [SampleQty], [FinalBatchQty], [BatchStatus], [Remark]) VALUES (49, 71, N'38', 38, N'CIMETIDINE 200MG 60S', N'200mg', NULL, NULL, N'60', N'D114', N'2', N'0', N'20', N'Quarantine', NULL)
INSERT [dbo].[tblSamproduct] ([SamplingId], [GRId], [BatchNo], [ProductID], [ProductName], [Strength], [Packtype], [Packsize], [BatchQty], [Units], [PalletsRefNo], [SampleQty], [FinalBatchQty], [BatchStatus], [Remark]) VALUES (50, 72, N'13', 13, N'TERAZOSIN 2mg 28s', N'2mg', NULL, NULL, N'50', N'E101', N'2', N'10', N'15', N'Quarantine', NULL)
INSERT [dbo].[tblSamproduct] ([SamplingId], [GRId], [BatchNo], [ProductID], [ProductName], [Strength], [Packtype], [Packsize], [BatchQty], [Units], [PalletsRefNo], [SampleQty], [FinalBatchQty], [BatchStatus], [Remark]) VALUES (51, 72, N'13', 13, N'TERAZOSIN 2mg 28s', N'2mg', NULL, NULL, N'50', N'E102', N'2', N'0', N'15', N'Quarantine', NULL)
INSERT [dbo].[tblSamproduct] ([SamplingId], [GRId], [BatchNo], [ProductID], [ProductName], [Strength], [Packtype], [Packsize], [BatchQty], [Units], [PalletsRefNo], [SampleQty], [FinalBatchQty], [BatchStatus], [Remark]) VALUES (52, 74, N'14', 14, N'TERAZOSIN 10mg 28s', N'10mg', NULL, NULL, N'1111', N'E103', N'2', N'2', N'498', N'Quarantine', NULL)
INSERT [dbo].[tblSamproduct] ([SamplingId], [GRId], [BatchNo], [ProductID], [ProductName], [Strength], [Packtype], [Packsize], [BatchQty], [Units], [PalletsRefNo], [SampleQty], [FinalBatchQty], [BatchStatus], [Remark]) VALUES (53, 74, N'14', 14, N'TERAZOSIN 10mg 28s', N'10mg', NULL, NULL, N'1111', N'E104', N'2', N'0', N'', N'Quarantine', NULL)
INSERT [dbo].[tblSamproduct] ([SamplingId], [GRId], [BatchNo], [ProductID], [ProductName], [Strength], [Packtype], [Packsize], [BatchQty], [Units], [PalletsRefNo], [SampleQty], [FinalBatchQty], [BatchStatus], [Remark]) VALUES (54, 75, N'18', 18, N'PARACETAMOL 500MG EFF 24S GSL', N'500mg', NULL, NULL, N'3', N'E105', N'1', N'1', N'2', N'Quarantine', NULL)
INSERT [dbo].[tblSamproduct] ([SamplingId], [GRId], [BatchNo], [ProductID], [ProductName], [Strength], [Packtype], [Packsize], [BatchQty], [Units], [PalletsRefNo], [SampleQty], [FinalBatchQty], [BatchStatus], [Remark]) VALUES (55, 76, N'17', 17, N'OMEPRAZOLE 20MG 28S ', N'20mg', NULL, NULL, N'20', N'E106', N'2', N'2', N'8', N'Quarantine', NULL)
INSERT [dbo].[tblSamproduct] ([SamplingId], [GRId], [BatchNo], [ProductID], [ProductName], [Strength], [Packtype], [Packsize], [BatchQty], [Units], [PalletsRefNo], [SampleQty], [FinalBatchQty], [BatchStatus], [Remark]) VALUES (56, 76, N'17', 17, N'OMEPRAZOLE 20MG 28S ', N'20mg', NULL, NULL, N'20', N'E107', N'2', N'2', N'8', N'Quarantine', NULL)
INSERT [dbo].[tblSamproduct] ([SamplingId], [GRId], [BatchNo], [ProductID], [ProductName], [Strength], [Packtype], [Packsize], [BatchQty], [Units], [PalletsRefNo], [SampleQty], [FinalBatchQty], [BatchStatus], [Remark]) VALUES (57, 77, N'52', 52, N'Atenolol 50mg Tablets 28s', N'50mg', NULL, NULL, N'30', N'E108', N'2', N'2', N'8', N'Quarantine', NULL)
INSERT [dbo].[tblSamproduct] ([SamplingId], [GRId], [BatchNo], [ProductID], [ProductName], [Strength], [Packtype], [Packsize], [BatchQty], [Units], [PalletsRefNo], [SampleQty], [FinalBatchQty], [BatchStatus], [Remark]) VALUES (58, 79, N'49', 49, N'ATROPINE 1% DROPS 10ML', N'1mg', NULL, NULL, N'30', N'E114', N'2', N'2', N'8', N'Quarantine', NULL)
SET IDENTITY_INSERT [dbo].[tblSamproduct] OFF
SET IDENTITY_INSERT [dbo].[TblSO] ON 

INSERT [dbo].[TblSO] ([Soid], [SupplierId], [SOdatetime], [ApproverId], [Amount], [Status]) VALUES (3, N'2', CAST(0x0000B00500000000 AS DateTime), N'1', N'2500', N'Draft     ')
INSERT [dbo].[TblSO] ([Soid], [SupplierId], [SOdatetime], [ApproverId], [Amount], [Status]) VALUES (4, N'1', CAST(0x0000AFFF00000000 AS DateTime), N'2', N'2900', N'Approved  ')
INSERT [dbo].[TblSO] ([Soid], [SupplierId], [SOdatetime], [ApproverId], [Amount], [Status]) VALUES (5, N'3', CAST(0x0000B00600000000 AS DateTime), N'2', N'3500', N'Approved  ')
INSERT [dbo].[TblSO] ([Soid], [SupplierId], [SOdatetime], [ApproverId], [Amount], [Status]) VALUES (6, N'2', CAST(0x0000B01700000000 AS DateTime), N'1', N'45000', N'Draft     ')
INSERT [dbo].[TblSO] ([Soid], [SupplierId], [SOdatetime], [ApproverId], [Amount], [Status]) VALUES (7, N'1', CAST(0x0000B01900000000 AS DateTime), N'6', N'1550', N'Draft     ')
INSERT [dbo].[TblSO] ([Soid], [SupplierId], [SOdatetime], [ApproverId], [Amount], [Status]) VALUES (8, N'3', CAST(0x0000B01800000000 AS DateTime), N'3', N'1950', N'Approved  ')
INSERT [dbo].[TblSO] ([Soid], [SupplierId], [SOdatetime], [ApproverId], [Amount], [Status]) VALUES (9, N'3', CAST(0x0000B01900000000 AS DateTime), N'4', N'650', N'Draft     ')
INSERT [dbo].[TblSO] ([Soid], [SupplierId], [SOdatetime], [ApproverId], [Amount], [Status]) VALUES (10, N'2', CAST(0x0000B01800000000 AS DateTime), N'2', N'700', N'Draft     ')
INSERT [dbo].[TblSO] ([Soid], [SupplierId], [SOdatetime], [ApproverId], [Amount], [Status]) VALUES (11, N'1', CAST(0x0000B01900000000 AS DateTime), N'7', N'1500', N'Approved  ')
INSERT [dbo].[TblSO] ([Soid], [SupplierId], [SOdatetime], [ApproverId], [Amount], [Status]) VALUES (12, N'1', CAST(0x0000B01900000000 AS DateTime), N'9', N'900', N'Approved  ')
INSERT [dbo].[TblSO] ([Soid], [SupplierId], [SOdatetime], [ApproverId], [Amount], [Status]) VALUES (13, N'2', CAST(0x0000B01A00000000 AS DateTime), N'3', N'975', N'Draft     ')
INSERT [dbo].[TblSO] ([Soid], [SupplierId], [SOdatetime], [ApproverId], [Amount], [Status]) VALUES (14, N'1', CAST(0x0000B01A00000000 AS DateTime), N'1', N'3000', N'Draft     ')
INSERT [dbo].[TblSO] ([Soid], [SupplierId], [SOdatetime], [ApproverId], [Amount], [Status]) VALUES (15, N'2', CAST(0x0000B01A00000000 AS DateTime), N'7', N'1300', N'Approved  ')
INSERT [dbo].[TblSO] ([Soid], [SupplierId], [SOdatetime], [ApproverId], [Amount], [Status]) VALUES (16, N'2', CAST(0x0000B01A00000000 AS DateTime), N'2', N'1250', N'Draft     ')
INSERT [dbo].[TblSO] ([Soid], [SupplierId], [SOdatetime], [ApproverId], [Amount], [Status]) VALUES (17, N'3', CAST(0x0000B01A00000000 AS DateTime), N'5', N'2100', N'Approved  ')
INSERT [dbo].[TblSO] ([Soid], [SupplierId], [SOdatetime], [ApproverId], [Amount], [Status]) VALUES (18, N'1', CAST(0x0000B01B00000000 AS DateTime), N'1', N'1200', N'Draft     ')
INSERT [dbo].[TblSO] ([Soid], [SupplierId], [SOdatetime], [ApproverId], [Amount], [Status]) VALUES (19, N'2', CAST(0x0000B02200000000 AS DateTime), N'2', N'1200', N'Draft     ')
INSERT [dbo].[TblSO] ([Soid], [SupplierId], [SOdatetime], [ApproverId], [Amount], [Status]) VALUES (20, N'1', CAST(0x0000B01C00000000 AS DateTime), N'7', N'350', N'Draft     ')
INSERT [dbo].[TblSO] ([Soid], [SupplierId], [SOdatetime], [ApproverId], [Amount], [Status]) VALUES (21, N'3', CAST(0x0000B01D00000000 AS DateTime), N'3', N'300', N'Draft     ')
INSERT [dbo].[TblSO] ([Soid], [SupplierId], [SOdatetime], [ApproverId], [Amount], [Status]) VALUES (22, N'2', CAST(0x0000B01B00000000 AS DateTime), N'2', N'325', N'Approved  ')
INSERT [dbo].[TblSO] ([Soid], [SupplierId], [SOdatetime], [ApproverId], [Amount], [Status]) VALUES (23, N'3', CAST(0x0000B01B00000000 AS DateTime), N'2', N'700', N'Draft     ')
INSERT [dbo].[TblSO] ([Soid], [SupplierId], [SOdatetime], [ApproverId], [Amount], [Status]) VALUES (24, N'2', CAST(0x0000B02100000000 AS DateTime), N'4', N'300', N'Draft     ')
INSERT [dbo].[TblSO] ([Soid], [SupplierId], [SOdatetime], [ApproverId], [Amount], [Status]) VALUES (25, N'2', CAST(0x0000B01F00000000 AS DateTime), N'1', N'1200', N'Draft     ')
INSERT [dbo].[TblSO] ([Soid], [SupplierId], [SOdatetime], [ApproverId], [Amount], [Status]) VALUES (26, N'3', CAST(0x0000B01F00000000 AS DateTime), N'1', N'4000', N'Draft     ')
INSERT [dbo].[TblSO] ([Soid], [SupplierId], [SOdatetime], [ApproverId], [Amount], [Status]) VALUES (27, N'4', CAST(0x0000B02000000000 AS DateTime), N'4', N'700', N'Draft     ')
INSERT [dbo].[TblSO] ([Soid], [SupplierId], [SOdatetime], [ApproverId], [Amount], [Status]) VALUES (28, N'5', CAST(0x0000B02000000000 AS DateTime), N'1', N'700', N'Draft     ')
INSERT [dbo].[TblSO] ([Soid], [SupplierId], [SOdatetime], [ApproverId], [Amount], [Status]) VALUES (29, N'6', CAST(0x0000B02100000000 AS DateTime), N'10', N'1400', N'Draft     ')
INSERT [dbo].[TblSO] ([Soid], [SupplierId], [SOdatetime], [ApproverId], [Amount], [Status]) VALUES (31, N'6', CAST(0x0000B02800000000 AS DateTime), N'10', N'5460', N'Approved  ')
INSERT [dbo].[TblSO] ([Soid], [SupplierId], [SOdatetime], [ApproverId], [Amount], [Status]) VALUES (32, N'7', CAST(0x0000B02900000000 AS DateTime), N'2', N'1260', N'Approved  ')
INSERT [dbo].[TblSO] ([Soid], [SupplierId], [SOdatetime], [ApproverId], [Amount], [Status]) VALUES (33, N'7', CAST(0x0000B02900000000 AS DateTime), N'7', N'1590', N'Approved  ')
INSERT [dbo].[TblSO] ([Soid], [SupplierId], [SOdatetime], [ApproverId], [Amount], [Status]) VALUES (34, N'7', CAST(0x0000B02900000000 AS DateTime), N'7', N'1908', N'Approved  ')
INSERT [dbo].[TblSO] ([Soid], [SupplierId], [SOdatetime], [ApproverId], [Amount], [Status]) VALUES (35, N'7', CAST(0x0000B02900000000 AS DateTime), N'7', N'1272', N'Draft     ')
INSERT [dbo].[TblSO] ([Soid], [SupplierId], [SOdatetime], [ApproverId], [Amount], [Status]) VALUES (36, N'7', CAST(0x0000B02900000000 AS DateTime), N'7', N'1908', N'Approved  ')
INSERT [dbo].[TblSO] ([Soid], [SupplierId], [SOdatetime], [ApproverId], [Amount], [Status]) VALUES (37, N'6', CAST(0x0000B02100000000 AS DateTime), N'10', N'1400', N'Approved  ')
INSERT [dbo].[TblSO] ([Soid], [SupplierId], [SOdatetime], [ApproverId], [Amount], [Status]) VALUES (38, N'2', CAST(0x0000B02900000000 AS DateTime), N'1', N'452', N'Approved  ')
INSERT [dbo].[TblSO] ([Soid], [SupplierId], [SOdatetime], [ApproverId], [Amount], [Status]) VALUES (39, N'4', CAST(0x0000B02900000000 AS DateTime), N'1', N'92', N'Approved  ')
INSERT [dbo].[TblSO] ([Soid], [SupplierId], [SOdatetime], [ApproverId], [Amount], [Status]) VALUES (40, N'5', CAST(0x0000B02900000000 AS DateTime), N'1', N'318', N'Approved  ')
SET IDENTITY_INSERT [dbo].[TblSO] OFF
SET IDENTITY_INSERT [dbo].[tblTraceablity] ON 

INSERT [dbo].[tblTraceablity] ([TraceId], [ProductId], [GRId], [ApproverId], [Soid], [CutomerId], [GPNId], [Batchnumber], [Poid]) VALUES (1, 24, NULL, 3, NULL, NULL, NULL, N'TRA2', 37)
INSERT [dbo].[tblTraceablity] ([TraceId], [ProductId], [GRId], [ApproverId], [Soid], [CutomerId], [GPNId], [Batchnumber], [Poid]) VALUES (2, 25, 40, 3, 21, 0, 19, N'BLA1', 38)
INSERT [dbo].[tblTraceablity] ([TraceId], [ProductId], [GRId], [ApproverId], [Soid], [CutomerId], [GPNId], [Batchnumber], [Poid]) VALUES (3, 25, 41, 2, 21, 0, 19, N'BLA33', 39)
INSERT [dbo].[tblTraceablity] ([TraceId], [ProductId], [GRId], [ApproverId], [Soid], [CutomerId], [GPNId], [Batchnumber], [Poid]) VALUES (4, 26, 42, 1, 18, 0, 16, N'MAZ112', 40)
INSERT [dbo].[tblTraceablity] ([TraceId], [ProductId], [GRId], [ApproverId], [Soid], [CutomerId], [GPNId], [Batchnumber], [Poid]) VALUES (5, 27, 43, 2, NULL, NULL, NULL, N'DEE1', 41)
INSERT [dbo].[tblTraceablity] ([TraceId], [ProductId], [GRId], [ApproverId], [Soid], [CutomerId], [GPNId], [Batchnumber], [Poid]) VALUES (6, 27, 44, 2, 20, 0, 18, N'DEE2', 42)
INSERT [dbo].[tblTraceablity] ([TraceId], [ProductId], [GRId], [ApproverId], [Soid], [CutomerId], [GPNId], [Batchnumber], [Poid]) VALUES (7, 28, 45, 1, 31, 0, 31, N'NE1', 43)
INSERT [dbo].[tblTraceablity] ([TraceId], [ProductId], [GRId], [ApproverId], [Soid], [CutomerId], [GPNId], [Batchnumber], [Poid]) VALUES (8, 29, 46, 1, 24, 0, 21, N'ADN001NEW', 44)
INSERT [dbo].[tblTraceablity] ([TraceId], [ProductId], [GRId], [ApproverId], [Soid], [CutomerId], [GPNId], [Batchnumber], [Poid]) VALUES (9, 16, 47, 1, NULL, NULL, NULL, N'ADNATIVAN001', 45)
INSERT [dbo].[tblTraceablity] ([TraceId], [ProductId], [GRId], [ApproverId], [Soid], [CutomerId], [GPNId], [Batchnumber], [Poid]) VALUES (10, 29, 51, 7, NULL, NULL, NULL, N'PRODUCTNEW11', 46)
INSERT [dbo].[tblTraceablity] ([TraceId], [ProductId], [GRId], [ApproverId], [Soid], [CutomerId], [GPNId], [Batchnumber], [Poid]) VALUES (11, 29, 52, 2, 24, 0, 21, N'NPER1', 47)
INSERT [dbo].[tblTraceablity] ([TraceId], [ProductId], [GRId], [ApproverId], [Soid], [CutomerId], [GPNId], [Batchnumber], [Poid]) VALUES (12, 16, 53, 2, NULL, NULL, NULL, N'NEWATIVAN112', 47)
INSERT [dbo].[tblTraceablity] ([TraceId], [ProductId], [GRId], [ApproverId], [Soid], [CutomerId], [GPNId], [Batchnumber], [Poid]) VALUES (13, 29, 54, 1, 24, 0, 21, N'NEPR1122', 48)
INSERT [dbo].[tblTraceablity] ([TraceId], [ProductId], [GRId], [ApproverId], [Soid], [CutomerId], [GPNId], [Batchnumber], [Poid]) VALUES (14, 16, 55, 1, NULL, NULL, NULL, N'LAST12', 49)
INSERT [dbo].[tblTraceablity] ([TraceId], [ProductId], [GRId], [ApproverId], [Soid], [CutomerId], [GPNId], [Batchnumber], [Poid]) VALUES (15, 28, 56, 1, NULL, NULL, NULL, N'ASHOK1', 50)
INSERT [dbo].[tblTraceablity] ([TraceId], [ProductId], [GRId], [ApproverId], [Soid], [CutomerId], [GPNId], [Batchnumber], [Poid]) VALUES (16, 32, 57, 1, 26, 0, 24, N'ATENOL100', 51)
INSERT [dbo].[tblTraceablity] ([TraceId], [ProductId], [GRId], [ApproverId], [Soid], [CutomerId], [GPNId], [Batchnumber], [Poid]) VALUES (17, 32, 59, 1, 26, 0, 24, N'ATCRIMSON', 52)
INSERT [dbo].[tblTraceablity] ([TraceId], [ProductId], [GRId], [ApproverId], [Soid], [CutomerId], [GPNId], [Batchnumber], [Poid]) VALUES (18, 33, 60, 1, 27, 0, 27, N'SA1', 53)
INSERT [dbo].[tblTraceablity] ([TraceId], [ProductId], [GRId], [ApproverId], [Soid], [CutomerId], [GPNId], [Batchnumber], [Poid]) VALUES (19, 32, 61, 2, NULL, NULL, NULL, N'SAS2', 53)
INSERT [dbo].[tblTraceablity] ([TraceId], [ProductId], [GRId], [ApproverId], [Soid], [CutomerId], [GPNId], [Batchnumber], [Poid]) VALUES (20, 34, 62, 1, 28, 0, 28, N'METFOR11', 54)
INSERT [dbo].[tblTraceablity] ([TraceId], [ProductId], [GRId], [ApproverId], [Soid], [CutomerId], [GPNId], [Batchnumber], [Poid]) VALUES (21, 36, 63, 10, 29, 0, 29, N'CARBO11', 55)
INSERT [dbo].[tblTraceablity] ([TraceId], [ProductId], [GRId], [ApproverId], [Soid], [CutomerId], [GPNId], [Batchnumber], [Poid]) VALUES (22, 35, 64, 2, NULL, NULL, NULL, N'KKKK', 54)
INSERT [dbo].[tblTraceablity] ([TraceId], [ProductId], [GRId], [ApproverId], [Soid], [CutomerId], [GPNId], [Batchnumber], [Poid]) VALUES (23, 23, 65, 3, NULL, NULL, NULL, N'IIII', 36)
INSERT [dbo].[tblTraceablity] ([TraceId], [ProductId], [GRId], [ApproverId], [Soid], [CutomerId], [GPNId], [Batchnumber], [Poid]) VALUES (24, 24, 66, 1, NULL, NULL, NULL, N'EEE1', 58)
INSERT [dbo].[tblTraceablity] ([TraceId], [ProductId], [GRId], [ApproverId], [Soid], [CutomerId], [GPNId], [Batchnumber], [Poid]) VALUES (25, 28, 67, 10, NULL, NULL, NULL, N'AXPIN01', 59)
INSERT [dbo].[tblTraceablity] ([TraceId], [ProductId], [GRId], [ApproverId], [Soid], [CutomerId], [GPNId], [Batchnumber], [Poid]) VALUES (26, 17, 68, 10, NULL, NULL, NULL, N'OME01', 59)
INSERT [dbo].[tblTraceablity] ([TraceId], [ProductId], [GRId], [ApproverId], [Soid], [CutomerId], [GPNId], [Batchnumber], [Poid]) VALUES (27, 26, 69, 7, 32, 0, 32, N'ALEN01', 60)
INSERT [dbo].[tblTraceablity] ([TraceId], [ProductId], [GRId], [ApproverId], [Soid], [CutomerId], [GPNId], [Batchnumber], [Poid]) VALUES (28, 43, 70, 7, 36, 0, 37, N'COLE01', 61)
INSERT [dbo].[tblTraceablity] ([TraceId], [ProductId], [GRId], [ApproverId], [Soid], [CutomerId], [GPNId], [Batchnumber], [Poid]) VALUES (29, 38, 71, 1, 34, 0, 35, N'CIME01', 62)
INSERT [dbo].[tblTraceablity] ([TraceId], [ProductId], [GRId], [ApproverId], [Soid], [CutomerId], [GPNId], [Batchnumber], [Poid]) VALUES (30, 13, 72, 1, 36, 0, 36, N'TERA01', 63)
INSERT [dbo].[tblTraceablity] ([TraceId], [ProductId], [GRId], [ApproverId], [Soid], [CutomerId], [GPNId], [Batchnumber], [Poid]) VALUES (31, 18, 73, 1, NULL, NULL, NULL, N'pppp', 69)
INSERT [dbo].[tblTraceablity] ([TraceId], [ProductId], [GRId], [ApproverId], [Soid], [CutomerId], [GPNId], [Batchnumber], [Poid]) VALUES (32, 14, 74, 1, NULL, NULL, NULL, N'tttt', 69)
INSERT [dbo].[tblTraceablity] ([TraceId], [ProductId], [GRId], [ApproverId], [Soid], [CutomerId], [GPNId], [Batchnumber], [Poid]) VALUES (33, 18, 75, 1, 38, 0, 38, N'trea', 70)
INSERT [dbo].[tblTraceablity] ([TraceId], [ProductId], [GRId], [ApproverId], [Soid], [CutomerId], [GPNId], [Batchnumber], [Poid]) VALUES (34, 17, 76, 1, 39, 0, 39, N'OM', 71)
INSERT [dbo].[tblTraceablity] ([TraceId], [ProductId], [GRId], [ApproverId], [Soid], [CutomerId], [GPNId], [Batchnumber], [Poid]) VALUES (35, 52, 77, 7, NULL, NULL, NULL, N'ATT', 72)
INSERT [dbo].[tblTraceablity] ([TraceId], [ProductId], [GRId], [ApproverId], [Soid], [CutomerId], [GPNId], [Batchnumber], [Poid]) VALUES (36, 13, 78, 1, NULL, NULL, NULL, N'CCC', 71)
INSERT [dbo].[tblTraceablity] ([TraceId], [ProductId], [GRId], [ApproverId], [Soid], [CutomerId], [GPNId], [Batchnumber], [Poid]) VALUES (37, 49, 79, 1, 40, 0, 40, N'ATR1', 73)
SET IDENTITY_INSERT [dbo].[tblTraceablity] OFF
SET IDENTITY_INSERT [dbo].[tblTrancetraceablity] ON 

INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (1, 38, N'A101', 5, N'Draft', NULL, 2, NULL, NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (2, 39, N'A102', 10, N'Approved', 40, 3, NULL, NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (3, 40, N'A106', 22, N'Rejected', 41, 4, NULL, NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (4, 41, N'A108', 20, N'Draft', NULL, 5, NULL, NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (5, 41, N'A109', 20, N'Draft', NULL, 5, NULL, NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (6, 43, N'A110', 0, N'Draft', 44, 7, NULL, NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (7, 43, N'A111', 15, N'Draft', 44, 7, NULL, NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (8, 44, N'A112', 0, N'Draft', 45, 8, NULL, NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (9, 44, N'A113', 15, N'Draft', 45, 8, NULL, NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (10, 45, N'A114', 45, N'Draft', 46, 9, NULL, NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (11, 45, N'B101', 20, N'Draft', 47, 9, NULL, NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (12, 45, N'B102', 20, N'Draft', 47, 9, NULL, NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (13, 46, N'B103', 30, N'Draft', 48, 10, NULL, NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (14, 47, N'B104', 10, N'Draft', 52, 11, NULL, NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (15, 47, N'B105', 10, N'Draft', 53, 11, NULL, NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (16, 47, N'B106', 20, N'Draft', 53, 12, NULL, NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (17, 48, N'B107', 22, N'Draft', 54, 13, NULL, NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (18, 49, N'B108', 20, N'Draft', 55, 13, NULL, NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (19, 49, N'B109', 25, N'Draft', 55, 13, NULL, NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (20, 50, N'B110', 35, N'Draft', 56, 14, NULL, NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (21, 50, N'B110', 25, N'Draft', 56, 15, NULL, NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (22, 51, N'B111', 0, N'Draft', 57, 16, NULL, NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (23, 51, N'B112', 4, N'Draft', 57, 15, NULL, NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (24, 36, N'B113', 15, N'Draft', 58, 17, NULL, NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (25, 36, N'B114', 5, N'Draft', 58, 16, NULL, NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (26, 52, N'C101', 0, N'Draft', 59, 17, NULL, NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (27, 52, N'C102', 0, N'Draft', 59, 17, NULL, NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (28, 52, N'C103', 10, N'Draft', 59, 17, NULL, NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (29, 53, N'C104', 5, N'Draft', 60, 18, NULL, NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (30, 53, N'C105', 5, N'Draft', 60, 18, NULL, NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (31, 53, N'C106', 5, N'Draft', 61, 19, NULL, NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (32, 53, N'C107', 5, N'Draft', 61, 19, NULL, NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (33, 54, N'C108', 3, N'Draft', 62, 20, NULL, NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (34, 54, N'C109', 9, N'Draft', 62, 20, NULL, NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (35, 55, N'C110', 0, N'Draft', 63, 21, N'CARBO1', NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (36, 55, N'C111', 15, N'Draft', 63, 21, N'CARBO2', NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (37, 54, N'C112', 8, N'Draft', 64, 22, N'0', NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (38, 54, N'C113', 18, N'Draft', 64, 22, N'0', NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (39, 54, N'C114', 18, N'Draft', 64, 22, N'0', NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (40, 36, N'D101', 10, N'Draft', 65, 23, N'0', NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (41, 36, N'D102', 10, N'Draft', 65, 23, N'0', NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (42, 58, N'D103', 15, N'Draft', 66, 24, N'E1', NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (43, 58, N'D104', 25, N'Draft', 66, 24, N'E2', NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (44, 59, N'D105', 40, N'Draft', 67, 25, N'AXPI01', NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (45, 59, N'D106', 20, N'Draft', 67, 25, N'AXPI01', NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (46, 59, N'D107', 25, N'Approved', 68, 26, N'OME1', NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (47, 59, N'D108', 15, N'Approved', 68, 26, N'OME2', NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (48, 60, N'D109', 0, N'Approved', 69, 27, N'ALE11', NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (49, 60, N'D110', 15, N'Approved', 69, 27, N'ALE12', NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (50, 61, N'D111', 0, N'Draft', 70, 28, N'COL1', NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (51, 61, N'D112', 5, N'Draft', 70, 28, N'COL2', NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (52, 62, N'D113', 0, N'Approved', 71, 29, N'CIM01', NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (53, 62, N'D114', 0, N'Approved', 71, 29, N'CIM02', NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (54, 63, N'E101', 0, N'Approved', 72, 30, N'TER1', NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (55, 63, N'E102', 15, N'Approved', 72, 30, N'TER2', NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (56, 69, N'E103', 498, N'Approved', 74, 32, N'dfd', NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (57, 69, N'E104', 0, N'Approved', 74, 32, N'f', NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (58, 70, N'E105', 0, N'Draft', 75, 33, N'0', NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (59, 71, N'E106', 5, N'Draft', 76, 34, N'ttt', NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (60, 71, N'E107', 8, N'Draft', 76, 34, N'yyyy', NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (61, 72, N'E108', 8, N'Approved', 77, 35, N'at1', NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (62, 72, N'E109', 15, N'Approved', 77, 35, N'at2', NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (63, 71, N'E110', 10, N'Approved', 78, 36, N'TERBB1', NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (64, 71, N'E111', 10, N'Approved', 78, 36, N'TERBB2', NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (65, 71, N'E112', 10, N'Approved', 78, 36, N'C01', NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (66, 71, N'E113', 10, N'Approved', 78, 36, N'C02', NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (67, 73, N'E114', 3, N'Approved', 79, 37, N'ATR1', NULL)
INSERT [dbo].[tblTrancetraceablity] ([TransetraceId], [Poid], [Unitname], [Qty], [Status], [GRId], [TraceId], [Palletsrefno], [Batchnumber]) VALUES (68, 73, N'F101', 10, N'Approved', 79, 37, N'ATR2', NULL)
SET IDENTITY_INSERT [dbo].[tblTrancetraceablity] OFF
SET IDENTITY_INSERT [dbo].[tblTransGoodPicking] ON 

INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (2, 16, 0, 10, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'E011', 1, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (2, 16, 0, 5, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'E012', 2, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (2, 16, 0, 0, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'E013', 3, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (3, 5, 0, 2, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'E007', 4, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (3, 5, 0, 2, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'E008', 5, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (4, 17, 0, 10, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'F004', 6, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (4, 17, 0, 5, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'F005', 7, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (4, 17, 0, 2, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'F006', 8, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (4, 17, 0, 5, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'E014', 9, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (4, 17, 0, 7, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'F001', 10, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (4, 17, 0, 7, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'F002', 11, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (4, 17, 0, 3, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'F003', 12, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (4, 18, 0, 6, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'F007', 13, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (4, 18, 0, 9, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'F008', 14, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (4, 18, 0, 8, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'F009', 15, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (5, 19, 0, 15, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'F010', 16, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (5, 19, 0, 8, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'F011', 17, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (5, 19, 0, 7, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'F012', 18, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (6, 20, 0, 10, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'G001', 19, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (6, 20, 0, 0, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'G002', 20, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (6, 20, 0, 0, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'G003', 21, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (7, 5, 0, 20, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'F013', 22, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (7, 5, 0, 0, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'F014', 23, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (7, 5, 0, -2, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'E007', 24, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (7, 5, 0, -2, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'E008', 25, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (8, 21, 0, 10, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'G004', 26, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (8, 21, 0, 0, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'G005', 27, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (9, 21, 0, 10, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'G004', 28, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (9, 21, 0, 0, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'G005', 29, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (10, 22, 0, 10, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'G009', 30, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (10, 22, 0, 0, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'G010', 31, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (11, 22, 0, 5, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'G009', 32, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (11, 22, 0, 5, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'G010', 33, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (12, 23, 0, 10, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'G011', 34, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (12, 23, 0, 5, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'G012', 35, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (13, 14, 0, 20, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'D013', 36, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (13, 14, 0, 20, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'D014', 37, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (13, 14, 0, 10, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'E001', 38, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (13, 14, 0, 0, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'E002', 39, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (13, 14, 0, 0, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'E003', 40, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (13, 14, 0, 0, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'D008', 41, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (13, 14, 0, 0, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'D009', 42, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (13, 14, 0, 0, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'D010', 43, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (13, 14, 0, 0, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'D011', 44, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (13, 14, 0, 0, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'D012', 45, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (13, 14, 0, 0, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'D005', 46, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (13, 14, 0, 0, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'D006', 47, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (13, 14, 0, 0, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'D007', 48, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (14, 14, 0, 0, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'D013', 49, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (14, 14, 0, 0, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'D014', 50, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (14, 14, 0, 0, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'E001', 51, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (14, 14, 0, 10, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'E002', 52, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (14, 14, 0, 0, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'E003', 53, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (14, 14, 0, 0, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'D008', 54, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (14, 14, 0, 0, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'D009', 55, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (14, 14, 0, 0, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'D010', 56, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (14, 14, 0, 0, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'D011', 57, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (14, 14, 0, 0, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'D012', 58, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (14, 23, 0, 0, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'G011', 59, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (14, 23, 0, 0, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'G012', 60, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (14, 14, 0, 0, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'D005', 61, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (14, 14, 0, 0, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'D006', 62, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (14, 14, 0, 0, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'D007', 63, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (15, 14, 0, 0, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'D013', 64, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (15, 14, 0, 0, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'D014', 65, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (15, 14, 0, 0, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'E001', 66, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (15, 14, 0, 0, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'E002', 67, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (15, 14, 0, 10, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'E003', 68, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (15, 14, 0, 10, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'D008', 69, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (15, 14, 0, 0, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'D009', 70, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (15, 14, 0, 0, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'D010', 71, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (15, 14, 0, 0, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'D011', 72, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (15, 14, 0, 0, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'D012', 73, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (15, 23, 0, 0, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'G011', 74, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (15, 23, 0, 0, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'G012', 75, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (15, 14, 0, 0, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'D005', 76, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (15, 14, 0, 0, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'D006', 77, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (15, 14, 0, 0, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'D007', 78, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (16, 26, 0, 20, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'A108', 79, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (16, 26, 0, 0, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'A109', 80, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (17, 27, 0, 15, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'A110', 81, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (17, 27, 0, 5, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'A111', 82, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (18, 27, 0, 0, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'A110', 83, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (18, 27, 0, 5, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'A111', 84, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (19, 25, 0, 10, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'A105', 85, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (19, 25, 0, 0, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'A104', 86, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (19, 25, 0, 0, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'A106', 87, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (19, 25, 0, 0, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'A103', 88, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (20, 28, 0, 10, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'A112', 89, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (20, 28, 0, 0, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'A113', 90, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (21, 29, 0, 10, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'B104', 91, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (21, 29, 0, 0, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'B107', 92, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (21, 29, 0, 0, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'A114', 93, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (22, 32, 0, 4, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'B111', 94, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (22, 32, 0, 1, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'B112', 95, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (23, 32, 0, 4, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'B111', 96, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (23, 32, 0, 1, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'B112', 97, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (26, 33, 0, 10, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'C104', 102, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (27, 33, 0, 10, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'C104', 103, NULL)
GO
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (29, 36, 0, 20, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'C110', 105, N'CARBO1')
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (30, 28, 0, 0, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'A112', 106, N'')
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (31, 28, 0, 5, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'A112', 107, N'')
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (32, 26, 0, 10, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'D109', 108, N'ALE11')
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (33, 43, 0, 20, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'D111', 109, N'COL1')
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (34, 38, 0, 15, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'D113', 110, N'CIM01')
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (37, 43, 0, 10, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'D112', 113, N'COL2')
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (38, 18, 0, 2, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'E105', 114, N'0')
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (24, 32, 0, 10, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'C101', 98, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (24, 32, 0, 10, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'C102', 99, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (24, 32, 0, 0, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'C103', 100, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (24, 32, 0, 0, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'B112', 101, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (28, 34, 0, 10, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'C108', 104, NULL)
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (35, 38, 0, 20, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'D114', 111, N'CIM02')
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (36, 13, 0, 15, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'E101', 112, N'TER1')
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (39, 17, 0, 3, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'E106', 115, N'ttt')
INSERT [dbo].[tblTransGoodPicking] ([GoodPickid], [ProdId], [PackSize], [Qty], [PricePerPack], [VATPerc], [AmtTotal], [Batchnumber], [Unitname], [TransGoodPicking], [Palletsrefno]) VALUES (40, 49, 0, 5, 0.0000, CAST(0 AS Decimal(18, 0)), 0.0000, N'', N'E114', 116, N'ATR1')
SET IDENTITY_INSERT [dbo].[tblTransGoodPicking] OFF
SET IDENTITY_INSERT [dbo].[tblTransGoodReceipts] ON 

INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (1, 1, N'A001', 1000, 0, 0, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (2, 1, N'A002', 1000, 0, 0, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (3, 1, N'A003', 1000, 0, 0, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (4, 1, N'A004', 1000, 0, 0, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (5, 1, N'A005', 1000, 0, 0, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (6, 1, N'A006', 1000, 0, 0, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (7, 1, N'A007', 1000, 0, 0, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (8, 1, N'A008', 500, 0, 0, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (9, 1, N'A009', 1500, 0, 0, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (10, 2, N'A010', 1, 0, 0, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (11, 2, N'A011', 1, 0, 0, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (12, 2, N'A012', 1, 0, 0, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (13, 2, N'A013', 2, 0, 0, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (14, 2, N'A014', 4, 0, 0, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (38, 6, N'C008', 1, 0, 1, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (39, 6, N'C009', 1, 0, 1, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (40, 6, N'C010', 5, 3, 2, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (41, 6, N'C011', 5, 2, 3, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (42, 7, N'C012', 5, 0, 0, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (43, 7, N'C013', 0, 0, 0, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (44, 7, N'C012', 3, 0, 0, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (45, 7, N'C013', 2, 0, 0, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (46, 10, N'C014', 2, 1, 2, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (47, 10, N'D001', 2, 1, 1, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (48, 11, N'D002', 5, 2, 3, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (49, 11, N'D003', 4, 3, 1, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (50, 11, N'D004', 3, 1, 2, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (51, 12, N'C009', 3, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (52, 12, N'C010', 3, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (53, 13, N'C011', 20, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (54, 13, N'C012', 20, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (55, 13, N'C013', 20, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (56, 14, N'C014', 3, 1, 2, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (57, 14, N'D001', 2, 1, 1, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (15, 3, N'B001', 1000, 0, 0, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (16, 3, N'B002', 500, 0, 0, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (17, 3, N'B003', 500, 0, 0, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (18, 3, N'B004', 2000, 0, 0, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (19, 3, N'B005', 1000, 0, 0, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (20, 3, N'B006', 1000, 0, 0, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (21, 6, N'B007', 2, 1, 1, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (22, 6, N'B008', 10, 4, 6, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (23, 6, N'', 0, 0, 0, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (24, 6, N'', 0, 0, 0, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (25, 6, N'B009', 5, 2, 3, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (26, 6, N'B010', 5, 3, 2, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (27, 6, N'B011', 4, 1, 3, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (28, 6, N'B012', 4, 2, 2, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (29, 6, N'B013', 2, 1, 1, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (30, 6, N'B014', 3, 1, 2, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (31, 6, N'C001', 1, 0, 1, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (32, 6, N'C002', 1, 0, 1, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (33, 6, N'C003', 5, 1, 4, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (34, 6, N'C004', 0, 0, 0, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (35, 6, N'C005', 4, 3, 1, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (36, 6, N'C006', 1, 1, 0, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (37, 6, N'C007', 0, 0, 0, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (58, 15, N'D002', 20, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (59, 15, N'D003', 10, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (60, 15, N'D004', 10, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (61, 17, N'D005', 5, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (62, 17, N'D005', 10, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (63, 17, N'D006', 7, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (64, 17, N'D007', 3, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (65, 18, N'D008', 20, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (66, 18, N'D009', 10, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (67, 18, N'D010', 10, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (68, 18, N'D011', 15, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (69, 18, N'D012', 5, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (70, 19, N'D013', 20, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (71, 19, N'D014', 20, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (72, 19, N'E001', 10, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (75, 20, N'E004', 5, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (76, 20, N'E005', 5, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (77, 20, N'E006', 5, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (78, 21, N'E007', 4, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (79, 21, N'E008', 4, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (80, 22, N'E009', 20, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (81, 23, N'E010', 15, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (82, 24, N'E011', 10, 3, 7, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (83, 25, N'E012', 10, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (84, 25, N'E013', 10, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (73, 19, N'E002', 10, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (74, 19, N'E003', 10, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (85, 26, N'E014', 15, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (86, 26, N'F001', 10, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (87, 26, N'F002', 10, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (88, 26, N'F003', 5, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (89, 27, N'F004', 20, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (90, 27, N'F005', 10, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (91, 27, N'F006', 5, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (92, 28, N'F007', 10, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (93, 28, N'F008', 15, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (94, 28, N'F009', 10, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (95, 29, N'F010', 25, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (96, 29, N'F011', 10, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (97, 29, N'F012', 15, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (98, 30, N'F013', 20, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (99, 30, N'F014', 10, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (100, 31, N'G001', 20, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (101, 31, N'G002', 15, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (102, 31, N'G003', 5, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (103, 32, N'G004', 10, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (104, 32, N'G005', 10, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (105, 33, N'G006', 15, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (106, 33, N'G007', 15, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (107, 33, N'G008', 15, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (108, 34, N'G009', 15, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (109, 34, N'G010', 5, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (110, 35, N'G011', 10, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (111, 35, N'G012', 20, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (112, 38, N'G013', 10, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (116, 40, N'A103', 20, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (117, 41, N'A104', 25, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (118, 41, N'A105', 10, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (119, 41, N'A106', 20, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (120, 41, N'A106', 15, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (121, 41, N'A106', 22, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (122, 42, N'A108', 20, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (123, 42, N'A109', 20, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (124, 44, N'A110', 15, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (125, 44, N'A111', 25, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (126, 45, N'A112', 15, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (127, 45, N'A113', 15, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (128, 46, N'A114', 45, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (129, 47, N'B101', 20, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (130, 47, N'B102', 20, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (131, 48, N'B103', 30, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (132, 52, N'B104', 20, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (133, 53, N'B105', 10, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (135, 54, N'B107', 22, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (136, 55, N'B108', 20, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (137, 55, N'B109', 25, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (138, 56, N'B110', 35, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (139, 56, N'B110', 25, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (140, 57, N'B111', 5, 1, 4, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (141, 57, N'B112', 5, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (142, 58, N'B113', 15, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (143, 58, N'B114', 5, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (144, 59, N'C101', 10, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (147, 60, N'C104', 15, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (148, 60, N'C105', 5, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (149, 61, N'C106', 5, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (150, 61, N'C107', 5, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (151, 62, N'C108', 15, 2, 13, N'MET11', NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (153, 63, N'C110', 20, NULL, NULL, N'CARBO1', NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (154, 63, N'C111', 15, NULL, NULL, N'CARBO2', NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (155, 64, N'C112', 10, 2, 8, N'0', NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (156, 64, N'C113', 20, 2, 18, N'0', NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (157, 64, N'C114', 20, 2, 18, N'0', NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (158, 65, N'D101', 10, NULL, NULL, N'0', NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (159, 65, N'D102', 10, NULL, NULL, N'0', NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (160, 66, N'D103', 15, 5, 35, N'E1', NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (161, 66, N'D104', 25, NULL, NULL, N'E2', NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (162, 67, N'D105', 40, 2, 38, N'AXPI01', NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (163, 67, N'D106', 20, 1, 19, N'AXPI01', NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (164, 68, N'D107', 25, 2, 13, N'OME1', NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (165, 68, N'D108', 15, 3, 22, N'OME2', NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (166, 69, N'D109', 15, 5, 10, N'ALE11', NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (167, 69, N'D110', 15, 0, 15, N'ALE12', NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (168, 70, N'D111', 25, 5, 0, N'COL1', NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (169, 70, N'D112', 15, 0, 5, N'COL2', NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (170, 71, N'D113', 25, 10, 0, N'CIM01', NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (171, 71, N'D114', 20, 0, 0, N'CIM02', NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (174, 74, N'E103', 500, 2, 498, N'dfd', NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (175, 74, N'E104', 500, 0, 0, N'f', NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (176, 75, N'E105', 3, 1, 0, N'0', NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (177, 76, N'E106', 10, 2, 5, N'ttt', NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (178, 76, N'E107', 10, 2, 8, N'yyyy', NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (179, 77, N'E108', 10, 2, 8, N'at1', N'Qurantine')
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (180, 77, N'E109', 15, NULL, 15, N'at2', N'')
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (181, 78, N'E110', 10, NULL, 10, N'TERBB1', N'Quarantine')
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (182, 78, N'E111', 10, NULL, 10, N'TERBB2', N'Quarantine')
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (183, 78, N'E112', 10, NULL, 10, N'C01', N'Quarantine')
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (184, 78, N'E113', 10, NULL, 10, N'C02', N'Quarantine')
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (185, 79, N'E114', 10, 2, 3, N'ATR1', N'Release')
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (186, 79, N'F101', 10, NULL, 10, N'ATR2', N'Qurantine')
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (113, 38, N'G014', 15, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (134, 53, N'B106', 20, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (145, 59, N'C102', 10, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (152, 62, N'C109', 10, 1, 9, N'MET12', NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (172, 72, N'E101', 25, 10, 0, N'TER1', NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (173, 72, N'E102', 15, 0, 15, N'TER2', NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (114, 39, N'A101', 5, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (115, 39, N'A102', 10, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTransGoodReceipts] ([TransGRId], [GRId], [Unitname], [Qty], [SampleQty], [FinalbatchQty], [Palletsrefno], [BatchStatus]) VALUES (146, 59, N'C103', 10, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblTransGoodReceipts] OFF
SET IDENTITY_INSERT [dbo].[tblTransPo] ON 

INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (26, 13, N'13', N'HO122', N'METFORMIN 500MG 
', N'Third', N'55', N'Ltrs', N'30', N'8', N'30rs', N'25', NULL)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (2, 2, N'5', N'121', N'METFORMIN 500MG 
', N'First', N'33', N'Ltrs', N'20ltr', N'33ton', N'30', N'1255', NULL)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (43, 21, N'14', N'JUL50', N'JULS501', N'Solution', N'650', N'44', N'500', N'9', N'75', N'675', NULL)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (4, 4, N'13', N'HO122', N'PARACETAMOL 500MG EFF 
', N'Third', N'55', N'Ltrs', N'30', N'bulk', N'30rs', N'442', NULL)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (27, 13, N'5', N'TO221', N'PARACETAMOL 500MG EFF 
', N'First', N'160', N'Grms', N'78', N'9', N'300rs', N'1000', NULL)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (6, 6, N'8', N'121', N'PARACETAMOL 500MG EFF 
', N'First', N'33', N'Ltrs', N'20ltr', N'9ltrs', N'30', N'1500', NULL)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (28, 13, N'12', N'ZO11', N'METFORMIN 500MG 
', N'Third', N'22', N'Grms', N'25', N'10', N'55', N'1500', NULL)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (29, 13, N'5', N'121', N'PARACETAMOL 500MG EFF 
', N'First', N'33', N'Ltrs', N'20ltr', N'9', N'30', N'400', NULL)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (30, 14, N'11', N'121', N'PARACETAMOL 500MG EFF 
', N'First', N'33', N'Ltrs', N'20ltr', N'10', N'30', N'1100', NULL)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (31, 14, N'13', N'ZO11', N'METFORMIN 500MG 
', N'Third', N'22', N'Grms', N'25', N'22', N'55', N'2000', NULL)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (32, 14, N'5', N'TO221', N'PARACETAMOL 500MG EFF 
', N'First', N'160', N'Grms', N'78', N'12', N'300rs', N'1200', NULL)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (33, 15, N'12', N'121', N'PARACETAMOL 500MG EFF 
', N'First', N'33', N'Ltrs', N'20ltr', N'9', N'30', N'1500', NULL)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (34, 15, N'8', N'WA1122', N'METFORMIN 500MG 
', N'Second', N'12', N'Grms', N'20ltr', N'12', N'30', N'1200', NULL)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (36, 17, N'11', N'121', N'METFORMIN 500MG ', N'First', N'33', N'Ltrs', N'20ltr', N'12', N'30', N'500', NULL)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (37, 18, N'13', N'HO122', N'METFORMIN 500MG ', N'Third', N'55', N'Ltrs', N'30', N'12', N'30rs', N'1500', NULL)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (44, 22, N'14', N'JUL50', N'JULS501', N'Solution', N'650', N'44', N'500', N'100', N'60', N'6000', NULL)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (7, 6, N'5', N'WA1122', N'PARACETAMOL 500MG EFF 
', N'Second', N'12', N'Grms', N'20ltr', N'9ltrs', N'30', N'1500', NULL)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (23, 11, N'8', N'WA1122', N'PARACETAMOL 500MG EFF 
', N'Second', N'12', N'Grms', N'20ltr', N'10', N'30', N'1200', NULL)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (24, 11, N'13', N'HO122', N'PARACETAMOL 500MG EFF 
', N'Third', N'55', N'Ltrs', N'30', N'10', N'30rs', N'1500', NULL)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (25, 11, N'5', N'TO221', N'PARACETAMOL 500MG EFF 
', N'First', N'160', N'Grms', N'78', N'12', N'300rs', N'4560', NULL)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (40, 20, N'11', N'edq', N'A247', N'First', N'55', N'Ltrs', N'10', N'5', N'75', N'375', NULL)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (41, 20, N'13', N'Do11', N'Dosiba', N'Suspension', N'33', N'44', N'20', N'9', N'30', N'270', NULL)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (42, 20, N'9', N'454', N'DOLO650', N'First', N'650', N'Grms', N'20', N'9', N'45', N'405', NULL)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (45, 23, N'15', N'ASP12121', N'ASPRIN', N'Tablet', N'150MCG', N'10', N'10', N'10', N'10', N'1000', NULL)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (46, 24, N'5', N'TO221', N'METFORMIN 850MG ', N'First', N'160', N'Grms', N'78', N'10', N'300rs', N'1000', 1)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (47, 24, N'9', N'454', N'DOLO650', N'First', N'650', N'Grms', N'20', N'20', N'45', N'900', 1)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (48, 24, N'15', N'ASP12121', N'ASPRIN', N'Tablet', N'150MCG', N'10', N'10', N'15', N'100', N'1500', 1)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (49, 25, N'16', N'ATV123', N'ATIVAN', N'Capsule', N'250MCG', N'CAP', N'22', N'10', N'200', N'2000', 1)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (50, 27, N'16', N'ATV123', N'ATIVAN', N'Capsule', N'250MCG', N'strip', N'22', N'20', N'200', N'4000', 1)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (51, 28, N'17', N'MED100', N'MEDICURE100', N'Solution', N'600', N'100', N'500', N'50', N'70', N'3500', 1)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (52, 28, N'18', N'VIZ121', N'VIZHOT250', N'Capsule', N'200', N'150', N'300', N'50', N'65', N'3250', 1)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (53, 29, N'19', N'SEN112', N'SENSON201', N'Suspension', N'33', N'SML', N'20', N'70', N'60', N'4200', 1)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (54, 30, N'5', N'TO221', N'METFORMIN 850MG ', N'First', N'160', N'Grms', N'78', N'40', N'30', N'1200', 1)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (55, 31, N'20', N'QU11', N'QURTOM', N'Solution', N'33', N'SML', N'20', N'60', N'50', N'3000', 1)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (56, 32, N'21', N'JET11', N'JETZON150', N'Tablet', N'12', N'', N'20', N'30', N'55', N'1650', 1)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (57, 33, N'19', N'SEN112', N'SENSON201', N'Suspension', N'33', N'SML', N'20', N'65', N'80', N'5200', 1)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (58, 34, N'22', N'PAIN112', N'PAINKILLER210', N'Tablet', N'55', N'44', N'20', N'30', N'80', N'2400', 1)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (59, 35, N'22', N'PAIN112', N'PAINKILLER210', N'Tablet', N'55', N'SML', N'20', N'40', N'50', N'2000', 0)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (60, 36, N'23', N'ABC12', N'ABC112', N'Effervescent Tablets', N'100', N'', N'SML', N'50', N'45', N'2250', 1)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (61, 37, N'24', N'TRA11', N'TRACE1', N'Caplet', N'150', N'SML', N'100', N'30', N'75', N'2250', 1)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (62, 38, N'24', N'TRA11', N'TRACE1', N'Caplet', N'150', N'SML', N'100', N'20', N'80', N'1600', 1)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (63, 39, N'25', N'BLA11', N'BLAD12', N'Effervescent Tablets', N'150', N'SML', N'100', N'30', N'90', N'2700', 1)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (64, 40, N'25', N'BLA11', N'BLAD12', N'Effervescent Tablets', N'150', N'SML', N'100', N'25', N'70', N'1750', 1)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (65, 41, N'26', N'MAZ11', N'MAZAD112', N'Capsule', N'150', N'SML', N'100', N'60', N'50', N'3000', 1)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (66, 42, N'27', N'DEE12', N'DEEREO12', N'Capsule', N'150', N'SML', N'100', N'55', N'45', N'2475', 1)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (67, 43, N'27', N'DEE12', N'DEEREO12', N'Capsule', N'150', N'SML', N'100', N'50', N'65', N'3250', 1)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (68, 44, N'28', N'NE1', N'NEW1', N'Capsule', N'60', N'SML', N'50', N'50', N'40', N'2000', 1)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (69, 45, N'29', N'NEWPR11', N'NEW PROD1', N'Capsule', N'150', N'SML', N'100', N'50', N'70', N'3500', 1)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (70, 45, N'16', N'ATV123', N'ATIVAN', N'Capsule', N'250MCG', N'SML', N'22', N'40', N'70', N'2800', 1)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (71, 46, N'28', N'NE1', N'NEW1', N'Capsule', N'60', N'SML', N'50', N'40', N'50', N'2000', 1)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (72, 46, N'29', N'NEWPR11', N'NEW PROD1', N'Capsule', N'150', N'SML', N'100', N'40', N'60', N'2400', 1)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (73, 47, N'29', N'NEWPR11', N'NEW PROD1', N'Capsule', N'150', N'', N'100', N'30', N'45', N'1350', 1)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (74, 47, N'16', N'ATV123', N'ATIVAN', N'Capsule', N'250MCG', N'', N'22', N'40', N'30', N'1200', 1)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (75, 48, N'29', N'NEWPR11', N'NEW PROD1', N'Capsule', N'150', N'', N'100', N'25', N'20', N'500', 1)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (76, 49, N'16', N'ATV123', N'ATIVAN', N'Capsule', N'250MCG', N'', N'22', N'50', N'25', N'1250', 1)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (77, 50, N'28', N'NE1', N'NEW1', N'Capsule', N'60', N'', N'50', N'40', N'50', N'2000', 1)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (78, 51, N'32', N'NA', N'Atenolol 100mg Tablets 28s', N'Tablet', N'125', N'box', N'LRG', N'10', N'100', N'1000', 1)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (79, 52, N'32', N'NA', N'Atenolol 100mg Tablets 28s', N'Tablet', N'125', N'123', N'LRG', N'30', N'200', N'6000', 1)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (80, 53, N'33', N'SS1', N'SSSS', N'Tablet', N'33', N'SML', N'20', N'30', N'150', N'4500', 1)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (81, 53, N'32', N'NA', N'Atenolol 100mg Tablets 28s', N'Tablet', N'125', N'', N'LRG', N'20', N'100', N'2000', 1)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (82, 54, N'34', N'', N'METFORMIN 500MG 500S', N'Tablet', N'500', N'SML', N'100', N'30', N'50', N'1500', 1)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (83, 54, N'35', N'', N'DOSULEPIN 75MG 28S', N'Tablet', N'33', N'', N'100', N'40', N'60', N'2400', 1)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (84, 55, N'36', N'', N'CARBOMER 10MG GEL', N'Tablet', N'33', N'SML', N'100', N'50', N'80', N'4000', 1)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (85, 57, N'19', N'', N'PERINDOPRIL 4MG 30S', N'Tablet', N'4mg', NULL, NULL, N'50', N'30', N'1500', 0)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (86, 58, N'24', N'', N'ENALAPRIL MALEATE 10MG 28S', N'Tablet', N'10mg', NULL, NULL, N'50', N'60', N'3000', 1)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (87, 59, N'28', N'', N'AXPINET METFORMIN 850MG 56S', N'Tablet', N'850mg', NULL, NULL, N'70', N'95', N'6650', 1)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (88, 59, N'17', N'', N'OMEPRAZOLE 20MG 28S ', N'Capsule', N'20mg', NULL, NULL, N'50', N'85', N'4250', 1)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (89, 60, N'26', N'', N'ALENDRONIC ACID 70MG TABS 4S', N'Tablet', N'70mg', NULL, NULL, N'40', N'50', N'2000', 1)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (90, 61, N'43', N'', N'COLECALCIFEROL 800IU CAPS 30S', N'Capsule', N'800mg', NULL, NULL, N'50', N'60', N'3000', 1)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (91, 62, N'38', N'', N'CIMETIDINE 200MG 60S', N'Tablet', N'200mg', NULL, NULL, N'60', N'70', N'4200', 1)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (92, 63, N'13', N'', N'TERAZOSIN 2mg 28s', N'Tablet', N'2mg', NULL, NULL, N'50', N'30', N'1500', 1)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (93, 66, N'41', N'', N'PARACETAMOL 500MG EFF 16S GSL', N'Tablet', N'500mg', NULL, NULL, N'33', N'333', N'10989', 0)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (94, 66, N'33', N'', N'CYANOCOBALAMIN 50MG 50S', N'Tablet', N'50mg', NULL, NULL, N'44', N'444', N'19536', 0)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (95, 69, N'18', N'', N'PARACETAMOL 500MG EFF 24S GSL', N'Tablet', N'500mg', NULL, NULL, N'11', N'111', N'1221', 1)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (96, 69, N'14', N'', N'TERAZOSIN 10mg 28s', N'Tablet', N'10mg', NULL, NULL, N'1111', N'1111', N'1234321', 1)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (97, 70, N'18', N'', N'PARACETAMOL 500MG EFF 24S GSL', N'Tablet', N'500mg', NULL, NULL, N'3', N'33', N'99', 1)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (98, 71, N'17', N'', N'OMEPRAZOLE 20MG 28S ', N'Capsule', N'20mg', NULL, NULL, N'20', N'200', N'4000', 1)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (99, 71, N'13', N'', N'TERAZOSIN 2mg 28s', N'Tablet', N'2mg', NULL, NULL, N'20', N'20', N'400', 1)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (100, 72, N'52', N'', N'Atenolol 50mg Tablets 28s', N'Tablet', N'50mg', NULL, NULL, N'30', N'60', N'1800', 1)
INSERT [dbo].[tblTransPo] ([TransPo], [Poid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [PoQty], [Priceperpack], [Productamt], [IsGoodReceived]) VALUES (101, 73, N'49', N'', N'ATROPINE 1% DROPS 10ML', N'Drops', N'1mg', NULL, NULL, N'30', N'60', N'1800', 1)
SET IDENTITY_INSERT [dbo].[tblTransPo] OFF
SET IDENTITY_INSERT [dbo].[tblTranspotMaster] ON 

INSERT [dbo].[tblTranspotMaster] ([id], [transpot]) VALUES (1, N'Fedex')
INSERT [dbo].[tblTranspotMaster] ([id], [transpot]) VALUES (2, N'Fedex1')
INSERT [dbo].[tblTranspotMaster] ([id], [transpot]) VALUES (3, N'Fedex3')
INSERT [dbo].[tblTranspotMaster] ([id], [transpot]) VALUES (4, N'')
SET IDENTITY_INSERT [dbo].[tblTranspotMaster] OFF
SET IDENTITY_INSERT [dbo].[tblTransSo] ON 

INSERT [dbo].[tblTransSo] ([TransSo], [Soid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [Customernameaddress], [SoQty], [Priceperpack], [VAT], [Totalamount], [SupplierID]) VALUES (6, 11, N'5', N'121', N'METFORMIN 500MG ', N'First', N'33', N'Ltrs', N'20ltr', N'mani madhurai', N'20', N'30', N'5', N'1200', 1)
INSERT [dbo].[tblTransSo] ([TransSo], [Soid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [Customernameaddress], [SoQty], [Priceperpack], [VAT], [Totalamount], [SupplierID]) VALUES (7, 11, N'9', N'ZO11', N'PARACETAMOL 500MG EFF ', N'Third', N'22', N'Grms', N'25', N'mani madhurai', N'10', N'55', N'6', N'2200', 2)
INSERT [dbo].[tblTransSo] ([TransSo], [Soid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [Customernameaddress], [SoQty], [Priceperpack], [VAT], [Totalamount], [SupplierID]) VALUES (10, 3, N'12', N'WA1122', N'METFORMIN 500MG ', N'Second', N'12', N'Grms', N'20ltr', N'Mic chennai', N'10', N'30', N'5', N'1500', 4)
INSERT [dbo].[tblTransSo] ([TransSo], [Soid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [Customernameaddress], [SoQty], [Priceperpack], [VAT], [Totalamount], [SupplierID]) VALUES (11, 3, N'13', N'ZO11', N'PARACETAMOL 500MG EFF ', N'Third', N'22', N'Grms', N'25', N'vkdgl', N'20', N'55', N'5', N'1000', 5)
INSERT [dbo].[tblTransSo] ([TransSo], [Soid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [Customernameaddress], [SoQty], [Priceperpack], [VAT], [Totalamount], [SupplierID]) VALUES (12, 4, N'11', N'WA1122', N'METFORMIN 500MG ', N'Second', N'12', N'Grms', N'20ltr', N'Ashok DGl', N'10', N'30', N'12', N'1200', 7)
INSERT [dbo].[tblTransSo] ([TransSo], [Soid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [Customernameaddress], [SoQty], [Priceperpack], [VAT], [Totalamount], [SupplierID]) VALUES (13, 4, N'8', N'ZO11', N'PARACETAMOL 500MG EFF ', N'Third', N'22', N'Grms', N'25', N'Ashok DGl', N'20', N'55', N'5', N'1700', 3)
INSERT [dbo].[tblTransSo] ([TransSo], [Soid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [Customernameaddress], [SoQty], [Priceperpack], [VAT], [Totalamount], [SupplierID]) VALUES (14, 5, N'5', N'TO221', N'METFORMIN 850MG ', N'First', N'160', N'Grms', N'78', N'Ashok', N'20', N'300rs', N'5', N'2000', 2)
INSERT [dbo].[tblTransSo] ([TransSo], [Soid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [Customernameaddress], [SoQty], [Priceperpack], [VAT], [Totalamount], [SupplierID]) VALUES (15, 5, N'8', N'L112', N'Dolo', N'Second', N'650', N'Ltrs', N'10', N'mani madhurai', N'20', N'100', N'12', N'1500', NULL)
INSERT [dbo].[tblTransSo] ([TransSo], [Soid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [Customernameaddress], [SoQty], [Priceperpack], [VAT], [Totalamount], [SupplierID]) VALUES (16, 6, N'16', N'ATV123', N'ATIVAN', N'Capsule', N'250MCG', N'RES', N'22', NULL, N'15', N'200', N'15', N'45000', NULL)
INSERT [dbo].[tblTransSo] ([TransSo], [Soid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [Customernameaddress], [SoQty], [Priceperpack], [VAT], [Totalamount], [SupplierID]) VALUES (17, 7, N'17', N'MED100', N'MEDICURE100', N'Solution', N'600', N'100', N'500', NULL, N'15', N'60', N'12', N'900', NULL)
INSERT [dbo].[tblTransSo] ([TransSo], [Soid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [Customernameaddress], [SoQty], [Priceperpack], [VAT], [Totalamount], [SupplierID]) VALUES (18, 7, N'18', N'VIZ121', N'VIZHOT250', N'Capsule', N'200', N'70', N'300', NULL, N'10', N'65', N'6', N'650', NULL)
INSERT [dbo].[tblTransSo] ([TransSo], [Soid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [Customernameaddress], [SoQty], [Priceperpack], [VAT], [Totalamount], [SupplierID]) VALUES (19, 8, N'19', N'SEN112', N'SENSON201', N'Suspension', N'33', N'SML', N'20', NULL, N'30', N'65', N'6', N'1950', NULL)
INSERT [dbo].[tblTransSo] ([TransSo], [Soid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [Customernameaddress], [SoQty], [Priceperpack], [VAT], [Totalamount], [SupplierID]) VALUES (20, 9, N'20', N'QU11', N'QURTOM', N'Solution', N'33', N'SML', N'20', NULL, N'10', N'65', N'6', N'650', NULL)
INSERT [dbo].[tblTransSo] ([TransSo], [Soid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [Customernameaddress], [SoQty], [Priceperpack], [VAT], [Totalamount], [SupplierID]) VALUES (21, 10, N'21', N'JET11', N'JETZON150', N'Tablet', N'12', N'SML', N'20', NULL, N'10', N'70', N'8', N'700', NULL)
INSERT [dbo].[tblTransSo] ([TransSo], [Soid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [Customernameaddress], [SoQty], [Priceperpack], [VAT], [Totalamount], [SupplierID]) VALUES (22, 11, N'19', N'SEN112', N'SENSON201', N'Suspension', N'33', N'', N'20', NULL, N'20', N'75', N'8', N'1500', NULL)
INSERT [dbo].[tblTransSo] ([TransSo], [Soid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [Customernameaddress], [SoQty], [Priceperpack], [VAT], [Totalamount], [SupplierID]) VALUES (23, 12, N'22', N'PAIN112', N'PAINKILLER210', N'Tablet', N'55', N'', N'20', NULL, N'10', N'90', N'8', N'900', NULL)
INSERT [dbo].[tblTransSo] ([TransSo], [Soid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [Customernameaddress], [SoQty], [Priceperpack], [VAT], [Totalamount], [SupplierID]) VALUES (24, 13, N'23', N'ABC12', N'ABC112', N'Effervescent Tablets', N'100', N'SML', N'20', NULL, N'15', N'65', N'6', N'975', NULL)
INSERT [dbo].[tblTransSo] ([TransSo], [Soid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [Customernameaddress], [SoQty], [Priceperpack], [VAT], [Totalamount], [SupplierID]) VALUES (25, 14, N'14', N'JUL50', N'JULS501', N'Solution', N'650', N'SML', N'500', NULL, N'50', N'60', N'12', N'3000', NULL)
INSERT [dbo].[tblTransSo] ([TransSo], [Soid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [Customernameaddress], [SoQty], [Priceperpack], [VAT], [Totalamount], [SupplierID]) VALUES (26, 15, N'19', N'SEN112', N'SENSON201', N'Suspension', N'33', N'SML', N'20', NULL, N'10', N'70', N'6', N'700', NULL)
INSERT [dbo].[tblTransSo] ([TransSo], [Soid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [Customernameaddress], [SoQty], [Priceperpack], [VAT], [Totalamount], [SupplierID]) VALUES (27, 15, N'14', N'JUL50', N'JULS501', N'Solution', N'650', N'SML', N'500', NULL, N'10', N'60', N'6', N'600', NULL)
INSERT [dbo].[tblTransSo] ([TransSo], [Soid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [Customernameaddress], [SoQty], [Priceperpack], [VAT], [Totalamount], [SupplierID]) VALUES (28, 16, N'22', N'PAIN112', N'PAINKILLER210', N'Tablet', N'55', N'SML', N'20', NULL, N'10', N'60', N'6', N'600', NULL)
INSERT [dbo].[tblTransSo] ([TransSo], [Soid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [Customernameaddress], [SoQty], [Priceperpack], [VAT], [Totalamount], [SupplierID]) VALUES (29, 16, N'14', N'JUL50', N'JULS501', N'Solution', N'650', N'SML', N'500', NULL, N'10', N'65', N'5', N'650', NULL)
INSERT [dbo].[tblTransSo] ([TransSo], [Soid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [Customernameaddress], [SoQty], [Priceperpack], [VAT], [Totalamount], [SupplierID]) VALUES (30, 17, N'23', N'ABC12', N'ABC112', N'Effervescent Tablets', N'100', N'SML', N'SML', NULL, N'10', N'70', N'6', N'700', NULL)
INSERT [dbo].[tblTransSo] ([TransSo], [Soid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [Customernameaddress], [SoQty], [Priceperpack], [VAT], [Totalamount], [SupplierID]) VALUES (31, 17, N'14', N'JUL50', N'JULS501', N'Solution', N'650', N'SML', N'500', NULL, N'20', N'70', N'6', N'1400', NULL)
INSERT [dbo].[tblTransSo] ([TransSo], [Soid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [Customernameaddress], [SoQty], [Priceperpack], [VAT], [Totalamount], [SupplierID]) VALUES (32, 18, N'26', N'MAZ11', N'MAZAD112', N'Capsule', N'150', N'', N'100', NULL, N'20', N'60', N'5', N'1200', NULL)
INSERT [dbo].[tblTransSo] ([TransSo], [Soid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [Customernameaddress], [SoQty], [Priceperpack], [VAT], [Totalamount], [SupplierID]) VALUES (33, 19, N'27', N'DEE12', N'DEEREO12', N'Capsule', N'150', N'SML', N'100', NULL, N'20', N'60', N'6', N'1200', NULL)
INSERT [dbo].[tblTransSo] ([TransSo], [Soid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [Customernameaddress], [SoQty], [Priceperpack], [VAT], [Totalamount], [SupplierID]) VALUES (34, 20, N'27', N'DEE12', N'DEEREO12', N'Capsule', N'150', N'SML', N'100', NULL, N'5', N'70', N'5', N'350', NULL)
INSERT [dbo].[tblTransSo] ([TransSo], [Soid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [Customernameaddress], [SoQty], [Priceperpack], [VAT], [Totalamount], [SupplierID]) VALUES (35, 21, N'25', N'BLA11', N'BLAD12', N'Effervescent Tablets', N'150', N'SML', N'100', NULL, N'10', N'30', N'6', N'300', NULL)
INSERT [dbo].[tblTransSo] ([TransSo], [Soid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [Customernameaddress], [SoQty], [Priceperpack], [VAT], [Totalamount], [SupplierID]) VALUES (36, 22, N'24', N'TRA11', N'TRACE1', N'Caplet', N'150', N'SML', N'100', NULL, N'5', N'65', N'6', N'325', NULL)
INSERT [dbo].[tblTransSo] ([TransSo], [Soid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [Customernameaddress], [SoQty], [Priceperpack], [VAT], [Totalamount], [SupplierID]) VALUES (37, 23, N'28', N'NE1', N'NEW1', N'Capsule', N'60', N'SML', N'50', NULL, N'10', N'70', N'5', N'700', NULL)
INSERT [dbo].[tblTransSo] ([TransSo], [Soid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [Customernameaddress], [SoQty], [Priceperpack], [VAT], [Totalamount], [SupplierID]) VALUES (38, 24, N'29', N'NEWPR11', N'NEW PROD1', N'Capsule', N'150', N'SML', N'100', NULL, N'10', N'30', N'6', N'300', NULL)
INSERT [dbo].[tblTransSo] ([TransSo], [Soid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [Customernameaddress], [SoQty], [Priceperpack], [VAT], [Totalamount], [SupplierID]) VALUES (39, 25, N'32', N'NA', N'Atenolol 100mg Tablets 28s', N'Tablet', N'125', N'box', N'LRG', NULL, N'5', N'200', N'2', N'1200', NULL)
INSERT [dbo].[tblTransSo] ([TransSo], [Soid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [Customernameaddress], [SoQty], [Priceperpack], [VAT], [Totalamount], [SupplierID]) VALUES (40, 26, N'32', N'NA', N'Atenolol 100mg Tablets 28s', N'Tablet', N'125', N'SML', N'LRG', NULL, N'20', N'200', N'2', N'4000', NULL)
INSERT [dbo].[tblTransSo] ([TransSo], [Soid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [Customernameaddress], [SoQty], [Priceperpack], [VAT], [Totalamount], [SupplierID]) VALUES (41, 27, N'33', N'SS1', N'SSSS', N'Tablet', N'33', N'', N'20', NULL, N'10', N'70', N'2', N'700', NULL)
INSERT [dbo].[tblTransSo] ([TransSo], [Soid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [Customernameaddress], [SoQty], [Priceperpack], [VAT], [Totalamount], [SupplierID]) VALUES (42, 28, N'34', N'PL 43870/0004', N'METFORMIN 500MG 500S', N'Tablet', N'500', N'', N'100', NULL, N'10', N'70', N'2', N'700', NULL)
INSERT [dbo].[tblTransSo] ([TransSo], [Soid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [Customernameaddress], [SoQty], [Priceperpack], [VAT], [Totalamount], [SupplierID]) VALUES (43, 29, N'36', N'CARBOMER 001', N'CARBOMER 10MG GEL', N'Tablet', N'33', N'SML', N'100', NULL, N'20', N'70', N'2', N'1400', NULL)
INSERT [dbo].[tblTransSo] ([TransSo], [Soid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [Customernameaddress], [SoQty], [Priceperpack], [VAT], [Totalamount], [SupplierID]) VALUES (44, 31, N'28', N'PL 43870/0004', N'AXPINET METFORMIN 850MG 56S', N'Tablet', N'850mg', N'', N'', NULL, N'30', N'100', N'5', N'3150', NULL)
INSERT [dbo].[tblTransSo] ([TransSo], [Soid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [Customernameaddress], [SoQty], [Priceperpack], [VAT], [Totalamount], [SupplierID]) VALUES (45, 31, N'17', N'PL 43870/0014', N'OMEPRAZOLE 20MG 28S ', N'Capsule', N'20mg', N'', N'', NULL, N'20', N'110', N'5', N'2310', NULL)
INSERT [dbo].[tblTransSo] ([TransSo], [Soid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [Customernameaddress], [SoQty], [Priceperpack], [VAT], [Totalamount], [SupplierID]) VALUES (46, 32, N'26', N'PL 43870/0037', N'ALENDRONIC ACID 70MG TABS 4S', N'Tablet', N'70mg', N'', N'', NULL, N'20', N'60', N'5', N'1260', NULL)
INSERT [dbo].[tblTransSo] ([TransSo], [Soid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [Customernameaddress], [SoQty], [Priceperpack], [VAT], [Totalamount], [SupplierID]) VALUES (47, 33, N'43', N'NA', N'COLECALCIFEROL 800IU CAPS 30S', N'Capsule', N'800mg', N'', N'', NULL, N'25', N'60', N'6', N'1590', NULL)
INSERT [dbo].[tblTransSo] ([TransSo], [Soid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [Customernameaddress], [SoQty], [Priceperpack], [VAT], [Totalamount], [SupplierID]) VALUES (48, 34, N'38', N'PL 43870/0018', N'CIMETIDINE 200MG 60S', N'Tablet', N'200mg', N'', N'', NULL, N'20', N'90', N'6', N'1908', NULL)
INSERT [dbo].[tblTransSo] ([TransSo], [Soid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [Customernameaddress], [SoQty], [Priceperpack], [VAT], [Totalamount], [SupplierID]) VALUES (49, 35, N'13', N'PL 43870/0001', N'TERAZOSIN 2mg 28s', N'Tablet', N'2mg', N'', N'', NULL, N'20', N'60', N'6', N'1272', NULL)
INSERT [dbo].[tblTransSo] ([TransSo], [Soid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [Customernameaddress], [SoQty], [Priceperpack], [VAT], [Totalamount], [SupplierID]) VALUES (50, 36, N'13', N'PL 43870/0001', N'TERAZOSIN 2mg 28s', N'Tablet', N'2mg', N'', N'', NULL, N'20', N'60', N'6', N'1272', NULL)
INSERT [dbo].[tblTransSo] ([TransSo], [Soid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [Customernameaddress], [SoQty], [Priceperpack], [VAT], [Totalamount], [SupplierID]) VALUES (52, 38, N'18', N'PL 43870/0010', N'PARACETAMOL 500MG EFF 24S GSL', N'Tablet', N'500mg', N'', N'', NULL, N'2', N'222', N'2', N'452', NULL)
INSERT [dbo].[tblTransSo] ([TransSo], [Soid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [Customernameaddress], [SoQty], [Priceperpack], [VAT], [Totalamount], [SupplierID]) VALUES (53, 39, N'17', N'PL 43870/0014', N'OMEPRAZOLE 20MG 28S ', N'Capsule', N'20mg', N'', N'', NULL, N'3', N'30', N'3', N'92', NULL)
INSERT [dbo].[tblTransSo] ([TransSo], [Soid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [Customernameaddress], [SoQty], [Priceperpack], [VAT], [Totalamount], [SupplierID]) VALUES (51, 36, N'43', N'NA', N'COLECALCIFEROL 800IU CAPS 30S', N'Capsule', N'800mg', N'', N'', NULL, N'10', N'60', N'6', N'636', NULL)
INSERT [dbo].[tblTransSo] ([TransSo], [Soid], [Productid], [LicenseNo], [Productname], [Dosageform], [Strength], [Packtype], [Packsize], [Customernameaddress], [SoQty], [Priceperpack], [VAT], [Totalamount], [SupplierID]) VALUES (54, 40, N'49', N'NA', N'ATROPINE 1% DROPS 10ML', N'Drops', N'1mg', N'', N'', NULL, N'5', N'60', N'6', N'318', NULL)
SET IDENTITY_INSERT [dbo].[tblTransSo] OFF
SET IDENTITY_INSERT [dbo].[tblTransSupplier] ON 

INSERT [dbo].[tblTransSupplier] ([TransSupplierID], [SupplierID], [PersonName], [Address], [Country], [Postcode], [Phone], [CountryCode], [EmailId]) VALUES (13, 16, N'PRIYA', N'ADDRESS', N'1', N'2132423', N'4545454', N'+44', N'PP@GM.COM')
INSERT [dbo].[tblTransSupplier] ([TransSupplierID], [SupplierID], [PersonName], [Address], [Country], [Postcode], [Phone], [CountryCode], [EmailId]) VALUES (14, 16, N'DHARSHINI', N'MGR NAGAR, MADURAI, TN', N'4', N'654654545454545454', N'9123515998', N'+91', N'DD@GMAIL.COM')
INSERT [dbo].[tblTransSupplier] ([TransSupplierID], [SupplierID], [PersonName], [Address], [Country], [Postcode], [Phone], [CountryCode], [EmailId]) VALUES (15, 16, N'PRATHEEP', N'MG NAGAR', N'6', N'65465', N'5465465', N'+44', N'PRATHEEP@GMAIL.COM')
INSERT [dbo].[tblTransSupplier] ([TransSupplierID], [SupplierID], [PersonName], [Address], [Country], [Postcode], [Phone], [CountryCode], [EmailId]) VALUES (16, 17, N'AVURI', N'AMERICA', N'1', N'65456', N'654654654', N'+1', N'AYU@GMAIL.COM')
INSERT [dbo].[tblTransSupplier] ([TransSupplierID], [SupplierID], [PersonName], [Address], [Country], [Postcode], [Phone], [CountryCode], [EmailId]) VALUES (17, 18, N'Chandru', N'Dindigul,Nlk', N'3', N'658749', N'9874534561', N'+44', N'chandru@gmail.com')
INSERT [dbo].[tblTransSupplier] ([TransSupplierID], [SupplierID], [PersonName], [Address], [Country], [Postcode], [Phone], [CountryCode], [EmailId]) VALUES (18, 19, N'Raaman', N'Batlgundu,Alagamcity', N'3', N'658749', N'9874534561', N'+91', N'raaman@gmail.com')
INSERT [dbo].[tblTransSupplier] ([TransSupplierID], [SupplierID], [PersonName], [Address], [Country], [Postcode], [Phone], [CountryCode], [EmailId]) VALUES (19, 20, N'ADHANI', N'Mumbai', N'2', N'625487', N'9874534561', N'+44', N'adhani@gmail.com')
INSERT [dbo].[tblTransSupplier] ([TransSupplierID], [SupplierID], [PersonName], [Address], [Country], [Postcode], [Phone], [CountryCode], [EmailId]) VALUES (20, 21, N'John', N'Crimson Road, LA', N'1', N'4587', N'878789454', N'+1', N'john@crimson.com')
INSERT [dbo].[tblTransSupplier] ([TransSupplierID], [SupplierID], [PersonName], [Address], [Country], [Postcode], [Phone], [CountryCode], [EmailId]) VALUES (21, 2, N'BBB', N'Chennai', N'1', N'6525DD', N'9988445566', N'+44', N'bbb@gmail.com')
INSERT [dbo].[tblTransSupplier] ([TransSupplierID], [SupplierID], [PersonName], [Address], [Country], [Postcode], [Phone], [CountryCode], [EmailId]) VALUES (23, 3, N'JOHN', N'LA', N'1', N'5555', N'89798798', N'+1', N'john@crimson.com')
INSERT [dbo].[tblTransSupplier] ([TransSupplierID], [SupplierID], [PersonName], [Address], [Country], [Postcode], [Phone], [CountryCode], [EmailId]) VALUES (24, 4, N'SAS', N'UK', N'2', N'625487', N'9874534561', N'+1', N'sas@gmail.com')
INSERT [dbo].[tblTransSupplier] ([TransSupplierID], [SupplierID], [PersonName], [Address], [Country], [Postcode], [Phone], [CountryCode], [EmailId]) VALUES (25, 5, N'MEDLEYFIRST', N'UK', N'3', N'625487', N'9874534561', N'+44', N'medley@gmail.com')
INSERT [dbo].[tblTransSupplier] ([TransSupplierID], [SupplierID], [PersonName], [Address], [Country], [Postcode], [Phone], [CountryCode], [EmailId]) VALUES (26, 6, N'RIYASH', N'us', N'2', N'658749', N'9874534561', N'+1', N'riyash@gmail.com')
INSERT [dbo].[tblTransSupplier] ([TransSupplierID], [SupplierID], [PersonName], [Address], [Country], [Postcode], [Phone], [CountryCode], [EmailId]) VALUES (28, 7, N'BABU', N'MUMBAI', N'4', N'625487', N'9988445566', N'+1', N'babu@gmail.com')
SET IDENTITY_INSERT [dbo].[tblTransSupplier] OFF
SET IDENTITY_INSERT [dbo].[tblUnit] ON 

INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (1, N'A001', 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (2, N'A002', 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (3, N'A003', 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (4, N'A004', 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (5, N'A005', 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (6, N'A006', 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (7, N'A007', 1, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (8, N'A008', 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (9, N'A009', 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (10, N'A010', 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (11, N'A011', 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (12, N'A012', 1, 0, 11, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (13, N'A013', 1, 0, 12, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (14, N'A014', 1, 0, 13, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (15, N'B001', 1, 0, 14, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (16, N'B002', 1, 0, 15, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (17, N'B003', 1, 0, 16, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (18, N'B004', 1, 0, 17, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (19, N'B005', 1, 0, 18, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (20, N'B006', 1, 0, 19, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (21, N'B007', 1, 0, 20, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (22, N'B008', 1, 0, 21, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (23, N'B009', 1, 0, 24, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (24, N'B010', 1, 0, 25, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (25, N'B011', 1, 0, 26, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (26, N'B012', 1, 0, 27, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (27, N'B013', 1, 0, 28, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (28, N'B014', 1, 0, 29, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (29, N'C001', 1, 0, 30, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (30, N'C002', 1, 0, 31, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (31, N'C003', 1, 0, 32, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (32, N'C004', 1, 0, 33, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (33, N'C005', 1, 0, 34, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (34, N'C006', 1, 0, 35, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (35, N'C007', 1, 0, 36, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (36, N'C008', 1, 0, 37, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (37, N'C009', 1, 0, 50, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (38, N'C010', 1, 0, 51, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (39, N'C011', 1, 0, 52, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (40, N'C012', 1, 0, 53, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (41, N'C013', 1, 0, 54, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (42, N'C014', 1, 0, 55, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (43, N'D001', 1, 0, 56, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (44, N'D002', 1, 0, 57, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (45, N'D003', 1, 0, 58, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (46, N'D004', 1, 0, 59, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (47, N'D005', 1, 0, 61, 14, N'NAW21', CAST(0x83470B00 AS Date), 20, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (48, N'D006', 1, 0, 62, 14, N'NAW21', CAST(0x83470B00 AS Date), 20, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (49, N'D007', 1, 0, 63, 14, N'NAW21', CAST(0x83470B00 AS Date), 20, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (50, N'D008', 1, 0, 64, 14, N'GRET12', CAST(0xFC450B00 AS Date), 10, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (51, N'D009', 1, 0, 65, 14, N'GRET12', CAST(0xFC450B00 AS Date), 10, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (52, N'D010', 1, 0, 66, 14, N'GRET12', CAST(0xFC450B00 AS Date), 10, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (53, N'D011', 1, 0, 67, 14, N'GRET12', CAST(0xFC450B00 AS Date), 15, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (54, N'D012', 1, 0, 68, 14, N'GRET12', CAST(0xFC450B00 AS Date), 5, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (55, N'D013', 1, 0, 69, 14, N'EVE11', CAST(0x7C450B00 AS Date), 0, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (56, N'D014', 1, 0, 70, 14, N'EVE11', CAST(0x7C450B00 AS Date), 0, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (57, N'E001', 1, 0, 71, 14, N'EVE11', CAST(0x7C450B00 AS Date), 0, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (58, N'E002', 1, 0, 72, 14, N'EVE11', CAST(0x7C450B00 AS Date), 0, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (59, N'E003', 1, 0, 73, 14, N'EVE11', CAST(0x7C450B00 AS Date), 0, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (60, N'E004', 1, 0, 74, 15, N'ASPBatch123', CAST(0x5B950A00 AS Date), 5, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (61, N'E005', 1, 0, 75, 15, N'ASPBAT101', CAST(0x5B950A00 AS Date), 5, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (62, N'E006', 1, 0, 76, 15, N'ASPBAT101', CAST(0x5B950A00 AS Date), 5, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (63, N'E007', 1, 0, 77, 5, N'meta123', CAST(0x8C450B00 AS Date), 0, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (64, N'E008', 1, 0, 78, 5, N'meta123', CAST(0x8C450B00 AS Date), 0, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (65, N'E009', 1, 0, 79, 9, N'dolo456', CAST(0x5B950A00 AS Date), 20, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (66, N'E010', 1, 0, 80, 15, N'asp151', CAST(0x5B950A00 AS Date), 15, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (67, N'E011', 1, 0, 81, 16, N'ATV123', CAST(0xB84B0B00 AS Date), 0, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (68, N'E012', 1, 0, 82, 16, N'ATV345', CAST(0x264D0B00 AS Date), -5, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (69, N'E013', 1, 0, 83, 16, N'ATV345', CAST(0x264D0B00 AS Date), -10, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (70, N'E014', 1, 0, 84, 17, N'', CAST(0x71460B00 AS Date), -10, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (71, N'F001', 1, 0, 85, 17, N'', CAST(0x71460B00 AS Date), -3, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (72, N'F002', 1, 0, 86, 17, N'', CAST(0x71460B00 AS Date), -3, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (73, N'F003', 1, 0, 87, 17, N'', CAST(0x71460B00 AS Date), -2, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (74, N'F004', 1, 0, 88, 17, N'HO121', CAST(0x5B950A00 AS Date), -10, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (75, N'F005', 1, 0, 89, 17, N'HO121', CAST(0x5B950A00 AS Date), -5, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (76, N'F006', 1, 0, 90, 17, N'HO121', CAST(0x5B950A00 AS Date), -3, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (77, N'F007', 1, 0, 91, 18, N'VZ112', CAST(0x12470B00 AS Date), -4, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (78, N'F008', 1, 0, 92, 18, N'VZ112', CAST(0x12470B00 AS Date), -6, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (79, N'F009', 1, 0, 93, 18, N'VZ112', CAST(0x12470B00 AS Date), -2, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (80, N'F010', 1, 0, 94, 19, N'SE12', CAST(0x39460B00 AS Date), -10, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (81, N'F011', 1, 0, 95, 19, N'SE12', CAST(0x39460B00 AS Date), -2, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (82, N'F012', 1, 0, 96, 19, N'SE12', CAST(0x39460B00 AS Date), -8, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (83, N'F013', 1, 0, 97, 5, N'', CAST(0x5B950A00 AS Date), 0, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (84, N'F014', 1, 0, 98, 5, N'', CAST(0x5B950A00 AS Date), -10, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (85, N'G001', 1, 0, 99, 20, N'', CAST(0x5B950A00 AS Date), -10, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (86, N'G002', 1, 0, 100, 20, N'', CAST(0x5B950A00 AS Date), -15, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (87, N'G003', 1, 0, 101, 20, N'', CAST(0x5B950A00 AS Date), -5, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (88, N'G004', 1, 0, 102, 21, N'JE11', CAST(0x2C460B00 AS Date), 0, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (89, N'G005', 1, 0, 103, 21, N'JE11', CAST(0x2C460B00 AS Date), -10, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (90, N'G006', 1, 0, 104, 19, N'SON11', CAST(0x52460B00 AS Date), 15, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (91, N'G007', 1, 0, 105, 19, N'SON11', CAST(0x52460B00 AS Date), 15, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (92, N'G008', 1, 0, 106, 19, N'SON11', CAST(0x52460B00 AS Date), 15, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (93, N'G009', 1, 0, 107, 22, N'PA332', CAST(0x6B460B00 AS Date), 0, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (94, N'G010', 1, 0, 108, 22, N'PA332', CAST(0x6B460B00 AS Date), 0, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (95, N'G011', 1, 0, 109, 23, N'ABC', CAST(0x3B460B00 AS Date), 0, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (96, N'G012', 1, 0, 110, 23, N'ABC', CAST(0x3B460B00 AS Date), 15, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (97, N'G013', 1, 0, 111, 24, N'TRA1', CAST(0x3D460B00 AS Date), 10, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (98, N'G014', 1, 0, 112, 24, N'TRA1', CAST(0x3D460B00 AS Date), 15, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (99, N'A101', 2, 0, 113, 24, N'TRA2', CAST(0x4A460B00 AS Date), 5, NULL, NULL)
GO
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (100, N'A102', 2, 0, 114, 24, N'TRA2', CAST(0x4A460B00 AS Date), 10, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (101, N'A103', 2, 0, 115, 25, N'BLA1', CAST(0x60460B00 AS Date), 20, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (102, N'A104', 2, 0, 116, 25, N'BLA2', CAST(0x26460B00 AS Date), 25, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (103, N'A105', 2, 0, 117, 25, N'BLA12', CAST(0x95450B00 AS Date), 0, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (294, N'A301', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (295, N'A302', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (296, N'A303', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (297, N'A304', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (298, N'A305', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (299, N'A306', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (300, N'A307', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (301, N'A308', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (302, N'A309', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (303, N'A310', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (304, N'A311', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (305, N'A312', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (306, N'A313', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (307, N'A314', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (308, N'B301', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (309, N'B302', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (310, N'B303', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (311, N'B304', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (312, N'B305', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (313, N'B306', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (314, N'B307', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (315, N'B308', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (316, N'B309', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (317, N'B310', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (318, N'B311', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (319, N'B312', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (320, N'B313', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (321, N'B314', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (322, N'C301', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (323, N'C302', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (324, N'C303', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (325, N'C304', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (326, N'C305', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (327, N'C306', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (328, N'C307', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (329, N'C308', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (330, N'C309', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (331, N'C310', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (332, N'C311', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (333, N'C312', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (334, N'C313', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (335, N'C314', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (336, N'D301', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (337, N'D302', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (338, N'D303', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (339, N'D304', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (340, N'D305', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (341, N'D306', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (342, N'D307', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (343, N'D308', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (344, N'D309', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (345, N'D310', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (346, N'D311', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (347, N'D312', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (348, N'D313', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (349, N'D314', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (350, N'E301', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (351, N'E302', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (352, N'E303', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (353, N'E304', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (354, N'E305', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (355, N'E306', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (356, N'E307', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (357, N'E308', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (358, N'E309', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (359, N'E310', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (360, N'E311', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (361, N'E312', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (362, N'E313', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (363, N'E314', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (364, N'F301', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (365, N'F302', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (366, N'F303', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (367, N'F304', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (368, N'F305', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (369, N'F306', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (370, N'F307', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (371, N'F308', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (372, N'F309', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (373, N'F310', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (374, N'F311', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (375, N'F312', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (376, N'F313', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (377, N'F314', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (378, N'G301', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (379, N'G302', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (380, N'G303', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (381, N'G304', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (382, N'G305', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (383, N'G306', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (384, N'G307', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (385, N'G308', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (386, N'G309', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (387, N'G310', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (388, N'G311', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (389, N'G312', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (390, N'G313', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (391, N'G314', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (404, N'A107', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (104, N'A106', 2, 0, 120, 25, N'BLA33', CAST(0x58460B00 AS Date), 22, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (105, N'A108', 2, 0, 121, 26, N'MAZ112', CAST(0x81460B00 AS Date), 0, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (106, N'A109', 2, 0, 122, 26, N'MAZ112', CAST(0x81460B00 AS Date), 20, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (107, N'A110', 2, 0, 123, 27, N'DEE2', CAST(0x5B950A00 AS Date), 0, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (108, N'A111', 2, 0, 124, 27, N'DEE2', CAST(0x5B950A00 AS Date), 15, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (109, N'A112', 2, 0, 125, 28, N'NE1', CAST(0x5B950A00 AS Date), 5, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (110, N'A113', 2, 0, 126, 28, N'NE1', CAST(0x5B950A00 AS Date), 15, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (111, N'A114', 2, 0, 127, 29, N'ADN001NEW', CAST(0x8C450B00 AS Date), 45, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (112, N'B101', 2, 0, 128, 16, N'ADNATIVAN001', CAST(0x8C450B00 AS Date), 20, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (113, N'B102', 2, 0, 129, 16, N'ADNATIVAN001', CAST(0x8C450B00 AS Date), 20, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (114, N'B103', 2, 0, 130, 28, N'NEWPRO11', CAST(0xFD450B00 AS Date), 30, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (115, N'B104', 2, 0, 131, 29, N'NPER1', CAST(0x5B950A00 AS Date), 10, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (116, N'B105', 2, 0, 132, 16, N'NEWATIVAN', CAST(0xF5450B00 AS Date), 10, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (117, N'B106', 2, 0, 133, 16, N'NEWATIVAN', CAST(0xF5450B00 AS Date), 20, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (118, N'B107', 2, 0, 134, 29, N'NEPR1122', CAST(0x5B950A00 AS Date), 22, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (119, N'B108', 2, 0, 135, 16, N'LAST12', CAST(0x5B950A00 AS Date), 20, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (120, N'B109', 2, 0, 136, 16, N'LAST12', CAST(0x5B950A00 AS Date), 25, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (121, N'B110', 2, 0, 138, 28, N'ASHOK1', CAST(0x5B950A00 AS Date), 25, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (122, N'B111', 2, 0, 139, 32, N'ATENOL100', CAST(0x8E4B0B00 AS Date), 0, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (123, N'B112', 2, 0, 140, 32, N'ATENOL100', CAST(0x8E4B0B00 AS Date), 4, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (124, N'B113', 2, 0, 141, 23, N'A2Z', CAST(0x84450B00 AS Date), 15, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (125, N'B114', 2, 0, 142, 23, N'A2Z', CAST(0x84450B00 AS Date), 5, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (126, N'C101', 2, 0, 143, 32, N'ATCRIMSON', CAST(0x54480B00 AS Date), 0, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (127, N'C102', 2, 0, 144, 32, N'ATCRIMSON', CAST(0x54480B00 AS Date), 0, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (128, N'C103', 2, 0, 145, 32, N'ATCRIMSON', CAST(0x54480B00 AS Date), 10, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (129, N'C104', 2, 0, 146, 33, N'SA1', CAST(0x71460B00 AS Date), 5, N'SA1', NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (130, N'C105', 2, 0, 147, 33, N'SA1', CAST(0x71460B00 AS Date), 5, N'SA1', NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (131, N'C106', 2, 0, 148, 32, N'SAS2', CAST(0x07470B00 AS Date), 5, N'Quarantine', NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (132, N'C107', 2, 0, 149, 32, N'SAS2', CAST(0x07470B00 AS Date), 5, N'Quarantine', NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (133, N'C108', 2, 0, 150, 34, N'METFOR11', CAST(0x72460B00 AS Date), 3, N'Release', NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (134, N'C109', 2, 0, 151, 34, N'METFOR11', CAST(0x72460B00 AS Date), 9, N'Quarantine', NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (135, N'C110', 2, 0, 152, 36, N'CARBO11', CAST(0x5E460B00 AS Date), 0, N'Quarantine', N'CARBO1')
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (136, N'C111', 2, 0, 153, 36, N'CARBO11', CAST(0x5E460B00 AS Date), 15, N'Quarantine', N'CARBO2')
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (137, N'C112', 2, 0, 154, 35, N'KKKK', CAST(0x7F450B00 AS Date), 8, N'Release', N'0')
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (138, N'C113', 2, 0, 155, 35, N'KKKK', CAST(0x7F450B00 AS Date), 18, N'Destroyed', N'0')
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (139, N'C114', 2, 0, 156, 35, N'KKKK', CAST(0x7F450B00 AS Date), 18, N'Rejected', N'0')
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (140, N'D101', 2, 0, 157, 23, N'IIII', CAST(0x86450B00 AS Date), 10, N'Quarantine', N'0')
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (141, N'D102', 2, 0, 158, 23, N'IIII', CAST(0x86450B00 AS Date), 10, N'Quarantine', N'0')
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (142, N'D103', 2, 0, 159, 24, N'EEE1', CAST(0x8A450B00 AS Date), 35, N'Quarantine', N'E1')
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (143, N'D104', 2, 0, 160, 24, N'EEE1', CAST(0x8A450B00 AS Date), 35, N'Quarantine', N'E2')
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (144, N'D105', 2, 0, 161, 28, N'AXPIN01', CAST(0x25460B00 AS Date), 19, N'Release', N'AXPI01')
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (145, N'D106', 2, 0, 162, 28, N'AXPIN01', CAST(0x25460B00 AS Date), 19, N'Release', N'AXPI01')
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (146, N'D107', 2, 0, 163, 17, N'OME01', CAST(0x3B460B00 AS Date), 22, N'Release', N'OME1')
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (147, N'D108', 2, 0, 164, 17, N'OME01', CAST(0x3B460B00 AS Date), 22, N'Release', N'OME2')
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (148, N'D109', 2, 0, 165, 26, N'ALEN01', CAST(0x20460B00 AS Date), 0, N'Release', N'ALE11')
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (149, N'D110', 2, 0, 166, 26, N'ALEN01', CAST(0x20460B00 AS Date), 15, N'Release', N'ALE12')
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (150, N'D111', 2, 0, 167, 43, N'COLE01', CAST(0xFD450B00 AS Date), 0, N'Release', N'COL1')
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (151, N'D112', 2, 0, 168, 43, N'COLE01', CAST(0xFD450B00 AS Date), 5, N'Release', N'COL2')
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (152, N'D113', 2, 0, 169, 38, N'CIME01', CAST(0x7B460B00 AS Date), 0, N'Release', N'CIM01')
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (153, N'D114', 2, 0, 170, 38, N'CIME01', CAST(0x7B460B00 AS Date), 0, N'Release', N'CIM02')
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (154, N'E101', 2, 0, 171, 13, N'TERA01', CAST(0x64460B00 AS Date), 0, N'Release', N'TER1')
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (155, N'E102', 2, 0, 172, 13, N'TERA01', CAST(0x64460B00 AS Date), 15, N'Release', N'TER2')
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (156, N'E103', 2, 0, 173, 14, N'tttt', CAST(0xEA490B00 AS Date), 498, N'Quarantine', N'dfd')
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (157, N'E104', 2, 0, 174, 14, N'tttt', CAST(0xEA490B00 AS Date), 0, N'Quarantine', N'f')
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (158, N'E105', 2, 0, 175, 18, N'trea', CAST(0x8B450B00 AS Date), 0, N'Quarantine', N'0')
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (159, N'E106', 2, 0, 176, 17, N'OM', CAST(0x8B450B00 AS Date), 5, N'Release', N'ttt')
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (160, N'E107', 2, 0, 177, 17, N'OM', CAST(0x8B450B00 AS Date), 8, N'Release', N'yyyy')
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (161, N'E108', 2, 0, 178, 52, N'ATT', CAST(0x05460B00 AS Date), 8, N'Qurantine', N'at1')
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (162, N'E109', 2, 0, 179, 52, N'ATT', CAST(0x05460B00 AS Date), 15, N'', N'at2')
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (163, N'E110', 2, 0, 180, 13, N'qty', CAST(0x8B450B00 AS Date), 10, N'Quarantine', N'TERBB1')
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (164, N'E111', 2, 0, 181, 13, N'qty', CAST(0x8B450B00 AS Date), 10, N'Quarantine', N'TERBB2')
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (165, N'E112', 2, 0, 182, 13, N'CCC', CAST(0x8C450B00 AS Date), 10, N'Quarantine', N'C01')
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (166, N'E113', 2, 0, 183, 13, N'CCC', CAST(0x8C450B00 AS Date), 10, N'Quarantine', N'C02')
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (167, N'E114', 2, 0, 184, 49, N'ATR1', CAST(0x8C450B00 AS Date), 3, N'Release', N'ATR1')
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (168, N'F101', 2, 0, 185, 49, N'ATR1', CAST(0x8C450B00 AS Date), 10, N'Qurantine', N'ATR2')
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (169, N'F102', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (170, N'F103', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (171, N'F104', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (172, N'F105', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (173, N'F106', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (174, N'F107', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (175, N'F108', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (176, N'F109', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (177, N'F110', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (178, N'F111', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (179, N'F112', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (180, N'F113', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (181, N'F114', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (182, N'G101', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (183, N'G102', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (184, N'G103', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (185, N'G104', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (186, N'G105', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (187, N'G106', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (188, N'G107', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (189, N'G108', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (190, N'G109', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (191, N'G110', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (192, N'G111', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (193, N'G112', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (194, N'G113', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (195, N'G114', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (196, N'A201', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (197, N'A202', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (198, N'A203', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (199, N'A204', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (200, N'A205', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (201, N'A206', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (202, N'A207', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (203, N'A208', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (204, N'A209', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (205, N'A210', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (206, N'A211', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (207, N'A212', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (208, N'A213', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (209, N'A214', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (210, N'B201', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (211, N'B202', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (212, N'B203', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (213, N'B204', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (214, N'B205', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (215, N'B206', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (216, N'B207', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (217, N'B208', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (218, N'B209', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (219, N'B210', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (220, N'B211', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (221, N'B212', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (222, N'B213', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (223, N'B214', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (224, N'C201', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (225, N'C202', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (226, N'C203', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (227, N'C204', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (228, N'C205', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (229, N'C206', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (230, N'C207', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (231, N'C208', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (232, N'C209', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (233, N'C210', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (234, N'C211', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (235, N'C212', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (236, N'C213', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (237, N'C214', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (238, N'D201', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (239, N'D202', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (240, N'D203', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (241, N'D204', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (242, N'D205', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (243, N'D206', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (244, N'D207', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (245, N'D208', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (246, N'D209', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (247, N'D210', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (248, N'D211', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (249, N'D212', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (250, N'D213', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (251, N'D214', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (252, N'E201', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (253, N'E202', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (254, N'E203', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (255, N'E204', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (256, N'E205', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (257, N'E206', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (258, N'E207', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (259, N'E208', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (260, N'E209', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (261, N'E210', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (262, N'E211', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (263, N'E212', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (264, N'E213', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (265, N'E214', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (266, N'F201', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (267, N'F202', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (268, N'F203', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (269, N'F204', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (270, N'F205', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (271, N'F206', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (272, N'F207', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (273, N'F208', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (274, N'F209', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (275, N'F210', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (276, N'F211', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (277, N'F212', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (278, N'F213', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (279, N'F214', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (280, N'G201', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (281, N'G202', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (282, N'G203', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (283, N'G204', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (284, N'G205', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (285, N'G206', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (286, N'G207', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (287, N'G208', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (288, N'G209', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (289, N'G210', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (290, N'G211', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (291, N'G212', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (292, N'G213', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (293, N'G214', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (392, N'G015', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (393, N'G016', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (394, N'G017', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (395, N'G115', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (396, N'G116', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (397, N'G117', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (398, N'G215', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (399, N'G216', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (400, N'G217', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (401, N'G315', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (402, N'G316', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblUnit] ([UnitId], [Unitname], [Floor], [Isempty], [TransGRId], [ProductId], [Batchnumber], [Expirydate], [TotalQty], [Status], [Palletsrefno]) VALUES (403, N'G317', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblUnit] OFF
SET IDENTITY_INSERT [dbo].[tblWarehouse] ON 

INSERT [dbo].[tblWarehouse] ([WarehouseID], [WarehouseName], [WarehouseCode], [FloorNo], [UnitName], [NumberofUnity], [Selectapproval]) VALUES (5, N'Medley', N'ME112', 1, N'A003', N'', N'Select')
INSERT [dbo].[tblWarehouse] ([WarehouseID], [WarehouseName], [WarehouseCode], [FloorNo], [UnitName], [NumberofUnity], [Selectapproval]) VALUES (6, N'Rosan', N'RO221', 2, N'B108', N'', N'Select')
INSERT [dbo].[tblWarehouse] ([WarehouseID], [WarehouseName], [WarehouseCode], [FloorNo], [UnitName], [NumberofUnity], [Selectapproval]) VALUES (7, N'Vlocal', N'VL331', 3, N'B210', N'', N'Manager')
INSERT [dbo].[tblWarehouse] ([WarehouseID], [WarehouseName], [WarehouseCode], [FloorNo], [UnitName], [NumberofUnity], [Selectapproval]) VALUES (8, N'Modern Myls', N'MY121', 2, N'B104', N'', N'Client')
SET IDENTITY_INSERT [dbo].[tblWarehouse] OFF
