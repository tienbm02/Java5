CREATE DATABASE PS15611_ASM_J5_EvosShop
GO

USE [PS15611_ASM_J5_EvosShop]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 16/02/2023 9:47:30 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](100) NOT NULL,
	[Activated] [bit] NOT NULL,
	[Admin] [bit] NOT NULL,
	[CreateDate] [date] NOT NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CartDetails]    Script Date: 16/02/2023 9:47:30 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CartId] [int] NOT NULL,
	[PrdId] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[Amount] [int] NOT NULL,
 CONSTRAINT [PK_CartDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CartItems]    Script Date: 16/02/2023 9:47:30 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CartItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 16/02/2023 9:47:30 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [char](4) NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Configurations]    Script Date: 16/02/2023 9:47:30 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Configurations](
	[id] [int] NOT NULL,
	[phone_id] [int] NOT NULL,
	[manHinh] [nvarchar](100) NOT NULL,
	[heDieuhanh] [nvarchar](100) NOT NULL,
	[cameraSau] [nvarchar](100) NOT NULL,
	[cameraTruoc] [nvarchar](100) NOT NULL,
	[chip] [nvarchar](100) NOT NULL,
	[ram] [nvarchar](100) NOT NULL,
	[boNhoTrong] [nvarchar](100) NOT NULL,
	[sim] [nvarchar](100) NOT NULL,
	[hoTro5g] [bit] NULL,
	[pin_Sac] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Configurations_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 16/02/2023 9:47:30 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](200) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[Image] [nvarchar](100) NOT NULL,
	[Author] [nvarchar](50) NOT NULL,
	[Created] [date] NOT NULL,
 CONSTRAINT [PK__news__3214EC07FB177A29] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 16/02/2023 9:47:30 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[PayId] [bigint] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[Amount] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pays]    Script Date: 16/02/2023 9:47:30 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pays](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](20) NOT NULL,
	[Address] [nvarchar](300) NOT NULL,
	[message] [nvarchar](4000) NOT NULL,
	[Total] [float] NULL,
	[Payment] [nvarchar](30) NOT NULL,
	[Status] [nvarchar](30) NULL,
	[Created] [date] NOT NULL,
 CONSTRAINT [PK__Pays__3214EC076093C632] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 16/02/2023 9:47:30 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [char](4) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Price] [float] NOT NULL,
	[Avaliable] [bit] NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[Discount] [int] NULL,
	[Image] [nvarchar](100) NOT NULL,
	[CreateDate] [date] NOT NULL,
	[Other] [nvarchar](50) NULL,
 CONSTRAINT [PK__Products__3214EC079C72E08C] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reviews]    Script Date: 16/02/2023 9:47:30 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reviews](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[UserId] [nvarchar](50) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[Created] [date] NOT NULL,
 CONSTRAINT [PK__Review__3214EC07AD53370A] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Admin], [CreateDate]) VALUES (N'a', N'teo123', N'adsas', N'dulay0945@gmaiil.com', N't7.jpg', 1, 1, CAST(N'2022-06-22' AS Date))
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Admin], [CreateDate]) VALUES (N'a1', N'123', N'adsas', N'abc@gmail.com', N'NoImage.jpg', 1, 1, CAST(N'2022-06-08' AS Date))
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Admin], [CreateDate]) VALUES (N'abc', N'123456', N'Ay Bi Ci 2', N'hoathat@gmail.com', N't8.jpg', 1, 0, CAST(N'2022-06-25' AS Date))
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Admin], [CreateDate]) VALUES (N'ad', N'123', N'Bùi Quốc Dự', N'dubqpc02679@fpt.edu.vn', N'img_avatar1.png', 1, 0, CAST(N'2022-06-18' AS Date))
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Admin], [CreateDate]) VALUES (N'add', N'abcdef', N'Bùi Quốc Dự', N'dubqpc02679@gmail.com', N't7.jpg', 1, 0, CAST(N'2022-05-27' AS Date))
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Admin], [CreateDate]) VALUES (N'admin', N'123123', N'Admin1', N'admin@email.com', N't4.jpg', 0, 1, CAST(N'2022-06-25' AS Date))
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Admin], [CreateDate]) VALUES (N'annv', N'teo123', N'dubq', N'dulay0945@gmail.com', N'cdsv.jpg', 1, 0, CAST(N'2022-06-08' AS Date))
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Admin], [CreateDate]) VALUES (N'baby', N'happy bee 11', N'Cô Gái', N'dubqpc02679@fpt.edu.vn', N'beatiful.jpg', 1, 0, CAST(N'2022-06-22' AS Date))
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Admin], [CreateDate]) VALUES (N'binhht', N'ilumi', N'Hà Thái Bình', N'binhhtpc01234@gmail.com', N'binh.jpg', 0, 0, CAST(N'2022-06-08' AS Date))
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Admin], [CreateDate]) VALUES (N'binhtt', N'123456', N'Trần Thị Bình', N'binhtt@gmail.com', N'hoptac.jpg', 1, 1, CAST(N'2022-06-22' AS Date))
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Admin], [CreateDate]) VALUES (N'dubq', N'123', N'Bùi Quốc Dự', N'dubqpc02679@fpt.edu.vn', N'beatiful.jpg', 1, 1, CAST(N'2022-06-18' AS Date))
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Admin], [CreateDate]) VALUES (N'dubq1s', N'111', N'Bùi Quốc Dự', N'toilaaidayladau0945@gmail.com', N't10.jpg', 0, 1, CAST(N'2022-06-24' AS Date))
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Admin], [CreateDate]) VALUES (N'fpt1', N'admin123', N'Định', N'dinhtppc00576@fpt.edu.vn', N'backrao.jpg', 1, 1, CAST(N'2022-06-08' AS Date))
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Admin], [CreateDate]) VALUES (N'fpt2', N'123', N'Đạt', N'dat541@gmail.com', N'dattp', 1, 0, CAST(N'2022-06-08' AS Date))
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Admin], [CreateDate]) VALUES (N'fpt3', N'123', N'Hoa', N'hoapc00337@fpt.edu.vn', N'hoap', 1, 0, CAST(N'2022-06-08' AS Date))
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Admin], [CreateDate]) VALUES (N'fpt4', N'123', N'Huệ', N'hueng@gmail.com', N'huehue', 1, 0, CAST(N'2022-06-08' AS Date))
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Admin], [CreateDate]) VALUES (N'fpt5', N'123', N'Kha', N'kha3@gmail.com', N'khait', 1, 0, CAST(N'2022-06-08' AS Date))
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Admin], [CreateDate]) VALUES (N'fpt6', N'123', N'Lan', N'lalan@gmail.com', N'lalalan', 1, 0, CAST(N'2022-06-08' AS Date))
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Admin], [CreateDate]) VALUES (N'fpt7', N'123', N'Mẫn', N'manman@gmail.com', N'manqt', 1, 0, CAST(N'2022-06-08' AS Date))
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Admin], [CreateDate]) VALUES (N'fpt8', N'admin123', N'Anh', N'annqpc00834@fpt.edu.vn', N't9.jpg', 1, 1, CAST(N'2022-06-17' AS Date))
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Admin], [CreateDate]) VALUES (N'hoathat', N'123', N'Hoa Thất', N'hoathat@gmail.com', N't9.jpg', 0, 0, CAST(N'2022-06-24' AS Date))
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Admin], [CreateDate]) VALUES (N'hungnl', N'admin123', N'Nguyễn Lý Hùng', N'hungnlpc02593@gmial.com', N'hungnl.jpg', 0, 1, CAST(N'2022-06-03' AS Date))
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Admin], [CreateDate]) VALUES (N'moi', N'111', N'Tào Tháo', N'TaoThao@gmaiil.com', N'backrao.jpg', 0, 1, CAST(N'2022-06-24' AS Date))
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Admin], [CreateDate]) VALUES (N'n', N'1', N'Bùi Quốc Dự', N'dubqpc02679@fpt.edu.vn', N'Logo_TechShop.jpg', 1, 0, CAST(N'2022-06-20' AS Date))
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Admin], [CreateDate]) VALUES (N'bmt', N'nha123', N'Khương Tử Nha', N'bmt@gmail.com', N'up_arrow.png', 0, 1, CAST(N'2022-06-08' AS Date))
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Admin], [CreateDate]) VALUES (N'bmtien', N'123456', N'Nguyễn Trung A', N'bmtien@gmail.com', N'img_avatar1.png', 1, 1, CAST(N'2022-06-17' AS Date))
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Admin], [CreateDate]) VALUES (N'bmt1', N'123', N'Bùi Mạnh Tiến 1', N'1@gmail.com', N'PS03701.ong', 1, 0, CAST(N'2022-06-08' AS Date))
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Admin], [CreateDate]) VALUES (N'tienbm', N'admin', N'Bùi Mạnh Tiến', N'tienbm02@gmail.com', N'img_avatar1.png', 1, 1, CAST(N'2022-06-17' AS Date))
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Admin], [CreateDate]) VALUES (N'poly', N'ct', N'Bùi Quốc Dự', N'dubqpc02679@fpt.edu.vn', N'hoptac.jpg', 0, 1, CAST(N'2022-06-22' AS Date))
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Admin], [CreateDate]) VALUES (N'tinhtc', N'123321', N'Trần Chí Tính', N'dubqpc02679@fpt.edu.vn', N't11.jpg', 1, 0, CAST(N'2022-06-25' AS Date))
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Admin], [CreateDate]) VALUES (N'bella', N'123456', N'Thiếu Nữ Bella', N'bella@fpt.edu.vn', N't11.jpg', 1, 0, CAST(N'2022-06-25' AS Date))
GO

