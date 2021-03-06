USE [master]
GO
/****** Object:  Database [Data_Car]    Script Date: 10/08/2021 5:32:09 PM ******/
CREATE DATABASE [Data_Car]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Data_Car', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Data_Car.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Data_Car_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Data_Car_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Data_Car] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Data_Car].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Data_Car] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Data_Car] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Data_Car] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Data_Car] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Data_Car] SET ARITHABORT OFF 
GO
ALTER DATABASE [Data_Car] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Data_Car] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Data_Car] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Data_Car] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Data_Car] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Data_Car] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Data_Car] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Data_Car] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Data_Car] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Data_Car] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Data_Car] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Data_Car] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Data_Car] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Data_Car] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Data_Car] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Data_Car] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Data_Car] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Data_Car] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Data_Car] SET  MULTI_USER 
GO
ALTER DATABASE [Data_Car] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Data_Car] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Data_Car] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Data_Car] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Data_Car] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Data_Car] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Data_Car] SET QUERY_STORE = OFF
GO
USE [Data_Car]
GO
/****** Object:  Table [dbo].[Features]    Script Date: 10/08/2021 5:32:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Features](
	[Id_Car] [varchar](10) NULL,
	[Condition] [varchar](20) NULL,
	[Model] [varchar](20) NULL,
	[Price] [varchar](20) NULL,
	[Fuel] [varchar](20) NULL,
	[Body_Style] [varchar](20) NULL,
	[Doors] [varchar](20) NULL,
	[Power_Car] [varchar](20) NULL,
	[Make] [varchar](20) NULL,
	[Year_Car] [varchar](20) NULL,
	[Mileage] [varchar](20) NULL,
	[Color] [varchar](20) NULL,
	[Transmission] [varchar](20) NULL,
	[Battery] [varchar](20) NULL,
	[Drivetrain] [varchar](20) NULL,
	[Torque] [varchar](20) NULL,
	[Engine] [varchar](20) NULL,
	[Power_output] [varchar](20) NULL,
	[Electric_Motor_Voltage] [varchar](20) NULL,
	[Valves_Per_Cylinder] [varchar](20) NULL,
	[Compression_Ratio] [varchar](20) NULL,
	[Layout] [varchar](20) NULL,
	[Horsepower] [varchar](20) NULL,
	[Number_of_Cylinders] [varchar](20) NULL,
	[Displacement] [varchar](20) NULL,
	[MGP] [varchar](20) NULL,
	[Seats] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Posts]    Script Date: 10/08/2021 5:32:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posts](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[Title] [nvarchar](300) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[FeaturedImage] [nvarchar](250) NULL,
	[Excerpt] [nvarchar](500) NULL,
	[PostType] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[PublishDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Posts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 10/08/2021 5:32:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id_Car] [varchar](10) NOT NULL,
	[Name_Car] [varchar](50) NULL,
	[Range_Of_Car] [varchar](20) NULL,
	[Brand_Car] [varchar](20) NULL,
	[Pricing] [int] NULL,
	[Seller] [varchar](10) NULL,
	[Status] [varchar](10) NULL,
	[Description] [varchar](1000) NULL,
	[Image_1] [varchar](20) NULL,
	[Image_2] [varchar](20) NULL,
	[Image_3] [varchar](20) NULL,
	[Image_4] [varchar](20) NULL,
	[Image_5] [varchar](20) NULL,
	[Image_6] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Car] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_]    Script Date: 10/08/2021 5:32:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_](
	[Name_User] [varchar](20) NULL,
	[Password_User] [varchar](20) NULL,
	[Email_User] [varchar](20) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Features] ([Id_Car], [Condition], [Model], [Price], [Fuel], [Body_Style], [Doors], [Power_Car], [Make], [Year_Car], [Mileage], [Color], [Transmission], [Battery], [Drivetrain], [Torque], [Engine], [Power_output], [Electric_Motor_Voltage], [Valves_Per_Cylinder], [Compression_Ratio], [Layout], [Horsepower], [Number_of_Cylinders], [Displacement], [MGP], [Seats]) VALUES (N'A1', N'New', N'e-tron-sportback', N'69100', N'electric', N'Hybrid', N'5', N'402 hp/490 lb-ft', N'Audi', N'2021', NULL, N'Brilliant Black', N'Automatic', N'95 kWh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Features] ([Id_Car], [Condition], [Model], [Price], [Fuel], [Body_Style], [Doors], [Power_Car], [Make], [Year_Car], [Mileage], [Color], [Transmission], [Battery], [Drivetrain], [Torque], [Engine], [Power_output], [Electric_Motor_Voltage], [Valves_Per_Cylinder], [Compression_Ratio], [Layout], [Horsepower], [Number_of_Cylinders], [Displacement], [MGP], [Seats]) VALUES (N'A2', N'New', N'A6', N'54900', N'Premium', N'Sedan', N'5', N'444 hp', N'Audi', N'2021', N'0-60 mhp 4.4 seconds', NULL, N'Automatic', NULL, NULL, N'369 lb-ft', N'2.9l six-cylinder', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Features] ([Id_Car], [Condition], [Model], [Price], [Fuel], [Body_Style], [Doors], [Power_Car], [Make], [Year_Car], [Mileage], [Color], [Transmission], [Battery], [Drivetrain], [Torque], [Engine], [Power_output], [Electric_Motor_Voltage], [Valves_Per_Cylinder], [Compression_Ratio], [Layout], [Horsepower], [Number_of_Cylinders], [Displacement], [MGP], [Seats]) VALUES (N'A3', N'New', N'S6', N'75445', N'Premium', N'Sedan', N'5', N'444 hp', N'Audi', N'2021', N'0-60 mhp 4.4 seconds', NULL, N'Automatic', NULL, NULL, N'443 lb-ft', N'2.9l six-cylinder', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Features] ([Id_Car], [Condition], [Model], [Price], [Fuel], [Body_Style], [Doors], [Power_Car], [Make], [Year_Car], [Mileage], [Color], [Transmission], [Battery], [Drivetrain], [Torque], [Engine], [Power_output], [Electric_Motor_Voltage], [Valves_Per_Cylinder], [Compression_Ratio], [Layout], [Horsepower], [Number_of_Cylinders], [Displacement], [MGP], [Seats]) VALUES (N'A4', N'New', N'Q3', N'35095', N'Regular', N'SUV', N'5', N'184 hp', N'Audi', N'2021', NULL, NULL, N'Automatic', NULL, N'quattro all-wheel', N'258 lb-ft', N'2.0l four-cylinder', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Features] ([Id_Car], [Condition], [Model], [Price], [Fuel], [Body_Style], [Doors], [Power_Car], [Make], [Year_Car], [Mileage], [Color], [Transmission], [Battery], [Drivetrain], [Torque], [Engine], [Power_output], [Electric_Motor_Voltage], [Valves_Per_Cylinder], [Compression_Ratio], [Layout], [Horsepower], [Number_of_Cylinders], [Displacement], [MGP], [Seats]) VALUES (N'T1', N'New', N'Camry LE hybrid 2021', N'27270', N'electric', N'Sedan', N'5', N'118 HP (88 kW)', N'TOYOTA', N'2021', NULL, NULL, N'Automatic', NULL, NULL, N'149 lb.-ft.', N'2.5L 4-Cyl', NULL, N'650 V (max sys.)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Features] ([Id_Car], [Condition], [Model], [Price], [Fuel], [Body_Style], [Doors], [Power_Car], [Make], [Year_Car], [Mileage], [Color], [Transmission], [Battery], [Drivetrain], [Torque], [Engine], [Power_output], [Electric_Motor_Voltage], [Valves_Per_Cylinder], [Compression_Ratio], [Layout], [Horsepower], [Number_of_Cylinders], [Displacement], [MGP], [Seats]) VALUES (N'T2', N'New', N'COROLLA 2021', N'20025', N'Unleaded', N'Sedan', N'5', N'139hp', N'TOYOTA', N'2021', NULL, NULL, N'Automatic', NULL, NULL, N'126 ft lbs', N'1.8L inline 4-cyl', NULL, NULL, N'4', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Features] ([Id_Car], [Condition], [Model], [Price], [Fuel], [Body_Style], [Doors], [Power_Car], [Make], [Year_Car], [Mileage], [Color], [Transmission], [Battery], [Drivetrain], [Torque], [Engine], [Power_output], [Electric_Motor_Voltage], [Valves_Per_Cylinder], [Compression_Ratio], [Layout], [Horsepower], [Number_of_Cylinders], [Displacement], [MGP], [Seats]) VALUES (N'T3', N'New', N'C-HR 2021', N'21595', N'Unleaded', N'SUV', N'5', N'144hp', N'TOYOTA', N'2021', NULL, NULL, N'Automatic', NULL, NULL, N'139 ft lbs', N'2.0L inline 4-cyl', NULL, NULL, N'4', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Features] ([Id_Car], [Condition], [Model], [Price], [Fuel], [Body_Style], [Doors], [Power_Car], [Make], [Year_Car], [Mileage], [Color], [Transmission], [Battery], [Drivetrain], [Torque], [Engine], [Power_output], [Electric_Motor_Voltage], [Valves_Per_Cylinder], [Compression_Ratio], [Layout], [Horsepower], [Number_of_Cylinders], [Displacement], [MGP], [Seats]) VALUES (N'T4', N'New', N'VENZA 2021', N'32570', N'Unleaded', N'SUV', N'5', N'219 hp', N'TOYOTA', N'2021', NULL, NULL, N'Automatic', NULL, NULL, N'112 lb.-ft.', N'2.5L inline 4-cyl', NULL, NULL, N'4', N'14.0', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Features] ([Id_Car], [Condition], [Model], [Price], [Fuel], [Body_Style], [Doors], [Power_Car], [Make], [Year_Car], [Mileage], [Color], [Transmission], [Battery], [Drivetrain], [Torque], [Engine], [Power_output], [Electric_Motor_Voltage], [Valves_Per_Cylinder], [Compression_Ratio], [Layout], [Horsepower], [Number_of_Cylinders], [Displacement], [MGP], [Seats]) VALUES (N'K1', N'New', N'2021 Rio 5-Door', N'16990', N'Regular Unleaded', N'Hatchback', N'5', N'120 hp @ 6.300 rpm', N'KIA', N'2021', NULL, NULL, N'Automatic', NULL, NULL, N'112 lb.-ft.', N'1.6 liter  I-4', NULL, NULL, NULL, NULL, NULL, N'Front-Wheel Drive', NULL, NULL, NULL, NULL)
INSERT [dbo].[Features] ([Id_Car], [Condition], [Model], [Price], [Fuel], [Body_Style], [Doors], [Power_Car], [Make], [Year_Car], [Mileage], [Color], [Transmission], [Battery], [Drivetrain], [Torque], [Engine], [Power_output], [Electric_Motor_Voltage], [Valves_Per_Cylinder], [Compression_Ratio], [Layout], [Horsepower], [Number_of_Cylinders], [Displacement], [MGP], [Seats]) VALUES (N'K2', N'New', N'2021 K5', N'23590', N'Unleaded', N'Sedan', N'5', N'180@5500', N'KIA', N'2021', NULL, NULL, N'Automatic', NULL, NULL, N'195@1500', N'1.6 liter  I-4', NULL, NULL, NULL, NULL, NULL, NULL, N'4', NULL, NULL, NULL)
INSERT [dbo].[Features] ([Id_Car], [Condition], [Model], [Price], [Fuel], [Body_Style], [Doors], [Power_Car], [Make], [Year_Car], [Mileage], [Color], [Transmission], [Battery], [Drivetrain], [Torque], [Engine], [Power_output], [Electric_Motor_Voltage], [Valves_Per_Cylinder], [Compression_Ratio], [Layout], [Horsepower], [Number_of_Cylinders], [Displacement], [MGP], [Seats]) VALUES (N'K3', N'New', N'2021 Sorento Hybrid', N'33590', N'Unleaded', N'Hybrid', N'5', N'227@Not Listed', N'KIA', N'2021', NULL, NULL, N'Automatic', NULL, NULL, N'258@Not Listed', N'1.6 liter  I-4', NULL, NULL, NULL, NULL, NULL, NULL, N'4', NULL, NULL, NULL)
INSERT [dbo].[Features] ([Id_Car], [Condition], [Model], [Price], [Fuel], [Body_Style], [Doors], [Power_Car], [Make], [Year_Car], [Mileage], [Color], [Transmission], [Battery], [Drivetrain], [Torque], [Engine], [Power_output], [Electric_Motor_Voltage], [Valves_Per_Cylinder], [Compression_Ratio], [Layout], [Horsepower], [Number_of_Cylinders], [Displacement], [MGP], [Seats]) VALUES (N'K4', N'New', N'2021 Telluride', N'32190', N'Unleaded', N'SUV', N'5', N'291@6000', N'KIA', N'2021', NULL, NULL, N'Automatic', NULL, NULL, N'262@5200', N'3.8L V6', NULL, NULL, NULL, NULL, NULL, NULL, N'4', NULL, NULL, NULL)
INSERT [dbo].[Features] ([Id_Car], [Condition], [Model], [Price], [Fuel], [Body_Style], [Doors], [Power_Car], [Make], [Year_Car], [Mileage], [Color], [Transmission], [Battery], [Drivetrain], [Torque], [Engine], [Power_output], [Electric_Motor_Voltage], [Valves_Per_Cylinder], [Compression_Ratio], [Layout], [Horsepower], [Number_of_Cylinders], [Displacement], [MGP], [Seats]) VALUES (N'H1', N'New', N'IONIQ Hybrid', N'23400', N'electric', N'Hatchback', N'5', N'104 @ 5700', N'HYUNDAI', N'2021', NULL, NULL, N'Automatic', N'1.56 kWh', NULL, N'109 @ 4000', N'1.6L  4-cyl', N'32 kW (43 hp)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Features] ([Id_Car], [Condition], [Model], [Price], [Fuel], [Body_Style], [Doors], [Power_Car], [Make], [Year_Car], [Mileage], [Color], [Transmission], [Battery], [Drivetrain], [Torque], [Engine], [Power_output], [Electric_Motor_Voltage], [Valves_Per_Cylinder], [Compression_Ratio], [Layout], [Horsepower], [Number_of_Cylinders], [Displacement], [MGP], [Seats]) VALUES (N'H2', N'New', N'VELOSTER', N'18900', N'GDI', N'Hatchback', N'5', N'147 @ 6200', N'HYUNDAI', N'2021', NULL, NULL, N'Automatic', NULL, NULL, N'132 @ 4500', N'Inline 4-cyl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'2.0 liters', NULL, NULL)
INSERT [dbo].[Features] ([Id_Car], [Condition], [Model], [Price], [Fuel], [Body_Style], [Doors], [Power_Car], [Make], [Year_Car], [Mileage], [Color], [Transmission], [Battery], [Drivetrain], [Torque], [Engine], [Power_output], [Electric_Motor_Voltage], [Valves_Per_Cylinder], [Compression_Ratio], [Layout], [Horsepower], [Number_of_Cylinders], [Displacement], [MGP], [Seats]) VALUES (N'H3', N'New', N'VELOSTER N', N'32250', N'GDI', N'Hatchback', N'5', N'275 hp @ 6000', N'HYUNDAI', N'2021', NULL, NULL, N'Automatic', NULL, NULL, N'260 @ 1450', N'Inline 4-cyl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'2.0 liters', NULL, NULL)
INSERT [dbo].[Features] ([Id_Car], [Condition], [Model], [Price], [Fuel], [Body_Style], [Doors], [Power_Car], [Make], [Year_Car], [Mileage], [Color], [Transmission], [Battery], [Drivetrain], [Torque], [Engine], [Power_output], [Electric_Motor_Voltage], [Valves_Per_Cylinder], [Compression_Ratio], [Layout], [Horsepower], [Number_of_Cylinders], [Displacement], [MGP], [Seats]) VALUES (N'H4', N'New', N'VENUE', N'18750', N'GDI', N'SUV', N'5', N'121 @ 6300 RPM', N'HYUNDAI', N'2021', NULL, NULL, N'Automatic', NULL, NULL, N'113 @ 4500', N'Smartstream 4-cyl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'2.0 liters', NULL, NULL)
INSERT [dbo].[Features] ([Id_Car], [Condition], [Model], [Price], [Fuel], [Body_Style], [Doors], [Power_Car], [Make], [Year_Car], [Mileage], [Color], [Transmission], [Battery], [Drivetrain], [Torque], [Engine], [Power_output], [Electric_Motor_Voltage], [Valves_Per_Cylinder], [Compression_Ratio], [Layout], [Horsepower], [Number_of_Cylinders], [Displacement], [MGP], [Seats]) VALUES (N'J1', N'PreOwned', N'Renegade Latitude', N'20000', N'Unleaded', N'SUV', N'5', N'180hp', N'JEEP', N'2017', N'10,488 Miles', NULL, N'Automatic', NULL, N'Four Wheel Drive', NULL, N'2.4L 4cyl 9A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'24 City / 31 Hwy', N'5')
INSERT [dbo].[Features] ([Id_Car], [Condition], [Model], [Price], [Fuel], [Body_Style], [Doors], [Power_Car], [Make], [Year_Car], [Mileage], [Color], [Transmission], [Battery], [Drivetrain], [Torque], [Engine], [Power_output], [Electric_Motor_Voltage], [Valves_Per_Cylinder], [Compression_Ratio], [Layout], [Horsepower], [Number_of_Cylinders], [Displacement], [MGP], [Seats]) VALUES (N'J2', N'PreOwned', N'Renegade Sport', N'21000', N'Unleaded', N'SUV', N'5', N'180hp', N'JEEP', N'2020', N'12,505 Miles', NULL, N'Automatic', NULL, N'Four Wheel Drive', NULL, N'2.4L 4cyl 9A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'21 City / 29 Hwy', N'5')
INSERT [dbo].[Features] ([Id_Car], [Condition], [Model], [Price], [Fuel], [Body_Style], [Doors], [Power_Car], [Make], [Year_Car], [Mileage], [Color], [Transmission], [Battery], [Drivetrain], [Torque], [Engine], [Power_output], [Electric_Motor_Voltage], [Valves_Per_Cylinder], [Compression_Ratio], [Layout], [Horsepower], [Number_of_Cylinders], [Displacement], [MGP], [Seats]) VALUES (N'J3', N'PreOwned', N'Cherokee Trailhawk', N'30000', N'Unleaded', N'SUV', N'5', N'270hp', N'JEEP', N'2020', N'8,723 Miles', NULL, N'Automatic', NULL, N'Four Wheel Drive', NULL, N'2.4L 4cyl Turbo 9A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'18 City / 24 Hwy', N'5')
INSERT [dbo].[Features] ([Id_Car], [Condition], [Model], [Price], [Fuel], [Body_Style], [Doors], [Power_Car], [Make], [Year_Car], [Mileage], [Color], [Transmission], [Battery], [Drivetrain], [Torque], [Engine], [Power_output], [Electric_Motor_Voltage], [Valves_Per_Cylinder], [Compression_Ratio], [Layout], [Horsepower], [Number_of_Cylinders], [Displacement], [MGP], [Seats]) VALUES (N'J4', N'PreOwned', N'Cherokee
Limited', N'30500', N'Unleaded', N'SUV', N'5', N'271hp', N'JEEP', NULL, N'2,055 Miles', NULL, N'Automatic', NULL, N'Four Wheel Drive', NULL, N'3.2L 6cyl 9A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'19 City / 27 Hwy', N'5')
GO
INSERT [dbo].[Product] ([Id_Car], [Name_Car], [Range_Of_Car], [Brand_Car], [Pricing], [Seller], [Status], [Description], [Image_1], [Image_2], [Image_3], [Image_4], [Image_5], [Image_6]) VALUES (N'A1', N'e-tron-sportback', N'Hybrid', N'AUDI', 69100, N'best', NULL, N'A kinetic design for an electric world.
Coiled yet poised, the stylized potential of the e-tron Sportback is clear from any angle — it''s designed to attract, electrify and generate envy of ownership.
Thoughtful composition leads to a positive recharge.
Part sanctuary, part cockpit, the interior of the e-tron Sportback rewards the driver and the passengers with a combination of timeless refinement and next-gen technology.
', N'img1.jpg', N'img2.jpg', N'img3.jpg', N'img4.jpg', N'img5.jpg
', N'img6.jpg')
INSERT [dbo].[Product] ([Id_Car], [Name_Car], [Range_Of_Car], [Brand_Car], [Pricing], [Seller], [Status], [Description], [Image_1], [Image_2], [Image_3], [Image_4], [Image_5], [Image_6]) VALUES (N'A2', N'A6', N'Sedan', N'AUDI', 54900, NULL, N'hot', N'Never experience a case of mistaken identity.
Starting from a new design direction first seen in the Audi Prologue concept car, the Audi A6 cuts a sharper profile with acute angles, defined edges and taut, muscular contours. Its lines take the eyes on a journey, while expressive surface language shapes its character.
Ergonomics takes the driver? s point of view.
They say location is everything. That''s why the Audi MMI® touch response screens have been set at an angle that tilts towards the driver. The infotainment system is accessed through the upper screen, while controls for the heating, ventilation and seat settings appear on the lower screen.', N'img1.jpg', N'img2.jpg', N'img3.jpg', N'img4.jpg', N'img5.jpg
', N'img6.jpg')
INSERT [dbo].[Product] ([Id_Car], [Name_Car], [Range_Of_Car], [Brand_Car], [Pricing], [Seller], [Status], [Description], [Image_1], [Image_2], [Image_3], [Image_4], [Image_5], [Image_6]) VALUES (N'A3', N'S6', N'Sedan', N'AUDI', 75445, NULL, NULL, N'Accelerating progress by design.
A smooth curve that resists the wind. An acute angle to redirect to redirect airflow. The subtle upturn at the edge of a trunk lid helps create downforce. Design''s purpose is as much functional as it is aesthetic.
Minimalist design of a luxury space.
The uncluttered, smooth surfaces of MMI® touch response show this is design from a clean slate. The display screens are angled towards the driver to help optimize the view of the touchscreen icons.', N'img1.jpg', N'img2.jpg', N'img3.jpg', N'img4.jpg', N'img5.jpg
', N'img6.jpg')
INSERT [dbo].[Product] ([Id_Car], [Name_Car], [Range_Of_Car], [Brand_Car], [Pricing], [Seller], [Status], [Description], [Image_1], [Image_2], [Image_3], [Image_4], [Image_5], [Image_6]) VALUES (N'A4', N'Q3', N'SUV', N'AUDI', 35095, NULL, NULL, N'Expectations were meant to be exceeded.
With standard quattro® all-wheel drive, bold exterior and interior design with thoughtful functionality, and many technology and connectivity features, the Q3 offers a strong entry to the Audi brand.
A presence that’s larger than life.
Both inside and out, the Audi Q3 design exudes charisma and pushes boundaries. The fusion of the right-sized sport utility proportions and Audi identity is clear with every line, curve, and detail. With the Audi Q3, we didn’t hold anything back.', N'img1.jpg', N'img2.jpg', N'img3.jpg', N'img4.jpg', N'img5.jpg
', N'img6.jpg')
INSERT [dbo].[Product] ([Id_Car], [Name_Car], [Range_Of_Car], [Brand_Car], [Pricing], [Seller], [Status], [Description], [Image_1], [Image_2], [Image_3], [Image_4], [Image_5], [Image_6]) VALUES (N'H1', N'IONIQ Hybrid', N'Hatchback', N'HYUNDAI', 23400, NULL, NULL, N'More style per gallon.
The hybrid efficiency is evident in its bold, airflow-inspired form and lines. And its look has been highlighted with a mesh pattern grille, striking LED lights and Eco-spoke wheels.
Modern space. The most in its class.
Inside there’s room. Lots of it. Stretch out in this stylish space that thoughtfully uses bio-fabrics, recycled plastics and other eco-friendly materials. Plus, you’ll find the perfect touch of modern features like an available 10.25-inch touchscreen.', N'img1.jpg', N'img2.jpg', N'img3.jpg', N'img4.jpg', N'img5.jpg
', N'img6.jpg')
INSERT [dbo].[Product] ([Id_Car], [Name_Car], [Range_Of_Car], [Brand_Car], [Pricing], [Seller], [Status], [Description], [Image_1], [Image_2], [Image_3], [Image_4], [Image_5], [Image_6]) VALUES (N'H2', N'VELOSTER', N'Hatchback', N'HYUNDAI', 18900, NULL, NULL, N'Every side is its bold side.?
Fun to look at. Fun to drive. 2021 Veloster continues to be a unique expression of Hyundai’s audacious side, with a build quality that’s as solid as its community of die-hard owners.
Corner the market on corners.
The Veloster doesn’t just look different, it feels different—especially when you’re ripping it around hairpin turns and tight corners.', N'img1.jpg', N'img2.jpg', N'img3.jpg', N'img4.jpg', N'img5.jpg
', N'img6.jpg')
INSERT [dbo].[Product] ([Id_Car], [Name_Car], [Range_Of_Car], [Brand_Car], [Pricing], [Seller], [Status], [Description], [Image_1], [Image_2], [Image_3], [Image_4], [Image_5], [Image_6]) VALUES (N'H3', N'VELOSTER N', N'Hatchback', N'HYUNDAI', 32250, NULL, NULL, N'The roads are public. But you’ll own the corners.
The nimble chassis was built with the philosophy that there’s nothing more satisfying than devouring the toughest hairpin turns and snaking roads our national highway system has to offer.
Seamless shifts. Quick power.
When it comes to making fast, smooth and efficient shifts, you have two performance enhancing choices. A standard 6-speed close-ratio manual or the available quick-shifting N 8-speed Wet Dual Clutch Transmission with paddle shifters.', N'img1.jpg', N'img2.jpg', N'img3.jpg', N'img4.jpg', N'img5.jpg
', N'img6.jpg')
INSERT [dbo].[Product] ([Id_Car], [Name_Car], [Range_Of_Car], [Brand_Car], [Pricing], [Seller], [Status], [Description], [Image_1], [Image_2], [Image_3], [Image_4], [Image_5], [Image_6]) VALUES (N'H4', N'VENUE', N'SUV', N'HYUNDAI', 18750, NULL, N'hot', N'Start it up.?
This is where it all happens. A forward-thinking SUV for a fast-paced life, Venue was made to conquer the city. Small, nimble and safe, Venue is a powerhouse that gets the job done, with features and advanced technology that look out for you, to keep you moving, connected, and best of all, safe.', N'img1.jpg', N'img2.jpg', N'img3.jpg', N'img4.jpg', N'img5.jpg
', N'img6.jpg')
INSERT [dbo].[Product] ([Id_Car], [Name_Car], [Range_Of_Car], [Brand_Car], [Pricing], [Seller], [Status], [Description], [Image_1], [Image_2], [Image_3], [Image_4], [Image_5], [Image_6]) VALUES (N'J1', N'Renegade Latitude', N'PreOwned Cars', N'JEEP', 20000, NULL, NULL, N'Jeep Certified Pre-Owned Vehicle Program
Jeep Certified Pre-Owned vehicles must pass a history check and rigorous 125-point mechanical and appearance inspection and must be 5 model years old or newer and have less than 75,000 miles.', N'img1.jpg', N'img2.jpg', N'img3.jpg', N'img4.jpg', N'img5.jpg
', N'img6.jpg')
INSERT [dbo].[Product] ([Id_Car], [Name_Car], [Range_Of_Car], [Brand_Car], [Pricing], [Seller], [Status], [Description], [Image_1], [Image_2], [Image_3], [Image_4], [Image_5], [Image_6]) VALUES (N'J2', N'Renegade Sport', N'PreOwned Cars', N'JEEP', 21000, NULL, NULL, N'Jeep Certified Pre-Owned Vehicle Program
Jeep Certified Pre-Owned vehicles must pass a history check and rigorous 125-point mechanical and appearance inspection and must be 5 model years old or newer and have less than 75.000 miles.', N'img1.jpg', N'img2.jpg', N'img3.jpg', N'img4.jpg', N'img5.jpg
', N'img6.jpg')
INSERT [dbo].[Product] ([Id_Car], [Name_Car], [Range_Of_Car], [Brand_Car], [Pricing], [Seller], [Status], [Description], [Image_1], [Image_2], [Image_3], [Image_4], [Image_5], [Image_6]) VALUES (N'J3', N'Cherokee Trailhawk', N'PreOwned Cars', N'JEEP', 30000, NULL, NULL, N'Jeep Certified Pre-Owned Vehicle Program
Jeep Certified Pre-Owned vehicles must pass a history check and rigorous 125-point mechanical and appearance inspection and must be 5 model years old or newer and have less than 75.000 miles.', N'img1.jpg', N'img2.jpg', N'img3.jpg', N'img4.jpg', N'img5.jpg
', N'img6.jpg')
INSERT [dbo].[Product] ([Id_Car], [Name_Car], [Range_Of_Car], [Brand_Car], [Pricing], [Seller], [Status], [Description], [Image_1], [Image_2], [Image_3], [Image_4], [Image_5], [Image_6]) VALUES (N'J4', N'Cherokee
Limited', N'PreOwned Cars', N'JEEP', 30500, NULL, NULL, N'Jeep Certified Pre-Owned Vehicle Program
Jeep Certified Pre-Owned vehicles must pass a history check and rigorous 125-point mechanical and appearance inspection and must be 5 model years old or newer and have less than 75.000 miles.', N'img1.jpg', N'img2.jpg', N'img3.jpg', N'img4.jpg', N'img5.jpg
', N'img6.jpg')
INSERT [dbo].[Product] ([Id_Car], [Name_Car], [Range_Of_Car], [Brand_Car], [Pricing], [Seller], [Status], [Description], [Image_1], [Image_2], [Image_3], [Image_4], [Image_5], [Image_6]) VALUES (N'K1', N'Rio 5-Door', N'Hatchback', N'KIA', 16990, N'best', N'hot', N'Hatchback Utility
Rio 5-Door features a wide hatch opening and low lift-over height for easier loading and unloading.
Strong Silhouette
A refreshed design with a sleek, dynamic profile flaunts the Rio 5-Door’s athletic silhouette, standing stylishly on optional 15-inch alloy wheels.
Rear Design
Featuring a large rear window and distinctive taillight design, the Rio 5-Door is a hatchback that looks good from all angles.', N'img1.jpg', N'img2.jpg', N'img3.jpg', N'img4.jpg', N'img5.jpg
', N'img6.jpg')
INSERT [dbo].[Product] ([Id_Car], [Name_Car], [Range_Of_Car], [Brand_Car], [Pricing], [Seller], [Status], [Description], [Image_1], [Image_2], [Image_3], [Image_4], [Image_5], [Image_6]) VALUES (N'K2', N'K5', N'Sedan', N'KIA', 23590, NULL, NULL, N'Turbocharging the Test Track
The K5 GT proved itself as a true driver’s car, establishing faster acceleration and better overall handling performance than the BMW 330i in independent tests certified by AMCI Testing.
Cornering Performance
The BMW 330i couldn’t match the K5 GT’s cornering performance under both wet and dry conditions, with the K5’s all-new chassis and Pirelli P-Zero tires helping to provide better overall handling performance.', N'img1.jpg', N'img2.jpg', N'img3.jpg', N'img4.jpg', N'img5.jpg
', N'img6.jpg')
INSERT [dbo].[Product] ([Id_Car], [Name_Car], [Range_Of_Car], [Brand_Car], [Pricing], [Seller], [Status], [Description], [Image_1], [Image_2], [Image_3], [Image_4], [Image_5], [Image_6]) VALUES (N'K3', N'Sorento Hybrid', N'Hybrid', N'KIA', 33590, NULL, NULL, N'Real Driving Feel
Unlike other “gearless” hybrids, Sorento Hybrid shifts by wire through a full gearbox, so it still feels like driving. Thrilling driving at that.
Thrilling Acceleration
Hit the pedal and feel the instant torque of the combination electric motor and turbocharged engine—launching you forward into your next new experience.
Extended Road Trip Range
Adventures last longer with Sorento Hybrid''s range of up to 655 miles. So drop a pin on the map, pack up, and revel in the thrill of discovery.', N'img1.jpg', N'img2.jpg', N'img3.jpg', N'img4.jpg', N'img5.jpg
', N'img6.jpg')
INSERT [dbo].[Product] ([Id_Car], [Name_Car], [Range_Of_Car], [Brand_Car], [Pricing], [Seller], [Status], [Description], [Image_1], [Image_2], [Image_3], [Image_4], [Image_5], [Image_6]) VALUES (N'K4', N'Telluride', N'SUV', N'KIA', 32190, NULL, NULL, N'Driver’s Cockpit 
Take command with an available 10.25” touchscreen display1 and features that let you amplify your voice to rear passengers or use only the front row speakers.
Captain’s Seats
Available reclining dual captain’s chairs2 slide forward at the touch of a button for 3rd row access. Rear passengers can enjoy available dual sunroofs and standard USB ports.', N'img1.jpg', N'img2.jpg', N'img3.jpg', N'img4.jpg', N'img5.jpg
', N'img6.jpg')
INSERT [dbo].[Product] ([Id_Car], [Name_Car], [Range_Of_Car], [Brand_Car], [Pricing], [Seller], [Status], [Description], [Image_1], [Image_2], [Image_3], [Image_4], [Image_5], [Image_6]) VALUES (N'T1', N'Camry LE hybrid 2021', N'Hybrid', N'TOYOTA', 27270, N'best', NULL, N'Hybrid Performance
Camry Hybrid unites style and performance, all with added hybrid efficiency.
Available All-Wheel Drive
All-Wheel Drive (AWD) performance gives you the confidence to venture further, no matter the forecast.
Available 3.5L V6 Engine
A robust 3.5L V6 engine is ready to deliver a thrilling drive, every drive.', N'img1.jpg', N'img2.jpg', N'img3.jpg', N'img4.jpg', N'img5.jpg
', N'img6.jpg')
INSERT [dbo].[Product] ([Id_Car], [Name_Car], [Range_Of_Car], [Brand_Car], [Pricing], [Seller], [Status], [Description], [Image_1], [Image_2], [Image_3], [Image_4], [Image_5], [Image_6]) VALUES (N'T2', N'COROLLA', N'Sedan', N'TOYOTA', 20025, N'best', NULL, N'Sporty Front Fascia
The available honeycomb mesh grille confidently draws attention to Corolla''s low, aggressive stance.
Corolla Nightshade
Sleek and sharp, Corolla SE Nightshade Edition is designed to match your sense of style.
Corolla Apex
Performance-driven handling meets statement-making style with the new 2021 Corolla Apex.', N'img1.jpg', N'img2.jpg', N'img3.jpg', N'img4.jpg', N'img5.jpg
', N'img6.jpg')
INSERT [dbo].[Product] ([Id_Car], [Name_Car], [Range_Of_Car], [Brand_Car], [Pricing], [Seller], [Status], [Description], [Image_1], [Image_2], [Image_3], [Image_4], [Image_5], [Image_6]) VALUES (N'T3', N'C-HR', N'SUV', N'TOYOTA', 21595, NULL, NULL, N'Distinct Design
With its striking front end and modern color palette, C-HR looks sharper than ever.
Apple CarPlay
Standard Apple CarPlay 95 compatibility works with your iPhone® 86 to help you stay focused on your drive.', N'img1.jpg', N'img2.jpg', N'img3.jpg', N'img4.jpg', N'img5.jpg
', N'img6.jpg')
INSERT [dbo].[Product] ([Id_Car], [Name_Car], [Range_Of_Car], [Brand_Car], [Pricing], [Seller], [Status], [Description], [Image_1], [Image_2], [Image_3], [Image_4], [Image_5], [Image_6]) VALUES (N'T4', N'VENZA', N'SUV', N'TOYOTA', 32570, NULL, N'hot', N'Available Digital Rearview Mirror With HomeLink®
Get a clearer, wider and obstruction-free view of what''s behind you.
Available 12.3-In. Touchscreen Display
Customize Venza''s touchscreen to easily access all your music, maps and apps
Available 7-In. Multi-Information Display
View essential driving information, like the Hybrid System Indicator, right before your eyes.', N'img1.jpg', N'img2.jpg', N'img3.jpg', N'img4.jpg', N'img5.jpg
', N'img6.jpg')
GO
INSERT [dbo].[User_] ([Name_User], [Password_User], [Email_User]) VALUES (N'NguyenVanA', N'123456', N'a@gmail.com')
INSERT [dbo].[User_] ([Name_User], [Password_User], [Email_User]) VALUES (N'HoangB', N'123456', N'b@gmail.com')
INSERT [dbo].[User_] ([Name_User], [Password_User], [Email_User]) VALUES (N'LeC', N'67890', N'c@gmail.com')
GO
ALTER TABLE [dbo].[Features]  WITH CHECK ADD FOREIGN KEY([Id_Car])
REFERENCES [dbo].[Product] ([Id_Car])
GO
USE [master]
GO
ALTER DATABASE [Data_Car] SET  READ_WRITE 
GO
