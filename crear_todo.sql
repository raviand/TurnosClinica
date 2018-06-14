USE [CLINICA]
GO
/****** Object:  Table [dbo].[USUARIOS]    Script Date: 06/08/2018 17:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[USUARIOS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[USUARIO] [varchar](40) NOT NULL,
	[PASS] [varchar](40) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[USUARIO] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PERMISOS]    Script Date: 06/08/2018 17:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PERMISOS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PERMISO] [char](1) NOT NULL,
	[NOMBRE] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[PERMISO] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[NOMBRE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[provincias]    Script Date: 06/08/2018 17:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[provincias](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[provincia] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TIPO_TEL]    Script Date: 06/08/2018 17:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TIPO_TEL](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRE] [varchar](40) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HORARIOS]    Script Date: 06/08/2018 17:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HORARIOS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[HORA_ABRE] [int] NOT NULL,
	[HORA_CIERRA] [int] NOT NULL,
	[HORA_CORTE] [int] NULL,
	[HORA_CORTE_FIN] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[HORA_ABRE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[HORA_CIERRA] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ESTADO]    Script Date: 06/08/2018 17:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ESTADO](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRE] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ESPECIALIDADES]    Script Date: 06/08/2018 17:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ESPECIALIDADES](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRE] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[NOMBRE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DIAS]    Script Date: 06/08/2018 17:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DIAS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRE] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[COBERTURAS_MEDICAS]    Script Date: 06/08/2018 17:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[COBERTURAS_MEDICAS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRE] [varchar](40) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[NOMBRE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ATENCION_PROFESIONAL]    Script Date: 06/08/2018 17:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ATENCION_PROFESIONAL](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ATENCION] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[localidades]    Script Date: 06/08/2018 17:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[localidades](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_privincia] [int] NOT NULL,
	[localidad] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TELEFONO]    Script Date: 06/08/2018 17:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TELEFONO](
	[NUMERO] [int] NOT NULL,
	[TIPO] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[NUMERO] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PLANES]    Script Date: 06/08/2018 17:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PLANES](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRE] [varchar](40) NOT NULL,
	[ID_COBERTURA] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[NOMBRE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CONSULTORIOS]    Script Date: 06/08/2018 17:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CONSULTORIOS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CALLE] [varchar](40) NOT NULL,
	[ID_LOCALIDAD] [int] NOT NULL,
	[ID_HORARIO] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[CALLE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PROFESIONALES]    Script Date: 06/08/2018 17:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PROFESIONALES](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRE] [varchar](40) NOT NULL,
	[APELLIDO] [varchar](40) NOT NULL,
	[DNI] [int] NOT NULL,
	[CALLE] [varchar](60) NULL,
	[ID_LOCALIDAD] [int] NULL,
	[MAIL] [varchar](60) NOT NULL,
	[FECHA_INGRESO] [date] NULL,
	[FECHA_NACIMIENTO] [date] NULL,
	[PISO] [int] NULL,
	[DEPARTAMENTO] [varchar](5) NULL,
	[CP] [int] NULL,
	[ATIENDE_DOMICILIO] [bit] NOT NULL,
	[ELIMINADO] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[MAIL] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[DNI] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PACIENTES]    Script Date: 06/08/2018 17:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PACIENTES](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRE] [varchar](60) NOT NULL,
	[APELLIDO] [varchar](60) NOT NULL,
	[DNI] [int] NOT NULL,
	[CALLE] [varchar](60) NULL,
	[ID_LOCALIDAD] [int] NOT NULL,
	[FECHA_NACIMIENTO] [date] NOT NULL,
	[PISO] [int] NULL,
	[DEPARTAMENTO] [varchar](5) NULL,
	[CP] [int] NULL,
	[MAIL] [varchar](60) NOT NULL,
	[FECHA_INGRESO] [date] NOT NULL,
	[ELIMINADO] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[MAIL] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[DNI] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DIA_ATENCION_PROFESIONAL]    Script Date: 06/08/2018 17:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIA_ATENCION_PROFESIONAL](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_PROFESIONAL] [int] NOT NULL,
	[ID_DIA] [int] NOT NULL,
	[ID_ATENCION] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ID_PROFESIONAL] ASC,
	[ID_DIA] ASC,
	[ID_ATENCION] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[CV_SELECT_PROFESIONALES]    Script Date: 06/08/2018 17:37:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[CV_SELECT_PROFESIONALES]
AS
SELECT PROFESIONALES.ID,
PROFESIONALES.NOMBRE,
PROFESIONALES.APELLIDO,
PROFESIONALES.DNI,
PROFESIONALES.CALLE,
PROFESIONALES.PISO,
PROFESIONALES.DEPARTAMENTO,
PROFESIONALES.CP,
PROFESIONALES.MAIL,
PROFESIONALES.FECHA_NACIMIENTO,
PROFESIONALES.FECHA_INGRESO,
PROFESIONALES.ATIENDE_DOMICILIO,
provincias.provincia, 
localidades.localidad
FROM PROFESIONALES 
LEFT JOIN localidades ON localidades.id = PROFESIONALES.ID_LOCALIDAD 
LEFT JOIN provincias ON localidades.id_privincia = provincias.id
GO
/****** Object:  Table [dbo].[INTERNACIONES]    Script Date: 06/08/2018 17:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[INTERNACIONES](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_PACIENTE] [int] NOT NULL,
	[DIAGNOSTICO] [varchar](200) NOT NULL,
	[OBSERVACION_ALTA] [varchar](200) NULL,
	[ID_ESPECIALIDAD] [int] NOT NULL,
	[ID_DERIVADOR] [int] NOT NULL,
	[ENTRADA] [date] NOT NULL,
	[SALIDA] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ATENCION]    Script Date: 06/08/2018 17:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ATENCION](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FECHA] [date] NOT NULL,
	[ID_PACIENTE] [int] NOT NULL,
	[ID_PROFESIONAL] [int] NOT NULL,
	[INDICACION] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[COBERTURA_PROFESIONAL]    Script Date: 06/08/2018 17:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COBERTURA_PROFESIONAL](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_PROFESIONAL] [int] NOT NULL,
	[ID_COBERTURA] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ID_PROFESIONAL] ASC,
	[ID_COBERTURA] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[COBERTURA_PACIENTES]    Script Date: 06/08/2018 17:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COBERTURA_PACIENTES](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NUMERO_CREDENCIAL] [int] NULL,
	[ID_PACIENTE] [int] NOT NULL,
	[ID_PLAN] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PACIENTE_TELEFONOS]    Script Date: 06/08/2018 17:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PACIENTE_TELEFONOS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_PACIENTE] [int] NOT NULL,
	[NUMERO] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PROFESIONALES_TELEFONOS]    Script Date: 06/08/2018 17:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROFESIONALES_TELEFONOS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_PROFESIONALES] [int] NOT NULL,
	[NUMERO] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PROFESIONALES_ESPECIALIDADES]    Script Date: 06/08/2018 17:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROFESIONALES_ESPECIALIDADES](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_PROFESIONAL] [int] NOT NULL,
	[ID_ESPECIALIDAD] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[SP_MODIFICAR_PROFESIONAL]    Script Date: 06/08/2018 17:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_MODIFICAR_PROFESIONAL](
@ID INT,
@NOMBRE VARCHAR(40),
@APELLIDO VARCHAR(40),
@DNI INT, 
@CALLE VARCHAR(60),
@ID_LOCALIDAD INT,
@MAIL VARCHAR(60),
@FECHA_NACIMIENTO DATE,
@PISO INT,
@DEPARTAMENTO VARCHAR(5),
@CP INT,
@ATIENDE_DOMICILIO BIT
)AS
UPDATE PROFESIONALES 
SET NOMBRE = @NOMBRE, APELLIDO = @APELLIDO, DNI = @DNI, 
CALLE = @CALLE, ID_LOCALIDAD =  @ID_LOCALIDAD, MAIL = @MAIL, FECHA_NACIMIENTO = @FECHA_NACIMIENTO,
PISO = @PISO, DEPARTAMENTO = @DEPARTAMENTO, CP = @CP, ATIENDE_DOMICILIO = @ATIENDE_DOMICILIO
WHERE ID = @ID
GO
/****** Object:  Table [dbo].[TURNOS]    Script Date: 06/08/2018 17:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TURNOS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_PACIENTE] [int] NOT NULL,
	[ID_ESTADO] [int] NOT NULL,
	[ID_PROFESIONAL] [int] NOT NULL,
	[FECHA_TURNO] [date] NOT NULL,
	[FECHA_SOLICITUD] [date] NULL,
	[HORA_TURNO] [time](0) NOT NULL,
	[ID_ESPECIALIDAD] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[VW_SERVICIOS]    Script Date: 06/08/2018 17:37:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_SERVICIOS]
AS
SELECT CP.ID_COBERTURA , CM.NOMBRE FROM COBERTURA_PROFESIONAL AS CP
INNER JOIN COBERTURAS_MEDICAS AS CM ON CM.ID = ID_COBERTURA
GO
/****** Object:  View [dbo].[VW_SELECT_TURNOS]    Script Date: 06/08/2018 17:37:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_SELECT_TURNOS]
AS
	SELECT P.ID AS ID_PACI, P.NOMBRE AS NOMBRE_PACIENTE, P.APELLIDO AS APELLIDO_PACIENTE, T.FECHA_TURNO, T.HORA_TURNO, 
	E.ID AS ID_ESP, E.NOMBRE AS ESPECIALIDAD, ES.ID AS ID_ESTADO,  ES.NOMBRE AS ESTADO,
	 PRO.ID AS ID_PRO, PRO.NOMBRE AS NOMBRE_PROFESIONAL, PRO.APELLIDO AS APELLIDO_PROFESIONAL , T.ID FROM TURNOS AS T
	INNER JOIN PACIENTES AS P ON P.ID = T.ID_PACIENTE
	INNER JOIN ESPECIALIDADES AS E ON E.ID = T.ID_ESPECIALIDAD
	inner JOIN ESTADO AS ES ON ES.ID = T.ID_ESTADO
	INNER JOIN PROFESIONALES AS PRO ON PRO.ID = T.ID_PROFESIONAL
GO
/****** Object:  View [dbo].[VW_DIAS_ATENCION]    Script Date: 06/08/2018 17:37:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_DIAS_ATENCION]
AS
	SELECT D.NOMBRE AS DIA, AP.ATENCION AS TURNO,P.ID , P.NOMBRE , P.APELLIDO FROM DIA_ATENCION_PROFESIONAL AS DAP
	INNER JOIN DIAS AS D ON D.ID = DAP.ID_DIA
	INNER JOIN ATENCION_PROFESIONAL AS AP ON AP.ID = DAP.ID_ATENCION
	INNER JOIN PROFESIONALES AS P ON P.ID = DAP.ID_PROFESIONAL
GO
/****** Object:  View [dbo].[VW_COBERTURA_PROFESIONAL]    Script Date: 06/08/2018 17:37:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_COBERTURA_PROFESIONAL]
AS
SELECT P.ID AS ID_PROFESIONAL, CM.ID AS ID_COBERTURAS, CM.NOMBRE AS COBERTURA FROM PROFESIONALES AS P
INNER JOIN COBERTURA_PROFESIONAL AS CP ON CP.ID_PROFESIONAL = P.ID
INNER JOIN COBERTURAS_MEDICAS AS CM ON CP.ID_COBERTURA = CM.ID
GO
/****** Object:  View [dbo].[VW_BUSCAR_PACIENTES]    Script Date: 06/08/2018 17:37:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_BUSCAR_PACIENTES]
AS
SELECT P.ID AS ID_PACIENTE,
P.NOMBRE,
P.APELLIDO,
P.DNI,
P.CALLE,
P.PISO,
P.DEPARTAMENTO,
P.CP,
P.MAIL,
P.FECHA_NACIMIENTO,
P.FECHA_INGRESO,
L.id AS ID_LOCALIDAD,
L.localidad AS LOCALIDAD,
PR.id AS ID_PROVINCIA, 
PR.provincia AS PROVINCIA,
CP.NUMERO_CREDENCIAL,
CP.ID_PLAN,
PL.ID_COBERTURA,
CM.NOMBRE AS COBERTURA,
PL.NOMBRE AS NOMBRE_PLAN,
P.ELIMINADO 
FROM PACIENTES as P
LEFT JOIN localidades AS L ON L.id = P.ID_LOCALIDAD 
LEFT JOIN provincias AS PR ON L.id_privincia = PR.id  
LEFT JOIN COBERTURA_PACIENTES AS CP ON CP.ID_PACIENTE = P.ID 
LEFT JOIN PLANES AS PL ON PL.ID = CP.ID_PLAN 
LEFT JOIN COBERTURAS_MEDICAS AS CM ON CM.ID = PL.ID_COBERTURA
GO
/****** Object:  StoredProcedure [dbo].[SP_UPDATE_PACIENTE]    Script Date: 06/08/2018 17:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_UPDATE_PACIENTE](
@ID INT,
@MAIL VARCHAR(60),
@CALLE VARCHAR(60),
@ID_LOCALIDAD INT, 
@PISO INT,
@DEPARTAMENTO VARCHAR(5),
@CP INT,
@ID_PLAN INT,

@NUMERO_CREDENCIAL INT = 0
)
AS
BEGIN TRANSACTION
UPDATE 
	PACIENTES 
SET 
	MAIL = @MAIL,
	CALLE = @CALLE,
	ID_LOCALIDAD = @ID_LOCALIDAD,
	PISO = @PISO,
	DEPARTAMENTO = @DEPARTAMENTO,
	CP = @CP
WHERE ID = @ID;

UPDATE 
	COBERTURA_PACIENTES
SET
	ID_PLAN = @ID_PLAN,
	NUMERO_CREDENCIAL = @NUMERO_CREDENCIAL
WHERE 
	ID_PACIENTE = @ID;
COMMIT
GO
/****** Object:  StoredProcedure [dbo].[SP_PACIENTE_ATENDIDO]    Script Date: 06/08/2018 17:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_PACIENTE_ATENDIDO](
@ID_PACIENTE INT,
@ID_PROFESIONAL INT,
@ID_TURNO INT,
@INDICACION VARCHAR(500)
)AS
BEGIN TRANSACTION
	INSERT INTO 
		ATENCION (FECHA, ID_PACIENTE, ID_PROFESIONAL, INDICACION) 
	VALUES 
		(GETDATE(), @ID_PACIENTE, @ID_PROFESIONAL, @INDICACION);
	UPDATE 
		TURNOS SET ID_ESTADO = 3
		WHERE ID = @ID_TURNO;
COMMIT
GO
/****** Object:  StoredProcedure [dbo].[SP_BORRAR_TEL_PROFESIONAL]    Script Date: 06/08/2018 17:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_BORRAR_TEL_PROFESIONAL]
(@NUMERO INT)
AS
BEGIN TRANSACTION 
DELETE 
	PROFESIONALES_TELEFONOS 
WHERE 
	NUMERO = @NUMERO; 
DELETE 
	TELEFONO 
WHERE 
	NUMERO = @NUMERO; 
COMMIT
GO
/****** Object:  StoredProcedure [dbo].[SP_BORRAR_TEL_PACIENTE]    Script Date: 06/08/2018 17:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_BORRAR_TEL_PACIENTE]
(@NUMERO INT)
AS
BEGIN TRANSACTION 
DELETE 
	PACIENTE_TELEFONOS 
WHERE 
	NUMERO = @NUMERO; 
DELETE 
	TELEFONO 
WHERE 
	NUMERO = @NUMERO; 
COMMIT
GO
/****** Object:  StoredProcedure [dbo].[CARGA_TURNO]    Script Date: 06/08/2018 17:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CARGA_TURNO](
            @ID_PACIENTE INT,
            @ID_PROFESIONAL INT,
            @ID_ESPECIALIDAD INT,
            @FECHA_TURNO DATE,
            @HORA_TURNO TIME(0),
            @ID_ESTADO INT = 1
            )
            AS
            SET DATEFORMAT DMY
		        INSERT INTO TURNOS(ID_PACIENTE, ID_PROFESIONAL, ID_ESPECIALIDAD, FECHA_SOLICITUD, FECHA_TURNO, HORA_TURNO, ID_ESTADO)
		        VALUES (@ID_PACIENTE, @ID_PROFESIONAL, @ID_ESPECIALIDAD, GETDATE(), @FECHA_TURNO, @HORA_TURNO, @ID_ESTADO)
GO
/****** Object:  Table [dbo].[CANCELACIONES]    Script Date: 06/08/2018 17:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CANCELACIONES](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FECHA] [date] NOT NULL,
	[ID_USUARIO] [int] NOT NULL,
	[COMENTARIO] [varchar](80) NULL,
	[ID_TURNO] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Check [CK__HORARIOS__15502E78]    Script Date: 06/08/2018 17:37:34 ******/