SET IDENTITY_INSERT [dbo].[CartDetails] ON 

INSERT [dbo].[CartDetails] ([Id], [CartId], [PrdId], [Price], [Amount]) VALUES (10, 8, 3, 21990000, 4)
INSERT [dbo].[CartDetails] ([Id], [CartId], [PrdId], [Price], [Amount]) VALUES (15, 8, 2, 41990000, 2)
INSERT [dbo].[CartDetails] ([Id], [CartId], [PrdId], [Price], [Amount]) VALUES (16, 8, 4, 9490000, 1)
INSERT [dbo].[CartDetails] ([Id], [CartId], [PrdId], [Price], [Amount]) VALUES (34, 2, 3, 21990000, 1)
INSERT [dbo].[CartDetails] ([Id], [CartId], [PrdId], [Price], [Amount]) VALUES (35, 2, 8, 10990000, 1)
INSERT [dbo].[CartDetails] ([Id], [CartId], [PrdId], [Price], [Amount]) VALUES (42, 10, 2, 41990000, 3)
INSERT [dbo].[CartDetails] ([Id], [CartId], [PrdId], [Price], [Amount]) VALUES (43, 10, 3, 21990000, 2)
INSERT [dbo].[CartDetails] ([Id], [CartId], [PrdId], [Price], [Amount]) VALUES (44, 10, 7, 32490000, 2)
INSERT [dbo].[CartDetails] ([Id], [CartId], [PrdId], [Price], [Amount]) VALUES (45, 10, 4, 9490000, 1)
INSERT [dbo].[CartDetails] ([Id], [CartId], [PrdId], [Price], [Amount]) VALUES (46, 10, 32, 990000, 2)
INSERT [dbo].[CartDetails] ([Id], [CartId], [PrdId], [Price], [Amount]) VALUES (47, 1, 2, 41990000, 2)
INSERT [dbo].[CartDetails] ([Id], [CartId], [PrdId], [Price], [Amount]) VALUES (48, 1, 1, 18990000, 1)
INSERT [dbo].[CartDetails] ([Id], [CartId], [PrdId], [Price], [Amount]) VALUES (49, 1, 3, 21990000, 1)
INSERT [dbo].[CartDetails] ([Id], [CartId], [PrdId], [Price], [Amount]) VALUES (95, 9, 1, 18990000, 1)
SET IDENTITY_INSERT [dbo].[CartDetails] OFF
GO

SET IDENTITY_INSERT [dbo].[CartItems] ON 

INSERT [dbo].[CartItems] ([Id], [UserId]) VALUES (1, N'dubq')
INSERT [dbo].[CartItems] ([Id], [UserId]) VALUES (2, N'a')
INSERT [dbo].[CartItems] ([Id], [UserId]) VALUES (3, N'a1')
INSERT [dbo].[CartItems] ([Id], [UserId]) VALUES (4, N'annv')
INSERT [dbo].[CartItems] ([Id], [UserId]) VALUES (5, N'fpt1')
INSERT [dbo].[CartItems] ([Id], [UserId]) VALUES (6, N'fpt2')
INSERT [dbo].[CartItems] ([Id], [UserId]) VALUES (8, N'fpt4')
INSERT [dbo].[CartItems] ([Id], [UserId]) VALUES (9, N'add')
INSERT [dbo].[CartItems] ([Id], [UserId]) VALUES (10, N'fpt3')
INSERT [dbo].[CartItems] ([Id], [UserId]) VALUES (11, N'baby')
INSERT [dbo].[CartItems] ([Id], [UserId]) VALUES (24, N'tienbm')
INSERT [dbo].[CartItems] ([Id], [UserId]) VALUES (25, N'abc')
SET IDENTITY_INSERT [dbo].[CartItems] OFF
GO

INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'LTOP', N'Máy tính xách tay (Laptop)')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'MOB ', N'Điện thoại di động')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'PKDT', N'Phụ kiện điện thoại, laptop')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'SPBC', N'Sản phẩm bán chạy nè')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'TABL', N'Tablet')
GO

