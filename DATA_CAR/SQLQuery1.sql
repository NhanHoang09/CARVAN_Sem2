
use Data_Car
go

CREATE TABLE Product 
(
	Id_Car varchar(10) not null primary key,
	Name_Car varchar(50),
	Range_Of_Car varchar (20),
	Brand_Car varchar(20),
	Pricing int,
	Seller varchar(10),
	Status varchar(10),
	Description varchar (1000),
	Image_1 varchar(20),
	Image_2 varchar(20),
	Image_3 varchar(20),
	Image_4 varchar(20),
	Image_5 varchar(20),
	Image_6 varchar(20),
)
go

CREATE TABLE Features
(
	Id_Car varchar(10),
	Condition varchar(20),
	Model varchar(20),
	Price varchar(20),
	Fuel varchar(20),
	Body_Style varchar(20),
	Doors varchar(20),
	Power_Car varchar(20),
	Make varchar(20),
	Year_Car varchar(20),
	Mileage varchar(20),
	Color varchar(20),
	Transmission varchar(20),
	Battery varchar(20),
	Drivetrain varchar(20),
	Torque varchar(20),
	Engine varchar(20),
	Power_output varchar(20),
	Electric_Motor_Voltage varchar(20),
	Valves_Per_Cylinder varchar(20),
	Compression_Ratio varchar(20),
	Layout varchar(20),
	Horsepower varchar(20),
	Number_of_Cylinders varchar(20),
	Displacement varchar(20),

	foreign key (Id_Car) references Product(Id_Car)
)
go

CREATE TABLE User_
(
	Name_User varchar(20),
	Password_User varchar(20),
	Email_User varchar(20),
)
go


CREATE TABLE [dbo].[Posts] (
    [Id]            BIGINT         IDENTITY (1, 1) NOT NULL,
    [Name]          NVARCHAR (200) NULL,
    [Title]         NVARCHAR (300) NOT NULL,
    [Content]       NVARCHAR (MAX) NOT NULL,
    [FeaturedImage] NVARCHAR (250) NULL,
    [Excerpt]       NVARCHAR (500) NULL,
    [PostType]      INT            NOT NULL,
    [Status]        INT            NOT NULL,
    [PublishDate]   DATETIME       NOT NULL,
    CONSTRAINT [PK_dbo.Posts] PRIMARY KEY CLUSTERED ([Id] ASC)
)
go