ALTER TABLE [dbo].[HORARIOS]  WITH CHECK ADD CHECK  (([HORA_ABRE]<[HORA_CIERRA]))
GO
/****** Object:  Check [CK__HORARIOS__164452B1]    Script Date: 06/08/2018 17:37:34 ******/
ALTER TABLE [dbo].[HORARIOS]  WITH CHECK ADD CHECK  (([HORA_CORTE]<[HORA_CORTE_FIN]))
GO
/****** Object:  Check [CK__HORARIOS__173876EA]    Script Date: 06/08/2018 17:37:34 ******/
ALTER TABLE [dbo].[HORARIOS]  WITH CHECK ADD CHECK  (([HORA_ABRE]<[HORA_CORTE] AND [HORA_CIERRA]>[HORA_CORTE_FIN]))
GO
/****** Object:  ForeignKey [FK__ATENCION__ID_PAC__66603565]    Script Date: 06/08/2018 17:37:34 ******/
ALTER TABLE [dbo].[ATENCION]  WITH CHECK ADD FOREIGN KEY([ID_PACIENTE])
REFERENCES [dbo].[PACIENTES] ([ID])
GO
/****** Object:  ForeignKey [FK__ATENCION__ID_PRO__6754599E]    Script Date: 06/08/2018 17:37:34 ******/
ALTER TABLE [dbo].[ATENCION]  WITH CHECK ADD FOREIGN KEY([ID_PROFESIONAL])
REFERENCES [dbo].[PROFESIONALES] ([ID])
GO
/****** Object:  ForeignKey [FK__CANCELACI__ID_TU__32AB8735]    Script Date: 06/08/2018 17:37:34 ******/
ALTER TABLE [dbo].[CANCELACIONES]  WITH CHECK ADD FOREIGN KEY([ID_TURNO])
REFERENCES [dbo].[TURNOS] ([ID])
GO
/****** Object:  ForeignKey [ID_USUARIO]    Script Date: 06/08/2018 17:37:34 ******/
ALTER TABLE [dbo].[CANCELACIONES]  WITH CHECK ADD  CONSTRAINT [ID_USUARIO] FOREIGN KEY([ID_USUARIO])
REFERENCES [dbo].[USUARIOS] ([ID])
GO
ALTER TABLE [dbo].[CANCELACIONES] CHECK CONSTRAINT [ID_USUARIO]
GO
/****** Object:  ForeignKey [FK__COBERTURA__ID_PA__662B2B3B]    Script Date: 06/08/2018 17:37:34 ******/
ALTER TABLE [dbo].[COBERTURA_PACIENTES]  WITH CHECK ADD FOREIGN KEY([ID_PACIENTE])
REFERENCES [dbo].[PACIENTES] ([ID])
GO
/****** Object:  ForeignKey [FK__COBERTURA__ID_PL__671F4F74]    Script Date: 06/08/2018 17:37:34 ******/
ALTER TABLE [dbo].[COBERTURA_PACIENTES]  WITH CHECK ADD FOREIGN KEY([ID_PLAN])
REFERENCES [dbo].[PLANES] ([ID])
GO
/****** Object:  ForeignKey [FK__COBERTURA__ID_CO__7D0E9093]    Script Date: 06/08/2018 17:37:34 ******/
ALTER TABLE [dbo].[COBERTURA_PROFESIONAL]  WITH CHECK ADD FOREIGN KEY([ID_COBERTURA])
REFERENCES [dbo].[COBERTURAS_MEDICAS] ([ID])
GO
/****** Object:  ForeignKey [FK__COBERTURA__ID_PR__7C1A6C5A]    Script Date: 06/08/2018 17:37:34 ******/
ALTER TABLE [dbo].[COBERTURA_PROFESIONAL]  WITH CHECK ADD FOREIGN KEY([ID_PROFESIONAL])
REFERENCES [dbo].[PROFESIONALES] ([ID])
GO
/****** Object:  ForeignKey [FK__CONSULTOR__ID_HO__2F10007B]    Script Date: 06/08/2018 17:37:34 ******/
ALTER TABLE [dbo].[CONSULTORIOS]  WITH CHECK ADD FOREIGN KEY([ID_HORARIO])
REFERENCES [dbo].[HORARIOS] ([ID])
GO
/****** Object:  ForeignKey [FK_CONSULTORIOS_localidades]    Script Date: 06/08/2018 17:37:34 ******/
ALTER TABLE [dbo].[CONSULTORIOS]  WITH CHECK ADD  CONSTRAINT [FK_CONSULTORIOS_localidades] FOREIGN KEY([ID_LOCALIDAD])
REFERENCES [dbo].[localidades] ([id])
GO
ALTER TABLE [dbo].[CONSULTORIOS] CHECK CONSTRAINT [FK_CONSULTORIOS_localidades]
GO
/****** Object:  ForeignKey [FK__DIA_ATENC__ID_AT__74794A92]    Script Date: 06/08/2018 17:37:34 ******/
ALTER TABLE [dbo].[DIA_ATENCION_PROFESIONAL]  WITH CHECK ADD FOREIGN KEY([ID_ATENCION])
REFERENCES [dbo].[ATENCION_PROFESIONAL] ([ID])
GO
/****** Object:  ForeignKey [FK__DIA_ATENC__ID_DI__73852659]    Script Date: 06/08/2018 17:37:34 ******/
ALTER TABLE [dbo].[DIA_ATENCION_PROFESIONAL]  WITH CHECK ADD FOREIGN KEY([ID_DIA])
REFERENCES [dbo].[DIAS] ([ID])
GO
/****** Object:  ForeignKey [FK__DIA_ATENC__ID_PR__72910220]    Script Date: 06/08/2018 17:37:34 ******/
ALTER TABLE [dbo].[DIA_ATENCION_PROFESIONAL]  WITH CHECK ADD FOREIGN KEY([ID_PROFESIONAL])
REFERENCES [dbo].[PROFESIONALES] ([ID])
GO
/****** Object:  ForeignKey [FK__INTERNACI__ID_DE__619B8048]    Script Date: 06/08/2018 17:37:34 ******/
ALTER TABLE [dbo].[INTERNACIONES]  WITH CHECK ADD FOREIGN KEY([ID_DERIVADOR])
REFERENCES [dbo].[PROFESIONALES] ([ID])
GO
/****** Object:  ForeignKey [FK__INTERNACI__ID_ES__60A75C0F]    Script Date: 06/08/2018 17:37:34 ******/
ALTER TABLE [dbo].[INTERNACIONES]  WITH CHECK ADD FOREIGN KEY([ID_ESPECIALIDAD])
REFERENCES [dbo].[ESPECIALIDADES] ([ID])
GO
/****** Object:  ForeignKey [FK__INTERNACI__ID_PA__5FB337D6]    Script Date: 06/08/2018 17:37:34 ******/
ALTER TABLE [dbo].[INTERNACIONES]  WITH CHECK ADD FOREIGN KEY([ID_PACIENTE])
REFERENCES [dbo].[PACIENTES] ([ID])
GO
/****** Object:  ForeignKey [FK_localidades_provincias]    Script Date: 06/08/2018 17:37:34 ******/
ALTER TABLE [dbo].[localidades]  WITH CHECK ADD  CONSTRAINT [FK_localidades_provincias] FOREIGN KEY([id_privincia])
REFERENCES [dbo].[provincias] ([id])
GO
ALTER TABLE [dbo].[localidades] CHECK CONSTRAINT [FK_localidades_provincias]
GO
/****** Object:  ForeignKey [FK__PACIENTE___ID_PA__44CA3770]    Script Date: 06/08/2018 17:37:34 ******/
ALTER TABLE [dbo].[PACIENTE_TELEFONOS]  WITH CHECK ADD FOREIGN KEY([ID_PACIENTE])
REFERENCES [dbo].[PACIENTES] ([ID])
GO
/****** Object:  ForeignKey [FK__PACIENTE___NUMER__45BE5BA9]    Script Date: 06/08/2018 17:37:34 ******/
ALTER TABLE [dbo].[PACIENTE_TELEFONOS]  WITH CHECK ADD FOREIGN KEY([NUMERO])
REFERENCES [dbo].[TELEFONO] ([NUMERO])
GO
/****** Object:  ForeignKey [FK_PACIENTES_localidades]    Script Date: 06/08/2018 17:37:34 ******/
ALTER TABLE [dbo].[PACIENTES]  WITH CHECK ADD  CONSTRAINT [FK_PACIENTES_localidades] FOREIGN KEY([ID_LOCALIDAD])
REFERENCES [dbo].[localidades] ([id])
GO
ALTER TABLE [dbo].[PACIENTES] CHECK CONSTRAINT [FK_PACIENTES_localidades]
GO
/****** Object:  ForeignKey [FK__PLANES__ID_COBER__3493CFA7]    Script Date: 06/08/2018 17:37:34 ******/
ALTER TABLE [dbo].[PLANES]  WITH CHECK ADD FOREIGN KEY([ID_COBERTURA])
REFERENCES [dbo].[COBERTURAS_MEDICAS] ([ID])
GO
/****** Object:  ForeignKey [FK_PROFESIONALES_localidades]    Script Date: 06/08/2018 17:37:34 ******/
ALTER TABLE [dbo].[PROFESIONALES]  WITH CHECK ADD  CONSTRAINT [FK_PROFESIONALES_localidades] FOREIGN KEY([ID_LOCALIDAD])
REFERENCES [dbo].[localidades] ([id])
GO
ALTER TABLE [dbo].[PROFESIONALES] CHECK CONSTRAINT [FK_PROFESIONALES_localidades]
GO
/****** Object:  ForeignKey [FK__PROFESION__ID_ES__51300E55]    Script Date: 06/08/2018 17:37:34 ******/
ALTER TABLE [dbo].[PROFESIONALES_ESPECIALIDADES]  WITH CHECK ADD FOREIGN KEY([ID_ESPECIALIDAD])
REFERENCES [dbo].[ESPECIALIDADES] ([ID])
GO
/****** Object:  ForeignKey [FK__PROFESION__ID_PR__503BEA1C]    Script Date: 06/08/2018 17:37:34 ******/
ALTER TABLE [dbo].[PROFESIONALES_ESPECIALIDADES]  WITH CHECK ADD FOREIGN KEY([ID_PROFESIONAL])
REFERENCES [dbo].[PROFESIONALES] ([ID])
GO
/****** Object:  ForeignKey [FK__PROFESION__ID_PR__4A8310C6]    Script Date: 06/08/2018 17:37:34 ******/
ALTER TABLE [dbo].[PROFESIONALES_TELEFONOS]  WITH CHECK ADD FOREIGN KEY([ID_PROFESIONALES])
REFERENCES [dbo].[PROFESIONALES] ([ID])
GO
/****** Object:  ForeignKey [FK__PROFESION__NUMER__4B7734FF]    Script Date: 06/08/2018 17:37:34 ******/
ALTER TABLE [dbo].[PROFESIONALES_TELEFONOS]  WITH CHECK ADD FOREIGN KEY([NUMERO])
REFERENCES [dbo].[TELEFONO] ([NUMERO])
GO
/****** Object:  ForeignKey [FK__TELEFONO__TIPO__0519C6AF]    Script Date: 06/08/2018 17:37:34 ******/
ALTER TABLE [dbo].[TELEFONO]  WITH CHECK ADD FOREIGN KEY([TIPO])
REFERENCES [dbo].[TIPO_TEL] ([ID])
GO
/****** Object:  ForeignKey [FK__TURNOS__ID_ESPEC__7FEAFD3E]    Script Date: 06/08/2018 17:37:34 ******/
ALTER TABLE [dbo].[TURNOS]  WITH CHECK ADD FOREIGN KEY([ID_ESPECIALIDAD])
REFERENCES [dbo].[ESPECIALIDADES] ([ID])
GO
/****** Object:  ForeignKey [FK__TURNOS__ID_ESTAD__7E37BEF6]    Script Date: 06/08/2018 17:37:34 ******/
ALTER TABLE [dbo].[TURNOS]  WITH CHECK ADD FOREIGN KEY([ID_ESTADO])
REFERENCES [dbo].[ESTADO] ([ID])
GO
/****** Object:  ForeignKey [FK__TURNOS__ID_PACIE__7D439ABD]    Script Date: 06/08/2018 17:37:34 ******/
ALTER TABLE [dbo].[TURNOS]  WITH CHECK ADD FOREIGN KEY([ID_PACIENTE])
REFERENCES [dbo].[PACIENTES] ([ID])
GO
/****** Object:  ForeignKey [FK__TURNOS__ID_PROFE__7F2BE32F]    Script Date: 06/08/2018 17:37:34 ******/
ALTER TABLE [dbo].[TURNOS]  WITH CHECK ADD FOREIGN KEY([ID_PROFESIONAL])
REFERENCES [dbo].[PROFESIONALES] ([ID])
GO