INSERT [dbo].[Configurations] ([id], [phone_id], [manHinh], [heDieuhanh], [cameraSau], [cameraTruoc], [chip], [ram], [boNhoTrong], [sim], [hoTro5g], [pin_Sac]) VALUES (2, 2, N'OLED6.7"Super Retina XDR', N'iOS 15', N'3 camera 12 MP', N'12 MP', N'Apple A15 Bionic', N'6 GB', N'128 GB', N'1 Nano SIM & 1 eSIMHỗ trợ 5G', 1, N'4352 mAh20 W')
INSERT [dbo].[Configurations] ([id], [phone_id], [manHinh], [heDieuhanh], [cameraSau], [cameraTruoc], [chip], [ram], [boNhoTrong], [sim], [hoTro5g], [pin_Sac]) VALUES (3, 3, N'Dynamic AMOLED 2XChính 6.7" & Phụ 1.9"Full HD+', N'Android 11', N'
2 camera 12 MP', N'10 MP', N'Snapdragon 888', N'8 GB', N'128 GB', N'1 Nano SIM & 1 eSIM', 1, N'3300 mAh15 W')
INSERT [dbo].[Configurations] ([id], [phone_id], [manHinh], [heDieuhanh], [cameraSau], [cameraTruoc], [chip], [ram], [boNhoTrong], [sim], [hoTro5g], [pin_Sac]) VALUES (7, 7, N'OLED6.1"Super Retina XDR', N'iOS 15', N'12 MP', N'2 camera 12 MP', N'Apple A15 Bionic', N'2 camera 12 MP', N'4 GB', N'1 Nano SIM & 1 eSIM', 1, N'3240 mAh20 W')
GO

SET IDENTITY_INSERT [dbo].[News] ON 

INSERT [dbo].[News] ([Id], [Title], [Content], [Image], [Author], [Created]) VALUES (5, N'5 mẫu smartwatch đáng mua ở giá dưới 2 triệu, một số mẫu có thể nghe gọi trực tiếp', N'Đồng hồ thông minh hiện nay có vô vàn mẫu mã với mức giá đa dạng. Trong đó, phân khúc giá dưới 2 triệu có thể là một sự lựa chọn rất tối ưu dành cho bạn. Tuy nhiên vẫn còn khá nhiều bạn băn khoăn việc có nên mua đồng hồ thông minh giá rẻ dưới 2 triệu hay không? Cùng 24h Công nghệ tìm hiểu những ưu điểm của đồng hồ thông minh giá rẻ dưới 2 triệu và gợi ý một số mẫu phù hợp với các bạn. Mở đầu bài viết mình sẽ gửi đến các bạn đọc những tiêu chí, đặc điểm của dòng đồng hồ ở phân khúc giá dưới 2 triệu. Phụ kiện thời trang sang trọng Những chiếc smartwatch dù giá dưới 2 triệu nhưng vẫn sở hữu một vẻ ngoài rất bắt mắt. Từ thiết kế cổ điển đến năng động, tinh tế đều có nhiều sự lựa chọn dành cho bạn.', N'dong-ho-thong-minh-duoi-2-trieu_1280x720-600x400.jpg', N'annv', CAST(N'2022-06-24' AS Date))
INSERT [dbo].[News] ([Id], [Title], [Content], [Image], [Author], [Created]) VALUES (8, N'Sở hữu Samsung Galaxy S22 series, nhận liền ưu đãi phòng chờ hạng thương gia tại sân bay siêu xịn sò', N'Sở hữu Galaxy S22 Series nhận  ưu đãi phòng chờ hạng thương gia cực kỳ xịn sò bạn đã biết chưa? Bạn sẽ được trải nghiệm đồ ăn, thức uống sân bay hoàn toàn miễn phí đi kèm rất nhiều tiện ích. Nếu thấy hấp dẫn hãy xem ngay thể lệ bên dưới đây bạn nhé! Đối tượng tham gia chương trình Chương trình áp dụng cho máy bán ra và kích hoạt từ 01/03/2022 - 31/5/2022 Samsung Galaxy S22 5G 128GB Samsung Galaxy S22 5G 128GB 21.990.000₫ Trả góp 0% Giảm thêm 2.000.000₫ XEM CHI TIẾT Samsung Galaxy S22+ 5G 128GB Samsung Galaxy S22+ 5G 128GB 25.990.000₫ Trả góp 0% Giảm thêm 2.000.000₫ XEM CHI TIẾT Samsung Galaxy S22 Ultra 5G 128GB Samsung Galaxy S22 Ultra 5G 128GB 30.990.000₫ Trả góp 0% Giảm thêm 2.000.000₫ XEM CHI TIẾT Dịch vụ phòng chờ hạng thương gia tại sân bay Nội dung ưu đãi: Tận hưởng miễn phí phòng chờ Hạng thương gia tại sân bay Tân Sơn Nhất, Nội Bài, Cam Ranh, Đà Nẵng không cần đặt chỗ trước. (Tối đa 04mã ưu đãi trên 01 thiết bị). Điều kiện áp dụng Mã ưu đãi dành riêng cho khách hàng sở hữu điện thoại Samsung Galaxy S22 Series được sản xuất và phân phối chính thức tại thị trường Việt Nam. Chỉ áp dụng cho những máy đã được kích hoạt bảo hành MCS. Thời hạn bảo hành được xác nhận dựa vào thông tin bảo hành điện tử thông qua ứng dụng CS One tải từ CH Play hoặc App Store; hoặc dựa vào các công cụ kiểm tra thời hạn bảo hành của Samsung; hoặc theo chứng từ mua hàng đối với các sản phẩm bảo hành toàn cầu. KH có thể truy cập: https://www.samsung.com/vn/support/mobile-devices/warranty-check/ kiểm tra thời hạn bảo hành bảo hành từ ngày 04/03/2022 đến hết ngày 20/03/2022. Mỗi điện thoại Samsung Galaxy S Mới chỉ được lấy và sử dụng tối đa: 04 Mã ưu đãitận hưởng miễn phí phòng chờ Hạng thương gia tại sân bay Tân Sơn Nhất, Nội Bài, Cam Ranh, Đà Nẵng không cần đặt chỗtrước, trị giá lên đến 1.700.000 VNĐ. Mã ưu đãi có giá trị sử dụng đến hết ngày 31/12/2022.', N'galaxy-s22-plus-10mb-2_1280x720-800-resize.jpg', N'hungnl', CAST(N'2022-06-24' AS Date))
INSERT [dbo].[News] ([Id], [Title], [Content], [Image], [Author], [Created]) VALUES (9, N'Dưới 3 triệu săn ngay mẫu smartphone Galaxy cũ này, toàn máy ngon pin 5.000mAh', N'Chưa đến 3 triệu đồng là bạn đã có thể sở hữu ngay cho mình một chiếc điện thoại Samsung Galaxy cũ, dung lượng pin lên đến 5.000 mAh, thỏa sức nghe nhạc, xem phim và chơi các tựa game phổ biến hiện nay, còn được giảm giá đến 20% chỉ có tại Thế Giới Di Động. Lưu ý Giá bán có thể thay đổi tuỳ theo tình trạng còn máy của siêu thị. Ngoài ra, nếu khu vực của bạn hết hàng, bạn có thể chuyển hàng từ các khu vực còn hàng khác bằng cách chuyển khu vực sang Tỉnh/Thành phố gần bạn hoặc Toàn quốc > Chọn máy ưng ý > Sau đó sử dụng dịch vụ Chuyển về siêu thị gần nhất (có tính phí chuyển hàng). Điện thoại Samsung Galaxy A03s: Giảm 15%, giá còn từ 2.55 triệu đồng, rẻ hơn máy mới 30% Dưới 3 triệu săn ngay mẫu smartphone Galaxy cũ này, pin 5000 mAh GALAXY A03S CŨ GIẢM GIÁ Samsung Galaxy A03s có màn hình lớn 6.5 inch, độ phân giải HD+ cùng tấm nền PLS LCD cho bạn chất lượng hình ảnh sắc nét, không gian hiển thị máy lớn, mang đến cho bạn trải nghiệm xem phim hay chơi game hết sức tuyệt vời. Máy được trang bị cụm 3 camera phía sau với cảm biến chính 13 MP, ống kính macro 2 MP, camera độ sâu 2 MP cho phép bạn lưu giữ những khoảnh khắc đẹp trong cuộc sống một cách dễ dàng và chân thực nhất. Thiết bị được cung cấp sức mạnh bởi con chip MediaTek MT6765 8 nhân, RAM 4 GB mang đến hiệu năng ổn định, khả năng đa nhiệm và xử lý nhiều tác vụ một cách mượt mà. Samsung Galaxy A03s có viên pin với dung lượng lên đến 5.000 mAh, sạc 7.75 W cho phép bạn sử dụng thiết bị cả ngày dài mà không lo hết pin.', N'galaxya12_1280x720-800-resize.jpg', N'moi', CAST(N'2022-06-24' AS Date))
INSERT [dbo].[News] ([Id], [Title], [Content], [Image], [Author], [Created]) VALUES (10, N'Nghe Đồn Là: OPPO Reno9 Pro+ sẽ có giá 13 triệu, sạc nhanh 80 W, Dimensity 9000 (liên tục cập nhật)', N'Thị trường smartphone tầm trung cận cao cấp ngày càng ''náo nhiệt'' với các sản phẩm có vẻ ngoài bắt mắt cùng cấu hình nổi bật đang dần được lộ diện, điển hình như phiên bản cao cấp nhất của OPPO Reno8 series là OPPO Reno8 Pro+ vừa được trình làng vào hôm 23/5. Tuy chỉ mới ra mắt nhưng những thông tin rò rỉ về chiếc điện thoại kế nhiệm là OPPO Reno9 Pro+ đã bắt đầu xuất hiện. Vậy OPPO Reno9 Pro+ có gì mới? OPPO Reno9 Pro+ cấu hình ra sao? Camera OPPO Reno9 Pro+ chụp đẹp không? OPPO Reno9 Pro+ giá bao nhiêu? Khi nào OPPO Reno9 Pro+ ra mắt? Cùng mình tìm hiểu trong bài viết bên dưới nhé! OPPO Reno9 Pro+ có gì mới: Dimensity 9000, sạc 80 W, giá 13 triệu Cùng mình xem OPPO Reno9 Pro+ có gì mới nhé!. Nguồn: ithome. Lưu ý: Nội dung bài viết sẽ được cập nhật liên tục cho đến khi OPPO Reno9
Pro+ ra mắt chính thức. Các bạn nhớ theo dõi bài viết mỗi tuần nhé! Bởi vì những hình ảnh về thiết kế cụ thể của OPPO Reno9 Pro+ vẫn chưa xuất hiện nhiều nên mình sẽ dùng hình ảnh của OPPO Reno8 Pro+ để minh họa cho bài viết. Hình ảnh được tham khảo từ kênh YouTube Sami Lou Tech, Unbox TV, CREATOR STUDIO. Xem thêm: Trên tay OPPO Reno8 Pro+: Thiết kế cực dị, Dimensity 8100 MAX mạnh mẽ OPPO Reno9 Pro có gì mới: Thiết kế độc đáo cùng cấu hình khủng quá bá! OPPO Reno9 Pro+ có gì mới? Sự kết hợp đầy độc đáo trong thiết kế của OPPO Có thể thấy, dạo gần đây OPPO đang dần đổi mới thiết kế cho các dòng sản phẩm của họ, điển hình như OPPO Reno8 series vừa mới được ra mắt. Các thiết bị này đều mang một vẻ ngoài có sự đổi mới khá nhiều so với các phiên bản tiền nhiệm như Reno 6 và Reno7 trước đó. Sự kết hợp giữa vẻ ngoài sang trọng của phân khúc cao cấp là OPPO Find X series và tổng thể vuông vức được vát phẳng của dòng OPPO Reno đã mang lại cho dòng OPPO Reno8 một thiết kế vô cùng nổi bật so với các sản phẩm khác trong cùng phân khúc.', N'depkhongtuong_1280x720-800-resize.jpg', N'tienbm', CAST(N'2022-06-24' AS Date))
INSERT [dbo].[News] ([Id], [Title], [Content], [Image], [Author], [Created]) VALUES (11, N'Trầm trồ với vẻ đẹp của TOP 10 điện thoại đắt nhất năm 2022, đúng là tiền nào của đó!', N'Điện thoại đã và đang trở thành một vật dụng không thể thiếu của mỗi chúng ta. Người dùng có thể tiếp cận với chúng ở tất cả các mức giá khác nhau, phụ thuộc vào điều kiện tài chính của mỗi người. Tuy nhiên bạn có thể tưởng tượng những chiếc điện thoại giá trị lên tới hàng nghìn tỉ đồng không? Hãy cùng mình thâm nhập thế giới của giới siêu giàu để mở mang tầm mắt với TOP 10 điện thoại đắt nhất thế giới năm 2022 ngay sau đây! *Danh sách sau đây được mình được sắp xếp theo mức giá giảm dần cho bạn dễ theo dõi, giá bán được mình tham khảo từ clacified. 1. Falcon Supernova iPhone 6 Pink Diamond - Điện thoại đắt nhất thế giới​ với giá 48,5 triệu USD (~1.103 tỉ đồng) TOP 10 điện thoại đắt nhất thế giới năm 2021 Hình ảnh của chiếc điện thoại đắt nhất thế giới hiện nay. Mở đầu danh sách hôm nay là chiếc điện thoại đắt nhất thế giới hiện nay với giá lên tới 48,5 triệu USD. Giá trị của máy còn cao hơn GDP của 100 nước trên thế giới. Chiếc iPhone 6 này được làm bằng vàng 24 carat và được nạm một viên Kim cương hồng nguyên khối rất lớn ở mặt sau. Đó là vật sở hữu quý giá của Nita Ambani, vợ của doanh nhân Ấn Độ Mukesh Ambani, người giàu nhất châu Á.', N'professionalfitnesstrainingyoutubethumbnail_1280x720-800-resize.jpg', N'binhht', CAST(N'2022-06-24' AS Date))
INSERT [dbo].[News] ([Id], [Title], [Content], [Image], [Author], [Created]) VALUES (12, N'Khám phá TOP 6 điện thoại có thiết kế thời trang, hợp xu hướng 2022 đáng mua nhất', N'Bên cạnh những tính năng tuyệt vời, smartphone dường như đang trở thành một món phụ kiện thời trang của đa số người dùng. Nắm bắt được điều này, nhiều nhà sản xuất đã không ngần ngại thiết kế và tạo nên những siêu phẩm cực đẹp, mang đậm phong cách thời trang. Đến với bài viết lần này, 24h Công nghệ sẽ giới thiệu đến bạn một số mẫu điện thoại thiết kế đẹp tại Thế Giới Di Động. Hy vọng bài viết sẽ giúp bạn chọn ra được một mẫu điện thoại hợp thời trang và xu hướng, để có thể tỏa sáng trong những dịp hẹn hò gặp mặt, đi chơi cùng nhau. *Danh sách dưới đây được sắp xếp theo mức giá tăng dần (cập nhật vào ngày 26/05/2022) để cho các bạn tiện theo dõi nhé. 1. Điện thoại thiết kế đẹp: Vivo V23e Đánh giá Vivo V23e được thực hiện bởi Thế Giới Di Động. Có lẽ, Vivo V23e sẽ là ưu tiên hàng đầu dành cho những tín đồ yêu thích những mẫu điện thoại thời trang, hợp xu hướng. Nhờ có thiết kế tinh tế, sang trọng, nhưng mang lại sự năng động, trẻ trung với độ mỏng chỉ 7.41 mm, gây ấn tượng mạnh tại thời điểm ra mắt. Vivo V23e Nếu đã được trải nghiệm sản phẩm, bạn sẽ hoàn toàn đồng ý với mình. Bởi sản phẩm mang đến chất lượng gia công hoàn hảo, từng đường nét bo cong tinh tế, mượt mà tạo cảm sang trọng, quý phái đến cho người sử dụng sản phẩm. Ngoài ra, Vivo V23e gây ấn tượng ở phân khúc giá tầm trung khi sở hữu camera trước 50 MP, giúp bạn tự tin nắm bắt những góc chụp
siêu đẹp với độ nét cực cao. Vivo V23e vừa ra mắt, ăn điểm người dùng ngay với những tính năng này! Vivo V23e Có thể
thấy, Vivo V23e chính là ‘chân ái’ dành cho tín đồ đam mê cái đẹp trên smartphone. Sở hữu một thiết kế mỏng nhẹ thời
trang, camera trước với độ phân giải cực cao, hoàn hảo đểcùng bạn tạo nên những khung ảnh đẹp. Trên tay Vivo V23e:
Thiết kế đẹp mắt, cấu hình tốt, camera selfie 50MP.', N'59556_1280x743-800-resize.jpg', N'ad', CAST(N'2022-06-24' AS Date))
SET IDENTITY_INSERT [dbo].[News] OFF
GO

SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([Id], [PayId], [ProductId], [Price], [Amount]) VALUES (1, 1, 2, 41990000, 2)
INSERT [dbo].[OrderDetails] ([Id], [PayId], [ProductId], [Price], [Amount]) VALUES (2, 1, 3, 21990000, 1)
INSERT [dbo].[OrderDetails] ([Id], [PayId], [ProductId], [Price], [Amount]) VALUES (3, 1, 4, 9490000, 1)
INSERT [dbo].[OrderDetails] ([Id], [PayId], [ProductId], [Price], [Amount]) VALUES (4, 2, 2, 41990000, 3)
INSERT [dbo].[OrderDetails] ([Id], [PayId], [ProductId], [Price], [Amount]) VALUES (5, 2, 3, 21990000, 2)
INSERT [dbo].[OrderDetails] ([Id], [PayId], [ProductId], [Price], [Amount]) VALUES (6, 2, 1, 18990000, 1)
INSERT [dbo].[OrderDetails] ([Id], [PayId], [ProductId], [Price], [Amount]) VALUES (7, 2, 14, 82990000, 1)
INSERT [dbo].[OrderDetails] ([Id], [PayId], [ProductId], [Price], [Amount]) VALUES (8, 3, 28, 420000, 4)
INSERT [dbo].[OrderDetails] ([Id], [PayId], [ProductId], [Price], [Amount]) VALUES (9, 3, 29, 7692000, 1)
INSERT [dbo].[OrderDetails] ([Id], [PayId], [ProductId], [Price], [Amount]) VALUES (10, 4, 8, 10990000, 1)
INSERT [dbo].[OrderDetails] ([Id], [PayId], [ProductId], [Price], [Amount]) VALUES (11, 4, 7, 32490000, 1)
INSERT [dbo].[OrderDetails] ([Id], [PayId], [ProductId], [Price], [Amount]) VALUES (12, 5, 7, 32490000, 1)
INSERT [dbo].[OrderDetails] ([Id], [PayId], [ProductId], [Price], [Amount]) VALUES (13, 5, 4, 9490000, 6)
INSERT [dbo].[OrderDetails] ([Id], [PayId], [ProductId], [Price], [Amount]) VALUES (14, 6, 2, 41990000, 1)
INSERT [dbo].[OrderDetails] ([Id], [PayId], [ProductId], [Price], [Amount]) VALUES (15, 6, 20, 25990000, 1)
INSERT [dbo].[OrderDetails] ([Id], [PayId], [ProductId], [Price], [Amount]) VALUES (16, 6, 8, 5990000, 1)
INSERT [dbo].[OrderDetails] ([Id], [PayId], [ProductId], [Price], [Amount]) VALUES (17, 7, 14, 82990000, 3)
INSERT [dbo].[OrderDetails] ([Id], [PayId], [ProductId], [Price], [Amount]) VALUES (18, 7, 7, 32490000, 1)
INSERT [dbo].[OrderDetails] ([Id], [PayId], [ProductId], [Price], [Amount]) VALUES (19, 7, 4, 9490000, 4)
INSERT [dbo].[OrderDetails] ([Id], [PayId], [ProductId], [Price], [Amount]) VALUES (20, 8, 2, 41990000, 3)
INSERT [dbo].[OrderDetails] ([Id], [PayId], [ProductId], [Price], [Amount]) VALUES (21, 8, 30, 699000, 1)
INSERT [dbo].[OrderDetails] ([Id], [PayId], [ProductId], [Price], [Amount]) VALUES (22, 8, 32, 990000, 1)
INSERT [dbo].[OrderDetails] ([Id], [PayId], [ProductId], [Price], [Amount]) VALUES (23, 9, 4, 9490000, 1)
INSERT [dbo].[OrderDetails] ([Id], [PayId], [ProductId], [Price], [Amount]) VALUES (24, 9, 5, 9490000, 1)
INSERT [dbo].[OrderDetails] ([Id], [PayId], [ProductId], [Price], [Amount]) VALUES (25, 10, 3, 21990000, 1)
INSERT [dbo].[OrderDetails] ([Id], [PayId], [ProductId], [Price], [Amount]) VALUES (26, 10, 2, 41990000, 1)
INSERT [dbo].[OrderDetails] ([Id], [PayId], [ProductId], [Price], [Amount]) VALUES (27, 11, 65, 6990000, 1)
INSERT [dbo].[OrderDetails] ([Id], [PayId], [ProductId], [Price], [Amount]) VALUES (28, 11, 19, 4490000, 1)
INSERT [dbo].[OrderDetails] ([Id], [PayId], [ProductId], [Price], [Amount]) VALUES (29, 11, 16, 29990000, 5)
INSERT [dbo].[OrderDetails] ([Id], [PayId], [ProductId], [Price], [Amount]) VALUES (30, 12, 4, 9490000, 1)
INSERT [dbo].[OrderDetails] ([Id], [PayId], [ProductId], [Price], [Amount]) VALUES (31, 12, 5, 9490000, 4)
INSERT [dbo].[OrderDetails] ([Id], [PayId], [ProductId], [Price], [Amount]) VALUES (32, 14, 2, 41990000, 1)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO

SET IDENTITY_INSERT [dbo].[Pays] ON

INSERT [dbo].[Pays] ([Id], [Username], [Phone], [Address], [message], [Total], [Payment], [Status], [Created]) VALUES (1, N'baby', N'0123456789', N'Quận 2, TP. HCM', N'Giao nhanh nha', 103914000, N'0', N'Chưa thanh toán', CAST(N'2022-06-21' AS Date))
INSERT [dbo].[Pays] ([Id], [Username], [Phone], [Address], [message], [Total], [Payment], [Status], [Created]) VALUES (2, N'add', N'0945135919', N'Quận 12, TP. HCM', N'Giao nhanh đi!', 238337000, N'1', N'Chưa thanh toán', CAST(N'2022-06-22' AS Date))
INSERT [dbo].[Pays] ([Id], [Username], [Phone], [Address], [message], [Total], [Payment], [Status], [Created]) VALUES (3, N'add', N'0945135919', N'Quận 3, TP. HCM', N'Giao đi', 9204000, N'0', N'Chưa thanh toán', CAST(N'2022-06-21' AS Date))
INSERT [dbo].[Pays] ([Id], [Username], [Phone], [Address], [message], [Total], [Payment], [Status], [Created]) VALUES (4, N'fpt2', N'0945135919', N'Quận 3, TP. HCM', N'Giao nhanh đi!', 39132000, N'0', N'Chưa thanh toán', CAST(N'2022-06-22' AS Date))
INSERT [dbo].[Pays] ([Id], [Username], [Phone], [Address], [message], [Total], [Payment], [Status], [Created]) VALUES (5, N'bmt1', N'0123654789', N'Quận 2, TP. HCM', N'Giao nhanh nha', 80487000, N'0', N'Chưa thanh toán', CAST(N'2022-06-23' AS Date))
INSERT [dbo].[Pays] ([Id], [Username], [Phone], [Address], [message], [Total], [Payment], [Status], [Created]) VALUES (6, N'annv', N'0945135919', N'Quận 10, TP. HCM', N'Giao nhanh nha', 69172000, N'0', N'Chưa thanh toán', CAST(N'2022-06-23' AS Date))
INSERT [dbo].[Pays] ([Id], [Username], [Phone], [Address], [message], [Total], [Payment], [Status], [Created]) VALUES (7, N'baby', N'0123456789', N'Quận 1, TP. HCM', N'Giao nhanh giúp em', 262581000, N'0', N'Chưa thanh toán', CAST(N'2022-06-24' AS Date))
INSERT [dbo].[Pays] ([Id], [Username], [Phone], [Address], [message], [Total], [Payment], [Status], [Created]) VALUES (8, N'baby', N'0456789566', N'Quận 7, TP. HCM', N'Giao trước 3h chiều nha', 114963000, N'1', N'Chưa thanh toán', CAST(N'2022-06-23' AS Date))
INSERT [dbo].[Pays] ([Id], [Username], [Phone], [Address], [message], [Total], [Payment], [Status], [Created]) VALUES (9, N'baby', N'0945135919', N'Quận 5, TP. HCM', N'Giao nhanh nha', 17082000, N'0', N'Chưa thanh toán', CAST(N'2022-06-23' AS Date))
INSERT [dbo].[Pays] ([Id], [Username], [Phone], [Address], [message], [Total], [Payment], [Status], [Created]) VALUES (10, N'add', N'0945135919', N'Quận 12, TP. HCM', N'Giao nhanh nha', 57582000, N'0', N'Chưa thanh toán', CAST(N'2022-06-25' AS Date))
INSERT [dbo].[Pays] ([Id], [Username], [Phone], [Address], [message], [Total], [Payment], [Status], [Created]) VALUES (11, N'add', N'0945135919', N'Quận 12, TP. HCM', N'Giao nhanh nha', 160981000, N'0', N'Chưa thanh toán', CAST(N'2022-06-23' AS Date))
INSERT [dbo].[Pays] ([Id], [Username], [Phone], [Address], [message], [Total], [Payment], [Status], [Created]) VALUES (12, N'add', N'0987654321', N'Quận 4, TP. HCM', N'a b c', 42705000, N'0', N'Chưa thanh toán', CAST(N'2022-06-24' AS Date))
INSERT [dbo].[Pays] ([Id], [Username], [Phone], [Address], [message], [Total], [Payment], [Status], [Created]) VALUES (14, N'abc', N'0123456789', N'Quận 4, TP. HCM', N'abc', 37791000, N'1', N'Chưa thanh toán', CAST(N'2022-06-25' AS Date))
INSERT [dbo].[Pays] ([Id], [Username], [Phone], [Address], [message], [Total], [Payment], [Status], [Created]) VALUES (15, N'bella', N'0123456789', N'Quận 6, TP. HCM', N'abc', 37791000, N'1', N'Chưa thanh toán', CAST(N'2022-06-25' AS Date))
SET IDENTITY_INSERT [dbo].[Pays] OFF
GO

SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Price], [Avaliable], [Description], [Content], [Discount], [Image], [CreateDate], [Other]) VALUES (1, N'LTOP', N'Asus VivoBook Pro 14 OLED(KM006W)', 18990000, 0, N'Sản phẩm phù hợp cho học sinh viên, bảo hành 2 năm', N'Sản phẩm phù hợp cho học sinh viên, bảo hành 2 năm', 0, N'asus-vivobook-pro-oled-m3401qa-r5-km006w-600x600.jpg', CAST(N'2022-06-11' AS Date), N'Kèm quà tặng')
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Price], [Avaliable], [Description], [Content], [Discount], [Image], [CreateDate], [Other]) VALUES (2, N'MOB ', N'iPhone 13 Pro Max 512GB', 41990000, 1, N'Thiết kế sang trọng', N'Đây là một sản phẩm của nhà apple', 10, N'iphone-13-pro-max-graphite-600x600.jpg', CAST(N'2022-05-27' AS Date), N'Giảm sốc')
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Price], [Avaliable], [Description], [Content], [Discount], [Image], [CreateDate], [Other]) VALUES (3, N'MOB ', N'Samsung Galaxy Z Flip3 5G', 21990000, 1, N'Thời trang thời thượng', N'Đây là sản phẩm siêu công nghệ', 10, N'samsung-galaxy-z-flip-3-black-1-600x600.jpg', CAST(N'2022-06-08' AS Date), N'Kèm quà tặng')
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Price], [Avaliable], [Description], [Content], [Discount], [Image], [CreateDate], [Other]) VALUES (4, N'MOB ', N'OPPO Reno6 Z 5G', 9490000, 1, N'Thiết kế sang trọng', N'Sản phẩm phù hợp cho học sinh viên, bảo hành 2 năm', 10, N'oppo-reno6-z-5g-aurora-1-600x600.jpg', CAST(N'2022-06-08' AS Date), N'Sản Phẩm Mới')
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Price], [Avaliable], [Description], [Content], [Discount], [Image], [CreateDate], [Other]) VALUES (5, N'MOB ', N'Xiaomi 11 Lite 5G NE', 9490000, 1, N'Thiết kế sang trọng', N'Sản phẩm phù hợp cho học sinh viên, bảo hành 2 năm', 10, N'xiaomi-11-lite-5g-ne-pink-600x600.jpg', CAST(N'2022-06-08' AS Date), N'Giảm sốc')
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Price], [Avaliable], [Description], [Content], [Discount], [Image], [CreateDate], [Other]) VALUES (6, N'MOB ', N'Samsung Galaxy A22', 5500000, 1, N'Thiết kế sang trọng', N'Sản phẩm phù hợp cho học sinh viên, bảo hành 2 năm', 10, N'samsung-galaxy-a22-4g-mint-1-600x600.jpg', CAST(N'2022-06-08' AS Date), N'Sảm phẩm mới')
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Price], [Avaliable], [Description], [Content], [Discount], [Image], [CreateDate], [Other]) VALUES (7, N'MOB ', N'iPhone 13 512GB', 32490000, 1, N'Thiết kế sang trọng', N'Đây là sản phẩm siêu công nghệ', 10, N'iphone-13-pink-1-600x600.jpg', CAST(N'2022-06-08' AS Date), N'Giảm sốc')
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Price], [Avaliable], [Description], [Content], [Discount], [Image], [CreateDate], [Other]) VALUES (8, N'MOB ', N'Samsung Galaxy A52s 5G 128GB  Ram 4GB', 5990000, 1, N'Thiết kế sang trọng', N'Đây là sản phẩm siêu công nghệ', 10, N'samsung-galaxy-a52s-5g-mint-600x600.jpg', CAST(N'2022-06-08' AS Date), N'Ưu đãi')
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Price], [Avaliable], [Description], [Content], [Discount], [Image], [CreateDate], [Other]) VALUES (9, N'MOB ', N'Oppo A55', 4990000, 1, N'Thiết kế sang trọng', N'Đây là sản phẩm siêu công nghệ', 0, N'oppo-a55-4g-thumb-new-600x600.jpg', CAST(N'2022-06-08' AS Date), N'Kèm quà tăng')
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Price], [Avaliable], [Description], [Content], [Discount], [Image], [CreateDate], [Other]) VALUES (10, N'LTOP', N'MacBook Air M1 2020 7-core GPU', 33990000, 1, N'Thiết kế sang trọng', N'Đây là sản phẩm siêu công nghệ', 10, N'macbook-air-m1-2020-gray-600x600.jpg', CAST(N'2022-06-08' AS Date), N'Giảm sốc')
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Price], [Avaliable], [Description], [Content], [Discount], [Image], [CreateDate], [Other]) VALUES (11, N'LTOP', N'MacBook Pro M1 2020/16GB/256GB', 39990000, 1, N'Thiết kế sang trọng', N'Đây là sản phẩm siêu công nghệ', 30, N'macbook-pro-m1-2020-gray-600x600.jpg', CAST(N'2022-06-08' AS Date), N'Giảm kịch sàn')
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Price], [Avaliable], [Description], [Content], [Discount], [Image], [CreateDate], [Other]) VALUES (12, N'LTOP', N'Asus TUF Gaming FX516PM i7 11370H (HN002T)', 32990000, 1, N'Thiết kế sang trọng', N'Đây là sản phẩm siêu công nghệ', 20, N'asus-tuf-gaming-fx516pm-i7-hn002t-600x600.jpg', CAST(N'2022-06-08' AS Date), N'Sản phẩm mới')
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Price], [Avaliable], [Description], [Content], [Discount], [Image], [CreateDate], [Other]) VALUES (13, N'LTOP', N'Acer Nitro 5 Gaming AN515 57 i5/8GB/512GB/144Hz/Win11', 26490000, 1, N'Thiết kế sang trọng', N'Đây là sản phẩm siêu công nghệ', 20, N'acer-nitro-5-gaming-an515-57-54mv-i5-11400h-8gb-600x600.jpg', CAST(N'2022-06-08' AS Date), N'Giảm kịch sàn')
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Price], [Avaliable], [Description], [Content], [Discount], [Image], [CreateDate], [Other]) VALUES (14, N'LTOP', N'Dell XPS 17 9710 i7 11800H (XPS7I7001W1)', 82990000, 1, N'Thiết kế sang trọng', N'Đây là sản phẩm siêu công nghệ', 20, N'dell-xps-17-9710-i7-xps7i7001w1-1-600x600.jpg', CAST(N'2022-06-08' AS Date), N'Giảm kịch sàn')
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Price], [Avaliable], [Description], [Content], [Discount], [Image], [CreateDate], [Other]) VALUES (15, N'LTOP', N'HP ZBook Firefly 14 G8 i5 1135G7 (275V5AV)', 39890000, 1, N'Thiết kế sang trọng', N'Đây là sản phẩm siêu công nghệ', 10, N'hp-zbook-firefly-14-g8-i5-275v5av-141221-042207-600x600.jpg', CAST(N'2022-06-08' AS Date), N'Sản phẩm mới')
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Price], [Avaliable], [Description], [Content], [Discount], [Image], [CreateDate], [Other]) VALUES (16, N'LTOP', N'Dell Gaming G15 5515 R7 8GB/512GB/RTX3050/120Hz', 29990000, 1, N'Thiết kế sang trọng', N'Đây là sản phẩm siêu công nghệ', 0, N'dell-gaming-g15-5515-r7-5800h-8gb-512gb-4gb-rtx3050-120hz-600x600.jpg', CAST(N'2022-06-08' AS Date), N'Kèm quà tặng')
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Price], [Avaliable], [Description], [Content], [Discount], [Image], [CreateDate], [Other]) VALUES (17, N'LTOP', N'Asus VivoBook Flip 14 TP470EA i5 1135G7 (EC347W)', 20090000, 1, N'Thiết kế sang trọng', N'Đây là sản phẩm siêu công nghệ', 0, N'asus-vivobook-tp470ea-i5-1135g7-8gb-512gb-touch-pen-600x600.jpg', CAST(N'2022-06-08' AS Date), N'Kèm quà tặng')
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Price], [Avaliable], [Description], [Content], [Discount], [Image], [CreateDate], [Other]) VALUES (18, N'TABL', N'Samsung Galaxy Tab S8', 20990000, 1, N'Thiết kế sang trọng', N'Đây là sản phẩm siêu công nghệ', 10, N'Samsung-Galaxy-tab-s8-black-thumb-600x600.jpg', CAST(N'2022-06-08' AS Date), N'Giảm sốc')
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Price], [Avaliable], [Description], [Content], [Discount], [Image], [CreateDate], [Other]) VALUES (19, N'TABL', N'Samsung Galaxy Tab A7 Lite', 4490000, 1, N'Thiết kế sang trọng', N'Đây là sản phẩm siêu công nghệ', 10, N'samsung-galaxy-tab-a7-lite-gray-600x600.jpg', CAST(N'2022-06-08' AS Date), N'Sản phẩm mới')
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Price], [Avaliable], [Description], [Content], [Discount], [Image], [CreateDate], [Other]) VALUES (20, N'TABL', N'Samsung Galaxy Tab S8+', 25990000, 1, N'Thiết kế sang trọng', N'Đây là sản phẩm siêu công nghệ', 0, N'Tab-S8+-Black-1-600x600.jpeg', CAST(N'2022-06-08' AS Date), N'Giảm kịch sàn')
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Price], [Avaliable], [Description], [Content], [Discount], [Image], [CreateDate], [Other]) VALUES (21, N'TABL', N'iPad Air 5 M1 Wifi Cellular 64GB
', 20990000, 1, N'Thiết kế sang trọng', N'Đây là sản phẩm siêu công nghệ', 10, N'ipad-air-5-wifi-cellular-tim-thumb-600x600.jpg', CAST(N'2022-06-08' AS Date), N'Sản phẩm mới')
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Price], [Avaliable], [Description], [Content], [Discount], [Image], [CreateDate], [Other]) VALUES (22, N'TABL', N'iPad Pro M1 12.9 inch 5G', 34990000, 1, N'Thiết kế sang trọng', N'Đây là sản phẩm siêu công nghệ', 10, N'ipad-pro-2021-129-inch-gray-600x600.jpg', CAST(N'2022-06-08' AS Date), N'Ưu đãi lớn')
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Price], [Avaliable], [Description], [Content], [Discount], [Image], [CreateDate], [Other]) VALUES (23, N'TABL', N'iPad mini 6 WiFi', 14990000, 1, N'Thiết kế sang trọng', N'Đây là sản phẩm siêu công nghệ', 10, N'ipad-mini-6-wifi-pink-1-600x600.jpg', CAST(N'2022-06-08' AS Date), N'Ưu đãi')
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Price], [Avaliable], [Description], [Content], [Discount], [Image], [CreateDate], [Other]) VALUES (24, N'TABL', N'Xiaomi Pad 5 256GB', 10490000, 1, N'Thiết kế sang trọng', N'Đây là sản phẩm siêu công nghệ', 0, N'xiaomi-pad-5-grey-600x600.jpg', CAST(N'2022-06-08' AS Date), N'Kèm quà tặng')
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Price], [Avaliable], [Description], [Content], [Discount], [Image], [CreateDate], [Other]) VALUES (25, N'TABL', N'Alcatel 3T8', 2940000, 1, N'Thiết kế sang trọng', N'Đây là sản phẩm siêu công nghệ', NULL, N'Alcatel-3T8-1-600x600.jpg', CAST(N'2022-06-08' AS Date), N'Bán chạy')
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Price], [Avaliable], [Description], [Content], [Discount], [Image], [CreateDate], [Other]) VALUES (26, N'PKDT', N'Sạc 4 cổng Xmobile DS931-WB', 500000, 1, N'Thiết kế sang trọng', N'Đây là sản phẩm siêu công nghệ', 30, N'adapter-sac-4-cong-usb-type-c-48a-xmobile-ds931-wb-600x600.jpg', CAST(N'2022-06-08' AS Date), N'Giảm sốc')
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Price], [Avaliable], [Description], [Content], [Discount], [Image], [CreateDate], [Other]) VALUES (27, N'PKDT', N'Xmobile PowerBox P72D', 900000, 1, N'Thiết kế sang trọng', N'Đây là sản phẩm siêu công nghệ', 20, N'sac-du-phong-polymer-15000mah-type-c-xmobile-p72d-avatar-1-600x600.jpg', CAST(N'2022-06-08' AS Date), N'Giảm kịch sàn')
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Price], [Avaliable], [Description], [Content], [Discount], [Image], [CreateDate], [Other]) VALUES (28, N'PKDT', N'Chuột có dây DareU EM908', 420000, 1, N'Thiết kế sang trọng', N'Đây là sản phẩm siêu công nghệ', 10, N'chuot-co-day-dareu-em908-hong-thumb-1-600x600.jpeg', CAST(N'2022-06-08' AS Date), N'Giảm kịch sàn')
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Price], [Avaliable], [Description], [Content], [Discount], [Image], [CreateDate], [Other]) VALUES (29, N'PKDT', N'Apple Watch SE 44mm', 7692000, 1, N'Thiết kế sang trọng', N'Đây là sản phẩm siêu công nghệ', 0, N'apple-watch-se-44mm-vien-nhom-day-cao-su-hong-thumb-600x600.jpg', CAST(N'2022-06-08' AS Date), N'Bán chạy')
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Price], [Avaliable], [Description], [Content], [Discount], [Image], [CreateDate], [Other]) VALUES (30, N'PKDT', N'Bàn Phím Có Dây DareU EK87', 699000, 1, N'Thiết kế sang trọng', N'Đây là sản phẩm siêu công nghệ', 0, N'co-day-dareu-ek87-1.-600x600.jpg"', CAST(N'2022-06-08' AS Date), N'Bán chạy')
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Price], [Avaliable], [Description], [Content], [Discount], [Image], [CreateDate], [Other]) VALUES (31, N'PKDT', N'Miếng lót chuột Razer Pro Glide', 490000, 1, N'Thiết kế sang trọng', N'Đây là sản phẩm siêu công nghệ', 0, N'razer-pro-glide-ava-600x600.jpg', CAST(N'2022-06-08' AS Date), N'Hàng mới về')
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Price], [Avaliable], [Description], [Content], [Discount], [Image], [CreateDate], [Other]) VALUES (32, N'PKDT', N'Tay Cầm Chơi Game V600S', 990000, 1, N'Thiết kế sang trọng', N'Đây là sản phẩm siêu công nghệ', 10, N'khong-day-rapoo-v600s-den-1.-600x600.jpg', CAST(N'2022-06-08' AS Date), N'Giảm sốc')
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Price], [Avaliable], [Description], [Content], [Discount], [Image], [CreateDate], [Other]) VALUES (33, N'PKDT', N'Tai nghe Bluetooth Mozard K8', 450000, 1, N'Thiết kế sang trọng', N'Đây là sản phẩm siêu công nghệ', 20, N'bluetooth-mozard-k8-thumb-600x600.jpeg', CAST(N'2022-06-08' AS Date), N'Giá sốc')
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Price], [Avaliable], [Description], [Content], [Discount], [Image], [CreateDate], [Other]) VALUES (65, N'MOB ', N'Oppo Reno 4', 6990000, 1, N'Điện thoại rất chi là xịn xò thiết kế sang trọng', N'Điện thoại siêu câp vip pro', 0, N'600_baseus_smart_3in1_wireless_charger.jpg', CAST(N'2022-06-12' AS Date), N'Kèm quà tặng')
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Price], [Avaliable], [Description], [Content], [Discount], [Image], [CreateDate], [Other]) VALUES (66, N'MOB ', N'j6 +', 3990000, 1, N'Điện thoại tôi đang dùng', N'Điện thoại tôi đang dùng', 0, N'NoImage.jpg', CAST(N'2022-06-12' AS Date), N'Giảm hết xảy')
SET IDENTITY_INSERT [dbo].[Products] OFF
GO

