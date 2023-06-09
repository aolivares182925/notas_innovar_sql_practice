USE [master]
GO
/****** Object:  Database [Notas_DB_practicas_innovar]    Script Date: 26/04/2023 10:34:19 ******/
CREATE DATABASE [Notas_DB_practicas_innovar]



IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Notas_DB_practicas_innovar].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Notas_DB_practicas_innovar] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Notas_DB_practicas_innovar] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Notas_DB_practicas_innovar] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Notas_DB_practicas_innovar] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Notas_DB_practicas_innovar] SET ARITHABORT OFF 
GO
ALTER DATABASE [Notas_DB_practicas_innovar] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Notas_DB_practicas_innovar] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Notas_DB_practicas_innovar] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Notas_DB_practicas_innovar] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Notas_DB_practicas_innovar] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Notas_DB_practicas_innovar] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Notas_DB_practicas_innovar] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Notas_DB_practicas_innovar] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Notas_DB_practicas_innovar] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Notas_DB_practicas_innovar] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Notas_DB_practicas_innovar] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Notas_DB_practicas_innovar] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Notas_DB_practicas_innovar] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Notas_DB_practicas_innovar] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Notas_DB_practicas_innovar] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Notas_DB_practicas_innovar] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Notas_DB_practicas_innovar] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Notas_DB_practicas_innovar] SET RECOVERY FULL 
GO
ALTER DATABASE [Notas_DB_practicas_innovar] SET  MULTI_USER 
GO
ALTER DATABASE [Notas_DB_practicas_innovar] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Notas_DB_practicas_innovar] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Notas_DB_practicas_innovar] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Notas_DB_practicas_innovar] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Notas_DB_practicas_innovar] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Notas_DB_practicas_innovar] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Notas_DB_practicas_innovar', N'ON'
GO
ALTER DATABASE [Notas_DB_practicas_innovar] SET QUERY_STORE = ON
GO
ALTER DATABASE [Notas_DB_practicas_innovar] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Notas_DB_practicas_innovar]
GO
/****** Object:  Table [dbo].[AcademicDepartment]    Script Date: 26/04/2023 10:34:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AcademicDepartment](
	[Id] [varchar](10) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_AcademicDepartment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Alternatives]    Script Date: 26/04/2023 10:34:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alternatives](
	[Id] [varchar](10) NOT NULL,
	[Alternative1] [varchar](50) NULL,
	[Alternative2] [varchar](50) NULL,
	[Alternative3] [varchar](50) NULL,
	[Alternative4] [varchar](50) NULL,
	[IdQuestion] [varchar](10) NULL,
	[CorrectAlternative] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Alternatives] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Answer]    Script Date: 26/04/2023 10:34:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Answer](
	[Id] [varchar](10) NOT NULL,
	[IdStudent] [varchar](10) NOT NULL,
	[IdQuestion] [varchar](10) NOT NULL,
	[Answer] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Answer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chapter]    Script Date: 26/04/2023 10:34:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chapter](
	[Id] [varchar](10) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[IdCourse] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Chapter] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 26/04/2023 10:34:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[Id] [varchar](10) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Credits] [numeric](2, 0) NOT NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CourseRegistration]    Script Date: 26/04/2023 10:34:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseRegistration](
	[Id] [nchar](10) NOT NULL,
	[IdRegistration] [varchar](10) NOT NULL,
	[IdCourse] [varchar](10) NOT NULL,
 CONSTRAINT [PK_CourseRegistration] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exam]    Script Date: 26/04/2023 10:34:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exam](
	[Id] [varchar](10) NOT NULL,
	[Date] [varchar](50) NULL,
	[Score] [numeric](2, 0) NULL,
	[IdChapter] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Exam] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProfessionalSchool]    Script Date: 26/04/2023 10:34:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProfessionalSchool](
	[Id] [varchar](10) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[IdAcademicDepartement] [varchar](10) NOT NULL,
 CONSTRAINT [PK_ProfessionalSchool] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Questions]    Script Date: 26/04/2023 10:34:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Questions](
	[Id] [varchar](10) NOT NULL,
	[Question] [varchar](100) NOT NULL,
	[IdExamen] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Questions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registration]    Script Date: 26/04/2023 10:34:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registration](
	[Id] [varchar](10) NOT NULL,
	[IdStudent] [varchar](10) NOT NULL,
	[IdCourse] [varchar](10) NOT NULL,
	[IdSemestre] [varchar](10) NOT NULL,
	[IdProfesionalSchool] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Registration_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Semester]    Script Date: 26/04/2023 10:34:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Semester](
	[Id] [varchar](10) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[DateStart] [varchar](50) NOT NULL,
	[DateFinish] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Semester] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 26/04/2023 10:34:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[Id] [varchar](10) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 26/04/2023 10:34:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[Id] [varchar](10) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TeacherCourse]    Script Date: 26/04/2023 10:34:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeacherCourse](
	[Id] [nchar](10) NOT NULL,
	[IdTeacher] [varchar](10) NOT NULL,
	[IdCourse] [varchar](10) NOT NULL,
 CONSTRAINT [PK_TeacherCourse] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Alternatives]  WITH CHECK ADD  CONSTRAINT [FK_Alternatives_Questions] FOREIGN KEY([IdQuestion])
REFERENCES [dbo].[Questions] ([Id])
GO
ALTER TABLE [dbo].[Alternatives] CHECK CONSTRAINT [FK_Alternatives_Questions]
GO
ALTER TABLE [dbo].[Answer]  WITH CHECK ADD  CONSTRAINT [FK_Answer_Questions] FOREIGN KEY([IdQuestion])
REFERENCES [dbo].[Questions] ([Id])
GO
ALTER TABLE [dbo].[Answer] CHECK CONSTRAINT [FK_Answer_Questions]
GO
ALTER TABLE [dbo].[Answer]  WITH CHECK ADD  CONSTRAINT [FK_Answer_Student] FOREIGN KEY([IdStudent])
REFERENCES [dbo].[Student] ([Id])
GO
ALTER TABLE [dbo].[Answer] CHECK CONSTRAINT [FK_Answer_Student]
GO
ALTER TABLE [dbo].[Chapter]  WITH CHECK ADD  CONSTRAINT [FK_Chapter_Course] FOREIGN KEY([IdCourse])
REFERENCES [dbo].[Course] ([Id])
GO
ALTER TABLE [dbo].[Chapter] CHECK CONSTRAINT [FK_Chapter_Course]
GO
ALTER TABLE [dbo].[CourseRegistration]  WITH CHECK ADD  CONSTRAINT [FK_CourseRegistration_Course] FOREIGN KEY([IdCourse])
REFERENCES [dbo].[Course] ([Id])
GO
ALTER TABLE [dbo].[CourseRegistration] CHECK CONSTRAINT [FK_CourseRegistration_Course]
GO
ALTER TABLE [dbo].[CourseRegistration]  WITH CHECK ADD  CONSTRAINT [FK_CourseRegistration_Registration] FOREIGN KEY([IdRegistration])
REFERENCES [dbo].[Registration] ([Id])
GO
ALTER TABLE [dbo].[CourseRegistration] CHECK CONSTRAINT [FK_CourseRegistration_Registration]
GO
ALTER TABLE [dbo].[Exam]  WITH CHECK ADD  CONSTRAINT [FK_Exam_Chapter] FOREIGN KEY([IdChapter])
REFERENCES [dbo].[Chapter] ([Id])
GO
ALTER TABLE [dbo].[Exam] CHECK CONSTRAINT [FK_Exam_Chapter]
GO
ALTER TABLE [dbo].[ProfessionalSchool]  WITH CHECK ADD  CONSTRAINT [FK_ProfessionalSchool_AcademicDepartment] FOREIGN KEY([IdAcademicDepartement])
REFERENCES [dbo].[AcademicDepartment] ([Id])
GO
ALTER TABLE [dbo].[ProfessionalSchool] CHECK CONSTRAINT [FK_ProfessionalSchool_AcademicDepartment]
GO
ALTER TABLE [dbo].[Questions]  WITH CHECK ADD  CONSTRAINT [FK_Questions_Exam] FOREIGN KEY([IdExamen])
REFERENCES [dbo].[Exam] ([Id])
GO
ALTER TABLE [dbo].[Questions] CHECK CONSTRAINT [FK_Questions_Exam]
GO
ALTER TABLE [dbo].[Registration]  WITH CHECK ADD  CONSTRAINT [FK_Registration_ProfessionalSchool] FOREIGN KEY([IdProfesionalSchool])
REFERENCES [dbo].[ProfessionalSchool] ([Id])
GO
ALTER TABLE [dbo].[Registration] CHECK CONSTRAINT [FK_Registration_ProfessionalSchool]
GO
ALTER TABLE [dbo].[Registration]  WITH CHECK ADD  CONSTRAINT [FK_Registration_Semester] FOREIGN KEY([IdSemestre])
REFERENCES [dbo].[Semester] ([Id])
GO
ALTER TABLE [dbo].[Registration] CHECK CONSTRAINT [FK_Registration_Semester]
GO
ALTER TABLE [dbo].[Registration]  WITH CHECK ADD  CONSTRAINT [FK_Registration_Student] FOREIGN KEY([IdStudent])
REFERENCES [dbo].[Student] ([Id])
GO
ALTER TABLE [dbo].[Registration] CHECK CONSTRAINT [FK_Registration_Student]
GO
ALTER TABLE [dbo].[TeacherCourse]  WITH CHECK ADD  CONSTRAINT [FK_TeacherCourse_Course] FOREIGN KEY([IdCourse])
REFERENCES [dbo].[Course] ([Id])
GO
ALTER TABLE [dbo].[TeacherCourse] CHECK CONSTRAINT [FK_TeacherCourse_Course]
GO
ALTER TABLE [dbo].[TeacherCourse]  WITH CHECK ADD  CONSTRAINT [FK_TeacherCourse_Teacher] FOREIGN KEY([IdTeacher])
REFERENCES [dbo].[Teacher] ([Id])
GO
ALTER TABLE [dbo].[TeacherCourse] CHECK CONSTRAINT [FK_TeacherCourse_Teacher]
GO
USE [master]
GO
ALTER DATABASE [Notas_DB_practicas_innovar] SET  READ_WRITE 
GO
