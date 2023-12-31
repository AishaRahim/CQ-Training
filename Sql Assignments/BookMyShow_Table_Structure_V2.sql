USE [BookMyShow]
GO
/****** Object:  UserDefinedTableType [dbo].[Entity]    Script Date: 25-07-2023 18:49:09 ******/
CREATE TYPE [dbo].[Entity] AS TABLE(
	[Id] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Entitys]    Script Date: 25-07-2023 18:49:09 ******/
CREATE TYPE [dbo].[Entitys] AS TABLE(
	[Id] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[IDs]    Script Date: 25-07-2023 18:49:09 ******/
CREATE TYPE [dbo].[IDs] AS TABLE(
	[Id] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Screen]    Script Date: 25-07-2023 18:49:09 ******/
CREATE TYPE [dbo].[Screen] AS TABLE(
	[ScreenName] [varchar](30) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Seat]    Script Date: 25-07-2023 18:49:09 ******/
CREATE TYPE [dbo].[Seat] AS TABLE(
	[ScreenName] [varchar](30) NULL,
	[SeatNum] [varchar](30) NULL,
	[SeatCategoryId] [int] NULL
)
GO
/****** Object:  Table [dbo].[BookedSeat]    Script Date: 25-07-2023 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookedSeat](
	[BookedSeatID] [int] IDENTITY(1000,1) NOT NULL,
	[BookingID] [int] NOT NULL,
	[SeatID] [int] NOT NULL,
 CONSTRAINT [PK_BookSeat] PRIMARY KEY CLUSTERED 
(
	[BookedSeatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Booking]    Script Date: 25-07-2023 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Booking](
	[BookingID] [int] IDENTITY(900,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[BookingDate] [datetime] NOT NULL,
	[ShowID] [int] NOT NULL,
	[Amount] [int] NOT NULL,
 CONSTRAINT [PK_Booking] PRIMARY KEY CLUSTERED 
(
	[BookingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 25-07-2023 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[CityID] [int] IDENTITY(200,1) NOT NULL,
	[CityName] [varchar](100) NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[CityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 25-07-2023 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] IDENTITY(100,1) NOT NULL,
	[CustName] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Phone] [bigint] NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Director]    Script Date: 25-07-2023 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Director](
	[DirectorID] [int] IDENTITY(1100,1) NOT NULL,
	[DirectorName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Director] PRIMARY KEY CLUSTERED 
(
	[DirectorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DirectorMovie]    Script Date: 25-07-2023 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DirectorMovie](
	[DirectorMovieID] [int] IDENTITY(1700,1) NOT NULL,
	[DirectorID] [int] NOT NULL,
	[MovieID] [int] NOT NULL,
 CONSTRAINT [PK_DirectorMovie] PRIMARY KEY CLUSTERED 
(
	[DirectorMovieID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genre]    Script Date: 25-07-2023 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genre](
	[GenreID] [int] IDENTITY(1400,1) NOT NULL,
	[GenreName] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Genre] PRIMARY KEY CLUSTERED 
(
	[GenreID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Language]    Script Date: 25-07-2023 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Language](
	[LanguageID] [int] IDENTITY(1300,1) NOT NULL,
	[LanguageName] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Language] PRIMARY KEY CLUSTERED 
(
	[LanguageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movie]    Script Date: 25-07-2023 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movie](
	[MovieID] [int] IDENTITY(500,1) NOT NULL,
	[Title] [varchar](50) NOT NULL,
	[Duration] [time](7) NOT NULL,
	[ReleaseDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Movie] PRIMARY KEY CLUSTERED 
(
	[MovieID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovieGenre]    Script Date: 25-07-2023 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovieGenre](
	[MovieGenreID] [int] IDENTITY(1600,1) NOT NULL,
	[MovieID] [int] NOT NULL,
	[GenreID] [int] NOT NULL,
 CONSTRAINT [PK_MovieGenre] PRIMARY KEY CLUSTERED 
(
	[MovieGenreID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovieLanguage]    Script Date: 25-07-2023 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovieLanguage](
	[MovieLanguageID] [int] IDENTITY(1500,1) NOT NULL,
	[MovieID] [int] NOT NULL,
	[LanguageID] [int] NOT NULL,
 CONSTRAINT [PK_MovieLanguage] PRIMARY KEY CLUSTERED 
(
	[MovieLanguageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 25-07-2023 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[PaymentID] [int] IDENTITY(1200,1) NOT NULL,
	[BookingID] [int] NOT NULL,
	[TransactionID] [bigint] NOT NULL,
	[CardNumber] [bigint] NOT NULL,
 CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Screen]    Script Date: 25-07-2023 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Screen](
	[ScreenID] [int] IDENTITY(400,1) NOT NULL,
	[ScreenName] [varchar](50) NOT NULL,
	[TheatreID] [int] NOT NULL,
 CONSTRAINT [PK_Screen] PRIMARY KEY CLUSTERED 
(
	[ScreenID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Seat]    Script Date: 25-07-2023 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seat](
	[SeatID] [int] IDENTITY(800,1) NOT NULL,
	[SeatNumber] [varchar](10) NOT NULL,
	[ScreenID] [int] NOT NULL,
	[SeatCatID] [int] NOT NULL,
 CONSTRAINT [PK_Seat] PRIMARY KEY CLUSTERED 
(
	[SeatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SeatCategory]    Script Date: 25-07-2023 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SeatCategory](
	[SeatCatID] [int] IDENTITY(700,1) NOT NULL,
	[SeatCatName] [varchar](50) NOT NULL,
	[Price] [int] NOT NULL,
 CONSTRAINT [PK_SeatCategory] PRIMARY KEY CLUSTERED 
(
	[SeatCatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Show]    Script Date: 25-07-2023 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Show](
	[ShowID] [int] IDENTITY(600,1) NOT NULL,
	[ShowTime] [datetime] NOT NULL,
	[MovielanguageID] [int] NOT NULL,
	[ScreenID] [int] NOT NULL,
 CONSTRAINT [PK_Show] PRIMARY KEY CLUSTERED 
(
	[ShowID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Theatre]    Script Date: 25-07-2023 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Theatre](
	[TheatreID] [int] IDENTITY(300,1) NOT NULL,
	[TheatreName] [varchar](50) NOT NULL,
	[CityID] [int] NOT NULL,
	[Phone] [bigint] NOT NULL,
 CONSTRAINT [PK_Theatre] PRIMARY KEY CLUSTERED 
(
	[TheatreID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BookedSeat]  WITH CHECK ADD  CONSTRAINT [FK_BookedSeat_Seat] FOREIGN KEY([SeatID])
REFERENCES [dbo].[Seat] ([SeatID])
GO
ALTER TABLE [dbo].[BookedSeat] CHECK CONSTRAINT [FK_BookedSeat_Seat]
GO
ALTER TABLE [dbo].[BookedSeat]  WITH CHECK ADD  CONSTRAINT [FK_BookedSeat_Show] FOREIGN KEY([BookingID])
REFERENCES [dbo].[Booking] ([BookingID])
GO
ALTER TABLE [dbo].[BookedSeat] CHECK CONSTRAINT [FK_BookedSeat_Show]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_Customer]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_Show] FOREIGN KEY([ShowID])
REFERENCES [dbo].[Show] ([ShowID])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_Show]
GO
ALTER TABLE [dbo].[DirectorMovie]  WITH CHECK ADD  CONSTRAINT [FK_DirectorMovie_Director] FOREIGN KEY([DirectorID])
REFERENCES [dbo].[Director] ([DirectorID])
GO
ALTER TABLE [dbo].[DirectorMovie] CHECK CONSTRAINT [FK_DirectorMovie_Director]
GO
ALTER TABLE [dbo].[DirectorMovie]  WITH CHECK ADD  CONSTRAINT [FK_DirectorMovie_MovieID] FOREIGN KEY([MovieID])
REFERENCES [dbo].[Movie] ([MovieID])
GO
ALTER TABLE [dbo].[DirectorMovie] CHECK CONSTRAINT [FK_DirectorMovie_MovieID]
GO
ALTER TABLE [dbo].[MovieGenre]  WITH CHECK ADD  CONSTRAINT [FK_MovieGenre_Genre] FOREIGN KEY([GenreID])
REFERENCES [dbo].[Genre] ([GenreID])
GO
ALTER TABLE [dbo].[MovieGenre] CHECK CONSTRAINT [FK_MovieGenre_Genre]
GO
ALTER TABLE [dbo].[MovieGenre]  WITH CHECK ADD  CONSTRAINT [FK_MovieGenre_Movie] FOREIGN KEY([MovieID])
REFERENCES [dbo].[Movie] ([MovieID])
GO
ALTER TABLE [dbo].[MovieGenre] CHECK CONSTRAINT [FK_MovieGenre_Movie]
GO
ALTER TABLE [dbo].[MovieLanguage]  WITH CHECK ADD  CONSTRAINT [FK_MovieLanguage_Language] FOREIGN KEY([LanguageID])
REFERENCES [dbo].[Language] ([LanguageID])
GO
ALTER TABLE [dbo].[MovieLanguage] CHECK CONSTRAINT [FK_MovieLanguage_Language]
GO
ALTER TABLE [dbo].[MovieLanguage]  WITH CHECK ADD  CONSTRAINT [FK_MovieLanguage_Movie] FOREIGN KEY([MovieID])
REFERENCES [dbo].[Movie] ([MovieID])
GO
ALTER TABLE [dbo].[MovieLanguage] CHECK CONSTRAINT [FK_MovieLanguage_Movie]
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_Payment_Booking] FOREIGN KEY([BookingID])
REFERENCES [dbo].[Booking] ([BookingID])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_Payment_Booking]
GO
ALTER TABLE [dbo].[Screen]  WITH CHECK ADD  CONSTRAINT [FK_Screen_Theatre] FOREIGN KEY([TheatreID])
REFERENCES [dbo].[Theatre] ([TheatreID])
GO
ALTER TABLE [dbo].[Screen] CHECK CONSTRAINT [FK_Screen_Theatre]
GO
ALTER TABLE [dbo].[Seat]  WITH CHECK ADD  CONSTRAINT [FK_Seat_Screen] FOREIGN KEY([ScreenID])
REFERENCES [dbo].[Screen] ([ScreenID])
GO
ALTER TABLE [dbo].[Seat] CHECK CONSTRAINT [FK_Seat_Screen]
GO
ALTER TABLE [dbo].[Seat]  WITH CHECK ADD  CONSTRAINT [FK_SeatCategory_Seat] FOREIGN KEY([SeatCatID])
REFERENCES [dbo].[SeatCategory] ([SeatCatID])
GO
ALTER TABLE [dbo].[Seat] CHECK CONSTRAINT [FK_SeatCategory_Seat]
GO
ALTER TABLE [dbo].[Show]  WITH CHECK ADD  CONSTRAINT [FK_Show_Movielanguage] FOREIGN KEY([MovielanguageID])
REFERENCES [dbo].[MovieLanguage] ([MovieLanguageID])
GO
ALTER TABLE [dbo].[Show] CHECK CONSTRAINT [FK_Show_Movielanguage]
GO
ALTER TABLE [dbo].[Show]  WITH CHECK ADD  CONSTRAINT [FK_Show_Screen] FOREIGN KEY([ScreenID])
REFERENCES [dbo].[Screen] ([ScreenID])
GO
ALTER TABLE [dbo].[Show] CHECK CONSTRAINT [FK_Show_Screen]
GO
ALTER TABLE [dbo].[Theatre]  WITH CHECK ADD  CONSTRAINT [FK_Theatre_City] FOREIGN KEY([CityID])
REFERENCES [dbo].[City] ([CityID])
GO
ALTER TABLE [dbo].[Theatre] CHECK CONSTRAINT [FK_Theatre_City]
GO
/****** Object:  StoredProcedure [dbo].[AddBooking]    Script Date: 25-07-2023 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[AddBooking]
@custID INT,
@date DateTime,
@showID INT,
@seatID AS Entitys READONLY,
@transID INT,
@card BIGINT
AS 
BEGIN
    INSERT INTO Booking(CustomerID,BookingDate,ShowID,Amount)
	SELECT @custID,@date,@showID,SUM(SC.Price)
	FROM @seatID D
	JOIN Seat s
	ON D.Id=S.SeatID
	JOIN SeatCategory SC
	ON SC.SeatCatID=S.SeatCatID

	DECLARE @bookID int = SCOPE_IDENTITY()

	INSERT INTO BookedSeat(BookingID,SeatID)
	SELECT @bookID,Id FROM @seatID

	INSERT INTO Payment(BookingID,TransactionID,CardNumber)
	SELECT @bookID,@transID,@card
END 
GO
/****** Object:  StoredProcedure [dbo].[AddCity]    Script Date: 25-07-2023 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[AddCity]
@CName VARCHAR(50)
AS 
BEGIN
    INSERT INTO City(CityName)
	VALUES(@CName)
END 
GO
/****** Object:  StoredProcedure [dbo].[AddCustomer]    Script Date: 25-07-2023 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[AddCustomer]
@cName VARCHAR(50),
@cEmail VARCHAR(50),
@Phone BIGINT
AS 
BEGIN
    INSERT INTO Customer(CustName,Email,Phone)
	VALUES (@cName,@cEmail,@Phone)
END 
GO
/****** Object:  StoredProcedure [dbo].[AddDirector]    Script Date: 25-07-2023 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[AddDirector]
@DName VARCHAR(50)
AS 
BEGIN
    INSERT INTO Director(DirectorName)
	VALUES(@DName)
END 
GO
/****** Object:  StoredProcedure [dbo].[AddGenre]    Script Date: 25-07-2023 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[AddGenre]
@gName VARCHAR(50)
AS 
BEGIN
    INSERT INTO Genre(GenreName)
	VALUES(@gName)
END 
GO
/****** Object:  StoredProcedure [dbo].[AddLanguage]    Script Date: 25-07-2023 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[AddLanguage]
@lName VARCHAR(50)
AS 
BEGIN
    INSERT INTO Language(LanguageName)
	VALUES(@lName)
END 
GO
/****** Object:  StoredProcedure [dbo].[AddMovie]    Script Date: 25-07-2023 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[AddMovie]
@title VARCHAR(50),
@duration TIME,
@date DateTime,
@directorID IDs READONLY,
@LID IDs READONLY,
@GID IDs READONLY
AS 
BEGIN
    INSERT INTO Movie(Title,Duration,ReleaseDate)
	VALUES(@title,@duration,@date)
	DECLARE @movieID int = SCOPE_IDENTITY()

	INSERT INTO DirectorMovie(DirectorID,MovieID)
	SELECT Id,@movieID FROM @directorID

	INSERT INTO MovieLanguage(LanguageID,MovieID)
	SELECT Id,@movieID FROM @LID

	INSERT INTO MovieGenre(GenreID,MovieID)
	SELECT Id,@movieID FROM @GID
END 

GO
/****** Object:  StoredProcedure [dbo].[AddSeatCategory]    Script Date: 25-07-2023 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[AddSeatCategory]
@SName VARCHAR(50),
@price INT
AS 
BEGIN
    INSERT INTO SeatCategory(SeatCatName,Price)
	VALUES(@SName,@price)
END 
GO
/****** Object:  StoredProcedure [dbo].[AddShow]    Script Date: 25-07-2023 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[AddShow]
@showtime DATETIME,
@movieID INT,
@screenID INT
AS 
BEGIN
    INSERT INTO Show(MovieLanguageID,ShowTime,ScreenID)
	VALUES(@movieID,@showtime,@screenID)
END 
GO
/****** Object:  StoredProcedure [dbo].[AddTheatre]    Script Date: 25-07-2023 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[AddTheatre]
@Name VARCHAR(30),
@cityID int,
@phone BIGINT,
@screens AS Screen READONLY,
@theatreseats AS Seat READONLY
AS 
BEGIN
   INSERT INTO Theatre(TheatreName,CityID,Phone) VALUES(@Name,@cityID,@phone)
   DECLARE @theatreID int = SCOPE_IDENTITY()

   DECLARE @inserted Table (
    InsertedId INT,
    InsertedName varchar(30)
   )

   INSERT INTO Screen (ScreenName,TheatreID) 
   OUTPUT inserted.ScreenID,inserted.ScreenName INTO @inserted
   SELECT [ScreenName],@theatreID FROM @screens
      
   INSERT INTO Seat(SeatNumber,SeatCatID,ScreenID)
   SELECT ts.SeatNum,ts.SeatCategoryId,i.InsertedId
   FROM @theatreseats ts
   INNER JOIN @inserted i 
    ON i.InsertedName = ts.ScreenName
END

GO
