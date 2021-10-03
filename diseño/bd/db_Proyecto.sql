USE [master]
GO
/****** Object:  Database [db_Proyecto]    Script Date: 2/10/2021 10:31:23 p. m. ******/
CREATE DATABASE [db_Proyecto]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'db_Proyecto', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\db_Proyecto.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'db_Proyecto_log', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\db_Proyecto_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [db_Proyecto] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db_Proyecto].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [db_Proyecto] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [db_Proyecto] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [db_Proyecto] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [db_Proyecto] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [db_Proyecto] SET ARITHABORT OFF 
GO
ALTER DATABASE [db_Proyecto] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [db_Proyecto] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [db_Proyecto] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [db_Proyecto] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [db_Proyecto] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [db_Proyecto] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [db_Proyecto] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [db_Proyecto] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [db_Proyecto] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [db_Proyecto] SET  DISABLE_BROKER 
GO
ALTER DATABASE [db_Proyecto] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [db_Proyecto] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [db_Proyecto] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [db_Proyecto] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [db_Proyecto] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [db_Proyecto] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [db_Proyecto] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [db_Proyecto] SET RECOVERY FULL 
GO
ALTER DATABASE [db_Proyecto] SET  MULTI_USER 
GO
ALTER DATABASE [db_Proyecto] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [db_Proyecto] SET DB_CHAINING OFF 
GO
ALTER DATABASE [db_Proyecto] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [db_Proyecto] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [db_Proyecto] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [db_Proyecto] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'db_Proyecto', N'ON'
GO
ALTER DATABASE [db_Proyecto] SET QUERY_STORE = OFF
GO
USE [db_Proyecto]
GO
/****** Object:  Table [dbo].[Actividad]    Script Date: 2/10/2021 10:31:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actividad](
	[act_id] [int] IDENTITY(1,1) NOT NULL,
	[act_nombre] [varchar](45) NOT NULL,
	[act_descripcion] [varchar](45) NOT NULL,
	[act_asistencia] [tinyint] NULL,
	[act_fec_inicio] [date] NOT NULL,
	[act_fec_fin] [date] NOT NULL,
	[Competencias_com_id] [int] NOT NULL,
	[Periodo_per_id] [int] NOT NULL,
 CONSTRAINT [PK_Actividad] PRIMARY KEY CLUSTERED 
(
	[act_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Acudiente]    Script Date: 2/10/2021 10:31:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Acudiente](
	[acu_Id] [int] IDENTITY(1,1) NOT NULL,
	[Persona_per_Id] [int] NOT NULL,
	[Estudiante_est_Id] [int] NOT NULL,
	[acu_parentezco] [varchar](50) NULL,
 CONSTRAINT [PK_Acudiente] PRIMARY KEY CLUSTERED 
(
	[acu_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Area]    Script Date: 2/10/2021 10:31:24 p. m. ******/
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
/****** Object:  Table [dbo].[Asignatura]    Script Date: 2/10/2021 10:31:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asignatura](
	[asi_id] [int] IDENTITY(1,1) NOT NULL,
	[asi_nombre] [varchar](45) NOT NULL,
	[asi_descripcion] [varchar](45) NULL,
	[Area_area_id] [int] NOT NULL,
	[Grado_gra_id] [int] NOT NULL,
 CONSTRAINT [PK_Asignatura] PRIMARY KEY CLUSTERED 
(
	[asi_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Asignatura_grupo]    Script Date: 2/10/2021 10:31:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asignatura_grupo](
	[gru_as_id] [int] IDENTITY(1,1) NOT NULL,
	[Asignatura_asi_id] [int] NOT NULL,
	[Docente_doc_Id] [int] NOT NULL,
	[Grupo_gru_id] [int] NOT NULL,
 CONSTRAINT [PK_Asignatura_grupo] PRIMARY KEY CLUSTERED 
(
	[gru_as_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Competencias]    Script Date: 2/10/2021 10:31:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Competencias](
	[com_id] [int] IDENTITY(1,1) NOT NULL,
	[com_nombre] [varchar](45) NOT NULL,
	[com_descripcion] [varchar](250) NOT NULL,
	[Asignatura_asi_id] [int] NOT NULL,
 CONSTRAINT [PK_Competencias] PRIMARY KEY CLUSTERED 
(
	[com_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Docente]    Script Date: 2/10/2021 10:31:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Docente](
	[doc_Id] [int] IDENTITY(1,1) NOT NULL,
	[doc_profesion] [varchar](45) NULL,
	[doc_salario] [float] NULL,
	[Persona_per_Id] [int] NOT NULL,
 CONSTRAINT [PK_Docente] PRIMARY KEY CLUSTERED 
(
	[doc_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estudiante]    Script Date: 2/10/2021 10:31:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estudiante](
	[est_Id] [int] IDENTITY(1,1) NOT NULL,
	[est_fec_nac] [date] NULL,
	[est_padre_per_Id] [int] NULL,
	[per_Id] [int] NULL,
	[est_madre_per_Id] [int] NULL,
 CONSTRAINT [PK__Estudian__40ADECB0B663E1A8] PRIMARY KEY CLUSTERED 
(
	[est_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grado]    Script Date: 2/10/2021 10:31:24 p. m. ******/
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
/****** Object:  Table [dbo].[Grupo]    Script Date: 2/10/2021 10:31:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grupo](
	[gru_id] [int] IDENTITY(1,1) NOT NULL,
	[gru_nombre] [varchar](45) NULL,
	[gru_descripcion] [varchar](250) NULL,
	[director_grupo_per_Id] [int] NOT NULL,
 CONSTRAINT [PK_Grupo] PRIMARY KEY CLUSTERED 
(
	[gru_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Matricula]    Script Date: 2/10/2021 10:31:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Matricula](
	[mat_id] [int] IDENTITY(1,1) NOT NULL,
	[mat_fecha_creacion] [date] NOT NULL,
	[mat_creador] [varchar](250) NOT NULL,
	[Estudiante_est_Id] [int] NOT NULL,
	[Grupo_gru_id] [int] NOT NULL,
 CONSTRAINT [PK_Matricula] PRIMARY KEY CLUSTERED 
(
	[mat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nota_actividad]    Script Date: 2/10/2021 10:31:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nota_actividad](
	[not_act_id] [int] IDENTITY(1,1) NOT NULL,
	[not_act_nota] [float] NOT NULL,
	[not_act_observacion] [varchar](550) NULL,
	[Actividad_act_id] [int] NOT NULL,
	[Estudiante_est_Id] [int] NOT NULL,
 CONSTRAINT [PK_Nota_actividad] PRIMARY KEY CLUSTERED 
(
	[not_act_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nota_asignatura]    Script Date: 2/10/2021 10:31:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nota_asignatura](
	[not_asi_id] [int] IDENTITY(1,1) NOT NULL,
	[not_asi_nota] [float] NOT NULL,
	[not_asi_observacion] [varchar](550) NOT NULL,
	[Asignatura_asi_id] [int] NOT NULL,
	[Estudiante_est_Id] [int] NOT NULL,
 CONSTRAINT [PK_Nota_asignatura] PRIMARY KEY CLUSTERED 
(
	[not_asi_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nota_competencia]    Script Date: 2/10/2021 10:31:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nota_competencia](
	[not_com_id] [int] IDENTITY(1,1) NOT NULL,
	[not_com_nota] [float] NOT NULL,
	[not_com_observacion] [varchar](550) NOT NULL,
	[Competencias_com_id] [int] NOT NULL,
	[Estudiante_est_Id] [int] NOT NULL,
 CONSTRAINT [PK_Nota_competencia] PRIMARY KEY CLUSTERED 
(
	[not_com_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nota_periodo]    Script Date: 2/10/2021 10:31:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nota_periodo](
	[not_per_id] [int] IDENTITY(1,1) NOT NULL,
	[not_per_nota] [float] NOT NULL,
	[not_per_observacion] [varchar](550) NOT NULL,
	[Periodo_per_id] [int] NOT NULL,
	[Estudiante_est_Id] [int] NOT NULL,
 CONSTRAINT [PK_Nota_periodo] PRIMARY KEY CLUSTERED 
(
	[not_per_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Periodo]    Script Date: 2/10/2021 10:31:24 p. m. ******/
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
/****** Object:  Table [dbo].[Persona]    Script Date: 2/10/2021 10:31:24 p. m. ******/
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
ALTER TABLE [dbo].[Actividad]  WITH CHECK ADD  CONSTRAINT [FK_Actividad_Competencias] FOREIGN KEY([Competencias_com_id])
REFERENCES [dbo].[Competencias] ([com_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Actividad] CHECK CONSTRAINT [FK_Actividad_Competencias]
GO
ALTER TABLE [dbo].[Actividad]  WITH CHECK ADD  CONSTRAINT [FK_Actividad_Periodo] FOREIGN KEY([Periodo_per_id])
REFERENCES [dbo].[Periodo] ([per_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Actividad] CHECK CONSTRAINT [FK_Actividad_Periodo]
GO
ALTER TABLE [dbo].[Acudiente]  WITH CHECK ADD  CONSTRAINT [FK_Acudiente_Estudiante] FOREIGN KEY([Estudiante_est_Id])
REFERENCES [dbo].[Estudiante] ([est_Id])
GO
ALTER TABLE [dbo].[Acudiente] CHECK CONSTRAINT [FK_Acudiente_Estudiante]
GO
ALTER TABLE [dbo].[Acudiente]  WITH CHECK ADD  CONSTRAINT [FK_Acudiente_Persona] FOREIGN KEY([Persona_per_Id])
REFERENCES [dbo].[Persona] ([per_Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Acudiente] CHECK CONSTRAINT [FK_Acudiente_Persona]
GO
ALTER TABLE [dbo].[Asignatura]  WITH CHECK ADD  CONSTRAINT [FK_Asignatura_Area] FOREIGN KEY([Area_area_id])
REFERENCES [dbo].[Area] ([area_id])
GO
ALTER TABLE [dbo].[Asignatura] CHECK CONSTRAINT [FK_Asignatura_Area]
GO
ALTER TABLE [dbo].[Asignatura]  WITH CHECK ADD  CONSTRAINT [FK_Asignatura_Grado] FOREIGN KEY([Grado_gra_id])
REFERENCES [dbo].[Grado] ([gra_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Asignatura] CHECK CONSTRAINT [FK_Asignatura_Grado]
GO
ALTER TABLE [dbo].[Asignatura_grupo]  WITH CHECK ADD  CONSTRAINT [FK_Asignatura_grupo_Asignatura] FOREIGN KEY([Asignatura_asi_id])
REFERENCES [dbo].[Asignatura] ([asi_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Asignatura_grupo] CHECK CONSTRAINT [FK_Asignatura_grupo_Asignatura]
GO
ALTER TABLE [dbo].[Asignatura_grupo]  WITH CHECK ADD  CONSTRAINT [FK_Asignatura_grupo_Docente] FOREIGN KEY([Docente_doc_Id])
REFERENCES [dbo].[Docente] ([doc_Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Asignatura_grupo] CHECK CONSTRAINT [FK_Asignatura_grupo_Docente]
GO
ALTER TABLE [dbo].[Asignatura_grupo]  WITH CHECK ADD  CONSTRAINT [FK_Asignatura_grupo_Grupo] FOREIGN KEY([Grupo_gru_id])
REFERENCES [dbo].[Grupo] ([gru_id])
GO
ALTER TABLE [dbo].[Asignatura_grupo] CHECK CONSTRAINT [FK_Asignatura_grupo_Grupo]
GO
ALTER TABLE [dbo].[Docente]  WITH CHECK ADD  CONSTRAINT [FK_Docente_Persona] FOREIGN KEY([Persona_per_Id])
REFERENCES [dbo].[Persona] ([per_Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Docente] CHECK CONSTRAINT [FK_Docente_Persona]
GO
ALTER TABLE [dbo].[Estudiante]  WITH CHECK ADD  CONSTRAINT [FK_Estudiante_Persona] FOREIGN KEY([est_madre_per_Id])
REFERENCES [dbo].[Persona] ([per_Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Estudiante] CHECK CONSTRAINT [FK_Estudiante_Persona]
GO
ALTER TABLE [dbo].[Estudiante]  WITH CHECK ADD  CONSTRAINT [FK_Estudiante_Persona1] FOREIGN KEY([est_padre_per_Id])
REFERENCES [dbo].[Persona] ([per_Id])
GO
ALTER TABLE [dbo].[Estudiante] CHECK CONSTRAINT [FK_Estudiante_Persona1]
GO
ALTER TABLE [dbo].[Estudiante]  WITH CHECK ADD  CONSTRAINT [FK_Estudiante_Persona2] FOREIGN KEY([per_Id])
REFERENCES [dbo].[Persona] ([per_Id])
GO
ALTER TABLE [dbo].[Estudiante] CHECK CONSTRAINT [FK_Estudiante_Persona2]
GO
ALTER TABLE [dbo].[Grupo]  WITH CHECK ADD  CONSTRAINT [FK_Grupo_Persona] FOREIGN KEY([director_grupo_per_Id])
REFERENCES [dbo].[Persona] ([per_Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Grupo] CHECK CONSTRAINT [FK_Grupo_Persona]
GO
ALTER TABLE [dbo].[Matricula]  WITH CHECK ADD  CONSTRAINT [FK_Matricula_Estudiante] FOREIGN KEY([Estudiante_est_Id])
REFERENCES [dbo].[Estudiante] ([est_Id])
GO
ALTER TABLE [dbo].[Matricula] CHECK CONSTRAINT [FK_Matricula_Estudiante]
GO
ALTER TABLE [dbo].[Matricula]  WITH CHECK ADD  CONSTRAINT [FK_Matricula_Grupo] FOREIGN KEY([Grupo_gru_id])
REFERENCES [dbo].[Grupo] ([gru_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Matricula] CHECK CONSTRAINT [FK_Matricula_Grupo]
GO
ALTER TABLE [dbo].[Nota_actividad]  WITH CHECK ADD  CONSTRAINT [FK_Nota_actividad_Actividad] FOREIGN KEY([Actividad_act_id])
REFERENCES [dbo].[Actividad] ([act_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Nota_actividad] CHECK CONSTRAINT [FK_Nota_actividad_Actividad]
GO
ALTER TABLE [dbo].[Nota_actividad]  WITH CHECK ADD  CONSTRAINT [FK_Nota_actividad_Estudiante] FOREIGN KEY([Estudiante_est_Id])
REFERENCES [dbo].[Estudiante] ([est_Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Nota_actividad] CHECK CONSTRAINT [FK_Nota_actividad_Estudiante]
GO
ALTER TABLE [dbo].[Nota_asignatura]  WITH CHECK ADD  CONSTRAINT [FK_Nota_asignatura_Asignatura] FOREIGN KEY([Asignatura_asi_id])
REFERENCES [dbo].[Asignatura] ([asi_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Nota_asignatura] CHECK CONSTRAINT [FK_Nota_asignatura_Asignatura]
GO
ALTER TABLE [dbo].[Nota_asignatura]  WITH CHECK ADD  CONSTRAINT [FK_Nota_asignatura_Estudiante] FOREIGN KEY([Estudiante_est_Id])
REFERENCES [dbo].[Estudiante] ([est_Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Nota_asignatura] CHECK CONSTRAINT [FK_Nota_asignatura_Estudiante]
GO
ALTER TABLE [dbo].[Nota_competencia]  WITH CHECK ADD  CONSTRAINT [FK_Nota_competencia_Competencias] FOREIGN KEY([Competencias_com_id])
REFERENCES [dbo].[Competencias] ([com_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Nota_competencia] CHECK CONSTRAINT [FK_Nota_competencia_Competencias]
GO
ALTER TABLE [dbo].[Nota_competencia]  WITH CHECK ADD  CONSTRAINT [FK_Nota_competencia_Estudiante] FOREIGN KEY([Estudiante_est_Id])
REFERENCES [dbo].[Estudiante] ([est_Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Nota_competencia] CHECK CONSTRAINT [FK_Nota_competencia_Estudiante]
GO
ALTER TABLE [dbo].[Nota_periodo]  WITH CHECK ADD  CONSTRAINT [FK_Nota_periodo_Estudiante] FOREIGN KEY([Estudiante_est_Id])
REFERENCES [dbo].[Estudiante] ([est_Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Nota_periodo] CHECK CONSTRAINT [FK_Nota_periodo_Estudiante]
GO
ALTER TABLE [dbo].[Nota_periodo]  WITH CHECK ADD  CONSTRAINT [FK_Nota_periodo_Periodo] FOREIGN KEY([Periodo_per_id])
REFERENCES [dbo].[Periodo] ([per_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Nota_periodo] CHECK CONSTRAINT [FK_Nota_periodo_Periodo]
GO
USE [master]
GO
ALTER DATABASE [db_Proyecto] SET  READ_WRITE 
GO