SET IDENTITY_INSERT [dbo].[Reviews] ON 

INSERT [dbo].[Reviews] ([Id], [ProductId], [UserId], [Content], [Created]) VALUES (1, 1, N'dubq', N'Sản Phẩm Xịn Xò', CAST(N'2022-05-27' AS Date))
INSERT [dbo].[Reviews] ([Id], [ProductId], [UserId], [Content], [Created]) VALUES (9, 2, N'dubq', N'Tuyệt', CAST(N'2022-06-24' AS Date))
INSERT [dbo].[Reviews] ([Id], [ProductId], [UserId], [Content], [Created]) VALUES (10, 2, N'add', N'Sản phẩm đẹp lắm', CAST(N'2022-06-24' AS Date))
INSERT [dbo].[Reviews] ([Id], [ProductId], [UserId], [Content], [Created]) VALUES (11, 1, N'add', N'Hảo máy tính!', CAST(N'2022-06-24' AS Date))
INSERT [dbo].[Reviews] ([Id], [ProductId], [UserId], [Content], [Created]) VALUES (12, 9, N'dubq', N'Mới mua chưa sử dụng nên chưa biết như nào nhưng điện thoại đẹp thật luôn í❤', CAST(N'2022-06-25' AS Date))
SET IDENTITY_INSERT [dbo].[Reviews] OFF
GO

