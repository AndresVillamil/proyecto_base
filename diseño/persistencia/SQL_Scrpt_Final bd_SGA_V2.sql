USE [master]
GO
/****** Object:  Database [bd_SGA_V2]    Script Date: 01/10/2021 19:14:52 ******/
CREATE DATABASE [bd_SGA_V2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'bd_SGA_V2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\bd_SGA_V2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'bd_SGA_V2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\bd_SGA_V2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [bd_SGA_V2] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [bd_SGA_V2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [bd_SGA_V2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [bd_SGA_V2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [bd_SGA_V2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [bd_SGA_V2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [bd_SGA_V2] SET ARITHABORT OFF 
GO
ALTER DATABASE [bd_SGA_V2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [bd_SGA_V2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [bd_SGA_V2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [bd_SGA_V2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [bd_SGA_V2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [bd_SGA_V2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [bd_SGA_V2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [bd_SGA_V2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [bd_SGA_V2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [bd_SGA_V2] SET  ENABLE_BROKER 
GO
ALTER DATABASE [bd_SGA_V2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [bd_SGA_V2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [bd_SGA_V2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [bd_SGA_V2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [bd_SGA_V2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [bd_SGA_V2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [bd_SGA_V2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [bd_SGA_V2] SET RECOVERY FULL 
GO
ALTER DATABASE [bd_SGA_V2] SET  MULTI_USER 
GO
ALTER DATABASE [bd_SGA_V2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [bd_SGA_V2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [bd_SGA_V2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [bd_SGA_V2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [bd_SGA_V2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [bd_SGA_V2] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'bd_SGA_V2', N'ON'
GO
ALTER DATABASE [bd_SGA_V2] SET QUERY_STORE = OFF
GO
USE [bd_SGA_V2]
GO
/****** Object:  User [usuario]    Script Date: 01/10/2021 19:14:52 ******/
CREATE USER [usuario] FOR LOGIN [usuario] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [usuario]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [usuario]
GO
/****** Object:  Table [dbo].[Actividad]    Script Date: 01/10/2021 19:14:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actividad](
	[act_id] [int] IDENTITY(1,1) NOT NULL,
	[act_nombre] [varchar](45) NOT NULL,
	[act_not_act_id] [nchar](10) NULL,
	[act_descripcion] [varchar](45) NOT NULL,
	[act_asistencia] [tinyint] NULL,
	[act_fec_inicio] [date] NOT NULL,
	[act_fec_fin] [date] NOT NULL,
	[act_com_id] [int] NOT NULL,
	[act_per_id] [int] NOT NULL,
 CONSTRAINT [PK__Activida__547B97CEF48DF48E] PRIMARY KEY CLUSTERED 
(
	[act_id] ASC,
	[act_com_id] ASC,
	[act_per_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Acudiente]    Script Date: 01/10/2021 19:14:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Acudiente](
	[acu_Id] [int] IDENTITY(1,1) NOT NULL,
	[acu_per_Id] [int] NOT NULL,
	[acu_est_Id] [int] NOT NULL,
	[acu_parentezco] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[acu_Id] ASC,
	[acu_per_Id] ASC,
	[acu_est_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Area]    Script Date: 01/10/2021 19:14:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Area](
	[area_id] [int] IDENTITY(1,1) NOT NULL,
	[area_nombre] [varchar](45) NOT NULL,
	[area_descripcion] [varchar](45) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[area_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Asignatura]    Script Date: 01/10/2021 19:14:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asignatura](
	[asi_id] [int] IDENTITY(1,1) NOT NULL,
	[asi_nombre] [varchar](45) NOT NULL,
	[asi_descripcion] [varchar](45) NULL,
	[asi_area_id] [int] NOT NULL,
	[asi_gra_id] [int] NOT NULL,
 CONSTRAINT [PK_Asignatura] PRIMARY KEY CLUSTERED 
(
	[asi_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Asignatura_grupo]    Script Date: 01/10/2021 19:14:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asignatura_grupo](
	[gru_as_id] [int] IDENTITY(1,1) NOT NULL,
	[gru_asi_id] [int] NOT NULL,
	[gru_asi_doc_Id] [int] NOT NULL,
	[gru_asi_gru_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[gru_as_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Competencias]    Script Date: 01/10/2021 19:14:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Competencias](
	[com_id] [int] IDENTITY(1,1) NOT NULL,
	[com_nombre] [varchar](45) NOT NULL,
	[com_descripcion] [varchar](250) NOT NULL,
	[com_asi_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[com_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Docente]    Script Date: 01/10/2021 19:14:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Docente](
	[doc_Id] [int] IDENTITY(1,1) NOT NULL,
	[doc_profesion] [varchar](45) NULL,
	[doc_salario] [float] NULL,
	[doc_per_Id] [int] NOT NULL,
 CONSTRAINT [PK_Docente] PRIMARY KEY CLUSTERED 
(
	[doc_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estudiante]    Script Date: 01/10/2021 19:14:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estudiante](
	[est_Id] [int] IDENTITY(1,1) NOT NULL,
	[est_fec_nac] [date] NULL,
	[est_padre_per_Id] [int] NULL,
	[est_madre_per_Id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[est_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grado]    Script Date: 01/10/2021 19:14:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grado](
	[gra_id] [int] IDENTITY(1,1) NOT NULL,
	[gra_nombre] [varchar](45) NOT NULL,
	[gra_descripcion] [varchar](250) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[gra_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grupo]    Script Date: 01/10/2021 19:14:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grupo](
	[gru_id] [int] IDENTITY(1,1) NOT NULL,
	[gru_nombre] [varchar](45) NULL,
	[gru_descripcion] [varchar](250) NULL,
	[gru_est_Id] [int] NOT NULL,
 CONSTRAINT [PK_Grupo] PRIMARY KEY CLUSTERED 
(
	[gru_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Matricula]    Script Date: 01/10/2021 19:14:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Matricula](
	[mat_id] [int] IDENTITY(1,1) NOT NULL,
	[mat_fecha_creacion] [date] NOT NULL,
	[mat_creador] [varchar](250) NOT NULL,
	[mat_est_Id] [int] NOT NULL,
	[mat_gru_id] [int] NOT NULL,
 CONSTRAINT [PK_Matricula] PRIMARY KEY CLUSTERED 
(
	[mat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nota_actividad]    Script Date: 01/10/2021 19:14:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nota_actividad](
	[not_act_id] [int] IDENTITY(1,1) NOT NULL,
	[not_act_nota] [float] NOT NULL,
	[not_act_observacion] [text] NULL,
	[not_est_Id] [int] NOT NULL,
 CONSTRAINT [PK_Nota_actividad] PRIMARY KEY CLUSTERED 
(
	[not_act_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nota_asignatura]    Script Date: 01/10/2021 19:14:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nota_asignatura](
	[not_asi_id] [int] IDENTITY(1,1) NOT NULL,
	[not_asi_nota] [float] NOT NULL,
	[not_asi_observacion] [text] NOT NULL,
	[not_asi_est_Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[not_asi_id] ASC,
	[not_asi_est_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nota_competencia]    Script Date: 01/10/2021 19:14:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nota_competencia](
	[not_com_id] [int] IDENTITY(1,1) NOT NULL,
	[not_com_nota] [float] NOT NULL,
	[not_com_observacion] [text] NOT NULL,
	[not_est_Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[not_com_id] ASC,
	[not_est_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nota_periodo]    Script Date: 01/10/2021 19:14:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nota_periodo](
	[not_per_id] [int] IDENTITY(1,1) NOT NULL,
	[not_per_nota] [float] NOT NULL,
	[not_per_observacion] [text] NOT NULL,
	[not_est_Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[not_per_id] ASC,
	[not_est_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Periodo]    Script Date: 01/10/2021 19:14:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Periodo](
	[per_id] [int] IDENTITY(1,1) NOT NULL,
	[per_nombre] [varchar](45) NOT NULL,
	[per_descripcion] [varchar](250) NOT NULL,
	[per_fec_inicio] [date] NOT NULL,
	[per_fec_fin] [date] NOT NULL,
	[per_codigo] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[per_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Persona]    Script Date: 01/10/2021 19:14:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persona](
	[per_Id] [int] IDENTITY(1,1) NOT NULL,
	[per_nombres] [varchar](45) NOT NULL,
	[per_apellidos] [varchar](45) NOT NULL,
	[per_identificacion] [varchar](45) NOT NULL,
	[per_telefono] [varchar](45) NOT NULL,
	[per_mail] [varchar](45) NOT NULL,
	[per_direccion] [varchar](45) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[per_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Actividad]  WITH CHECK ADD  CONSTRAINT [fk_Actividad_Competencias1] FOREIGN KEY([act_com_id])
REFERENCES [dbo].[Competencias] ([com_id])
GO
ALTER TABLE [dbo].[Actividad] CHECK CONSTRAINT [fk_Actividad_Competencias1]
GO
ALTER TABLE [dbo].[Actividad]  WITH CHECK ADD  CONSTRAINT [FK_Actividad_Nota_actividad] FOREIGN KEY([act_id])
REFERENCES [dbo].[Nota_actividad] ([not_act_id])
GO
ALTER TABLE [dbo].[Actividad] CHECK CONSTRAINT [FK_Actividad_Nota_actividad]
GO
ALTER TABLE [dbo].[Actividad]  WITH CHECK ADD  CONSTRAINT [fk_Actividad_Periodo1] FOREIGN KEY([act_per_id])
REFERENCES [dbo].[Periodo] ([per_id])
GO
ALTER TABLE [dbo].[Actividad] CHECK CONSTRAINT [fk_Actividad_Periodo1]
GO
ALTER TABLE [dbo].[Acudiente]  WITH CHECK ADD  CONSTRAINT [fk_Acudiente_Estudiante1] FOREIGN KEY([acu_est_Id])
REFERENCES [dbo].[Estudiante] ([est_Id])
GO
ALTER TABLE [dbo].[Acudiente] CHECK CONSTRAINT [fk_Acudiente_Estudiante1]
GO
ALTER TABLE [dbo].[Acudiente]  WITH CHECK ADD  CONSTRAINT [fk_Docente_Persona10] FOREIGN KEY([acu_per_Id])
REFERENCES [dbo].[Persona] ([per_Id])
GO
ALTER TABLE [dbo].[Acudiente] CHECK CONSTRAINT [fk_Docente_Persona10]
GO
ALTER TABLE [dbo].[Asignatura]  WITH CHECK ADD  CONSTRAINT [FK_Asignatura_Area] FOREIGN KEY([asi_area_id])
REFERENCES [dbo].[Area] ([area_id])
GO
ALTER TABLE [dbo].[Asignatura] CHECK CONSTRAINT [FK_Asignatura_Area]
GO
ALTER TABLE [dbo].[Asignatura]  WITH CHECK ADD  CONSTRAINT [FK_Asignatura_Grado] FOREIGN KEY([asi_area_id])
REFERENCES [dbo].[Grado] ([gra_id])
GO
ALTER TABLE [dbo].[Asignatura] CHECK CONSTRAINT [FK_Asignatura_Grado]
GO
ALTER TABLE [dbo].[Asignatura_grupo]  WITH CHECK ADD  CONSTRAINT [FK_Asignatura_grupo_Asignatura] FOREIGN KEY([gru_asi_id])
REFERENCES [dbo].[Asignatura] ([asi_id])
GO
ALTER TABLE [dbo].[Asignatura_grupo] CHECK CONSTRAINT [FK_Asignatura_grupo_Asignatura]
GO
ALTER TABLE [dbo].[Asignatura_grupo]  WITH CHECK ADD  CONSTRAINT [FK_Asignatura_grupo_Docente] FOREIGN KEY([gru_asi_doc_Id])
REFERENCES [dbo].[Docente] ([doc_Id])
GO
ALTER TABLE [dbo].[Asignatura_grupo] CHECK CONSTRAINT [FK_Asignatura_grupo_Docente]
GO
ALTER TABLE [dbo].[Asignatura_grupo]  WITH CHECK ADD  CONSTRAINT [FK_Asignatura_grupo_Estudiante] FOREIGN KEY([gru_asi_doc_Id])
REFERENCES [dbo].[Estudiante] ([est_Id])
GO
ALTER TABLE [dbo].[Asignatura_grupo] CHECK CONSTRAINT [FK_Asignatura_grupo_Estudiante]
GO
ALTER TABLE [dbo].[Asignatura_grupo]  WITH CHECK ADD  CONSTRAINT [FK_Asignatura_grupo_Grupo] FOREIGN KEY([gru_asi_gru_id])
REFERENCES [dbo].[Grupo] ([gru_id])
GO
ALTER TABLE [dbo].[Asignatura_grupo] CHECK CONSTRAINT [FK_Asignatura_grupo_Grupo]
GO
ALTER TABLE [dbo].[Competencias]  WITH CHECK ADD  CONSTRAINT [FK_Competencias_Asignatura] FOREIGN KEY([com_asi_id])
REFERENCES [dbo].[Asignatura] ([asi_id])
GO
ALTER TABLE [dbo].[Competencias] CHECK CONSTRAINT [FK_Competencias_Asignatura]
GO
ALTER TABLE [dbo].[Docente]  WITH CHECK ADD  CONSTRAINT [fk_Docente_Persona1] FOREIGN KEY([doc_per_Id])
REFERENCES [dbo].[Persona] ([per_Id])
GO
ALTER TABLE [dbo].[Docente] CHECK CONSTRAINT [fk_Docente_Persona1]
GO
ALTER TABLE [dbo].[Estudiante]  WITH CHECK ADD  CONSTRAINT [fk_Estudiante_Persona2] FOREIGN KEY([est_padre_per_Id])
REFERENCES [dbo].[Persona] ([per_Id])
GO
ALTER TABLE [dbo].[Estudiante] CHECK CONSTRAINT [fk_Estudiante_Persona2]
GO
ALTER TABLE [dbo].[Estudiante]  WITH CHECK ADD  CONSTRAINT [fk_Estudiante_Persona3] FOREIGN KEY([est_madre_per_Id])
REFERENCES [dbo].[Persona] ([per_Id])
GO
ALTER TABLE [dbo].[Estudiante] CHECK CONSTRAINT [fk_Estudiante_Persona3]
GO
ALTER TABLE [dbo].[Matricula]  WITH CHECK ADD  CONSTRAINT [fk_Matricula_Estudiante1] FOREIGN KEY([mat_est_Id])
REFERENCES [dbo].[Estudiante] ([est_Id])
GO
ALTER TABLE [dbo].[Matricula] CHECK CONSTRAINT [fk_Matricula_Estudiante1]
GO
ALTER TABLE [dbo].[Matricula]  WITH CHECK ADD  CONSTRAINT [FK_Matricula_Grupo] FOREIGN KEY([mat_est_Id])
REFERENCES [dbo].[Grupo] ([gru_id])
GO
ALTER TABLE [dbo].[Matricula] CHECK CONSTRAINT [FK_Matricula_Grupo]
GO
ALTER TABLE [dbo].[Nota_actividad]  WITH CHECK ADD  CONSTRAINT [fk_Nota_actividad_Estudiante1] FOREIGN KEY([not_est_Id])
REFERENCES [dbo].[Estudiante] ([est_Id])
GO
ALTER TABLE [dbo].[Nota_actividad] CHECK CONSTRAINT [fk_Nota_actividad_Estudiante1]
GO
ALTER TABLE [dbo].[Nota_asignatura]  WITH CHECK ADD  CONSTRAINT [FK_Nota_asignatura_Asignatura] FOREIGN KEY([not_asi_id])
REFERENCES [dbo].[Asignatura] ([asi_id])
GO
ALTER TABLE [dbo].[Nota_asignatura] CHECK CONSTRAINT [FK_Nota_asignatura_Asignatura]
GO
ALTER TABLE [dbo].[Nota_asignatura]  WITH CHECK ADD  CONSTRAINT [fk_Nota_asignatura_Estudiante1] FOREIGN KEY([not_asi_est_Id])
REFERENCES [dbo].[Estudiante] ([est_Id])
GO
ALTER TABLE [dbo].[Nota_asignatura] CHECK CONSTRAINT [fk_Nota_asignatura_Estudiante1]
GO
ALTER TABLE [dbo].[Nota_competencia]  WITH CHECK ADD  CONSTRAINT [fk_Nota_competencia_Competencias1] FOREIGN KEY([not_com_id])
REFERENCES [dbo].[Competencias] ([com_id])
GO
ALTER TABLE [dbo].[Nota_competencia] CHECK CONSTRAINT [fk_Nota_competencia_Competencias1]
GO
ALTER TABLE [dbo].[Nota_competencia]  WITH CHECK ADD  CONSTRAINT [fk_Nota_competencia_Estudiante1] FOREIGN KEY([not_est_Id])
REFERENCES [dbo].[Estudiante] ([est_Id])
GO
ALTER TABLE [dbo].[Nota_competencia] CHECK CONSTRAINT [fk_Nota_competencia_Estudiante1]
GO
ALTER TABLE [dbo].[Nota_periodo]  WITH CHECK ADD  CONSTRAINT [fk_Nota_periodo_Estudiante1] FOREIGN KEY([not_est_Id])
REFERENCES [dbo].[Estudiante] ([est_Id])
GO
ALTER TABLE [dbo].[Nota_periodo] CHECK CONSTRAINT [fk_Nota_periodo_Estudiante1]
GO
ALTER TABLE [dbo].[Nota_periodo]  WITH CHECK ADD  CONSTRAINT [fk_Nota_periodo_Periodo1] FOREIGN KEY([not_per_id])
REFERENCES [dbo].[Periodo] ([per_id])
GO
ALTER TABLE [dbo].[Nota_periodo] CHECK CONSTRAINT [fk_Nota_periodo_Periodo1]
GO
USE [master]
GO
ALTER DATABASE [bd_SGA_V2] SET  READ_WRITE 
GO