ALTER TABLE [dbo].[CartDetails]  WITH CHECK ADD  CONSTRAINT [FK_CartDetail_CartItem] FOREIGN KEY([CartId])
REFERENCES [dbo].[CartItems] ([Id])
GO
ALTER TABLE [dbo].[CartDetails] CHECK CONSTRAINT [FK_CartDetail_CartItem]
GO
ALTER TABLE [dbo].[CartDetails]  WITH CHECK ADD  CONSTRAINT [FK_CartDetail_Products] FOREIGN KEY([PrdId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[CartDetails] CHECK CONSTRAINT [FK_CartDetail_Products]
GO
ALTER TABLE [dbo].[CartItems]  WITH CHECK ADD  CONSTRAINT [FK_CartItem_Accounts] FOREIGN KEY([UserId])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[CartItems] CHECK CONSTRAINT [FK_CartItem_Accounts]
GO
ALTER TABLE [dbo].[Configurations]  WITH CHECK ADD  CONSTRAINT [FK_Configurations_Products1] FOREIGN KEY([phone_id])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Configurations] CHECK CONSTRAINT [FK_Configurations_Products1]
GO
ALTER TABLE [dbo].[News]  WITH CHECK ADD  CONSTRAINT [FK_news_Accounts1] FOREIGN KEY([Author])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[News] CHECK CONSTRAINT [FK_news_Accounts1]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Pays] FOREIGN KEY([PayId])
REFERENCES [dbo].[Pays] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Pays]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products]
GO
ALTER TABLE [dbo].[Pays]  WITH CHECK ADD  CONSTRAINT [FK_Pays_Accounts] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[Pays] CHECK CONSTRAINT [FK_Pays_Accounts]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK_Reviews_Accounts] FOREIGN KEY([UserId])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK_Reviews_Accounts]
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK_Reviews_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK_Reviews_Products]
GO
