USE [CLINICA]
GO
/****** Object:  Table [dbo].[TIPO_TEL]    Script Date: 06/22/2018 21:30:35 ******/
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
SET IDENTITY_INSERT [dbo].[TIPO_TEL] ON
INSERT [dbo].[TIPO_TEL] ([ID], [NOMBRE]) VALUES (1, N'CELULAR')
INSERT [dbo].[TIPO_TEL] ([ID], [NOMBRE]) VALUES (2, N'CASA')
INSERT [dbo].[TIPO_TEL] ([ID], [NOMBRE]) VALUES (3, N'TRABAJO')
INSERT [dbo].[TIPO_TEL] ([ID], [NOMBRE]) VALUES (4, N'OTRO')
SET IDENTITY_INSERT [dbo].[TIPO_TEL] OFF
/****** Object:  Table [dbo].[PERMISOS]    Script Date: 06/22/2018 21:30:35 ******/
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
SET IDENTITY_INSERT [dbo].[PERMISOS] ON
INSERT [dbo].[PERMISOS] ([ID], [PERMISO], [NOMBRE]) VALUES (6, N'R', N'Full')
INSERT [dbo].[PERMISOS] ([ID], [PERMISO], [NOMBRE]) VALUES (7, N'S', N'Secretaria')
INSERT [dbo].[PERMISOS] ([ID], [PERMISO], [NOMBRE]) VALUES (8, N'P', N'Profesional')
SET IDENTITY_INSERT [dbo].[PERMISOS] OFF
/****** Object:  Table [dbo].[provincias]    Script Date: 06/22/2018 21:30:35 ******/
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
SET IDENTITY_INSERT [dbo].[provincias] ON
INSERT [dbo].[provincias] ([id], [provincia]) VALUES (1, N'Buenos Aires')
INSERT [dbo].[provincias] ([id], [provincia]) VALUES (2, N'Buenos Aires-GBA')
INSERT [dbo].[provincias] ([id], [provincia]) VALUES (3, N'Capital Federal')
INSERT [dbo].[provincias] ([id], [provincia]) VALUES (4, N'Catamarca')
INSERT [dbo].[provincias] ([id], [provincia]) VALUES (5, N'Chaco')
INSERT [dbo].[provincias] ([id], [provincia]) VALUES (6, N'Chubut')
INSERT [dbo].[provincias] ([id], [provincia]) VALUES (7, N'Córdoba')
INSERT [dbo].[provincias] ([id], [provincia]) VALUES (8, N'Corrientes')
INSERT [dbo].[provincias] ([id], [provincia]) VALUES (9, N'Entre Ríos')
INSERT [dbo].[provincias] ([id], [provincia]) VALUES (10, N'Formosa')
INSERT [dbo].[provincias] ([id], [provincia]) VALUES (11, N'Jujuy')
INSERT [dbo].[provincias] ([id], [provincia]) VALUES (12, N'La Pampa')
INSERT [dbo].[provincias] ([id], [provincia]) VALUES (13, N'La Rioja')
INSERT [dbo].[provincias] ([id], [provincia]) VALUES (14, N'Mendoza')
INSERT [dbo].[provincias] ([id], [provincia]) VALUES (15, N'Misiones')
INSERT [dbo].[provincias] ([id], [provincia]) VALUES (16, N'Neuquén')
INSERT [dbo].[provincias] ([id], [provincia]) VALUES (17, N'Río Negro')
INSERT [dbo].[provincias] ([id], [provincia]) VALUES (18, N'Salta')
INSERT [dbo].[provincias] ([id], [provincia]) VALUES (19, N'San Juan')
INSERT [dbo].[provincias] ([id], [provincia]) VALUES (20, N'San Luis')
INSERT [dbo].[provincias] ([id], [provincia]) VALUES (21, N'Santa Cruz')
INSERT [dbo].[provincias] ([id], [provincia]) VALUES (22, N'Santa Fe')
INSERT [dbo].[provincias] ([id], [provincia]) VALUES (23, N'Santiago del Estero')
INSERT [dbo].[provincias] ([id], [provincia]) VALUES (24, N'Tierra del Fuego')
INSERT [dbo].[provincias] ([id], [provincia]) VALUES (25, N'Tucumán')
SET IDENTITY_INSERT [dbo].[provincias] OFF
/****** Object:  Table [dbo].[HORARIOS]    Script Date: 06/22/2018 21:30:35 ******/
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
/****** Object:  Table [dbo].[ESTADO]    Script Date: 06/22/2018 21:30:35 ******/
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
SET IDENTITY_INSERT [dbo].[ESTADO] ON
INSERT [dbo].[ESTADO] ([ID], [NOMBRE]) VALUES (1, N'ACTIVO')
INSERT [dbo].[ESTADO] ([ID], [NOMBRE]) VALUES (2, N'CANCELADO')
INSERT [dbo].[ESTADO] ([ID], [NOMBRE]) VALUES (3, N'ATENDIDO')
INSERT [dbo].[ESTADO] ([ID], [NOMBRE]) VALUES (4, N'SOBRETURNO')
SET IDENTITY_INSERT [dbo].[ESTADO] OFF
/****** Object:  Table [dbo].[ESPECIALIDADES]    Script Date: 06/22/2018 21:30:35 ******/
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
SET IDENTITY_INSERT [dbo].[ESPECIALIDADES] ON
INSERT [dbo].[ESPECIALIDADES] ([ID], [NOMBRE]) VALUES (1, N'Alergología')
INSERT [dbo].[ESPECIALIDADES] ([ID], [NOMBRE]) VALUES (46, N'Análisis clínicos')
INSERT [dbo].[ESPECIALIDADES] ([ID], [NOMBRE]) VALUES (47, N'Anatomía patológica')
INSERT [dbo].[ESPECIALIDADES] ([ID], [NOMBRE]) VALUES (4, N'Anestesiología y reanimación')
INSERT [dbo].[ESPECIALIDADES] ([ID], [NOMBRE]) VALUES (48, N'Bioquímica clínica')
INSERT [dbo].[ESPECIALIDADES] ([ID], [NOMBRE]) VALUES (5, N'Cardiología')
INSERT [dbo].[ESPECIALIDADES] ([ID], [NOMBRE]) VALUES (24, N'Cirugía cardiovascular')
INSERT [dbo].[ESPECIALIDADES] ([ID], [NOMBRE]) VALUES (34, N'Cirugía estética')
INSERT [dbo].[ESPECIALIDADES] ([ID], [NOMBRE]) VALUES (27, N'Cirugía general')
INSERT [dbo].[ESPECIALIDADES] ([ID], [NOMBRE]) VALUES (28, N'Cirugía oral y maxilofacial')
INSERT [dbo].[ESPECIALIDADES] ([ID], [NOMBRE]) VALUES (30, N'Cirugía ortopédica')
INSERT [dbo].[ESPECIALIDADES] ([ID], [NOMBRE]) VALUES (32, N'Cirugía pediátrica')
INSERT [dbo].[ESPECIALIDADES] ([ID], [NOMBRE]) VALUES (33, N'Cirugía plástica')
INSERT [dbo].[ESPECIALIDADES] ([ID], [NOMBRE]) VALUES (35, N'Cirugía reparadora')
INSERT [dbo].[ESPECIALIDADES] ([ID], [NOMBRE]) VALUES (36, N'Cirugía torácica')
INSERT [dbo].[ESPECIALIDADES] ([ID], [NOMBRE]) VALUES (31, N'Cirugía traumatología')
INSERT [dbo].[ESPECIALIDADES] ([ID], [NOMBRE]) VALUES (39, N'cirugía vascular')
INSERT [dbo].[ESPECIALIDADES] ([ID], [NOMBRE]) VALUES (41, N'Dermatología ')
INSERT [dbo].[ESPECIALIDADES] ([ID], [NOMBRE]) VALUES (7, N'Endocrinología')
INSERT [dbo].[ESPECIALIDADES] ([ID], [NOMBRE]) VALUES (49, N'Farmacología clínica')
INSERT [dbo].[ESPECIALIDADES] ([ID], [NOMBRE]) VALUES (6, N'Gastroenterología')
INSERT [dbo].[ESPECIALIDADES] ([ID], [NOMBRE]) VALUES (50, N'Genética médica')
INSERT [dbo].[ESPECIALIDADES] ([ID], [NOMBRE]) VALUES (8, N'Geriatría')
INSERT [dbo].[ESPECIALIDADES] ([ID], [NOMBRE]) VALUES (9, N'Ginecología')
INSERT [dbo].[ESPECIALIDADES] ([ID], [NOMBRE]) VALUES (10, N'Hematología y hemoterapia')
INSERT [dbo].[ESPECIALIDADES] ([ID], [NOMBRE]) VALUES (11, N'Infectología')
INSERT [dbo].[ESPECIALIDADES] ([ID], [NOMBRE]) VALUES (51, N'Inmunología')
INSERT [dbo].[ESPECIALIDADES] ([ID], [NOMBRE]) VALUES (56, N'Kinesiología')
INSERT [dbo].[ESPECIALIDADES] ([ID], [NOMBRE]) VALUES (52, N'Microbiología ')
INSERT [dbo].[ESPECIALIDADES] ([ID], [NOMBRE]) VALUES (12, N'Nefrología')
INSERT [dbo].[ESPECIALIDADES] ([ID], [NOMBRE]) VALUES (13, N'Neumología')
INSERT [dbo].[ESPECIALIDADES] ([ID], [NOMBRE]) VALUES (37, N'Neurocirugía')
INSERT [dbo].[ESPECIALIDADES] ([ID], [NOMBRE]) VALUES (54, N'Neurofisiología clínica')
INSERT [dbo].[ESPECIALIDADES] ([ID], [NOMBRE]) VALUES (14, N'Neurología')
INSERT [dbo].[ESPECIALIDADES] ([ID], [NOMBRE]) VALUES (15, N'Nutriología')
INSERT [dbo].[ESPECIALIDADES] ([ID], [NOMBRE]) VALUES (43, N'obstetricia ')
INSERT [dbo].[ESPECIALIDADES] ([ID], [NOMBRE]) VALUES (42, N'Odontología')
INSERT [dbo].[ESPECIALIDADES] ([ID], [NOMBRE]) VALUES (16, N'Oftalmología')
INSERT [dbo].[ESPECIALIDADES] ([ID], [NOMBRE]) VALUES (17, N'Oncología médica')
INSERT [dbo].[ESPECIALIDADES] ([ID], [NOMBRE]) VALUES (18, N'Oncología radioterápica')
INSERT [dbo].[ESPECIALIDADES] ([ID], [NOMBRE]) VALUES (44, N'Otorrinolaringología')
INSERT [dbo].[ESPECIALIDADES] ([ID], [NOMBRE]) VALUES (53, N'parasitología')
INSERT [dbo].[ESPECIALIDADES] ([ID], [NOMBRE]) VALUES (19, N'Pediatría')
INSERT [dbo].[ESPECIALIDADES] ([ID], [NOMBRE]) VALUES (38, N'Proctología')
INSERT [dbo].[ESPECIALIDADES] ([ID], [NOMBRE]) VALUES (20, N'Psiquiatría')
INSERT [dbo].[ESPECIALIDADES] ([ID], [NOMBRE]) VALUES (55, N'Radiología')
INSERT [dbo].[ESPECIALIDADES] ([ID], [NOMBRE]) VALUES (21, N'Rehabilitación')
INSERT [dbo].[ESPECIALIDADES] ([ID], [NOMBRE]) VALUES (22, N'Reumatología')
INSERT [dbo].[ESPECIALIDADES] ([ID], [NOMBRE]) VALUES (45, N'Traumatología')
INSERT [dbo].[ESPECIALIDADES] ([ID], [NOMBRE]) VALUES (23, N'Urología')
SET IDENTITY_INSERT [dbo].[ESPECIALIDADES] OFF
/****** Object:  Table [dbo].[DIAS]    Script Date: 06/22/2018 21:30:35 ******/
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
SET IDENTITY_INSERT [dbo].[DIAS] ON
INSERT [dbo].[DIAS] ([ID], [NOMBRE]) VALUES (1, N'LUNES')
INSERT [dbo].[DIAS] ([ID], [NOMBRE]) VALUES (2, N'MARTES')
INSERT [dbo].[DIAS] ([ID], [NOMBRE]) VALUES (3, N'MIERCOLES')
INSERT [dbo].[DIAS] ([ID], [NOMBRE]) VALUES (4, N'JUEVES')
INSERT [dbo].[DIAS] ([ID], [NOMBRE]) VALUES (5, N'VIERNES')
INSERT [dbo].[DIAS] ([ID], [NOMBRE]) VALUES (6, N'SABADO')
INSERT [dbo].[DIAS] ([ID], [NOMBRE]) VALUES (7, N'DOMINGO')
SET IDENTITY_INSERT [dbo].[DIAS] OFF
/****** Object:  Table [dbo].[COBERTURAS_MEDICAS]    Script Date: 06/22/2018 21:30:35 ******/
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
SET IDENTITY_INSERT [dbo].[COBERTURAS_MEDICAS] ON
INSERT [dbo].[COBERTURAS_MEDICAS] ([ID], [NOMBRE]) VALUES (2, N'GALENO')
INSERT [dbo].[COBERTURAS_MEDICAS] ([ID], [NOMBRE]) VALUES (8, N'IOMA')
INSERT [dbo].[COBERTURAS_MEDICAS] ([ID], [NOMBRE]) VALUES (3, N'MEDICUS')
INSERT [dbo].[COBERTURAS_MEDICAS] ([ID], [NOMBRE]) VALUES (5, N'NO TIENE')
INSERT [dbo].[COBERTURAS_MEDICAS] ([ID], [NOMBRE]) VALUES (4, N'PAMI')
INSERT [dbo].[COBERTURAS_MEDICAS] ([ID], [NOMBRE]) VALUES (1, N'SWISS MEDICAL')
SET IDENTITY_INSERT [dbo].[COBERTURAS_MEDICAS] OFF
/****** Object:  Table [dbo].[ATENCION_PROFESIONAL]    Script Date: 06/22/2018 21:30:35 ******/
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
SET IDENTITY_INSERT [dbo].[ATENCION_PROFESIONAL] ON
INSERT [dbo].[ATENCION_PROFESIONAL] ([ID], [ATENCION]) VALUES (1, N'Mañana')
INSERT [dbo].[ATENCION_PROFESIONAL] ([ID], [ATENCION]) VALUES (2, N'Tarde')
INSERT [dbo].[ATENCION_PROFESIONAL] ([ID], [ATENCION]) VALUES (3, N'Todo El Dia')
SET IDENTITY_INSERT [dbo].[ATENCION_PROFESIONAL] OFF
/****** Object:  Table [dbo].[localidades]    Script Date: 06/22/2018 21:30:35 ******/
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
SET IDENTITY_INSERT [dbo].[localidades] ON
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1, 1, N'25 de Mayo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2, 1, N'3 de febrero')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (3, 1, N'A. Alsina')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (4, 1, N'A. Gonzáles Cháves')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (5, 1, N'Aguas Verdes')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (6, 1, N'Alberti')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (7, 1, N'Arrecifes')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (8, 1, N'Ayacucho')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (9, 1, N'Azul')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (10, 1, N'Bahía Blanca')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (11, 1, N'Balcarce')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (12, 1, N'Baradero')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (13, 1, N'Benito Juárez')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (14, 1, N'Berisso')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (15, 1, N'Bolívar')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (16, 1, N'Bragado')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (17, 1, N'Brandsen')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (18, 1, N'Campana')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (19, 1, N'Cañuelas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (20, 1, N'Capilla del Señor')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (21, 1, N'Capitán Sarmiento')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (22, 1, N'Carapachay')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (23, 1, N'Carhue')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (24, 1, N'Cariló')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (25, 1, N'Carlos Casares')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (26, 1, N'Carlos Tejedor')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (27, 1, N'Carmen de Areco')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (28, 1, N'Carmen de Patagones')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (29, 1, N'Castelli')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (30, 1, N'Chacabuco')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (31, 1, N'Chascomús')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (32, 1, N'Chivilcoy')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (33, 1, N'Colón')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (34, 1, N'Coronel Dorrego')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (35, 1, N'Coronel Pringles')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (36, 1, N'Coronel Rosales')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (37, 1, N'Coronel Suarez')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (38, 1, N'Costa Azul')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (39, 1, N'Costa Chica')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (40, 1, N'Costa del Este')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (41, 1, N'Costa Esmeralda')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (42, 1, N'Daireaux')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (43, 1, N'Darregueira')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (44, 1, N'Del Viso')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (45, 1, N'Dolores')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (46, 1, N'Don Torcuato')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (47, 1, N'Ensenada')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (48, 1, N'Escobar')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (49, 1, N'Exaltación de la Cruz')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (50, 1, N'Florentino Ameghino')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (51, 1, N'Garín')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (52, 1, N'Gral. Alvarado')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (53, 1, N'Gral. Alvear')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (54, 1, N'Gral. Arenales')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (55, 1, N'Gral. Belgrano')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (56, 1, N'Gral. Guido')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (57, 1, N'Gral. Lamadrid')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (58, 1, N'Gral. Las Heras')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (59, 1, N'Gral. Lavalle')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (60, 1, N'Gral. Madariaga')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (61, 1, N'Gral. Pacheco')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (62, 1, N'Gral. Paz')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (63, 1, N'Gral. Pinto')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (64, 1, N'Gral. Pueyrredón')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (65, 1, N'Gral. Rodríguez')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (66, 1, N'Gral. Viamonte')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (67, 1, N'Gral. Villegas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (68, 1, N'Guaminí')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (69, 1, N'Guernica')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (70, 1, N'Hipólito Yrigoyen')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (71, 1, N'Ing. Maschwitz')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (72, 1, N'Junín')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (73, 1, N'La Plata')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (74, 1, N'Laprida')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (75, 1, N'Las Flores')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (76, 1, N'Las Toninas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (77, 1, N'Leandro N. Alem')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (78, 1, N'Lincoln')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (79, 1, N'Loberia')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (80, 1, N'Lobos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (81, 1, N'Los Cardales')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (82, 1, N'Los Toldos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (83, 1, N'Lucila del Mar')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (84, 1, N'Luján')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (85, 1, N'Magdalena')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (86, 1, N'Maipú')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (87, 1, N'Mar Chiquita')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (88, 1, N'Mar de Ajó')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (89, 1, N'Mar de las Pampas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (90, 1, N'Mar del Plata')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (91, 1, N'Mar del Tuyú')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (92, 1, N'Marcos Paz')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (93, 1, N'Mercedes')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (94, 1, N'Miramar')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (95, 1, N'Monte')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (96, 1, N'Monte Hermoso')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (97, 1, N'Munro')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (98, 1, N'Navarro')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (99, 1, N'Necochea')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (100, 1, N'Olavarría')
GO
print 'Processed 100 total records'
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (101, 1, N'Partido de la Costa')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (102, 1, N'Pehuajó')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (103, 1, N'Pellegrini')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (104, 1, N'Pergamino')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (105, 1, N'Pigüé')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (106, 1, N'Pila')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (107, 1, N'Pilar')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (108, 1, N'Pinamar')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (109, 1, N'Pinar del Sol')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (110, 1, N'Polvorines')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (111, 1, N'Pte. Perón')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (112, 1, N'Puán')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (113, 1, N'Punta Indio')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (114, 1, N'Ramallo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (115, 1, N'Rauch')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (116, 1, N'Rivadavia')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (117, 1, N'Rojas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (118, 1, N'Roque Pérez')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (119, 1, N'Saavedra')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (120, 1, N'Saladillo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (121, 1, N'Salliqueló')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (122, 1, N'Salto')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (123, 1, N'San Andrés de Giles')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (124, 1, N'San Antonio de Areco')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (125, 1, N'San Antonio de Padua')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (126, 1, N'San Bernardo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (127, 1, N'San Cayetano')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (128, 1, N'San Clemente del Tuyú')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (129, 1, N'San Nicolás')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (130, 1, N'San Pedro')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (131, 1, N'San Vicente')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (132, 1, N'Santa Teresita')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (133, 1, N'Suipacha')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (134, 1, N'Tandil')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (135, 1, N'Tapalqué')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (136, 1, N'Tordillo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (137, 1, N'Tornquist')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (138, 1, N'Trenque Lauquen')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (139, 1, N'Tres Lomas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (140, 1, N'Villa Gesell')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (141, 1, N'Villarino')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (142, 1, N'Zárate')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (143, 2, N'11 de Septiembre')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (144, 2, N'20 de Junio')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (145, 2, N'25 de Mayo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (146, 2, N'Acassuso')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (147, 2, N'Adrogué')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (148, 2, N'Aldo Bonzi')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (149, 2, N'Área Reserva Cinturón Ecológico')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (150, 2, N'Avellaneda')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (151, 2, N'Banfield')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (152, 2, N'Barrio Parque')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (153, 2, N'Barrio Santa Teresita')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (154, 2, N'Beccar')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (155, 2, N'Bella Vista')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (156, 2, N'Berazategui')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (157, 2, N'Bernal Este')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (158, 2, N'Bernal Oeste')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (159, 2, N'Billinghurst')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (160, 2, N'Boulogne')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (161, 2, N'Burzaco')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (162, 2, N'Carapachay')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (163, 2, N'Caseros')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (164, 2, N'Castelar')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (165, 2, N'Churruca')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (166, 2, N'Ciudad Evita')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (167, 2, N'Ciudad Madero')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (168, 2, N'Ciudadela')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (169, 2, N'Claypole')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (170, 2, N'Crucecita')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (171, 2, N'Dock Sud')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (172, 2, N'Don Bosco')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (173, 2, N'Don Orione')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (174, 2, N'El Jagüel')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (175, 2, N'El Libertador')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (176, 2, N'El Palomar')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (177, 2, N'El Tala')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (178, 2, N'El Trébol')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (179, 2, N'Ezeiza')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (180, 2, N'Ezpeleta')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (181, 2, N'Florencio Varela')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (182, 2, N'Florida')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (183, 2, N'Francisco Álvarez')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (184, 2, N'Gerli')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (185, 2, N'Glew')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (186, 2, N'González Catán')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (187, 2, N'Gral. Lamadrid')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (188, 2, N'Grand Bourg')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (189, 2, N'Gregorio de Laferrere')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (190, 2, N'Guillermo Enrique Hudson')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (191, 2, N'Haedo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (192, 2, N'Hurlingham')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (193, 2, N'Ing. Sourdeaux')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (194, 2, N'Isidro Casanova')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (195, 2, N'Ituzaingó')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (196, 2, N'José C. Paz')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (197, 2, N'José Ingenieros')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (198, 2, N'José Marmol')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (199, 2, N'La Lucila')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (200, 2, N'La Reja')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (201, 2, N'La Tablada')
GO
print 'Processed 200 total records'
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (202, 2, N'Lanús')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (203, 2, N'Llavallol')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (204, 2, N'Loma Hermosa')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (205, 2, N'Lomas de Zamora')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (206, 2, N'Lomas del Millón')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (207, 2, N'Lomas del Mirador')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (208, 2, N'Longchamps')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (209, 2, N'Los Polvorines')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (210, 2, N'Luis Guillón')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (211, 2, N'Malvinas Argentinas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (212, 2, N'Martín Coronado')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (213, 2, N'Martínez')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (214, 2, N'Merlo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (215, 2, N'Ministro Rivadavia')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (216, 2, N'Monte Chingolo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (217, 2, N'Monte Grande')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (218, 2, N'Moreno')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (219, 2, N'Morón')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (220, 2, N'Muñiz')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (221, 2, N'Olivos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (222, 2, N'Pablo Nogués')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (223, 2, N'Pablo Podestá')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (224, 2, N'Paso del Rey')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (225, 2, N'Pereyra')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (226, 2, N'Piñeiro')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (227, 2, N'Plátanos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (228, 2, N'Pontevedra')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (229, 2, N'Quilmes')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (230, 2, N'Rafael Calzada')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (231, 2, N'Rafael Castillo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (232, 2, N'Ramos Mejía')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (233, 2, N'Ranelagh')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (234, 2, N'Remedios de Escalada')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (235, 2, N'Sáenz Peña')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (236, 2, N'San Antonio de Padua')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (237, 2, N'San Fernando')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (238, 2, N'San Francisco Solano')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (239, 2, N'San Isidro')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (240, 2, N'San José')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (241, 2, N'San Justo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (242, 2, N'San Martín')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (243, 2, N'San Miguel')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (244, 2, N'Santos Lugares')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (245, 2, N'Sarandí')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (246, 2, N'Sourigues')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (247, 2, N'Tapiales')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (248, 2, N'Temperley')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (249, 2, N'Tigre')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (250, 2, N'Tortuguitas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (251, 2, N'Tristán Suárez')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (252, 2, N'Trujui')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (253, 2, N'Turdera')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (254, 2, N'Valentín Alsina')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (255, 2, N'Vicente López')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (256, 2, N'Villa Adelina')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (257, 2, N'Villa Ballester')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (258, 2, N'Villa Bosch')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (259, 2, N'Villa Caraza')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (260, 2, N'Villa Celina')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (261, 2, N'Villa Centenario')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (262, 2, N'Villa de Mayo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (263, 2, N'Villa Diamante')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (264, 2, N'Villa Domínico')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (265, 2, N'Villa España')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (266, 2, N'Villa Fiorito')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (267, 2, N'Villa Guillermina')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (268, 2, N'Villa Insuperable')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (269, 2, N'Villa José León Suárez')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (270, 2, N'Villa La Florida')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (271, 2, N'Villa Luzuriaga')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (272, 2, N'Villa Martelli')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (273, 2, N'Villa Obrera')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (274, 2, N'Villa Progreso')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (275, 2, N'Villa Raffo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (276, 2, N'Villa Sarmiento')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (277, 2, N'Villa Tesei')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (278, 2, N'Villa Udaondo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (279, 2, N'Virrey del Pino')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (280, 2, N'Wilde')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (281, 2, N'William Morris')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (282, 3, N'Agronomía')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (283, 3, N'Almagro')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (284, 3, N'Balvanera')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (285, 3, N'Barracas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (286, 3, N'Belgrano')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (287, 3, N'Boca')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (288, 3, N'Boedo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (289, 3, N'Caballito')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (290, 3, N'Chacarita')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (291, 3, N'Coghlan')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (292, 3, N'Colegiales')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (293, 3, N'Constitución')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (294, 3, N'Flores')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (295, 3, N'Floresta')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (296, 3, N'La Paternal')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (297, 3, N'Liniers')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (298, 3, N'Mataderos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (299, 3, N'Monserrat')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (300, 3, N'Monte Castro')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (301, 3, N'Nueva Pompeya')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (302, 3, N'Núñez')
GO
print 'Processed 300 total records'
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (303, 3, N'Palermo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (304, 3, N'Parque Avellaneda')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (305, 3, N'Parque Chacabuco')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (306, 3, N'Parque Chas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (307, 3, N'Parque Patricios')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (308, 3, N'Puerto Madero')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (309, 3, N'Recoleta')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (310, 3, N'Retiro')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (311, 3, N'Saavedra')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (312, 3, N'San Cristóbal')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (313, 3, N'San Nicolás')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (314, 3, N'San Telmo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (315, 3, N'Vélez Sársfield')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (316, 3, N'Versalles')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (317, 3, N'Villa Crespo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (318, 3, N'Villa del Parque')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (319, 3, N'Villa Devoto')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (320, 3, N'Villa Gral. Mitre')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (321, 3, N'Villa Lugano')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (322, 3, N'Villa Luro')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (323, 3, N'Villa Ortúzar')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (324, 3, N'Villa Pueyrredón')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (325, 3, N'Villa Real')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (326, 3, N'Villa Riachuelo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (327, 3, N'Villa Santa Rita')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (328, 3, N'Villa Soldati')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (329, 3, N'Villa Urquiza')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (330, 4, N'Aconquija')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (331, 4, N'Ancasti')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (332, 4, N'Andalgalá')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (333, 4, N'Antofagasta')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (334, 4, N'Belén')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (335, 4, N'Capayán')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (336, 4, N'Capital')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (337, 4, N'4')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (338, 4, N'Corral Quemado')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (339, 4, N'El Alto')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (340, 4, N'El Rodeo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (341, 4, N'F.Mamerto Esquiú')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (342, 4, N'Fiambalá')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (343, 4, N'Hualfín')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (344, 4, N'Huillapima')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (345, 4, N'Icaño')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (346, 4, N'La Puerta')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (347, 4, N'Las Juntas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (348, 4, N'Londres')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (349, 4, N'Los Altos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (350, 4, N'Los Varela')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (351, 4, N'Mutquín')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (352, 4, N'Paclín')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (353, 4, N'Poman')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (354, 4, N'Pozo de La Piedra')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (355, 4, N'Puerta de Corral')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (356, 4, N'Puerta San José')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (357, 4, N'Recreo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (358, 4, N'S.F.V de 4')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (359, 4, N'San Fernando')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (360, 4, N'San Fernando del Valle')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (361, 4, N'San José')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (362, 4, N'Santa María')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (363, 4, N'Santa Rosa')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (364, 4, N'Saujil')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (365, 4, N'Tapso')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (366, 4, N'Tinogasta')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (367, 4, N'Valle Viejo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (368, 4, N'Villa Vil')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (369, 5, N'Aviá Teraí')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (370, 5, N'Barranqueras')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (371, 5, N'Basail')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (372, 5, N'Campo Largo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (373, 5, N'Capital')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (374, 5, N'Capitán Solari')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (375, 5, N'Charadai')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (376, 5, N'Charata')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (377, 5, N'Chorotis')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (378, 5, N'Ciervo Petiso')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (379, 5, N'Cnel. Du Graty')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (380, 5, N'Col. Benítez')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (381, 5, N'Col. Elisa')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (382, 5, N'Col. Popular')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (383, 5, N'Colonias Unidas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (384, 5, N'Concepción')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (385, 5, N'Corzuela')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (386, 5, N'Cote Lai')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (387, 5, N'El Sauzalito')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (388, 5, N'Enrique Urien')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (389, 5, N'Fontana')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (390, 5, N'Fte. Esperanza')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (391, 5, N'Gancedo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (392, 5, N'Gral. Capdevila')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (393, 5, N'Gral. Pinero')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (394, 5, N'Gral. San Martín')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (395, 5, N'Gral. Vedia')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (396, 5, N'Hermoso Campo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (397, 5, N'I. del Cerrito')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (398, 5, N'J.J. Castelli')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (399, 5, N'La Clotilde')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (400, 5, N'La Eduvigis')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (401, 5, N'La Escondida')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (402, 5, N'La Leonesa')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (403, 5, N'La Tigra')
GO
print 'Processed 400 total records'
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (404, 5, N'La Verde')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (405, 5, N'Laguna Blanca')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (406, 5, N'Laguna Limpia')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (407, 5, N'Lapachito')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (408, 5, N'Las Breñas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (409, 5, N'Las Garcitas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (410, 5, N'Las Palmas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (411, 5, N'Los Frentones')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (412, 5, N'Machagai')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (413, 5, N'Makallé')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (414, 5, N'Margarita Belén')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (415, 5, N'Miraflores')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (416, 5, N'Misión N. Pompeya')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (417, 5, N'Napenay')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (418, 5, N'Pampa Almirón')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (419, 5, N'Pampa del Indio')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (420, 5, N'Pampa del Infierno')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (421, 5, N'Pdcia. de La Plaza')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (422, 5, N'Pdcia. Roca')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (423, 5, N'Pdcia. Roque Sáenz Peña')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (424, 5, N'Pto. Bermejo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (425, 5, N'Pto. Eva Perón')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (426, 5, N'Puero Tirol')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (427, 5, N'Puerto Vilelas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (428, 5, N'Quitilipi')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (429, 5, N'Resistencia')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (430, 5, N'Sáenz Peña')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (431, 5, N'Samuhú')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (432, 5, N'San Bernardo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (433, 5, N'Santa Sylvina')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (434, 5, N'Taco Pozo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (435, 5, N'Tres Isletas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (436, 5, N'Villa Ángela')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (437, 5, N'Villa Berthet')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (438, 5, N'Villa R. Bermejito')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (439, 6, N'Aldea Apeleg')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (440, 6, N'Aldea Beleiro')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (441, 6, N'Aldea Epulef')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (442, 6, N'Alto Río Sengerr')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (443, 6, N'Buen Pasto')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (444, 6, N'Camarones')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (445, 6, N'Carrenleufú')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (446, 6, N'Cholila')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (447, 6, N'Co. Centinela')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (448, 6, N'Colan Conhué')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (449, 6, N'Comodoro Rivadavia')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (450, 6, N'Corcovado')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (451, 6, N'Cushamen')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (452, 6, N'Dique F. Ameghino')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (453, 6, N'Dolavón')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (454, 6, N'Dr. R. Rojas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (455, 6, N'El Hoyo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (456, 6, N'El Maitén')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (457, 6, N'Epuyén')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (458, 6, N'Esquel')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (459, 6, N'Facundo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (460, 6, N'Gaimán')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (461, 6, N'Gan Gan')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (462, 6, N'Gastre')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (463, 6, N'Gdor. Costa')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (464, 6, N'Gualjaina')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (465, 6, N'J. de San Martín')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (466, 6, N'Lago Blanco')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (467, 6, N'Lago Puelo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (468, 6, N'Lagunita Salada')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (469, 6, N'Las Plumas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (470, 6, N'Los Altares')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (471, 6, N'Paso de los Indios')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (472, 6, N'Paso del Sapo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (473, 6, N'Pto. Madryn')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (474, 6, N'Pto. Pirámides')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (475, 6, N'Rada Tilly')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (476, 6, N'Rawson')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (477, 6, N'Río Mayo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (478, 6, N'Río Pico')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (479, 6, N'Sarmiento')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (480, 6, N'Tecka')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (481, 6, N'Telsen')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (482, 6, N'Trelew')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (483, 6, N'Trevelin')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (484, 6, N'Veintiocho de Julio')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (485, 7, N'Achiras')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (486, 7, N'Adelia Maria')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (487, 7, N'Agua de Oro')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (488, 7, N'Alcira Gigena')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (489, 7, N'Aldea Santa Maria')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (490, 7, N'Alejandro Roca')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (491, 7, N'Alejo Ledesma')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (492, 7, N'Alicia')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (493, 7, N'Almafuerte')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (494, 7, N'Alpa Corral')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (495, 7, N'Alta Gracia')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (496, 7, N'Alto Alegre')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (497, 7, N'Alto de Los Quebrachos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (498, 7, N'Altos de Chipion')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (499, 7, N'Amboy')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (500, 7, N'Ambul')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (501, 7, N'Ana Zumaran')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (502, 7, N'Anisacate')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (503, 7, N'Arguello')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (504, 7, N'Arias')
GO
print 'Processed 500 total records'
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (505, 7, N'Arroyito')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (506, 7, N'Arroyo Algodon')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (507, 7, N'Arroyo Cabral')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (508, 7, N'Arroyo Los Patos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (509, 7, N'Assunta')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (510, 7, N'Atahona')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (511, 7, N'Ausonia')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (512, 7, N'Avellaneda')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (513, 7, N'Ballesteros')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (514, 7, N'Ballesteros Sud')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (515, 7, N'Balnearia')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (516, 7, N'Bañado de Soto')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (517, 7, N'Bell Ville')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (518, 7, N'Bengolea')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (519, 7, N'Benjamin Gould')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (520, 7, N'Berrotaran')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (521, 7, N'Bialet Masse')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (522, 7, N'Bouwer')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (523, 7, N'Brinkmann')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (524, 7, N'Buchardo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (525, 7, N'Bulnes')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (526, 7, N'Cabalango')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (527, 7, N'Calamuchita')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (528, 7, N'Calchin')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (529, 7, N'Calchin Oeste')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (530, 7, N'Calmayo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (531, 7, N'Camilo Aldao')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (532, 7, N'Caminiaga')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (533, 7, N'Cañada de Luque')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (534, 7, N'Cañada de Machado')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (535, 7, N'Cañada de Rio Pinto')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (536, 7, N'Cañada del Sauce')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (537, 7, N'Canals')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (538, 7, N'Candelaria Sud')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (539, 7, N'Capilla de Remedios')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (540, 7, N'Capilla de Siton')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (541, 7, N'Capilla del Carmen')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (542, 7, N'Capilla del Monte')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (543, 7, N'Capital')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (544, 7, N'Capitan Gral B. O´Higgins')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (545, 7, N'Carnerillo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (546, 7, N'Carrilobo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (547, 7, N'Casa Grande')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (548, 7, N'Cavanagh')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (549, 7, N'Cerro Colorado')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (550, 7, N'Chaján')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (551, 7, N'Chalacea')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (552, 7, N'Chañar Viejo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (553, 7, N'Chancaní')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (554, 7, N'Charbonier')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (555, 7, N'Charras')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (556, 7, N'Chazón')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (557, 7, N'Chilibroste')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (558, 7, N'Chucul')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (559, 7, N'Chuña')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (560, 7, N'Chuña Huasi')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (561, 7, N'Churqui Cañada')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (562, 7, N'Cienaga Del Coro')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (563, 7, N'Cintra')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (564, 7, N'Col. Almada')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (565, 7, N'Col. Anita')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (566, 7, N'Col. Barge')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (567, 7, N'Col. Bismark')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (568, 7, N'Col. Bremen')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (569, 7, N'Col. Caroya')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (570, 7, N'Col. Italiana')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (571, 7, N'Col. Iturraspe')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (572, 7, N'Col. Las Cuatro Esquinas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (573, 7, N'Col. Las Pichanas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (574, 7, N'Col. Marina')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (575, 7, N'Col. Prosperidad')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (576, 7, N'Col. San Bartolome')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (577, 7, N'Col. San Pedro')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (578, 7, N'Col. Tirolesa')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (579, 7, N'Col. Vicente Aguero')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (580, 7, N'Col. Videla')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (581, 7, N'Col. Vignaud')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (582, 7, N'Col. Waltelina')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (583, 7, N'Colazo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (584, 7, N'Comechingones')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (585, 7, N'Conlara')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (586, 7, N'Copacabana')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (587, 7, N'7')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (588, 7, N'Coronel Baigorria')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (589, 7, N'Coronel Moldes')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (590, 7, N'Corral de Bustos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (591, 7, N'Corralito')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (592, 7, N'Cosquín')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (593, 7, N'Costa Sacate')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (594, 7, N'Cruz Alta')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (595, 7, N'Cruz de Caña')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (596, 7, N'Cruz del Eje')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (597, 7, N'Cuesta Blanca')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (598, 7, N'Dean Funes')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (599, 7, N'Del Campillo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (600, 7, N'Despeñaderos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (601, 7, N'Devoto')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (602, 7, N'Diego de Rojas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (603, 7, N'Dique Chico')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (604, 7, N'El Arañado')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (605, 7, N'El Brete')
GO
print 'Processed 600 total records'
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (606, 7, N'El Chacho')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (607, 7, N'El Crispín')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (608, 7, N'El Fortín')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (609, 7, N'El Manzano')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (610, 7, N'El Rastreador')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (611, 7, N'El Rodeo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (612, 7, N'El Tío')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (613, 7, N'Elena')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (614, 7, N'Embalse')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (615, 7, N'Esquina')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (616, 7, N'Estación Gral. Paz')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (617, 7, N'Estación Juárez Celman')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (618, 7, N'Estancia de Guadalupe')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (619, 7, N'Estancia Vieja')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (620, 7, N'Etruria')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (621, 7, N'Eufrasio Loza')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (622, 7, N'Falda del Carmen')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (623, 7, N'Freyre')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (624, 7, N'Gral. Baldissera')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (625, 7, N'Gral. Cabrera')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (626, 7, N'Gral. Deheza')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (627, 7, N'Gral. Fotheringham')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (628, 7, N'Gral. Levalle')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (629, 7, N'Gral. Roca')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (630, 7, N'Guanaco Muerto')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (631, 7, N'Guasapampa')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (632, 7, N'Guatimozin')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (633, 7, N'Gutenberg')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (634, 7, N'Hernando')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (635, 7, N'Huanchillas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (636, 7, N'Huerta Grande')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (637, 7, N'Huinca Renanco')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (638, 7, N'Idiazabal')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (639, 7, N'Impira')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (640, 7, N'Inriville')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (641, 7, N'Isla Verde')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (642, 7, N'Italó')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (643, 7, N'James Craik')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (644, 7, N'Jesús María')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (645, 7, N'Jovita')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (646, 7, N'Justiniano Posse')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (647, 7, N'Km 658')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (648, 7, N'L. V. Mansilla')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (649, 7, N'La Batea')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (650, 7, N'La Calera')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (651, 7, N'La Carlota')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (652, 7, N'La Carolina')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (653, 7, N'La Cautiva')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (654, 7, N'La Cesira')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (655, 7, N'La Cruz')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (656, 7, N'La Cumbre')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (657, 7, N'La Cumbrecita')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (658, 7, N'La Falda')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (659, 7, N'La Francia')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (660, 7, N'La Granja')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (661, 7, N'La Higuera')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (662, 7, N'La Laguna')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (663, 7, N'La Paisanita')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (664, 7, N'La Palestina')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (665, 7, N'12')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (666, 7, N'La Paquita')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (667, 7, N'La Para')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (668, 7, N'La Paz')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (669, 7, N'La Playa')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (670, 7, N'La Playosa')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (671, 7, N'La Población')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (672, 7, N'La Posta')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (673, 7, N'La Puerta')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (674, 7, N'La Quinta')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (675, 7, N'La Rancherita')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (676, 7, N'La Rinconada')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (677, 7, N'La Serranita')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (678, 7, N'La Tordilla')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (679, 7, N'Laborde')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (680, 7, N'Laboulaye')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (681, 7, N'Laguna Larga')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (682, 7, N'Las Acequias')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (683, 7, N'Las Albahacas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (684, 7, N'Las Arrias')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (685, 7, N'Las Bajadas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (686, 7, N'Las Caleras')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (687, 7, N'Las Calles')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (688, 7, N'Las Cañadas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (689, 7, N'Las Gramillas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (690, 7, N'Las Higueras')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (691, 7, N'Las Isletillas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (692, 7, N'Las Junturas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (693, 7, N'Las Palmas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (694, 7, N'Las Peñas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (695, 7, N'Las Peñas Sud')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (696, 7, N'Las Perdices')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (697, 7, N'Las Playas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (698, 7, N'Las Rabonas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (699, 7, N'Las Saladas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (700, 7, N'Las Tapias')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (701, 7, N'Las Varas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (702, 7, N'Las Varillas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (703, 7, N'Las Vertientes')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (704, 7, N'Leguizamón')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (705, 7, N'Leones')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (706, 7, N'Los Cedros')
GO
print 'Processed 700 total records'
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (707, 7, N'Los Cerrillos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (708, 7, N'Los Chañaritos (C.E)')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (709, 7, N'Los Chanaritos (R.S)')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (710, 7, N'Los Cisnes')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (711, 7, N'Los Cocos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (712, 7, N'Los Cóndores')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (713, 7, N'Los Hornillos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (714, 7, N'Los Hoyos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (715, 7, N'Los Mistoles')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (716, 7, N'Los Molinos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (717, 7, N'Los Pozos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (718, 7, N'Los Reartes')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (719, 7, N'Los Surgentes')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (720, 7, N'Los Talares')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (721, 7, N'Los Zorros')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (722, 7, N'Lozada')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (723, 7, N'Luca')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (724, 7, N'Luque')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (725, 7, N'Luyaba')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (726, 7, N'Malagueño')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (727, 7, N'Malena')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (728, 7, N'Malvinas Argentinas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (729, 7, N'Manfredi')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (730, 7, N'Maquinista Gallini')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (731, 7, N'Marcos Juárez')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (732, 7, N'Marull')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (733, 7, N'Matorrales')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (734, 7, N'Mattaldi')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (735, 7, N'Mayu Sumaj')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (736, 7, N'Media Naranja')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (737, 7, N'Melo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (738, 7, N'Mendiolaza')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (739, 7, N'Mi Granja')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (740, 7, N'Mina Clavero')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (741, 7, N'Miramar')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (742, 7, N'Morrison')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (743, 7, N'Morteros')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (744, 7, N'Mte. Buey')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (745, 7, N'Mte. Cristo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (746, 7, N'Mte. De Los Gauchos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (747, 7, N'Mte. Leña')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (748, 7, N'Mte. Maíz')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (749, 7, N'Mte. Ralo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (750, 7, N'Nicolás Bruzone')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (751, 7, N'Noetinger')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (752, 7, N'Nono')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (753, 7, N'Nueva 7')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (754, 7, N'Obispo Trejo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (755, 7, N'Olaeta')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (756, 7, N'Oliva')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (757, 7, N'Olivares San Nicolás')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (758, 7, N'Onagolty')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (759, 7, N'Oncativo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (760, 7, N'Ordoñez')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (761, 7, N'Pacheco De Melo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (762, 7, N'Pampayasta N.')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (763, 7, N'Pampayasta S.')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (764, 7, N'Panaholma')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (765, 7, N'Pascanas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (766, 7, N'Pasco')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (767, 7, N'Paso del Durazno')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (768, 7, N'Paso Viejo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (769, 7, N'Pilar')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (770, 7, N'Pincén')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (771, 7, N'Piquillín')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (772, 7, N'Plaza de Mercedes')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (773, 7, N'Plaza Luxardo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (774, 7, N'Porteña')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (775, 7, N'Potrero de Garay')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (776, 7, N'Pozo del Molle')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (777, 7, N'Pozo Nuevo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (778, 7, N'Pueblo Italiano')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (779, 7, N'Puesto de Castro')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (780, 7, N'Punta del Agua')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (781, 7, N'Quebracho Herrado')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (782, 7, N'Quilino')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (783, 7, N'Rafael García')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (784, 7, N'Ranqueles')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (785, 7, N'Rayo Cortado')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (786, 7, N'Reducción')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (787, 7, N'Rincón')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (788, 7, N'Río Bamba')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (789, 7, N'Río Ceballos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (790, 7, N'Río Cuarto')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (791, 7, N'Río de Los Sauces')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (792, 7, N'Río Primero')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (793, 7, N'Río Segundo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (794, 7, N'Río Tercero')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (795, 7, N'Rosales')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (796, 7, N'Rosario del Saladillo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (797, 7, N'Sacanta')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (798, 7, N'Sagrada Familia')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (799, 7, N'Saira')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (800, 7, N'Saladillo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (801, 7, N'Saldán')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (802, 7, N'Salsacate')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (803, 7, N'Salsipuedes')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (804, 7, N'Sampacho')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (805, 7, N'San Agustín')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (806, 7, N'San Antonio de Arredondo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (807, 7, N'San Antonio de Litín')
GO
print 'Processed 800 total records'
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (808, 7, N'San Basilio')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (809, 7, N'San Carlos Minas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (810, 7, N'San Clemente')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (811, 7, N'San Esteban')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (812, 7, N'San Francisco')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (813, 7, N'San Ignacio')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (814, 7, N'San Javier')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (815, 7, N'San Jerónimo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (816, 7, N'San Joaquín')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (817, 7, N'San José de La Dormida')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (818, 7, N'San José de Las Salinas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (819, 7, N'San Lorenzo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (820, 7, N'San Marcos Sierras')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (821, 7, N'San Marcos Sud')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (822, 7, N'San Pedro')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (823, 7, N'San Pedro N.')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (824, 7, N'San Roque')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (825, 7, N'San Vicente')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (826, 7, N'Santa Catalina')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (827, 7, N'Santa Elena')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (828, 7, N'Santa Eufemia')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (829, 7, N'Santa Maria')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (830, 7, N'Sarmiento')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (831, 7, N'Saturnino M.Laspiur')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (832, 7, N'Sauce Arriba')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (833, 7, N'Sebastián Elcano')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (834, 7, N'Seeber')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (835, 7, N'Segunda Usina')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (836, 7, N'Serrano')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (837, 7, N'Serrezuela')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (838, 7, N'Sgo. Temple')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (839, 7, N'Silvio Pellico')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (840, 7, N'Simbolar')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (841, 7, N'Sinsacate')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (842, 7, N'Sta. Rosa de Calamuchita')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (843, 7, N'Sta. Rosa de Río Primero')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (844, 7, N'Suco')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (845, 7, N'Tala Cañada')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (846, 7, N'Tala Huasi')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (847, 7, N'Talaini')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (848, 7, N'Tancacha')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (849, 7, N'Tanti')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (850, 7, N'Ticino')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (851, 7, N'Tinoco')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (852, 7, N'Tío Pujio')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (853, 7, N'Toledo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (854, 7, N'Toro Pujio')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (855, 7, N'Tosno')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (856, 7, N'Tosquita')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (857, 7, N'Tránsito')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (858, 7, N'Tuclame')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (859, 7, N'Tutti')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (860, 7, N'Ucacha')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (861, 7, N'Unquillo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (862, 7, N'Valle de Anisacate')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (863, 7, N'Valle Hermoso')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (864, 7, N'Vélez Sarfield')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (865, 7, N'Viamonte')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (866, 7, N'Vicuña Mackenna')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (867, 7, N'Villa Allende')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (868, 7, N'Villa Amancay')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (869, 7, N'Villa Ascasubi')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (870, 7, N'Villa Candelaria N.')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (871, 7, N'Villa Carlos Paz')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (872, 7, N'Villa Cerro Azul')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (873, 7, N'Villa Ciudad de América')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (874, 7, N'Villa Ciudad Pque Los Reartes')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (875, 7, N'Villa Concepción del Tío')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (876, 7, N'Villa Cura Brochero')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (877, 7, N'Villa de Las Rosas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (878, 7, N'Villa de María')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (879, 7, N'Villa de Pocho')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (880, 7, N'Villa de Soto')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (881, 7, N'Villa del Dique')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (882, 7, N'Villa del Prado')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (883, 7, N'Villa del Rosario')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (884, 7, N'Villa del Totoral')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (885, 7, N'Villa Dolores')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (886, 7, N'Villa El Chancay')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (887, 7, N'Villa Elisa')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (888, 7, N'Villa Flor Serrana')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (889, 7, N'Villa Fontana')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (890, 7, N'Villa Giardino')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (891, 7, N'Villa Gral. Belgrano')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (892, 7, N'Villa Gutierrez')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (893, 7, N'Villa Huidobro')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (894, 7, N'Villa La Bolsa')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (895, 7, N'Villa Los Aromos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (896, 7, N'Villa Los Patos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (897, 7, N'Villa María')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (898, 7, N'Villa Nueva')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (899, 7, N'Villa Pque. Santa Ana')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (900, 7, N'Villa Pque. Siquiman')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (901, 7, N'Villa Quillinzo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (902, 7, N'Villa Rossi')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (903, 7, N'Villa Rumipal')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (904, 7, N'Villa San Esteban')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (905, 7, N'Villa San Isidro')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (906, 7, N'Villa 21')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (907, 7, N'Villa Sarmiento (G.R)')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (908, 7, N'Villa Sarmiento (S.A)')
GO
print 'Processed 900 total records'
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (909, 7, N'Villa Tulumba')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (910, 7, N'Villa Valeria')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (911, 7, N'Villa Yacanto')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (912, 7, N'Washington')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (913, 7, N'Wenceslao Escalante')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (914, 7, N'Ycho Cruz Sierras')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (915, 8, N'Alvear')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (916, 8, N'Bella Vista')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (917, 8, N'Berón de Astrada')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (918, 8, N'Bonpland')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (919, 8, N'Caá Cati')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (920, 8, N'Capital')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (921, 8, N'Chavarría')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (922, 8, N'Col. C. Pellegrini')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (923, 8, N'Col. Libertad')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (924, 8, N'Col. Liebig')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (925, 8, N'Col. Sta Rosa')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (926, 8, N'Concepción')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (927, 8, N'Cruz de Los Milagros')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (928, 8, N'Curuzú-Cuatiá')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (929, 8, N'Empedrado')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (930, 8, N'Esquina')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (931, 8, N'Estación Torrent')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (932, 8, N'Felipe Yofré')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (933, 8, N'Garruchos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (934, 8, N'Gdor. Agrónomo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (935, 8, N'Gdor. Martínez')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (936, 8, N'Goya')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (937, 8, N'Guaviravi')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (938, 8, N'Herlitzka')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (939, 8, N'Ita-Ibate')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (940, 8, N'Itatí')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (941, 8, N'Ituzaingó')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (942, 8, N'José Rafael Gómez')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (943, 8, N'Juan Pujol')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (944, 8, N'La Cruz')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (945, 8, N'Lavalle')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (946, 8, N'Lomas de Vallejos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (947, 8, N'Loreto')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (948, 8, N'Mariano I. Loza')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (949, 8, N'Mburucuyá')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (950, 8, N'Mercedes')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (951, 8, N'Mocoretá')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (952, 8, N'Mte. Caseros')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (953, 8, N'Nueve de Julio')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (954, 8, N'Palmar Grande')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (955, 8, N'Parada Pucheta')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (956, 8, N'Paso de La Patria')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (957, 8, N'Paso de Los Libres')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (958, 8, N'Pedro R. Fernandez')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (959, 8, N'Perugorría')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (960, 8, N'Pueblo Libertador')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (961, 8, N'Ramada Paso')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (962, 8, N'Riachuelo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (963, 8, N'Saladas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (964, 8, N'San Antonio')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (965, 8, N'San Carlos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (966, 8, N'San Cosme')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (967, 8, N'San Lorenzo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (968, 8, N'20 del Palmar')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (969, 8, N'San Miguel')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (970, 8, N'San Roque')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (971, 8, N'Santa Ana')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (972, 8, N'Santa Lucía')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (973, 8, N'Santo Tomé')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (974, 8, N'Sauce')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (975, 8, N'Tabay')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (976, 8, N'Tapebicuá')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (977, 8, N'Tatacua')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (978, 8, N'Virasoro')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (979, 8, N'Yapeyú')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (980, 8, N'Yataití Calle')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (981, 9, N'Alarcón')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (982, 9, N'Alcaraz')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (983, 9, N'Alcaraz N.')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (984, 9, N'Alcaraz S.')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (985, 9, N'Aldea Asunción')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (986, 9, N'Aldea Brasilera')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (987, 9, N'Aldea Elgenfeld')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (988, 9, N'Aldea Grapschental')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (989, 9, N'Aldea Ma. Luisa')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (990, 9, N'Aldea Protestante')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (991, 9, N'Aldea Salto')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (992, 9, N'Aldea San Antonio (G)')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (993, 9, N'Aldea San Antonio (P)')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (994, 9, N'Aldea 19')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (995, 9, N'Aldea San Miguel')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (996, 9, N'Aldea San Rafael')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (997, 9, N'Aldea Spatzenkutter')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (998, 9, N'Aldea Sta. María')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (999, 9, N'Aldea Sta. Rosa')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1000, 9, N'Aldea Valle María')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1001, 9, N'Altamirano Sur')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1002, 9, N'Antelo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1003, 9, N'Antonio Tomás')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1004, 9, N'Aranguren')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1005, 9, N'Arroyo Barú')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1006, 9, N'Arroyo Burgos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1007, 9, N'Arroyo Clé')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1008, 9, N'Arroyo Corralito')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1009, 9, N'Arroyo del Medio')
GO
print 'Processed 1000 total records'
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1010, 9, N'Arroyo Maturrango')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1011, 9, N'Arroyo Palo Seco')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1012, 9, N'Banderas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1013, 9, N'Basavilbaso')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1014, 9, N'Betbeder')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1015, 9, N'Bovril')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1016, 9, N'Caseros')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1017, 9, N'Ceibas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1018, 9, N'Cerrito')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1019, 9, N'Chajarí')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1020, 9, N'Chilcas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1021, 9, N'Clodomiro Ledesma')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1022, 9, N'Col. Alemana')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1023, 9, N'Col. Avellaneda')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1024, 9, N'Col. Avigdor')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1025, 9, N'Col. Ayuí')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1026, 9, N'Col. Baylina')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1027, 9, N'Col. Carrasco')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1028, 9, N'Col. Celina')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1029, 9, N'Col. Cerrito')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1030, 9, N'Col. Crespo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1031, 9, N'Col. Elia')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1032, 9, N'Col. Ensayo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1033, 9, N'Col. Gral. Roca')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1034, 9, N'Col. La Argentina')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1035, 9, N'Col. Merou')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1036, 9, N'Col. Oficial Nª3')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1037, 9, N'Col. Oficial Nº13')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1038, 9, N'Col. Oficial Nº14')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1039, 9, N'Col. Oficial Nº5')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1040, 9, N'Col. Reffino')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1041, 9, N'Col. Tunas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1042, 9, N'Col. Viraró')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1043, 9, N'Colón')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1044, 9, N'Concepción del Uruguay')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1045, 9, N'Concordia')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1046, 9, N'Conscripto Bernardi')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1047, 9, N'Costa Grande')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1048, 9, N'Costa San Antonio')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1049, 9, N'Costa Uruguay N.')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1050, 9, N'Costa Uruguay S.')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1051, 9, N'Crespo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1052, 9, N'Crucecitas 3ª')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1053, 9, N'Crucecitas 7ª')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1054, 9, N'Crucecitas 8ª')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1055, 9, N'Cuchilla Redonda')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1056, 9, N'Curtiembre')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1057, 9, N'Diamante')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1058, 9, N'Distrito 6º')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1059, 9, N'Distrito Chañar')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1060, 9, N'Distrito Chiqueros')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1061, 9, N'Distrito Cuarto')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1062, 9, N'Distrito Diego López')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1063, 9, N'Distrito Pajonal')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1064, 9, N'Distrito Sauce')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1065, 9, N'Distrito Tala')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1066, 9, N'Distrito Talitas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1067, 9, N'Don Cristóbal 1ª Sección')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1068, 9, N'Don Cristóbal 2ª Sección')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1069, 9, N'Durazno')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1070, 9, N'El Cimarrón')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1071, 9, N'El Gramillal')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1072, 9, N'El Palenque')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1073, 9, N'El Pingo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1074, 9, N'El Quebracho')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1075, 9, N'El Redomón')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1076, 9, N'El Solar')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1077, 9, N'Enrique Carbo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1078, 9, N'9')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1079, 9, N'Espinillo N.')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1080, 9, N'Estación Campos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1081, 9, N'Estación Escriña')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1082, 9, N'Estación Lazo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1083, 9, N'Estación Raíces')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1084, 9, N'Estación Yerúa')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1085, 9, N'Estancia Grande')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1086, 9, N'Estancia Líbaros')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1087, 9, N'Estancia Racedo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1088, 9, N'Estancia Solá')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1089, 9, N'Estancia Yuquerí')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1090, 9, N'Estaquitas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1091, 9, N'Faustino M. Parera')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1092, 9, N'Febre')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1093, 9, N'Federación')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1094, 9, N'Federal')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1095, 9, N'Gdor. Echagüe')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1096, 9, N'Gdor. Mansilla')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1097, 9, N'Gilbert')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1098, 9, N'González Calderón')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1099, 9, N'Gral. Almada')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1100, 9, N'Gral. Alvear')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1101, 9, N'Gral. Campos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1102, 9, N'Gral. Galarza')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1103, 9, N'Gral. Ramírez')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1104, 9, N'Gualeguay')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1105, 9, N'Gualeguaychú')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1106, 9, N'Gualeguaycito')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1107, 9, N'Guardamonte')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1108, 9, N'Hambis')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1109, 9, N'Hasenkamp')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1110, 9, N'Hernandarias')
GO
print 'Processed 1100 total records'
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1111, 9, N'Hernández')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1112, 9, N'Herrera')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1113, 9, N'Hinojal')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1114, 9, N'Hocker')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1115, 9, N'Ing. Sajaroff')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1116, 9, N'Irazusta')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1117, 9, N'Isletas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1118, 9, N'J.J De Urquiza')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1119, 9, N'Jubileo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1120, 9, N'La Clarita')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1121, 9, N'La Criolla')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1122, 9, N'La Esmeralda')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1123, 9, N'La Florida')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1124, 9, N'La Fraternidad')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1125, 9, N'La Hierra')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1126, 9, N'La Ollita')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1127, 9, N'La Paz')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1128, 9, N'La Picada')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1129, 9, N'La Providencia')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1130, 9, N'La Verbena')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1131, 9, N'Laguna Benítez')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1132, 9, N'Larroque')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1133, 9, N'Las Cuevas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1134, 9, N'Las Garzas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1135, 9, N'Las Guachas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1136, 9, N'Las Mercedes')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1137, 9, N'Las Moscas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1138, 9, N'Las Mulitas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1139, 9, N'Las Toscas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1140, 9, N'Laurencena')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1141, 9, N'Libertador San Martín')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1142, 9, N'Loma Limpia')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1143, 9, N'Los Ceibos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1144, 9, N'Los Charruas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1145, 9, N'Los Conquistadores')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1146, 9, N'Lucas González')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1147, 9, N'Lucas N.')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1148, 9, N'Lucas S. 1ª')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1149, 9, N'Lucas S. 2ª')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1150, 9, N'Maciá')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1151, 9, N'María Grande')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1152, 9, N'María Grande 2ª')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1153, 9, N'Médanos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1154, 9, N'Mojones N.')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1155, 9, N'Mojones S.')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1156, 9, N'Molino Doll')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1157, 9, N'Monte Redondo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1158, 9, N'Montoya')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1159, 9, N'Mulas Grandes')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1160, 9, N'Ñancay')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1161, 9, N'Nogoyá')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1162, 9, N'Nueva Escocia')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1163, 9, N'Nueva Vizcaya')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1164, 9, N'Ombú')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1165, 9, N'Oro Verde')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1166, 9, N'Paraná')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1167, 9, N'Pasaje Guayaquil')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1168, 9, N'Pasaje Las Tunas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1169, 9, N'Paso de La Arena')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1170, 9, N'Paso de La Laguna')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1171, 9, N'Paso de Las Piedras')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1172, 9, N'Paso Duarte')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1173, 9, N'Pastor Britos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1174, 9, N'Pedernal')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1175, 9, N'Perdices')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1176, 9, N'Picada Berón')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1177, 9, N'Piedras Blancas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1178, 9, N'Primer Distrito Cuchilla')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1179, 9, N'Primero de Mayo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1180, 9, N'Pronunciamiento')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1181, 9, N'Pto. Algarrobo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1182, 9, N'Pto. Ibicuy')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1183, 9, N'Pueblo Brugo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1184, 9, N'Pueblo Cazes')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1185, 9, N'Pueblo Gral. Belgrano')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1186, 9, N'Pueblo Liebig')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1187, 9, N'Puerto Yeruá')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1188, 9, N'Punta del Monte')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1189, 9, N'Quebracho')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1190, 9, N'Quinto Distrito')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1191, 9, N'Raices Oeste')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1192, 9, N'Rincón de Nogoyá')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1193, 9, N'Rincón del Cinto')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1194, 9, N'Rincón del Doll')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1195, 9, N'Rincón del Gato')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1196, 9, N'Rocamora')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1197, 9, N'Rosario del Tala')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1198, 9, N'San Benito')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1199, 9, N'San Cipriano')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1200, 9, N'San Ernesto')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1201, 9, N'San Gustavo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1202, 9, N'San Jaime')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1203, 9, N'San José')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1204, 9, N'San José de Feliciano')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1205, 9, N'San Justo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1206, 9, N'San Marcial')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1207, 9, N'San Pedro')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1208, 9, N'San Ramírez')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1209, 9, N'San Ramón')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1210, 9, N'San Roque')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1211, 9, N'San Salvador')
GO
print 'Processed 1200 total records'
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1212, 9, N'San Víctor')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1213, 9, N'Santa Ana')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1214, 9, N'Santa Anita')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1215, 9, N'Santa Elena')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1216, 9, N'Santa Lucía')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1217, 9, N'Santa Luisa')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1218, 9, N'Sauce de Luna')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1219, 9, N'Sauce Montrull')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1220, 9, N'Sauce Pinto')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1221, 9, N'Sauce Sur')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1222, 9, N'Seguí')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1223, 9, N'Sir Leonard')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1224, 9, N'Sosa')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1225, 9, N'Tabossi')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1226, 9, N'Tezanos Pinto')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1227, 9, N'Ubajay')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1228, 9, N'Urdinarrain')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1229, 9, N'Veinte de Septiembre')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1230, 9, N'Viale')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1231, 9, N'Victoria')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1232, 9, N'Villa Clara')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1233, 9, N'Villa del Rosario')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1234, 9, N'Villa Domínguez')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1235, 9, N'Villa Elisa')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1236, 9, N'Villa Fontana')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1237, 9, N'Villa Gdor. Etchevehere')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1238, 9, N'Villa Mantero')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1239, 9, N'Villa Paranacito')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1240, 9, N'Villa Urquiza')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1241, 9, N'Villaguay')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1242, 9, N'Walter Moss')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1243, 9, N'Yacaré')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1244, 9, N'Yeso Oeste')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1245, 10, N'Buena Vista')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1246, 10, N'Clorinda')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1247, 10, N'Col. Pastoril')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1248, 10, N'Cte. Fontana')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1249, 10, N'El Colorado')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1250, 10, N'El Espinillo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1251, 10, N'Estanislao Del Campo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1252, 10, N'10')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1253, 10, N'Fortín Lugones')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1254, 10, N'Gral. Lucio V. Mansilla')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1255, 10, N'Gral. Manuel Belgrano')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1256, 10, N'Gral. Mosconi')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1257, 10, N'Gran Guardia')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1258, 10, N'Herradura')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1259, 10, N'Ibarreta')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1260, 10, N'Ing. Juárez')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1261, 10, N'Laguna Blanca')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1262, 10, N'Laguna Naick Neck')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1263, 10, N'Laguna Yema')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1264, 10, N'Las Lomitas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1265, 10, N'Los Chiriguanos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1266, 10, N'Mayor V. Villafañe')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1267, 10, N'Misión San Fco.')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1268, 10, N'Palo Santo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1269, 10, N'Pirané')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1270, 10, N'Pozo del Maza')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1271, 10, N'Riacho He-He')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1272, 10, N'San Hilario')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1273, 10, N'San Martín II')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1274, 10, N'Siete Palmas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1275, 10, N'Subteniente Perín')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1276, 10, N'Tres Lagunas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1277, 10, N'Villa Dos Trece')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1278, 10, N'Villa Escolar')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1279, 10, N'Villa Gral. Güemes')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1280, 11, N'Abdon Castro Tolay')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1281, 11, N'Abra Pampa')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1282, 11, N'Abralaite')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1283, 11, N'Aguas Calientes')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1284, 11, N'Arrayanal')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1285, 11, N'Barrios')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1286, 11, N'Caimancito')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1287, 11, N'Calilegua')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1288, 11, N'Cangrejillos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1289, 11, N'Caspala')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1290, 11, N'Catuá')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1291, 11, N'Cieneguillas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1292, 11, N'Coranzulli')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1293, 11, N'Cusi-Cusi')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1294, 11, N'El Aguilar')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1295, 11, N'El Carmen')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1296, 11, N'El Cóndor')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1297, 11, N'El Fuerte')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1298, 11, N'El Piquete')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1299, 11, N'El Talar')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1300, 11, N'Fraile Pintado')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1301, 11, N'Hipólito Yrigoyen')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1302, 11, N'Huacalera')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1303, 11, N'Humahuaca')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1304, 11, N'La Esperanza')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1305, 11, N'La Mendieta')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1306, 11, N'La Quiaca')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1307, 11, N'Ledesma')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1308, 11, N'Libertador Gral. San Martin')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1309, 11, N'Maimara')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1310, 11, N'Mina Pirquitas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1311, 11, N'Monterrico')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1312, 11, N'Palma Sola')
GO
print 'Processed 1300 total records'
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1313, 11, N'Palpalá')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1314, 11, N'Pampa Blanca')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1315, 11, N'Pampichuela')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1316, 11, N'Perico')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1317, 11, N'Puesto del Marqués')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1318, 11, N'Puesto Viejo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1319, 11, N'Pumahuasi')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1320, 11, N'Purmamarca')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1321, 11, N'Rinconada')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1322, 11, N'Rodeitos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1323, 11, N'Rosario de Río Grande')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1324, 11, N'San Antonio')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1325, 11, N'San Francisco')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1326, 11, N'San Pedro')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1327, 11, N'San Rafael')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1328, 11, N'San Salvador')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1329, 11, N'Santa Ana')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1330, 11, N'Santa Catalina')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1331, 11, N'Santa Clara')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1332, 11, N'Susques')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1333, 11, N'Tilcara')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1334, 11, N'Tres Cruces')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1335, 11, N'Tumbaya')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1336, 11, N'Valle Grande')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1337, 11, N'Vinalito')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1338, 11, N'Volcán')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1339, 11, N'Yala')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1340, 11, N'Yaví')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1341, 11, N'Yuto')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1342, 12, N'Abramo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1343, 12, N'Adolfo Van Praet')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1344, 12, N'Agustoni')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1345, 12, N'Algarrobo del Aguila')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1346, 12, N'Alpachiri')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1347, 12, N'Alta Italia')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1348, 12, N'Anguil')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1349, 12, N'Arata')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1350, 12, N'Ataliva Roca')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1351, 12, N'Bernardo Larroude')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1352, 12, N'Bernasconi')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1353, 12, N'Caleufú')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1354, 12, N'Carro Quemado')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1355, 12, N'Catriló')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1356, 12, N'Ceballos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1357, 12, N'Chacharramendi')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1358, 12, N'Col. Barón')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1359, 12, N'Col. Santa María')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1360, 12, N'Conhelo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1361, 12, N'Coronel Hilario Lagos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1362, 12, N'Cuchillo-Có')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1363, 12, N'Doblas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1364, 12, N'Dorila')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1365, 12, N'Eduardo Castex')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1366, 12, N'Embajador Martini')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1367, 12, N'Falucho')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1368, 12, N'Gral. Acha')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1369, 12, N'Gral. Manuel Campos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1370, 12, N'Gral. Pico')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1371, 12, N'Guatraché')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1372, 12, N'Ing. Luiggi')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1373, 12, N'Intendente Alvear')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1374, 12, N'Jacinto Arauz')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1375, 12, N'La Adela')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1376, 12, N'La Humada')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1377, 12, N'La Maruja')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1378, 12, N'12')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1379, 12, N'La Reforma')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1380, 12, N'Limay Mahuida')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1381, 12, N'Lonquimay')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1382, 12, N'Loventuel')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1383, 12, N'Luan Toro')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1384, 12, N'Macachín')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1385, 12, N'Maisonnave')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1386, 12, N'Mauricio Mayer')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1387, 12, N'Metileo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1388, 12, N'Miguel Cané')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1389, 12, N'Miguel Riglos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1390, 12, N'Monte Nievas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1391, 12, N'Parera')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1392, 12, N'Perú')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1393, 12, N'Pichi-Huinca')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1394, 12, N'Puelches')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1395, 12, N'Puelén')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1396, 12, N'Quehue')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1397, 12, N'Quemú Quemú')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1398, 12, N'Quetrequén')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1399, 12, N'Rancul')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1400, 12, N'Realicó')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1401, 12, N'Relmo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1402, 12, N'Rolón')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1403, 12, N'Rucanelo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1404, 12, N'Sarah')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1405, 12, N'Speluzzi')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1406, 12, N'Sta. Isabel')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1407, 12, N'Sta. Rosa')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1408, 12, N'Sta. Teresa')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1409, 12, N'Telén')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1410, 12, N'Toay')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1411, 12, N'Tomas M. de Anchorena')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1412, 12, N'Trenel')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1413, 12, N'Unanue')
GO
print 'Processed 1400 total records'
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1414, 12, N'Uriburu')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1415, 12, N'Veinticinco de Mayo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1416, 12, N'Vertiz')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1417, 12, N'Victorica')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1418, 12, N'Villa Mirasol')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1419, 12, N'Winifreda')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1420, 13, N'Arauco')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1421, 13, N'Capital')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1422, 13, N'Castro Barros')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1423, 13, N'Chamical')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1424, 13, N'Chilecito')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1425, 13, N'Coronel F. Varela')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1426, 13, N'Famatina')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1427, 13, N'Gral. A.V.Peñaloza')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1428, 13, N'Gral. Belgrano')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1429, 13, N'Gral. J.F. Quiroga')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1430, 13, N'Gral. Lamadrid')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1431, 13, N'Gral. Ocampo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1432, 13, N'Gral. San Martín')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1433, 13, N'Independencia')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1434, 13, N'Rosario Penaloza')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1435, 13, N'San Blas de Los Sauces')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1436, 13, N'Sanagasta')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1437, 13, N'Vinchina')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1438, 14, N'Capital')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1439, 14, N'Chacras de Coria')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1440, 14, N'Dorrego')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1441, 14, N'Gllen')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1442, 14, N'Godoy Cruz')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1443, 14, N'Gral. Alvear')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1444, 14, N'Guaymallén')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1445, 14, N'Junín')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1446, 14, N'La Paz')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1447, 14, N'Las Heras')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1448, 14, N'Lavalle')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1449, 14, N'Luján')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1450, 14, N'Luján De Cuyo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1451, 14, N'Maipú')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1452, 14, N'Malargüe')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1453, 14, N'Rivadavia')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1454, 14, N'San Carlos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1455, 14, N'San Martín')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1456, 14, N'San Rafael')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1457, 14, N'Sta. Rosa')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1458, 14, N'Tunuyán')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1459, 14, N'Tupungato')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1460, 14, N'Villa Nueva')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1461, 15, N'Alba Posse')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1462, 15, N'Almafuerte')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1463, 15, N'Apóstoles')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1464, 15, N'Aristóbulo Del Valle')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1465, 15, N'Arroyo Del Medio')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1466, 15, N'Azara')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1467, 15, N'Bdo. De Irigoyen')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1468, 15, N'Bonpland')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1469, 15, N'Caá Yari')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1470, 15, N'Campo Grande')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1471, 15, N'Campo Ramón')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1472, 15, N'Campo Viera')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1473, 15, N'Candelaria')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1474, 15, N'Capioví')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1475, 15, N'Caraguatay')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1476, 15, N'Cdte. Guacurarí')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1477, 15, N'Cerro Azul')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1478, 15, N'Cerro Corá')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1479, 15, N'Col. Alberdi')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1480, 15, N'Col. Aurora')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1481, 15, N'Col. Delicia')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1482, 15, N'Col. Polana')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1483, 15, N'Col. Victoria')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1484, 15, N'Col. Wanda')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1485, 15, N'Concepción De La Sierra')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1486, 15, N'Corpus')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1487, 15, N'Dos Arroyos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1488, 15, N'Dos de Mayo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1489, 15, N'El Alcázar')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1490, 15, N'El Dorado')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1491, 15, N'El Soberbio')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1492, 15, N'Esperanza')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1493, 15, N'F. Ameghino')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1494, 15, N'Fachinal')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1495, 15, N'Garuhapé')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1496, 15, N'Garupá')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1497, 15, N'Gdor. López')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1498, 15, N'Gdor. Roca')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1499, 15, N'Gral. Alvear')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1500, 15, N'Gral. Urquiza')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1501, 15, N'Guaraní')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1502, 15, N'H. Yrigoyen')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1503, 15, N'Iguazú')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1504, 15, N'Itacaruaré')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1505, 15, N'Jardín América')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1506, 15, N'Leandro N. Alem')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1507, 15, N'Libertad')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1508, 15, N'Loreto')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1509, 15, N'Los Helechos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1510, 15, N'Mártires')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1511, 15, N'15')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1512, 15, N'Mojón Grande')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1513, 15, N'Montecarlo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1514, 15, N'Nueve de Julio')
GO
print 'Processed 1500 total records'
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1515, 15, N'Oberá')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1516, 15, N'Olegario V. Andrade')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1517, 15, N'Panambí')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1518, 15, N'Posadas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1519, 15, N'Profundidad')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1520, 15, N'Pto. Iguazú')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1521, 15, N'Pto. Leoni')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1522, 15, N'Pto. Piray')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1523, 15, N'Pto. Rico')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1524, 15, N'Ruiz de Montoya')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1525, 15, N'San Antonio')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1526, 15, N'San Ignacio')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1527, 15, N'San Javier')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1528, 15, N'San José')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1529, 15, N'San Martín')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1530, 15, N'San Pedro')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1531, 15, N'San Vicente')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1532, 15, N'Santiago De Liniers')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1533, 15, N'Santo Pipo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1534, 15, N'Sta. Ana')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1535, 15, N'Sta. María')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1536, 15, N'Tres Capones')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1537, 15, N'Veinticinco de Mayo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1538, 15, N'Wanda')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1539, 16, N'Aguada San Roque')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1540, 16, N'Aluminé')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1541, 16, N'Andacollo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1542, 16, N'Añelo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1543, 16, N'Bajada del Agrio')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1544, 16, N'Barrancas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1545, 16, N'Buta Ranquil')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1546, 16, N'Capital')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1547, 16, N'Caviahué')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1548, 16, N'Centenario')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1549, 16, N'Chorriaca')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1550, 16, N'Chos Malal')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1551, 16, N'Cipolletti')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1552, 16, N'Covunco Abajo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1553, 16, N'Coyuco Cochico')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1554, 16, N'Cutral Có')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1555, 16, N'El Cholar')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1556, 16, N'El Huecú')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1557, 16, N'El Sauce')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1558, 16, N'Guañacos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1559, 16, N'Huinganco')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1560, 16, N'Las Coloradas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1561, 16, N'Las Lajas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1562, 16, N'Las Ovejas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1563, 16, N'Loncopué')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1564, 16, N'Los Catutos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1565, 16, N'Los Chihuidos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1566, 16, N'Los Miches')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1567, 16, N'Manzano Amargo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1568, 16, N'16')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1569, 16, N'Octavio Pico')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1570, 16, N'Paso Aguerre')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1571, 16, N'Picún Leufú')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1572, 16, N'Piedra del Aguila')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1573, 16, N'Pilo Lil')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1574, 16, N'Plaza Huincul')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1575, 16, N'Plottier')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1576, 16, N'Quili Malal')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1577, 16, N'Ramón Castro')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1578, 16, N'Rincón de Los Sauces')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1579, 16, N'San Martín de Los Andes')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1580, 16, N'San Patricio del Chañar')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1581, 16, N'Santo Tomás')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1582, 16, N'Sauzal Bonito')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1583, 16, N'Senillosa')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1584, 16, N'Taquimilán')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1585, 16, N'Tricao Malal')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1586, 16, N'Varvarco')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1587, 16, N'Villa Curí Leuvu')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1588, 16, N'Villa del Nahueve')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1589, 16, N'Villa del Puente Picún Leuvú')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1590, 16, N'Villa El Chocón')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1591, 16, N'Villa La Angostura')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1592, 16, N'Villa Pehuenia')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1593, 16, N'Villa Traful')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1594, 16, N'Vista Alegre')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1595, 16, N'Zapala')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1596, 17, N'Aguada Cecilio')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1597, 17, N'Aguada de Guerra')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1598, 17, N'Allén')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1599, 17, N'Arroyo de La Ventana')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1600, 17, N'Arroyo Los Berros')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1601, 17, N'Bariloche')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1602, 17, N'Calte. Cordero')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1603, 17, N'Campo Grande')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1604, 17, N'Catriel')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1605, 17, N'Cerro Policía')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1606, 17, N'Cervantes')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1607, 17, N'Chelforo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1608, 17, N'Chimpay')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1609, 17, N'Chinchinales')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1610, 17, N'Chipauquil')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1611, 17, N'Choele Choel')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1612, 17, N'Cinco Saltos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1613, 17, N'Cipolletti')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1614, 17, N'Clemente Onelli')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1615, 17, N'Colán Conhue')
GO
print 'Processed 1600 total records'
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1616, 17, N'Comallo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1617, 17, N'Comicó')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1618, 17, N'Cona Niyeu')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1619, 17, N'Coronel Belisle')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1620, 17, N'Cubanea')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1621, 17, N'Darwin')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1622, 17, N'Dina Huapi')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1623, 17, N'El Bolsón')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1624, 17, N'El Caín')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1625, 17, N'El Manso')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1626, 17, N'Gral. Conesa')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1627, 17, N'Gral. Enrique Godoy')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1628, 17, N'Gral. Fernandez Oro')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1629, 17, N'Gral. Roca')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1630, 17, N'Guardia Mitre')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1631, 17, N'Ing. Huergo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1632, 17, N'Ing. Jacobacci')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1633, 17, N'Laguna Blanca')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1634, 17, N'Lamarque')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1635, 17, N'Las Grutas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1636, 17, N'Los Menucos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1637, 17, N'Luis Beltrán')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1638, 17, N'Mainqué')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1639, 17, N'Mamuel Choique')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1640, 17, N'Maquinchao')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1641, 17, N'Mencué')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1642, 17, N'Mtro. Ramos Mexia')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1643, 17, N'Nahuel Niyeu')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1644, 17, N'Naupa Huen')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1645, 17, N'Ñorquinco')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1646, 17, N'Ojos de Agua')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1647, 17, N'Paso de Agua')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1648, 17, N'Paso Flores')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1649, 17, N'Peñas Blancas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1650, 17, N'Pichi Mahuida')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1651, 17, N'Pilcaniyeu')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1652, 17, N'Pomona')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1653, 17, N'Prahuaniyeu')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1654, 17, N'Rincón Treneta')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1655, 17, N'Río Chico')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1656, 17, N'Río Colorado')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1657, 17, N'Roca')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1658, 17, N'San Antonio Oeste')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1659, 17, N'San Javier')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1660, 17, N'Sierra Colorada')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1661, 17, N'Sierra Grande')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1662, 17, N'Sierra Pailemán')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1663, 17, N'Valcheta')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1664, 17, N'Valle Azul')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1665, 17, N'Viedma')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1666, 17, N'Villa Llanquín')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1667, 17, N'Villa Mascardi')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1668, 17, N'Villa Regina')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1669, 17, N'Yaminué')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1670, 18, N'A. Saravia')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1671, 18, N'Aguaray')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1672, 18, N'Angastaco')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1673, 18, N'Animaná')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1674, 18, N'Cachi')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1675, 18, N'Cafayate')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1676, 18, N'Campo Quijano')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1677, 18, N'Campo Santo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1678, 18, N'Capital')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1679, 18, N'Cerrillos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1680, 18, N'Chicoana')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1681, 18, N'Col. Sta. Rosa')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1682, 18, N'Coronel Moldes')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1683, 18, N'El Bordo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1684, 18, N'El Carril')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1685, 18, N'El Galpón')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1686, 18, N'El Jardín')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1687, 18, N'El Potrero')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1688, 18, N'El Quebrachal')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1689, 18, N'El Tala')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1690, 18, N'Embarcación')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1691, 18, N'Gral. Ballivian')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1692, 18, N'Gral. Güemes')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1693, 18, N'Gral. Mosconi')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1694, 18, N'Gral. Pizarro')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1695, 18, N'Guachipas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1696, 18, N'Hipólito Yrigoyen')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1697, 18, N'Iruyá')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1698, 18, N'Isla De Cañas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1699, 18, N'J. V. Gonzalez')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1700, 18, N'La Caldera')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1701, 18, N'La Candelaria')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1702, 18, N'La Merced')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1703, 18, N'La Poma')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1704, 18, N'La Viña')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1705, 18, N'Las Lajitas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1706, 18, N'Los Toldos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1707, 18, N'Metán')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1708, 18, N'Molinos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1709, 18, N'Nazareno')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1710, 18, N'Orán')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1711, 18, N'Payogasta')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1712, 18, N'Pichanal')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1713, 18, N'Prof. S. Mazza')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1714, 18, N'Río Piedras')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1715, 18, N'Rivadavia Banda Norte')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1716, 18, N'Rivadavia Banda Sur')
GO
print 'Processed 1700 total records'
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1717, 18, N'Rosario de La Frontera')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1718, 18, N'Rosario de Lerma')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1719, 18, N'Saclantás')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1720, 18, N'18')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1721, 18, N'San Antonio')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1722, 18, N'San Carlos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1723, 18, N'San José De Metán')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1724, 18, N'San Ramón')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1725, 18, N'Santa Victoria E.')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1726, 18, N'Santa Victoria O.')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1727, 18, N'Tartagal')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1728, 18, N'Tolar Grande')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1729, 18, N'Urundel')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1730, 18, N'Vaqueros')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1731, 18, N'Villa San Lorenzo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1732, 19, N'Albardón')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1733, 19, N'Angaco')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1734, 19, N'Calingasta')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1735, 19, N'Capital')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1736, 19, N'Caucete')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1737, 19, N'Chimbas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1738, 19, N'Iglesia')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1739, 19, N'Jachal')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1740, 19, N'Nueve de Julio')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1741, 19, N'Pocito')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1742, 19, N'Rawson')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1743, 19, N'Rivadavia')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1744, 19, N'19')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1745, 19, N'San Martín')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1746, 19, N'Santa Lucía')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1747, 19, N'Sarmiento')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1748, 19, N'Ullum')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1749, 19, N'Valle Fértil')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1750, 19, N'Veinticinco de Mayo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1751, 19, N'Zonda')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1752, 20, N'Alto Pelado')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1753, 20, N'Alto Pencoso')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1754, 20, N'Anchorena')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1755, 20, N'Arizona')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1756, 20, N'Bagual')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1757, 20, N'Balde')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1758, 20, N'Batavia')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1759, 20, N'Beazley')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1760, 20, N'Buena Esperanza')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1761, 20, N'Candelaria')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1762, 20, N'Capital')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1763, 20, N'Carolina')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1764, 20, N'Carpintería')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1765, 20, N'Concarán')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1766, 20, N'Cortaderas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1767, 20, N'El Morro')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1768, 20, N'El Trapiche')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1769, 20, N'El Volcán')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1770, 20, N'Fortín El Patria')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1771, 20, N'Fortuna')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1772, 20, N'Fraga')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1773, 20, N'Juan Jorba')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1774, 20, N'Juan Llerena')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1775, 20, N'Juana Koslay')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1776, 20, N'Justo Daract')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1777, 20, N'La Calera')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1778, 20, N'La Florida')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1779, 20, N'La Punilla')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1780, 20, N'La Toma')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1781, 20, N'Lafinur')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1782, 20, N'Las Aguadas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1783, 20, N'Las Chacras')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1784, 20, N'Las Lagunas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1785, 20, N'Las Vertientes')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1786, 20, N'Lavaisse')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1787, 20, N'Leandro N. Alem')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1788, 20, N'Los Molles')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1789, 20, N'Luján')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1790, 20, N'Mercedes')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1791, 20, N'Merlo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1792, 20, N'Naschel')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1793, 20, N'Navia')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1794, 20, N'Nogolí')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1795, 20, N'Nueva Galia')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1796, 20, N'Papagayos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1797, 20, N'Paso Grande')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1798, 20, N'Potrero de Los Funes')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1799, 20, N'Quines')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1800, 20, N'Renca')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1801, 20, N'Saladillo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1802, 20, N'San Francisco')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1803, 20, N'San Gerónimo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1804, 20, N'San Martín')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1805, 20, N'San Pablo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1806, 20, N'Santa Rosa de Conlara')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1807, 20, N'Talita')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1808, 20, N'Tilisarao')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1809, 20, N'Unión')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1810, 20, N'Villa de La Quebrada')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1811, 20, N'Villa de Praga')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1812, 20, N'Villa del Carmen')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1813, 20, N'Villa Gral. Roca')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1814, 20, N'Villa Larca')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1815, 20, N'Villa Mercedes')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1816, 20, N'Zanjitas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1817, 21, N'Calafate')
GO
print 'Processed 1800 total records'
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1818, 21, N'Caleta Olivia')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1819, 21, N'Cañadón Seco')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1820, 21, N'Comandante Piedrabuena')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1821, 21, N'El Calafate')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1822, 21, N'El Chaltén')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1823, 21, N'Gdor. Gregores')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1824, 21, N'Hipólito Yrigoyen')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1825, 21, N'Jaramillo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1826, 21, N'Koluel Kaike')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1827, 21, N'Las Heras')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1828, 21, N'Los Antiguos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1829, 21, N'Perito Moreno')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1830, 21, N'Pico Truncado')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1831, 21, N'Pto. Deseado')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1832, 21, N'Pto. San Julián')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1833, 21, N'Pto. 21')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1834, 21, N'Río Cuarto')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1835, 21, N'Río Gallegos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1836, 21, N'Río Turbio')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1837, 21, N'Tres Lagos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1838, 21, N'Veintiocho De Noviembre')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1839, 22, N'Aarón Castellanos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1840, 22, N'Acebal')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1841, 22, N'Aguará Grande')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1842, 22, N'Albarellos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1843, 22, N'Alcorta')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1844, 22, N'Aldao')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1845, 22, N'Alejandra')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1846, 22, N'Álvarez')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1847, 22, N'Ambrosetti')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1848, 22, N'Amenábar')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1849, 22, N'Angélica')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1850, 22, N'Angeloni')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1851, 22, N'Arequito')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1852, 22, N'Arminda')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1853, 22, N'Armstrong')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1854, 22, N'Arocena')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1855, 22, N'Arroyo Aguiar')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1856, 22, N'Arroyo Ceibal')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1857, 22, N'Arroyo Leyes')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1858, 22, N'Arroyo Seco')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1859, 22, N'Arrufó')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1860, 22, N'Arteaga')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1861, 22, N'Ataliva')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1862, 22, N'Aurelia')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1863, 22, N'Avellaneda')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1864, 22, N'Barrancas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1865, 22, N'Bauer Y Sigel')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1866, 22, N'Bella Italia')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1867, 22, N'Berabevú')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1868, 22, N'Berna')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1869, 22, N'Bernardo de Irigoyen')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1870, 22, N'Bigand')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1871, 22, N'Bombal')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1872, 22, N'Bouquet')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1873, 22, N'Bustinza')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1874, 22, N'Cabal')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1875, 22, N'Cacique Ariacaiquin')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1876, 22, N'Cafferata')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1877, 22, N'Calchaquí')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1878, 22, N'Campo Andino')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1879, 22, N'Campo Piaggio')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1880, 22, N'Cañada de Gómez')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1881, 22, N'Cañada del Ucle')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1882, 22, N'Cañada Rica')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1883, 22, N'Cañada Rosquín')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1884, 22, N'Candioti')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1885, 22, N'Capital')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1886, 22, N'Capitán Bermúdez')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1887, 22, N'Capivara')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1888, 22, N'Carcarañá')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1889, 22, N'Carlos Pellegrini')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1890, 22, N'Carmen')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1891, 22, N'Carmen Del Sauce')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1892, 22, N'Carreras')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1893, 22, N'Carrizales')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1894, 22, N'Casalegno')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1895, 22, N'Casas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1896, 22, N'Casilda')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1897, 22, N'Castelar')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1898, 22, N'Castellanos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1899, 22, N'Cayastá')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1900, 22, N'Cayastacito')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1901, 22, N'Centeno')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1902, 22, N'Cepeda')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1903, 22, N'Ceres')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1904, 22, N'Chabás')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1905, 22, N'Chañar Ladeado')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1906, 22, N'Chapuy')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1907, 22, N'Chovet')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1908, 22, N'Christophersen')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1909, 22, N'Classon')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1910, 22, N'Cnel. Arnold')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1911, 22, N'Cnel. Bogado')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1912, 22, N'Cnel. Dominguez')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1913, 22, N'Cnel. Fraga')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1914, 22, N'Col. Aldao')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1915, 22, N'Col. Ana')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1916, 22, N'Col. Belgrano')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1917, 22, N'Col. Bicha')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1918, 22, N'Col. Bigand')
GO
print 'Processed 1900 total records'
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1919, 22, N'Col. Bossi')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1920, 22, N'Col. Cavour')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1921, 22, N'Col. Cello')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1922, 22, N'Col. Dolores')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1923, 22, N'Col. Dos Rosas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1924, 22, N'Col. Durán')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1925, 22, N'Col. Iturraspe')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1926, 22, N'Col. Margarita')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1927, 22, N'Col. Mascias')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1928, 22, N'Col. Raquel')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1929, 22, N'Col. Rosa')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1930, 22, N'Col. San José')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1931, 22, N'Constanza')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1932, 22, N'Coronda')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1933, 22, N'Correa')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1934, 22, N'Crispi')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1935, 22, N'Cululú')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1936, 22, N'Curupayti')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1937, 22, N'Desvio Arijón')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1938, 22, N'Diaz')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1939, 22, N'Diego de Alvear')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1940, 22, N'Egusquiza')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1941, 22, N'El Arazá')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1942, 22, N'El Rabón')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1943, 22, N'El Sombrerito')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1944, 22, N'El Trébol')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1945, 22, N'Elisa')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1946, 22, N'Elortondo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1947, 22, N'Emilia')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1948, 22, N'Empalme San Carlos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1949, 22, N'Empalme Villa Constitucion')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1950, 22, N'Esmeralda')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1951, 22, N'Esperanza')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1952, 22, N'Estación Alvear')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1953, 22, N'Estacion Clucellas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1954, 22, N'Esteban Rams')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1955, 22, N'Esther')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1956, 22, N'Esustolia')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1957, 22, N'Eusebia')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1958, 22, N'Felicia')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1959, 22, N'Fidela')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1960, 22, N'Fighiera')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1961, 22, N'Firmat')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1962, 22, N'Florencia')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1963, 22, N'Fortín Olmos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1964, 22, N'Franck')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1965, 22, N'Fray Luis Beltrán')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1966, 22, N'Frontera')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1967, 22, N'Fuentes')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1968, 22, N'Funes')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1969, 22, N'Gaboto')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1970, 22, N'Galisteo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1971, 22, N'Gálvez')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1972, 22, N'Garabalto')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1973, 22, N'Garibaldi')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1974, 22, N'Gato Colorado')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1975, 22, N'Gdor. Crespo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1976, 22, N'Gessler')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1977, 22, N'Godoy')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1978, 22, N'Golondrina')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1979, 22, N'Gral. Gelly')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1980, 22, N'Gral. Lagos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1981, 22, N'Granadero Baigorria')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1982, 22, N'Gregoria Perez De Denis')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1983, 22, N'Grutly')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1984, 22, N'Guadalupe N.')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1985, 22, N'Gödeken')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1986, 22, N'Helvecia')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1987, 22, N'Hersilia')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1988, 22, N'Hipatía')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1989, 22, N'Huanqueros')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1990, 22, N'Hugentobler')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1991, 22, N'Hughes')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1992, 22, N'Humberto 1º')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1993, 22, N'Humboldt')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1994, 22, N'Ibarlucea')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1995, 22, N'Ing. Chanourdie')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1996, 22, N'Intiyaco')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1997, 22, N'Ituzaingó')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1998, 22, N'Jacinto L. Aráuz')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (1999, 22, N'Josefina')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2000, 22, N'Juan B. Molina')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2001, 22, N'Juan de Garay')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2002, 22, N'Juncal')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2003, 22, N'La Brava')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2004, 22, N'La Cabral')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2005, 22, N'La Camila')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2006, 22, N'La Chispa')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2007, 22, N'La Clara')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2008, 22, N'La Criolla')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2009, 22, N'La Gallareta')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2010, 22, N'La Lucila')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2011, 22, N'La Pelada')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2012, 22, N'La Penca')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2013, 22, N'La Rubia')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2014, 22, N'La Sarita')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2015, 22, N'La Vanguardia')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2016, 22, N'Labordeboy')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2017, 22, N'Laguna Paiva')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2018, 22, N'Landeta')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2019, 22, N'Lanteri')
GO
print 'Processed 2000 total records'
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2020, 22, N'Larrechea')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2021, 22, N'Las Avispas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2022, 22, N'Las Bandurrias')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2023, 22, N'Las Garzas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2024, 22, N'Las Palmeras')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2025, 22, N'Las Parejas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2026, 22, N'Las Petacas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2027, 22, N'Las Rosas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2028, 22, N'Las Toscas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2029, 22, N'Las Tunas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2030, 22, N'Lazzarino')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2031, 22, N'Lehmann')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2032, 22, N'Llambi Campbell')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2033, 22, N'Logroño')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2034, 22, N'Loma Alta')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2035, 22, N'López')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2036, 22, N'Los Amores')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2037, 22, N'Los Cardos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2038, 22, N'Los Laureles')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2039, 22, N'Los Molinos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2040, 22, N'Los Quirquinchos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2041, 22, N'Lucio V. Lopez')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2042, 22, N'Luis Palacios')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2043, 22, N'Ma. Juana')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2044, 22, N'Ma. Luisa')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2045, 22, N'Ma. Susana')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2046, 22, N'Ma. Teresa')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2047, 22, N'Maciel')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2048, 22, N'Maggiolo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2049, 22, N'Malabrigo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2050, 22, N'Marcelino Escalada')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2051, 22, N'Margarita')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2052, 22, N'Matilde')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2053, 22, N'Mauá')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2054, 22, N'Máximo Paz')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2055, 22, N'Melincué')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2056, 22, N'Miguel Torres')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2057, 22, N'Moisés Ville')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2058, 22, N'Monigotes')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2059, 22, N'Monje')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2060, 22, N'Monte Obscuridad')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2061, 22, N'Monte Vera')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2062, 22, N'Montefiore')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2063, 22, N'Montes de Oca')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2064, 22, N'Murphy')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2065, 22, N'Ñanducita')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2066, 22, N'Naré')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2067, 22, N'Nelson')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2068, 22, N'Nicanor E. Molinas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2069, 22, N'Nuevo Torino')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2070, 22, N'Oliveros')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2071, 22, N'Palacios')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2072, 22, N'Pavón')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2073, 22, N'Pavón Arriba')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2074, 22, N'Pedro Gómez Cello')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2075, 22, N'Pérez')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2076, 22, N'Peyrano')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2077, 22, N'Piamonte')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2078, 22, N'Pilar')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2079, 22, N'Piñero')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2080, 22, N'Plaza Clucellas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2081, 22, N'Portugalete')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2082, 22, N'Pozo Borrado')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2083, 22, N'Progreso')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2084, 22, N'Providencia')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2085, 22, N'Pte. Roca')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2086, 22, N'Pueblo Andino')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2087, 22, N'Pueblo Esther')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2088, 22, N'Pueblo Gral. San Martín')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2089, 22, N'Pueblo Irigoyen')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2090, 22, N'Pueblo Marini')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2091, 22, N'Pueblo Muñoz')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2092, 22, N'Pueblo Uranga')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2093, 22, N'Pujato')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2094, 22, N'Pujato N.')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2095, 22, N'Rafaela')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2096, 22, N'Ramayón')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2097, 22, N'Ramona')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2098, 22, N'Reconquista')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2099, 22, N'Recreo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2100, 22, N'Ricardone')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2101, 22, N'Rivadavia')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2102, 22, N'Roldán')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2103, 22, N'Romang')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2104, 22, N'Rosario')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2105, 22, N'Rueda')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2106, 22, N'Rufino')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2107, 22, N'Sa Pereira')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2108, 22, N'Saguier')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2109, 22, N'Saladero M. Cabal')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2110, 22, N'Salto Grande')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2111, 22, N'San Agustín')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2112, 22, N'San Antonio de Obligado')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2113, 22, N'San Bernardo (N.J.)')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2114, 22, N'San Bernardo (S.J.)')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2115, 22, N'San Carlos Centro')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2116, 22, N'San Carlos N.')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2117, 22, N'San Carlos S.')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2118, 22, N'San Cristóbal')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2119, 22, N'San Eduardo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2120, 22, N'San Eugenio')
GO
print 'Processed 2100 total records'
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2121, 22, N'San Fabián')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2122, 22, N'San Fco. de Santa Fé')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2123, 22, N'San Genaro')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2124, 22, N'San Genaro N.')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2125, 22, N'San Gregorio')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2126, 22, N'San Guillermo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2127, 22, N'San Javier')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2128, 22, N'San Jerónimo del Sauce')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2129, 22, N'San Jerónimo N.')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2130, 22, N'San Jerónimo S.')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2131, 22, N'San Jorge')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2132, 22, N'San José de La Esquina')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2133, 22, N'San José del Rincón')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2134, 22, N'San Justo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2135, 22, N'San Lorenzo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2136, 22, N'San Mariano')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2137, 22, N'San Martín de Las Escobas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2138, 22, N'San Martín N.')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2139, 22, N'San Vicente')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2140, 22, N'Sancti Spititu')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2141, 22, N'Sanford')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2142, 22, N'Santo Domingo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2143, 22, N'Santo Tomé')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2144, 22, N'Santurce')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2145, 22, N'Sargento Cabral')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2146, 22, N'Sarmiento')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2147, 22, N'Sastre')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2148, 22, N'Sauce Viejo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2149, 22, N'Serodino')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2150, 22, N'Silva')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2151, 22, N'Soldini')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2152, 22, N'Soledad')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2153, 22, N'Soutomayor')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2154, 22, N'Sta. Clara de Buena Vista')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2155, 22, N'Sta. Clara de Saguier')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2156, 22, N'Sta. Isabel')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2157, 22, N'Sta. Margarita')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2158, 22, N'Sta. Maria Centro')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2159, 22, N'Sta. María N.')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2160, 22, N'Sta. Rosa')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2161, 22, N'Sta. Teresa')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2162, 22, N'Suardi')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2163, 22, N'Sunchales')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2164, 22, N'Susana')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2165, 22, N'Tacuarendí')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2166, 22, N'Tacural')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2167, 22, N'Tartagal')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2168, 22, N'Teodelina')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2169, 22, N'Theobald')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2170, 22, N'Timbúes')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2171, 22, N'Toba')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2172, 22, N'Tortugas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2173, 22, N'Tostado')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2174, 22, N'Totoras')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2175, 22, N'Traill')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2176, 22, N'Venado Tuerto')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2177, 22, N'Vera')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2178, 22, N'Vera y Pintado')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2179, 22, N'Videla')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2180, 22, N'Vila')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2181, 22, N'Villa Amelia')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2182, 22, N'Villa Ana')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2183, 22, N'Villa Cañas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2184, 22, N'Villa Constitución')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2185, 22, N'Villa Eloísa')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2186, 22, N'Villa Gdor. Gálvez')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2187, 22, N'Villa Guillermina')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2188, 22, N'Villa Minetti')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2189, 22, N'Villa Mugueta')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2190, 22, N'Villa Ocampo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2191, 22, N'Villa San José')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2192, 22, N'Villa Saralegui')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2193, 22, N'Villa Trinidad')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2194, 22, N'Villada')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2195, 22, N'Virginia')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2196, 22, N'Wheelwright')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2197, 22, N'Zavalla')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2198, 22, N'Zenón Pereira')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2199, 23, N'Añatuya')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2200, 23, N'Árraga')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2201, 23, N'Bandera')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2202, 23, N'Bandera Bajada')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2203, 23, N'Beltrán')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2204, 23, N'Brea Pozo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2205, 23, N'Campo Gallo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2206, 23, N'Capital')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2207, 23, N'Chilca Juliana')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2208, 23, N'Choya')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2209, 23, N'Clodomira')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2210, 23, N'Col. Alpina')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2211, 23, N'Col. Dora')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2212, 23, N'Col. El Simbolar Robles')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2213, 23, N'El Bobadal')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2214, 23, N'El Charco')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2215, 23, N'El Mojón')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2216, 23, N'Estación Atamisqui')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2217, 23, N'Estación Simbolar')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2218, 23, N'Fernández')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2219, 23, N'Fortín Inca')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2220, 23, N'Frías')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2221, 23, N'Garza')
GO
print 'Processed 2200 total records'
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2222, 23, N'Gramilla')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2223, 23, N'Guardia Escolta')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2224, 23, N'Herrera')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2225, 23, N'Icaño')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2226, 23, N'Ing. Forres')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2227, 23, N'La Banda')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2228, 23, N'La Cañada')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2229, 23, N'Laprida')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2230, 23, N'Lavalle')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2231, 23, N'Loreto')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2232, 23, N'Los Juríes')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2233, 23, N'Los Núñez')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2234, 23, N'Los Pirpintos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2235, 23, N'Los Quiroga')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2236, 23, N'Los Telares')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2237, 23, N'Lugones')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2238, 23, N'Malbrán')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2239, 23, N'Matara')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2240, 23, N'Medellín')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2241, 23, N'Monte Quemado')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2242, 23, N'Nueva Esperanza')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2243, 23, N'Nueva Francia')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2244, 23, N'Palo Negro')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2245, 23, N'Pampa de Los Guanacos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2246, 23, N'Pinto')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2247, 23, N'Pozo Hondo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2248, 23, N'Quimilí')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2249, 23, N'Real Sayana')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2250, 23, N'Sachayoj')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2251, 23, N'San Pedro de Guasayán')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2252, 23, N'Selva')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2253, 23, N'Sol de Julio')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2254, 23, N'Sumampa')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2255, 23, N'Suncho Corral')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2256, 23, N'Taboada')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2257, 23, N'Tapso')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2258, 23, N'Termas de Rio Hondo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2259, 23, N'Tintina')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2260, 23, N'Tomas Young')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2261, 23, N'Vilelas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2262, 23, N'Villa Atamisqui')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2263, 23, N'Villa La Punta')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2264, 23, N'Villa Ojo de Agua')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2265, 23, N'Villa Río Hondo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2266, 23, N'Villa Salavina')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2267, 23, N'Villa Unión')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2268, 23, N'Vilmer')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2269, 23, N'Weisburd')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2270, 24, N'Río Grande')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2271, 24, N'Tolhuin')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2272, 24, N'Ushuaia')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2273, 25, N'Acheral')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2274, 25, N'Agua Dulce')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2275, 25, N'Aguilares')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2276, 25, N'Alderetes')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2277, 25, N'Alpachiri')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2278, 25, N'Alto Verde')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2279, 25, N'Amaicha del Valle')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2280, 25, N'Amberes')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2281, 25, N'Ancajuli')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2282, 25, N'Arcadia')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2283, 25, N'Atahona')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2284, 25, N'Banda del Río Sali')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2285, 25, N'Bella Vista')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2286, 25, N'Buena Vista')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2287, 25, N'Burruyacú')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2288, 25, N'Capitán Cáceres')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2289, 25, N'Cevil Redondo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2290, 25, N'Choromoro')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2291, 25, N'Ciudacita')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2292, 25, N'Colalao del Valle')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2293, 25, N'Colombres')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2294, 25, N'Concepción')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2295, 25, N'Delfín Gallo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2296, 25, N'El Bracho')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2297, 25, N'El Cadillal')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2298, 25, N'El Cercado')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2299, 25, N'El Chañar')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2300, 25, N'El Manantial')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2301, 25, N'El Mojón')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2302, 25, N'El Mollar')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2303, 25, N'El Naranjito')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2304, 25, N'El Naranjo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2305, 25, N'El Polear')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2306, 25, N'El Puestito')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2307, 25, N'El Sacrificio')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2308, 25, N'El Timbó')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2309, 25, N'Escaba')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2310, 25, N'Esquina')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2311, 25, N'Estación Aráoz')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2312, 25, N'Famaillá')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2313, 25, N'Gastone')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2314, 25, N'Gdor. Garmendia')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2315, 25, N'Gdor. Piedrabuena')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2316, 25, N'Graneros')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2317, 25, N'Huasa Pampa')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2318, 25, N'J. B. Alberdi')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2319, 25, N'La Cocha')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2320, 25, N'La Esperanza')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2321, 25, N'La Florida')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2322, 25, N'La Ramada')
GO
print 'Processed 2300 total records'
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2323, 25, N'La Trinidad')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2324, 25, N'Lamadrid')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2325, 25, N'Las Cejas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2326, 25, N'Las Talas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2327, 25, N'Las Talitas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2328, 25, N'Los Bulacio')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2329, 25, N'Los Gómez')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2330, 25, N'Los Nogales')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2331, 25, N'Los Pereyra')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2332, 25, N'Los Pérez')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2333, 25, N'Los Puestos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2334, 25, N'Los Ralos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2335, 25, N'Los Sarmientos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2336, 25, N'Los Sosa')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2337, 25, N'Lules')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2338, 25, N'M. García Fernández')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2339, 25, N'Manuela Pedraza')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2340, 25, N'Medinas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2341, 25, N'Monte Bello')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2342, 25, N'Monteagudo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2343, 25, N'Monteros')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2344, 25, N'Padre Monti')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2345, 25, N'Pampa Mayo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2346, 25, N'Quilmes')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2347, 25, N'Raco')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2348, 25, N'Ranchillos')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2349, 25, N'Río Chico')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2350, 25, N'Río Colorado')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2351, 25, N'Río Seco')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2352, 25, N'Rumi Punco')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2353, 25, N'San Andrés')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2354, 25, N'San Felipe')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2355, 25, N'San Ignacio')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2356, 25, N'San Javier')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2357, 25, N'San José')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2358, 25, N'San Miguel de 25')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2359, 25, N'San Pedro')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2360, 25, N'San Pedro de Colalao')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2361, 25, N'Santa Rosa de Leales')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2362, 25, N'Sgto. Moya')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2363, 25, N'Siete de Abril')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2364, 25, N'Simoca')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2365, 25, N'Soldado Maldonado')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2366, 25, N'Sta. Ana')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2367, 25, N'Sta. Cruz')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2368, 25, N'Sta. Lucía')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2369, 25, N'Taco Ralo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2370, 25, N'Tafí del Valle')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2371, 25, N'Tafí Viejo')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2372, 25, N'Tapia')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2373, 25, N'Teniente Berdina')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2374, 25, N'Trancas')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2375, 25, N'Villa Belgrano')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2376, 25, N'Villa Benjamín Araoz')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2377, 25, N'Villa Chiligasta')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2378, 25, N'Villa de Leales')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2379, 25, N'Villa Quinteros')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2380, 25, N'Yánima')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2381, 25, N'Yerba Buena')
INSERT [dbo].[localidades] ([id], [id_privincia], [localidad]) VALUES (2382, 25, N'Yerba Buena (S)')
SET IDENTITY_INSERT [dbo].[localidades] OFF
/****** Object:  Table [dbo].[PLANES]    Script Date: 06/22/2018 21:30:35 ******/
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
SET IDENTITY_INSERT [dbo].[PLANES] ON
INSERT [dbo].[PLANES] ([ID], [NOMBRE], [ID_COBERTURA]) VALUES (1, N'SMG01', 1)
INSERT [dbo].[PLANES] ([ID], [NOMBRE], [ID_COBERTURA]) VALUES (2, N'SMG02', 1)
INSERT [dbo].[PLANES] ([ID], [NOMBRE], [ID_COBERTURA]) VALUES (3, N'SMG10', 1)
INSERT [dbo].[PLANES] ([ID], [NOMBRE], [ID_COBERTURA]) VALUES (4, N'SMG20', 1)
INSERT [dbo].[PLANES] ([ID], [NOMBRE], [ID_COBERTURA]) VALUES (5, N'SMG30', 1)
INSERT [dbo].[PLANES] ([ID], [NOMBRE], [ID_COBERTURA]) VALUES (6, N'SMG40', 1)
INSERT [dbo].[PLANES] ([ID], [NOMBRE], [ID_COBERTURA]) VALUES (7, N'SMG50', 1)
INSERT [dbo].[PLANES] ([ID], [NOMBRE], [ID_COBERTURA]) VALUES (8, N'SMG60', 1)
INSERT [dbo].[PLANES] ([ID], [NOMBRE], [ID_COBERTURA]) VALUES (9, N'SMG70', 1)
INSERT [dbo].[PLANES] ([ID], [NOMBRE], [ID_COBERTURA]) VALUES (10, N'220', 2)
INSERT [dbo].[PLANES] ([ID], [NOMBRE], [ID_COBERTURA]) VALUES (11, N'330', 2)
INSERT [dbo].[PLANES] ([ID], [NOMBRE], [ID_COBERTURA]) VALUES (12, N'440', 2)
INSERT [dbo].[PLANES] ([ID], [NOMBRE], [ID_COBERTURA]) VALUES (13, N'550', 2)
INSERT [dbo].[PLANES] ([ID], [NOMBRE], [ID_COBERTURA]) VALUES (14, N'AZUL', 3)
INSERT [dbo].[PLANES] ([ID], [NOMBRE], [ID_COBERTURA]) VALUES (15, N'CELESTE', 3)
INSERT [dbo].[PLANES] ([ID], [NOMBRE], [ID_COBERTURA]) VALUES (17, N'FAMILY CARE', 3)
INSERT [dbo].[PLANES] ([ID], [NOMBRE], [ID_COBERTURA]) VALUES (18, N'MC', 3)
INSERT [dbo].[PLANES] ([ID], [NOMBRE], [ID_COBERTURA]) VALUES (19, N'PAMI', 4)
INSERT [dbo].[PLANES] ([ID], [NOMBRE], [ID_COBERTURA]) VALUES (20, N'NO TIENE', 5)
INSERT [dbo].[PLANES] ([ID], [NOMBRE], [ID_COBERTURA]) VALUES (25, N'Basico', 8)
INSERT [dbo].[PLANES] ([ID], [NOMBRE], [ID_COBERTURA]) VALUES (26, N'Medio', 8)
SET IDENTITY_INSERT [dbo].[PLANES] OFF
/****** Object:  Table [dbo].[TELEFONO]    Script Date: 06/22/2018 21:30:35 ******/
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
INSERT [dbo].[TELEFONO] ([NUMERO], [TIPO]) VALUES (252, 1)
INSERT [dbo].[TELEFONO] ([NUMERO], [TIPO]) VALUES (741, 1)
INSERT [dbo].[TELEFONO] ([NUMERO], [TIPO]) VALUES (4578, 2)
INSERT [dbo].[TELEFONO] ([NUMERO], [TIPO]) VALUES (6858, 2)
INSERT [dbo].[TELEFONO] ([NUMERO], [TIPO]) VALUES (11111, 1)
INSERT [dbo].[TELEFONO] ([NUMERO], [TIPO]) VALUES (85282, 3)
INSERT [dbo].[TELEFONO] ([NUMERO], [TIPO]) VALUES (125125, 3)
INSERT [dbo].[TELEFONO] ([NUMERO], [TIPO]) VALUES (182563, 2)
INSERT [dbo].[TELEFONO] ([NUMERO], [TIPO]) VALUES (1911774, 3)
INSERT [dbo].[TELEFONO] ([NUMERO], [TIPO]) VALUES (6666666, 1)
INSERT [dbo].[TELEFONO] ([NUMERO], [TIPO]) VALUES (7777777, 2)
INSERT [dbo].[TELEFONO] ([NUMERO], [TIPO]) VALUES (8528528, 2)
INSERT [dbo].[TELEFONO] ([NUMERO], [TIPO]) VALUES (9639639, 1)
INSERT [dbo].[TELEFONO] ([NUMERO], [TIPO]) VALUES (22556633, 4)
INSERT [dbo].[TELEFONO] ([NUMERO], [TIPO]) VALUES (47150850, 1)
INSERT [dbo].[TELEFONO] ([NUMERO], [TIPO]) VALUES (47315825, 1)
INSERT [dbo].[TELEFONO] ([NUMERO], [TIPO]) VALUES (58777744, 1)
INSERT [dbo].[TELEFONO] ([NUMERO], [TIPO]) VALUES (96396396, 4)
INSERT [dbo].[TELEFONO] ([NUMERO], [TIPO]) VALUES (123456789, 4)
INSERT [dbo].[TELEFONO] ([NUMERO], [TIPO]) VALUES (741741741, 1)
INSERT [dbo].[TELEFONO] ([NUMERO], [TIPO]) VALUES (1168929067, 1)
INSERT [dbo].[TELEFONO] ([NUMERO], [TIPO]) VALUES (1169377192, 2)
INSERT [dbo].[TELEFONO] ([NUMERO], [TIPO]) VALUES (1568929067, 2)
/****** Object:  Table [dbo].[CONSULTORIOS]    Script Date: 06/22/2018 21:30:35 ******/
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
/****** Object:  Table [dbo].[PROFESIONALES]    Script Date: 06/22/2018 21:30:35 ******/
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
SET IDENTITY_INSERT [dbo].[PROFESIONALES] ON
INSERT [dbo].[PROFESIONALES] ([ID], [NOMBRE], [APELLIDO], [DNI], [CALLE], [ID_LOCALIDAD], [MAIL], [FECHA_INGRESO], [FECHA_NACIMIENTO], [PISO], [DEPARTAMENTO], [CP], [ATIENDE_DOMICILIO], [ELIMINADO]) VALUES (1, N'rrtjrj', N'rttjr', 73474, N'gfkrkr weg', 1263, N'rtjr@ehe.com', CAST(0x433E0B00 AS Date), CAST(0x303E0B00 AS Date), NULL, NULL, NULL, 1, 0)
INSERT [dbo].[PROFESIONALES] ([ID], [NOMBRE], [APELLIDO], [DNI], [CALLE], [ID_LOCALIDAD], [MAIL], [FECHA_INGRESO], [FECHA_NACIMIENTO], [PISO], [DEPARTAMENTO], [CP], [ATIENDE_DOMICILIO], [ELIMINADO]) VALUES (2, N'Natalia', N'Bonifati', 30700374, N'Cuba 2488', 286, N'natibonifati@gmail.com', CAST(0x433E0B00 AS Date), CAST(0x6E320B00 AS Date), 4, N'B', 1426, 1, 0)
INSERT [dbo].[PROFESIONALES] ([ID], [NOMBRE], [APELLIDO], [DNI], [CALLE], [ID_LOCALIDAD], [MAIL], [FECHA_INGRESO], [FECHA_NACIMIENTO], [PISO], [DEPARTAMENTO], [CP], [ATIENDE_DOMICILIO], [ELIMINADO]) VALUES (3, N'Ramiro', N'Videla', 32644050, N'Cuba 2488', 286, N'ramiro@videla.com', CAST(0x4F3E0B00 AS Date), CAST(0x27110B00 AS Date), NULL, NULL, NULL, 0, 0)
SET IDENTITY_INSERT [dbo].[PROFESIONALES] OFF
/****** Object:  Table [dbo].[PACIENTES]    Script Date: 06/22/2018 21:30:35 ******/
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
SET IDENTITY_INSERT [dbo].[PACIENTES] ON
INSERT [dbo].[PACIENTES] ([ID], [NOMBRE], [APELLIDO], [DNI], [CALLE], [ID_LOCALIDAD], [FECHA_NACIMIENTO], [PISO], [DEPARTAMENTO], [CP], [MAIL], [FECHA_INGRESO], [ELIMINADO]) VALUES (6, N'741', N'741', 741, N'741', 1, CAST(0x133E0B00 AS Date), 741, N'741', 741, N'741', CAST(0x2C3E0B00 AS Date), 1)
INSERT [dbo].[PACIENTES] ([ID], [NOMBRE], [APELLIDO], [DNI], [CALLE], [ID_LOCALIDAD], [FECHA_NACIMIENTO], [PISO], [DEPARTAMENTO], [CP], [MAIL], [FECHA_INGRESO], [ELIMINADO]) VALUES (8, N'Ramiro', N'Videla', 32644050, N'Cuba 2488', 1, CAST(0x27110B00 AS Date), 4, N'B', 1428, N'raviand86@gmail.com', CAST(0x2C3E0B00 AS Date), 1)
INSERT [dbo].[PACIENTES] ([ID], [NOMBRE], [APELLIDO], [DNI], [CALLE], [ID_LOCALIDAD], [FECHA_NACIMIENTO], [PISO], [DEPARTAMENTO], [CP], [MAIL], [FECHA_INGRESO], [ELIMINADO]) VALUES (9, N'123123', N'123123', 123123, N'123123', 1, CAST(0x133E0B00 AS Date), 123, N'123', 123, N'ramiro@gmail.com', CAST(0x2C3E0B00 AS Date), 1)
INSERT [dbo].[PACIENTES] ([ID], [NOMBRE], [APELLIDO], [DNI], [CALLE], [ID_LOCALIDAD], [FECHA_NACIMIENTO], [PISO], [DEPARTAMENTO], [CP], [MAIL], [FECHA_INGRESO], [ELIMINADO]) VALUES (11, N'Sebastian', N'Videla', 50228012, N'calle falsa 123', 1, CAST(0x91320B00 AS Date), 4, N'b', 1685, N'seba@elseba.com', CAST(0x2F3E0B00 AS Date), 0)
INSERT [dbo].[PACIENTES] ([ID], [NOMBRE], [APELLIDO], [DNI], [CALLE], [ID_LOCALIDAD], [FECHA_NACIMIENTO], [PISO], [DEPARTAMENTO], [CP], [MAIL], [FECHA_INGRESO], [ELIMINADO]) VALUES (12, N'andres', N'Videla', 33645051, N'Calle falsa 123', 1, CAST(0xFA320B00 AS Date), 8, N'Z', 9685, N'pixmotive@gmail.co', CAST(0x303E0B00 AS Date), 0)
INSERT [dbo].[PACIENTES] ([ID], [NOMBRE], [APELLIDO], [DNI], [CALLE], [ID_LOCALIDAD], [FECHA_NACIMIENTO], [PISO], [DEPARTAMENTO], [CP], [MAIL], [FECHA_INGRESO], [ELIMINADO]) VALUES (13, N'adgdgqagq', N'sdkvsiudvndv', 78418526, N'askj kas', 1, CAST(0xA2380B00 AS Date), NULL, NULL, NULL, N'kjkabsivba@skjdnvosd.codm', CAST(0x303E0B00 AS Date), 0)
INSERT [dbo].[PACIENTES] ([ID], [NOMBRE], [APELLIDO], [DNI], [CALLE], [ID_LOCALIDAD], [FECHA_NACIMIENTO], [PISO], [DEPARTAMENTO], [CP], [MAIL], [FECHA_INGRESO], [ELIMINADO]) VALUES (14, N'qweasd', N'qweasdasd', 1205326, N'asfasf', 1, CAST(0xEAD40A00 AS Date), 8416, N'92', 9119, N'asdasd@sfasdf.com', CAST(0x313E0B00 AS Date), 0)
INSERT [dbo].[PACIENTES] ([ID], [NOMBRE], [APELLIDO], [DNI], [CALLE], [ID_LOCALIDAD], [FECHA_NACIMIENTO], [PISO], [DEPARTAMENTO], [CP], [MAIL], [FECHA_INGRESO], [ELIMINADO]) VALUES (15, N'dfhsrtjs', N'sjstj', 9229497, N'sdgsdgw24', 1, CAST(0x2E3E0B00 AS Date), NULL, NULL, NULL, N'srtjsrt@adfsth.zdfh', CAST(0x313E0B00 AS Date), 0)
INSERT [dbo].[PACIENTES] ([ID], [NOMBRE], [APELLIDO], [DNI], [CALLE], [ID_LOCALIDAD], [FECHA_NACIMIENTO], [PISO], [DEPARTAMENTO], [CP], [MAIL], [FECHA_INGRESO], [ELIMINADO]) VALUES (16, N'asfasfasf', N'asfasfasfsa', 52538638, N'863868', 1, CAST(0x073E0B00 AS Date), NULL, NULL, NULL, N'asfasf@dgsdgad.adgd', CAST(0x313E0B00 AS Date), 1)
INSERT [dbo].[PACIENTES] ([ID], [NOMBRE], [APELLIDO], [DNI], [CALLE], [ID_LOCALIDAD], [FECHA_NACIMIENTO], [PISO], [DEPARTAMENTO], [CP], [MAIL], [FECHA_INGRESO], [ELIMINADO]) VALUES (17, N'124124124142144', N'124124124', 4124124, N'12412414', 1, CAST(0x2E3E0B00 AS Date), NULL, NULL, NULL, N'124124@ergerg.com', CAST(0x313E0B00 AS Date), 0)
INSERT [dbo].[PACIENTES] ([ID], [NOMBRE], [APELLIDO], [DNI], [CALLE], [ID_LOCALIDAD], [FECHA_NACIMIENTO], [PISO], [DEPARTAMENTO], [CP], [MAIL], [FECHA_INGRESO], [ELIMINADO]) VALUES (18, N'sdsdfa', N'sasfas', 852963, N'7378373', 1, CAST(0x2E3E0B00 AS Date), NULL, NULL, NULL, N'asfafaf@adgadg.com', CAST(0x313E0B00 AS Date), 0)
INSERT [dbo].[PACIENTES] ([ID], [NOMBRE], [APELLIDO], [DNI], [CALLE], [ID_LOCALIDAD], [FECHA_NACIMIENTO], [PISO], [DEPARTAMENTO], [CP], [MAIL], [FECHA_INGRESO], [ELIMINADO]) VALUES (19, N'63963963', N'9639639', 639639396, N'96396', 1, CAST(0x2F3E0B00 AS Date), NULL, NULL, NULL, N'9639639@fgnfg.dvom', CAST(0x313E0B00 AS Date), 0)
INSERT [dbo].[PACIENTES] ([ID], [NOMBRE], [APELLIDO], [DNI], [CALLE], [ID_LOCALIDAD], [FECHA_NACIMIENTO], [PISO], [DEPARTAMENTO], [CP], [MAIL], [FECHA_INGRESO], [ELIMINADO]) VALUES (20, N'dfasfas', N'asfasfasf', 575273, N'753753', 1, CAST(0x2F3E0B00 AS Date), NULL, NULL, NULL, N'asfas@dgadsgs.asfinan', CAST(0x313E0B00 AS Date), 0)
INSERT [dbo].[PACIENTES] ([ID], [NOMBRE], [APELLIDO], [DNI], [CALLE], [ID_LOCALIDAD], [FECHA_NACIMIENTO], [PISO], [DEPARTAMENTO], [CP], [MAIL], [FECHA_INGRESO], [ELIMINADO]) VALUES (22, N'adfaasf', N'asfasf', 3464636, N'346346', 1, CAST(0x073E0B00 AS Date), 34, NULL, NULL, N'asfasf@sdgadg.com', CAST(0x313E0B00 AS Date), 0)
INSERT [dbo].[PACIENTES] ([ID], [NOMBRE], [APELLIDO], [DNI], [CALLE], [ID_LOCALIDAD], [FECHA_NACIMIENTO], [PISO], [DEPARTAMENTO], [CP], [MAIL], [FECHA_INGRESO], [ELIMINADO]) VALUES (28, N'adfaaccsf', N'asfaccsf', 34644996, N'346446996346', 1, CAST(0x073E0B00 AS Date), 3669944, NULL, NULL, N'asfa6699sf@sdgadg.com', CAST(0x313E0B00 AS Date), 0)
INSERT [dbo].[PACIENTES] ([ID], [NOMBRE], [APELLIDO], [DNI], [CALLE], [ID_LOCALIDAD], [FECHA_NACIMIENTO], [PISO], [DEPARTAMENTO], [CP], [MAIL], [FECHA_INGRESO], [ELIMINADO]) VALUES (29, N'asvasag', N'gadgadhdf', 353357, N'568568', 1, CAST(0x2E3E0B00 AS Date), 5685, NULL, NULL, N'fkfgkfgk@sfhdfh.adg', CAST(0x313E0B00 AS Date), 0)
INSERT [dbo].[PACIENTES] ([ID], [NOMBRE], [APELLIDO], [DNI], [CALLE], [ID_LOCALIDAD], [FECHA_NACIMIENTO], [PISO], [DEPARTAMENTO], [CP], [MAIL], [FECHA_INGRESO], [ELIMINADO]) VALUES (30, N'fsdgsdg', N'sdgsd', 2351, N'52352352', 1, CAST(0x2F3E0B00 AS Date), NULL, NULL, NULL, N'sdgsg@sfhs.cinca', CAST(0x313E0B00 AS Date), 1)
INSERT [dbo].[PACIENTES] ([ID], [NOMBRE], [APELLIDO], [DNI], [CALLE], [ID_LOCALIDAD], [FECHA_NACIMIENTO], [PISO], [DEPARTAMENTO], [CP], [MAIL], [FECHA_INGRESO], [ELIMINADO]) VALUES (31, N'dffssd', N'sdgsdgsg', 9191, N'AFASASF', 1, CAST(0xB93D0B00 AS Date), NULL, NULL, NULL, N'sdgsdgs@sfsd.dgad', CAST(0x313E0B00 AS Date), 0)
INSERT [dbo].[PACIENTES] ([ID], [NOMBRE], [APELLIDO], [DNI], [CALLE], [ID_LOCALIDAD], [FECHA_NACIMIENTO], [PISO], [DEPARTAMENTO], [CP], [MAIL], [FECHA_INGRESO], [ELIMINADO]) VALUES (32, N'dgadg', N'adgad', 3463, N'34634', 1, CAST(0x2E3E0B00 AS Date), NULL, NULL, NULL, N'adgadg@sdggd.comg', CAST(0x313E0B00 AS Date), 0)
INSERT [dbo].[PACIENTES] ([ID], [NOMBRE], [APELLIDO], [DNI], [CALLE], [ID_LOCALIDAD], [FECHA_NACIMIENTO], [PISO], [DEPARTAMENTO], [CP], [MAIL], [FECHA_INGRESO], [ELIMINADO]) VALUES (33, N'sd', N'asf', 1124, N'124', 1, CAST(0x2F3E0B00 AS Date), NULL, NULL, NULL, N'asf@sd.com', CAST(0x313E0B00 AS Date), 0)
INSERT [dbo].[PACIENTES] ([ID], [NOMBRE], [APELLIDO], [DNI], [CALLE], [ID_LOCALIDAD], [FECHA_NACIMIENTO], [PISO], [DEPARTAMENTO], [CP], [MAIL], [FECHA_INGRESO], [ELIMINADO]) VALUES (34, N'sdgs', N'dgsdg', 7411, N'7417411', 1, CAST(0x2F3E0B00 AS Date), NULL, NULL, NULL, N'sdgsd@sdg.sg', CAST(0x313E0B00 AS Date), 0)
INSERT [dbo].[PACIENTES] ([ID], [NOMBRE], [APELLIDO], [DNI], [CALLE], [ID_LOCALIDAD], [FECHA_NACIMIENTO], [PISO], [DEPARTAMENTO], [CP], [MAIL], [FECHA_INGRESO], [ELIMINADO]) VALUES (35, N'asas', N'asfasf', 567, N'6786', 1, CAST(0x2F3E0B00 AS Date), NULL, NULL, NULL, N'aasf@aaf.com', CAST(0x313E0B00 AS Date), 0)
INSERT [dbo].[PACIENTES] ([ID], [NOMBRE], [APELLIDO], [DNI], [CALLE], [ID_LOCALIDAD], [FECHA_NACIMIENTO], [PISO], [DEPARTAMENTO], [CP], [MAIL], [FECHA_INGRESO], [ELIMINADO]) VALUES (51, N'asgas', N'asgasg', 98119, N'asvasga15', 419, CAST(0xB73D0B00 AS Date), 135, N'326', 236, N'sgasg@sdng.comd', CAST(0x373E0B00 AS Date), 0)
INSERT [dbo].[PACIENTES] ([ID], [NOMBRE], [APELLIDO], [DNI], [CALLE], [ID_LOCALIDAD], [FECHA_NACIMIENTO], [PISO], [DEPARTAMENTO], [CP], [MAIL], [FECHA_INGRESO], [ELIMINADO]) VALUES (52, N'asdasd', N'asdasd', 981919, N'asasfas', 385, CAST(0xE9150B00 AS Date), 34, N'346', 346, N'asdasd@asdfasdfa.comnasc', CAST(0x383E0B00 AS Date), 0)
INSERT [dbo].[PACIENTES] ([ID], [NOMBRE], [APELLIDO], [DNI], [CALLE], [ID_LOCALIDAD], [FECHA_NACIMIENTO], [PISO], [DEPARTAMENTO], [CP], [MAIL], [FECHA_INGRESO], [ELIMINADO]) VALUES (53, N'qwqwe', N'qweqwe', 124124, N'sdgsgw3525', 927, CAST(0x5F3B0B00 AS Date), 2352, N'235', 235, N'sfasf@sdgadg.comasf', CAST(0x383E0B00 AS Date), 0)
INSERT [dbo].[PACIENTES] ([ID], [NOMBRE], [APELLIDO], [DNI], [CALLE], [ID_LOCALIDAD], [FECHA_NACIMIENTO], [PISO], [DEPARTAMENTO], [CP], [MAIL], [FECHA_INGRESO], [ELIMINADO]) VALUES (54, N'afasfasf', N'asfasf', 1241124, N'este tiene que andar 123', 1482, CAST(0xE8150B00 AS Date), 11, N'1', 1514, N'asasf@asdfasf.nuevo', CAST(0x383E0B00 AS Date), 1)
INSERT [dbo].[PACIENTES] ([ID], [NOMBRE], [APELLIDO], [DNI], [CALLE], [ID_LOCALIDAD], [FECHA_NACIMIENTO], [PISO], [DEPARTAMENTO], [CP], [MAIL], [FECHA_INGRESO], [ELIMINADO]) VALUES (55, N'aasgas', N'sgasg', 2326236, N'gadgadg', 1428, CAST(0x323E0B00 AS Date), 235, N'235', 235, N'asgags@sdgsadg.com', CAST(0x383E0B00 AS Date), 0)
INSERT [dbo].[PACIENTES] ([ID], [NOMBRE], [APELLIDO], [DNI], [CALLE], [ID_LOCALIDAD], [FECHA_NACIMIENTO], [PISO], [DEPARTAMENTO], [CP], [MAIL], [FECHA_INGRESO], [ELIMINADO]) VALUES (56, N'Andres', N'videila', 32165, N'coasasd', 146, CAST(0x51140B00 AS Date), 4, N'b', 1614, N'fafafa@sdgasfa.asfa', CAST(0x383E0B00 AS Date), 0)
INSERT [dbo].[PACIENTES] ([ID], [NOMBRE], [APELLIDO], [DNI], [CALLE], [ID_LOCALIDAD], [FECHA_NACIMIENTO], [PISO], [DEPARTAMENTO], [CP], [MAIL], [FECHA_INGRESO], [ELIMINADO]) VALUES (57, N'qwqwrqw', N'qwrqwr', 125125, N'vagsagq51', 1561, CAST(0x2F240B00 AS Date), 62, N'236', 236, N'qwrqwr@gweg.com', CAST(0x383E0B00 AS Date), 1)
INSERT [dbo].[PACIENTES] ([ID], [NOMBRE], [APELLIDO], [DNI], [CALLE], [ID_LOCALIDAD], [FECHA_NACIMIENTO], [PISO], [DEPARTAMENTO], [CP], [MAIL], [FECHA_INGRESO], [ELIMINADO]) VALUES (58, N'flash', N'Gordon', 666, N'calle', 388, CAST(0x27240B00 AS Date), 1, N'f', 124, N'flash@gordon.com', CAST(0x383E0B00 AS Date), 0)
INSERT [dbo].[PACIENTES] ([ID], [NOMBRE], [APELLIDO], [DNI], [CALLE], [ID_LOCALIDAD], [FECHA_NACIMIENTO], [PISO], [DEPARTAMENTO], [CP], [MAIL], [FECHA_INGRESO], [ELIMINADO]) VALUES (60, N'RaMiRo', N'sdasd', 0, N'asfasf', 455, CAST(0x27240B00 AS Date), 1, N'r', 2414, N'asdasd@asfdsdfbdc.zzz', CAST(0x383E0B00 AS Date), 0)
INSERT [dbo].[PACIENTES] ([ID], [NOMBRE], [APELLIDO], [DNI], [CALLE], [ID_LOCALIDAD], [FECHA_NACIMIENTO], [PISO], [DEPARTAMENTO], [CP], [MAIL], [FECHA_INGRESO], [ELIMINADO]) VALUES (61, N'rama', N'vide', 316497, N'calle falsa', 1557, CAST(0x6D320B00 AS Date), 1625, N'd', 1968, N'rava@sdg.cok', CAST(0x383E0B00 AS Date), 0)
INSERT [dbo].[PACIENTES] ([ID], [NOMBRE], [APELLIDO], [DNI], [CALLE], [ID_LOCALIDAD], [FECHA_NACIMIENTO], [PISO], [DEPARTAMENTO], [CP], [MAIL], [FECHA_INGRESO], [ELIMINADO]) VALUES (62, N'asdasd', N'asdasd', 123123123, N'casasd', 1258, CAST(0x28240B00 AS Date), 2, N'f', 1242, N'asdsd@asfasd.com', CAST(0x383E0B00 AS Date), 1)
INSERT [dbo].[PACIENTES] ([ID], [NOMBRE], [APELLIDO], [DNI], [CALLE], [ID_LOCALIDAD], [FECHA_NACIMIENTO], [PISO], [DEPARTAMENTO], [CP], [MAIL], [FECHA_INGRESO], [ELIMINADO]) VALUES (64, N'sssss', N'sssss', 911, N'asda', 376, CAST(0xB03D0B00 AS Date), 23, N'f', 5, N'asdas@sdsadf.vo', CAST(0x3F3E0B00 AS Date), 1)
INSERT [dbo].[PACIENTES] ([ID], [NOMBRE], [APELLIDO], [DNI], [CALLE], [ID_LOCALIDAD], [FECHA_NACIMIENTO], [PISO], [DEPARTAMENTO], [CP], [MAIL], [FECHA_INGRESO], [ELIMINADO]) VALUES (65, N'xcb', N'xbxb', 1928444, N'casas', 286, CAST(0x4B3E0B00 AS Date), NULL, NULL, NULL, N'xbxb@fddp.vo', CAST(0x4F3E0B00 AS Date), 0)
INSERT [dbo].[PACIENTES] ([ID], [NOMBRE], [APELLIDO], [DNI], [CALLE], [ID_LOCALIDAD], [FECHA_NACIMIENTO], [PISO], [DEPARTAMENTO], [CP], [MAIL], [FECHA_INGRESO], [ELIMINADO]) VALUES (69, N'Rama', N'videla', 55339487, N'calle', 302, CAST(0xD53D0B00 AS Date), NULL, NULL, NULL, N'raviand8620@fmail.com', CAST(0x513E0B00 AS Date), NULL)
INSERT [dbo].[PACIENTES] ([ID], [NOMBRE], [APELLIDO], [DNI], [CALLE], [ID_LOCALIDAD], [FECHA_NACIMIENTO], [PISO], [DEPARTAMENTO], [CP], [MAIL], [FECHA_INGRESO], [ELIMINADO]) VALUES (70, N'Elsa', N'Garabato', 66685, N'cacaca', 283, CAST(0x4A3E0B00 AS Date), NULL, NULL, NULL, N'micorreo@gmail.coom', CAST(0x513E0B00 AS Date), 0)
INSERT [dbo].[PACIENTES] ([ID], [NOMBRE], [APELLIDO], [DNI], [CALLE], [ID_LOCALIDAD], [FECHA_NACIMIENTO], [PISO], [DEPARTAMENTO], [CP], [MAIL], [FECHA_INGRESO], [ELIMINADO]) VALUES (72, N'Elsa ', N'Garabato', 852666, N'asfaf', 293, CAST(0x4B3E0B00 AS Date), NULL, NULL, NULL, N'laloca@gagag.co', CAST(0x513E0B00 AS Date), 0)
INSERT [dbo].[PACIENTES] ([ID], [NOMBRE], [APELLIDO], [DNI], [CALLE], [ID_LOCALIDAD], [FECHA_NACIMIENTO], [PISO], [DEPARTAMENTO], [CP], [MAIL], [FECHA_INGRESO], [ELIMINADO]) VALUES (73, N'Fran', N'hildt', 778456, N'asgeeg', 308, CAST(0x4C3E0B00 AS Date), NULL, NULL, NULL, N'fran@hildt.com', CAST(0x513E0B00 AS Date), 0)
INSERT [dbo].[PACIENTES] ([ID], [NOMBRE], [APELLIDO], [DNI], [CALLE], [ID_LOCALIDAD], [FECHA_NACIMIENTO], [PISO], [DEPARTAMENTO], [CP], [MAIL], [FECHA_INGRESO], [ELIMINADO]) VALUES (74, N'Ramiro', N'Videla', 528855695, N'calle falla 963', 23, CAST(0x523E0B00 AS Date), NULL, NULL, NULL, N'raviand86@gmal.com', CAST(0x533E0B00 AS Date), 0)
INSERT [dbo].[PACIENTES] ([ID], [NOMBRE], [APELLIDO], [DNI], [CALLE], [ID_LOCALIDAD], [FECHA_NACIMIENTO], [PISO], [DEPARTAMENTO], [CP], [MAIL], [FECHA_INGRESO], [ELIMINADO]) VALUES (75, N'Ramiro', N'Videla', 85266, N'Calle real', 1456, CAST(0x353E0B00 AS Date), 0, N'0', 0, N'rararar@asfan.com', CAST(0x533E0B00 AS Date), 0)
INSERT [dbo].[PACIENTES] ([ID], [NOMBRE], [APELLIDO], [DNI], [CALLE], [ID_LOCALIDAD], [FECHA_NACIMIENTO], [PISO], [DEPARTAMENTO], [CP], [MAIL], [FECHA_INGRESO], [ELIMINADO]) VALUES (76, N'Mario', N'Percivaldi', 30974103, N'Las Heras', 48, CAST(0xFC0D0B00 AS Date), 1233, N'12', 123, N'percivaldi.mario@gmail.com', CAST(0x5B3E0B00 AS Date), 0)
SET IDENTITY_INSERT [dbo].[PACIENTES] OFF
/****** Object:  Table [dbo].[DIA_ATENCION_PROFESIONAL]    Script Date: 06/22/2018 21:30:35 ******/
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
SET IDENTITY_INSERT [dbo].[DIA_ATENCION_PROFESIONAL] ON
INSERT [dbo].[DIA_ATENCION_PROFESIONAL] ([ID], [ID_PROFESIONAL], [ID_DIA], [ID_ATENCION]) VALUES (1, 1, 1, 2)
INSERT [dbo].[DIA_ATENCION_PROFESIONAL] ([ID], [ID_PROFESIONAL], [ID_DIA], [ID_ATENCION]) VALUES (2, 1, 2, 2)
INSERT [dbo].[DIA_ATENCION_PROFESIONAL] ([ID], [ID_PROFESIONAL], [ID_DIA], [ID_ATENCION]) VALUES (3, 1, 3, 2)
INSERT [dbo].[DIA_ATENCION_PROFESIONAL] ([ID], [ID_PROFESIONAL], [ID_DIA], [ID_ATENCION]) VALUES (4, 1, 4, 2)
INSERT [dbo].[DIA_ATENCION_PROFESIONAL] ([ID], [ID_PROFESIONAL], [ID_DIA], [ID_ATENCION]) VALUES (5, 1, 5, 2)
INSERT [dbo].[DIA_ATENCION_PROFESIONAL] ([ID], [ID_PROFESIONAL], [ID_DIA], [ID_ATENCION]) VALUES (6, 1, 6, 2)
INSERT [dbo].[DIA_ATENCION_PROFESIONAL] ([ID], [ID_PROFESIONAL], [ID_DIA], [ID_ATENCION]) VALUES (7, 1, 7, 2)
INSERT [dbo].[DIA_ATENCION_PROFESIONAL] ([ID], [ID_PROFESIONAL], [ID_DIA], [ID_ATENCION]) VALUES (8, 2, 1, 2)
INSERT [dbo].[DIA_ATENCION_PROFESIONAL] ([ID], [ID_PROFESIONAL], [ID_DIA], [ID_ATENCION]) VALUES (9, 2, 3, 2)
INSERT [dbo].[DIA_ATENCION_PROFESIONAL] ([ID], [ID_PROFESIONAL], [ID_DIA], [ID_ATENCION]) VALUES (10, 2, 5, 2)
INSERT [dbo].[DIA_ATENCION_PROFESIONAL] ([ID], [ID_PROFESIONAL], [ID_DIA], [ID_ATENCION]) VALUES (11, 3, 1, 3)
INSERT [dbo].[DIA_ATENCION_PROFESIONAL] ([ID], [ID_PROFESIONAL], [ID_DIA], [ID_ATENCION]) VALUES (12, 3, 2, 3)
INSERT [dbo].[DIA_ATENCION_PROFESIONAL] ([ID], [ID_PROFESIONAL], [ID_DIA], [ID_ATENCION]) VALUES (13, 3, 3, 3)
INSERT [dbo].[DIA_ATENCION_PROFESIONAL] ([ID], [ID_PROFESIONAL], [ID_DIA], [ID_ATENCION]) VALUES (14, 3, 4, 3)
INSERT [dbo].[DIA_ATENCION_PROFESIONAL] ([ID], [ID_PROFESIONAL], [ID_DIA], [ID_ATENCION]) VALUES (15, 3, 5, 3)
INSERT [dbo].[DIA_ATENCION_PROFESIONAL] ([ID], [ID_PROFESIONAL], [ID_DIA], [ID_ATENCION]) VALUES (16, 3, 6, 3)
SET IDENTITY_INSERT [dbo].[DIA_ATENCION_PROFESIONAL] OFF
/****** Object:  View [dbo].[CV_SELECT_PROFESIONALES]    Script Date: 06/22/2018 21:30:35 ******/
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
/****** Object:  Table [dbo].[INTERNACIONES]    Script Date: 06/22/2018 21:30:35 ******/
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
/****** Object:  Table [dbo].[ATENCION]    Script Date: 06/22/2018 21:30:35 ******/
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
	[ID_ESPECIALIDAD] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ATENCION] ON
INSERT [dbo].[ATENCION] ([ID], [FECHA], [ID_PACIENTE], [ID_PROFESIONAL], [INDICACION], [ID_ESPECIALIDAD]) VALUES (2, CAST(0x513E0B00 AS Date), 60, 2, N'Todo salio bien, ', NULL)
INSERT [dbo].[ATENCION] ([ID], [FECHA], [ID_PACIENTE], [ID_PROFESIONAL], [INDICACION], [ID_ESPECIALIDAD]) VALUES (3, CAST(0x623E0B00 AS Date), 64, 2, N'zskbv<sudbvñ<dsv<hidsv{ihds{vi<dv', 56)
SET IDENTITY_INSERT [dbo].[ATENCION] OFF
/****** Object:  Table [dbo].[COBERTURA_PROFESIONAL]    Script Date: 06/22/2018 21:30:35 ******/
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
SET IDENTITY_INSERT [dbo].[COBERTURA_PROFESIONAL] ON
INSERT [dbo].[COBERTURA_PROFESIONAL] ([ID], [ID_PROFESIONAL], [ID_COBERTURA]) VALUES (4, 1, 1)
INSERT [dbo].[COBERTURA_PROFESIONAL] ([ID], [ID_PROFESIONAL], [ID_COBERTURA]) VALUES (1, 1, 2)
INSERT [dbo].[COBERTURA_PROFESIONAL] ([ID], [ID_PROFESIONAL], [ID_COBERTURA]) VALUES (2, 1, 3)
INSERT [dbo].[COBERTURA_PROFESIONAL] ([ID], [ID_PROFESIONAL], [ID_COBERTURA]) VALUES (3, 1, 4)
INSERT [dbo].[COBERTURA_PROFESIONAL] ([ID], [ID_PROFESIONAL], [ID_COBERTURA]) VALUES (7, 2, 1)
INSERT [dbo].[COBERTURA_PROFESIONAL] ([ID], [ID_PROFESIONAL], [ID_COBERTURA]) VALUES (5, 2, 2)
INSERT [dbo].[COBERTURA_PROFESIONAL] ([ID], [ID_PROFESIONAL], [ID_COBERTURA]) VALUES (6, 2, 3)
INSERT [dbo].[COBERTURA_PROFESIONAL] ([ID], [ID_PROFESIONAL], [ID_COBERTURA]) VALUES (9, 3, 1)
INSERT [dbo].[COBERTURA_PROFESIONAL] ([ID], [ID_PROFESIONAL], [ID_COBERTURA]) VALUES (8, 3, 2)
SET IDENTITY_INSERT [dbo].[COBERTURA_PROFESIONAL] OFF
/****** Object:  Table [dbo].[COBERTURA_PACIENTES]    Script Date: 06/22/2018 21:30:35 ******/
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
SET IDENTITY_INSERT [dbo].[COBERTURA_PACIENTES] ON
INSERT [dbo].[COBERTURA_PACIENTES] ([ID], [NUMERO_CREDENCIAL], [ID_PACIENTE], [ID_PLAN]) VALUES (2, 123456789, 60, 17)
INSERT [dbo].[COBERTURA_PACIENTES] ([ID], [NUMERO_CREDENCIAL], [ID_PACIENTE], [ID_PLAN]) VALUES (3, 1122334455, 61, 15)
INSERT [dbo].[COBERTURA_PACIENTES] ([ID], [NUMERO_CREDENCIAL], [ID_PACIENTE], [ID_PLAN]) VALUES (4, 153264, 62, 15)
INSERT [dbo].[COBERTURA_PACIENTES] ([ID], [NUMERO_CREDENCIAL], [ID_PACIENTE], [ID_PLAN]) VALUES (6, 199191, 64, 11)
INSERT [dbo].[COBERTURA_PACIENTES] ([ID], [NUMERO_CREDENCIAL], [ID_PACIENTE], [ID_PLAN]) VALUES (7, 852963741, 65, 10)
INSERT [dbo].[COBERTURA_PACIENTES] ([ID], [NUMERO_CREDENCIAL], [ID_PACIENTE], [ID_PLAN]) VALUES (11, 1928563, 69, 15)
INSERT [dbo].[COBERTURA_PACIENTES] ([ID], [NUMERO_CREDENCIAL], [ID_PACIENTE], [ID_PLAN]) VALUES (12, 25444, 70, 14)
INSERT [dbo].[COBERTURA_PACIENTES] ([ID], [NUMERO_CREDENCIAL], [ID_PACIENTE], [ID_PLAN]) VALUES (14, NULL, 72, 20)
INSERT [dbo].[COBERTURA_PACIENTES] ([ID], [NUMERO_CREDENCIAL], [ID_PACIENTE], [ID_PLAN]) VALUES (15, 85204, 73, 14)
INSERT [dbo].[COBERTURA_PACIENTES] ([ID], [NUMERO_CREDENCIAL], [ID_PACIENTE], [ID_PLAN]) VALUES (16, 19852, 74, 11)
INSERT [dbo].[COBERTURA_PACIENTES] ([ID], [NUMERO_CREDENCIAL], [ID_PACIENTE], [ID_PLAN]) VALUES (17, 555, 75, 10)
INSERT [dbo].[COBERTURA_PACIENTES] ([ID], [NUMERO_CREDENCIAL], [ID_PACIENTE], [ID_PLAN]) VALUES (18, 51615151, 76, 13)
SET IDENTITY_INSERT [dbo].[COBERTURA_PACIENTES] OFF
/****** Object:  Table [dbo].[PACIENTE_TELEFONOS]    Script Date: 06/22/2018 21:30:35 ******/
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
SET IDENTITY_INSERT [dbo].[PACIENTE_TELEFONOS] ON
INSERT [dbo].[PACIENTE_TELEFONOS] ([ID], [ID_PACIENTE], [NUMERO]) VALUES (2, 56, 8528528)
INSERT [dbo].[PACIENTE_TELEFONOS] ([ID], [ID_PACIENTE], [NUMERO]) VALUES (3, 56, 9639639)
INSERT [dbo].[PACIENTE_TELEFONOS] ([ID], [ID_PACIENTE], [NUMERO]) VALUES (5, 57, 125125)
INSERT [dbo].[PACIENTE_TELEFONOS] ([ID], [ID_PACIENTE], [NUMERO]) VALUES (6, 58, 123456789)
INSERT [dbo].[PACIENTE_TELEFONOS] ([ID], [ID_PACIENTE], [NUMERO]) VALUES (8, 58, 11111)
INSERT [dbo].[PACIENTE_TELEFONOS] ([ID], [ID_PACIENTE], [NUMERO]) VALUES (10, 60, 7777777)
INSERT [dbo].[PACIENTE_TELEFONOS] ([ID], [ID_PACIENTE], [NUMERO]) VALUES (11, 60, 6666666)
INSERT [dbo].[PACIENTE_TELEFONOS] ([ID], [ID_PACIENTE], [NUMERO]) VALUES (13, 61, 1568929067)
INSERT [dbo].[PACIENTE_TELEFONOS] ([ID], [ID_PACIENTE], [NUMERO]) VALUES (22, 69, 1911774)
INSERT [dbo].[PACIENTE_TELEFONOS] ([ID], [ID_PACIENTE], [NUMERO]) VALUES (29, 75, 252)
SET IDENTITY_INSERT [dbo].[PACIENTE_TELEFONOS] OFF
/****** Object:  Table [dbo].[PROFESIONALES_TELEFONOS]    Script Date: 06/22/2018 21:30:35 ******/
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
SET IDENTITY_INSERT [dbo].[PROFESIONALES_TELEFONOS] ON
INSERT [dbo].[PROFESIONALES_TELEFONOS] ([ID], [ID_PROFESIONALES], [NUMERO]) VALUES (1, 1, 4578)
INSERT [dbo].[PROFESIONALES_TELEFONOS] ([ID], [ID_PROFESIONALES], [NUMERO]) VALUES (2, 1, 6858)
INSERT [dbo].[PROFESIONALES_TELEFONOS] ([ID], [ID_PROFESIONALES], [NUMERO]) VALUES (3, 2, 1169377192)
INSERT [dbo].[PROFESIONALES_TELEFONOS] ([ID], [ID_PROFESIONALES], [NUMERO]) VALUES (4, 2, 47315825)
INSERT [dbo].[PROFESIONALES_TELEFONOS] ([ID], [ID_PROFESIONALES], [NUMERO]) VALUES (5, 3, 1168929067)
SET IDENTITY_INSERT [dbo].[PROFESIONALES_TELEFONOS] OFF
/****** Object:  Table [dbo].[PROFESIONALES_ESPECIALIDADES]    Script Date: 06/22/2018 21:30:35 ******/
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
SET IDENTITY_INSERT [dbo].[PROFESIONALES_ESPECIALIDADES] ON
INSERT [dbo].[PROFESIONALES_ESPECIALIDADES] ([ID], [ID_PROFESIONAL], [ID_ESPECIALIDAD]) VALUES (1, 1, 34)
INSERT [dbo].[PROFESIONALES_ESPECIALIDADES] ([ID], [ID_PROFESIONAL], [ID_ESPECIALIDAD]) VALUES (2, 1, 27)
INSERT [dbo].[PROFESIONALES_ESPECIALIDADES] ([ID], [ID_PROFESIONAL], [ID_ESPECIALIDAD]) VALUES (3, 1, 28)
INSERT [dbo].[PROFESIONALES_ESPECIALIDADES] ([ID], [ID_PROFESIONAL], [ID_ESPECIALIDAD]) VALUES (4, 2, 56)
INSERT [dbo].[PROFESIONALES_ESPECIALIDADES] ([ID], [ID_PROFESIONAL], [ID_ESPECIALIDAD]) VALUES (5, 3, 16)
INSERT [dbo].[PROFESIONALES_ESPECIALIDADES] ([ID], [ID_PROFESIONAL], [ID_ESPECIALIDAD]) VALUES (6, 3, 19)
SET IDENTITY_INSERT [dbo].[PROFESIONALES_ESPECIALIDADES] OFF
/****** Object:  StoredProcedure [dbo].[SP_MODIFICAR_PROFESIONAL]    Script Date: 06/22/2018 21:30:35 ******/
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
/****** Object:  Table [dbo].[USUARIOS]    Script Date: 06/22/2018 21:30:35 ******/
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
	[ID_PERMISOS] [int] NOT NULL,
	[ID_PROFESIONAL] [int] NULL,
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
SET IDENTITY_INSERT [dbo].[USUARIOS] ON
INSERT [dbo].[USUARIOS] ([ID], [USUARIO], [PASS], [ID_PERMISOS], [ID_PROFESIONAL]) VALUES (2, N'Ramiro', N'noseve', 6, NULL)
INSERT [dbo].[USUARIOS] ([ID], [USUARIO], [PASS], [ID_PERMISOS], [ID_PROFESIONAL]) VALUES (7, N'rama', N'rama', 8, 3)
SET IDENTITY_INSERT [dbo].[USUARIOS] OFF
/****** Object:  Table [dbo].[TURNOS]    Script Date: 06/22/2018 21:30:35 ******/
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
SET IDENTITY_INSERT [dbo].[TURNOS] ON
INSERT [dbo].[TURNOS] ([ID], [ID_PACIENTE], [ID_ESTADO], [ID_PROFESIONAL], [FECHA_TURNO], [FECHA_SOLICITUD], [HORA_TURNO], [ID_ESPECIALIDAD]) VALUES (1, 64, 1, 2, CAST(0x4A3E0B00 AS Date), CAST(0x4A3E0B00 AS Date), CAST(0x0064C80000000000 AS Time), 56)
INSERT [dbo].[TURNOS] ([ID], [ID_PACIENTE], [ID_ESTADO], [ID_PROFESIONAL], [FECHA_TURNO], [FECHA_SOLICITUD], [HORA_TURNO], [ID_ESPECIALIDAD]) VALUES (2, 64, 1, 2, CAST(0x4B3E0B00 AS Date), CAST(0x4A3E0B00 AS Date), CAST(0x0064C80000000000 AS Time), 56)
INSERT [dbo].[TURNOS] ([ID], [ID_PACIENTE], [ID_ESTADO], [ID_PROFESIONAL], [FECHA_TURNO], [FECHA_SOLICITUD], [HORA_TURNO], [ID_ESPECIALIDAD]) VALUES (5, 60, 1, 2, CAST(0x4F3E0B00 AS Date), CAST(0x4A3E0B00 AS Date), CAST(0x0088770000000000 AS Time), 56)
INSERT [dbo].[TURNOS] ([ID], [ID_PACIENTE], [ID_ESTADO], [ID_PROFESIONAL], [FECHA_TURNO], [FECHA_SOLICITUD], [HORA_TURNO], [ID_ESPECIALIDAD]) VALUES (6, 56, 1, 1, CAST(0x563E0B00 AS Date), CAST(0x4A3E0B00 AS Date), CAST(0x00A8930000000000 AS Time), 52)
INSERT [dbo].[TURNOS] ([ID], [ID_PACIENTE], [ID_ESTADO], [ID_PROFESIONAL], [FECHA_TURNO], [FECHA_SOLICITUD], [HORA_TURNO], [ID_ESPECIALIDAD]) VALUES (7, 61, 1, 2, CAST(0x523E0B00 AS Date), CAST(0x4E3E0B00 AS Date), CAST(0x0098850000000000 AS Time), 56)
INSERT [dbo].[TURNOS] ([ID], [ID_PACIENTE], [ID_ESTADO], [ID_PROFESIONAL], [FECHA_TURNO], [FECHA_SOLICITUD], [HORA_TURNO], [ID_ESPECIALIDAD]) VALUES (8, 13, 1, 2, CAST(0x523E0B00 AS Date), CAST(0x4E3E0B00 AS Date), CAST(0x00907E0000000000 AS Time), 56)
INSERT [dbo].[TURNOS] ([ID], [ID_PACIENTE], [ID_ESTADO], [ID_PROFESIONAL], [FECHA_TURNO], [FECHA_SOLICITUD], [HORA_TURNO], [ID_ESPECIALIDAD]) VALUES (9, 60, 3, 2, CAST(0x523E0B00 AS Date), CAST(0x4E3E0B00 AS Date), CAST(0x00349E0000000000 AS Time), 56)
INSERT [dbo].[TURNOS] ([ID], [ID_PACIENTE], [ID_ESTADO], [ID_PROFESIONAL], [FECHA_TURNO], [FECHA_SOLICITUD], [HORA_TURNO], [ID_ESPECIALIDAD]) VALUES (10, 60, 1, 2, CAST(0x523E0B00 AS Date), CAST(0x4E3E0B00 AS Date), CAST(0x00B8A10000000000 AS Time), 56)
INSERT [dbo].[TURNOS] ([ID], [ID_PACIENTE], [ID_ESTADO], [ID_PROFESIONAL], [FECHA_TURNO], [FECHA_SOLICITUD], [HORA_TURNO], [ID_ESPECIALIDAD]) VALUES (11, 62, 1, 2, CAST(0x593E0B00 AS Date), CAST(0x4E3E0B00 AS Date), CAST(0x005CC10000000000 AS Time), 56)
INSERT [dbo].[TURNOS] ([ID], [ID_PACIENTE], [ID_ESTADO], [ID_PROFESIONAL], [FECHA_TURNO], [FECHA_SOLICITUD], [HORA_TURNO], [ID_ESPECIALIDAD]) VALUES (12, 55, 2, 2, CAST(0x523E0B00 AS Date), CAST(0x4E3E0B00 AS Date), CAST(0x0020FD0000000000 AS Time), 56)
INSERT [dbo].[TURNOS] ([ID], [ID_PACIENTE], [ID_ESTADO], [ID_PROFESIONAL], [FECHA_TURNO], [FECHA_SOLICITUD], [HORA_TURNO], [ID_ESPECIALIDAD]) VALUES (13, 55, 1, 2, CAST(0x693E0B00 AS Date), CAST(0x4E3E0B00 AS Date), CAST(0x00349E0000000000 AS Time), 56)
INSERT [dbo].[TURNOS] ([ID], [ID_PACIENTE], [ID_ESTADO], [ID_PROFESIONAL], [FECHA_TURNO], [FECHA_SOLICITUD], [HORA_TURNO], [ID_ESPECIALIDAD]) VALUES (14, 61, 3, 2, CAST(0xE73E0B00 AS Date), CAST(0x4E3E0B00 AS Date), CAST(0x00C0A80000000000 AS Time), 56)
INSERT [dbo].[TURNOS] ([ID], [ID_PACIENTE], [ID_ESTADO], [ID_PROFESIONAL], [FECHA_TURNO], [FECHA_SOLICITUD], [HORA_TURNO], [ID_ESPECIALIDAD]) VALUES (15, 60, 1, 2, CAST(0x623E0B00 AS Date), CAST(0x4E3E0B00 AS Date), CAST(0x0098850000000000 AS Time), 56)
INSERT [dbo].[TURNOS] ([ID], [ID_PACIENTE], [ID_ESTADO], [ID_PROFESIONAL], [FECHA_TURNO], [FECHA_SOLICITUD], [HORA_TURNO], [ID_ESPECIALIDAD]) VALUES (16, 62, 1, 2, CAST(0x5E3E0B00 AS Date), CAST(0x4E3E0B00 AS Date), CAST(0x0044AC0000000000 AS Time), 56)
INSERT [dbo].[TURNOS] ([ID], [ID_PACIENTE], [ID_ESTADO], [ID_PROFESIONAL], [FECHA_TURNO], [FECHA_SOLICITUD], [HORA_TURNO], [ID_ESPECIALIDAD]) VALUES (17, 11, 1, 2, CAST(0x693E0B00 AS Date), CAST(0x4E3E0B00 AS Date), CAST(0x001C890000000000 AS Time), 56)
INSERT [dbo].[TURNOS] ([ID], [ID_PACIENTE], [ID_ESTADO], [ID_PROFESIONAL], [FECHA_TURNO], [FECHA_SOLICITUD], [HORA_TURNO], [ID_ESPECIALIDAD]) VALUES (18, 64, 3, 2, CAST(0x523E0B00 AS Date), CAST(0x4E3E0B00 AS Date), CAST(0x00349E0000000000 AS Time), 56)
INSERT [dbo].[TURNOS] ([ID], [ID_PACIENTE], [ID_ESTADO], [ID_PROFESIONAL], [FECHA_TURNO], [FECHA_SOLICITUD], [HORA_TURNO], [ID_ESPECIALIDAD]) VALUES (19, 65, 2, 2, CAST(0x5B3E0B00 AS Date), CAST(0x503E0B00 AS Date), CAST(0x00349E0000000000 AS Time), 56)
INSERT [dbo].[TURNOS] ([ID], [ID_PACIENTE], [ID_ESTADO], [ID_PROFESIONAL], [FECHA_TURNO], [FECHA_SOLICITUD], [HORA_TURNO], [ID_ESPECIALIDAD]) VALUES (20, 55, 1, 2, CAST(0x5B3E0B00 AS Date), CAST(0x513E0B00 AS Date), CAST(0x0004740000000000 AS Time), 56)
INSERT [dbo].[TURNOS] ([ID], [ID_PACIENTE], [ID_ESTADO], [ID_PROFESIONAL], [FECHA_TURNO], [FECHA_SOLICITUD], [HORA_TURNO], [ID_ESPECIALIDAD]) VALUES (21, 70, 1, 2, CAST(0x623E0B00 AS Date), CAST(0x533E0B00 AS Date), CAST(0x0024900000000000 AS Time), 56)
INSERT [dbo].[TURNOS] ([ID], [ID_PACIENTE], [ID_ESTADO], [ID_PROFESIONAL], [FECHA_TURNO], [FECHA_SOLICITUD], [HORA_TURNO], [ID_ESPECIALIDAD]) VALUES (22, 70, 1, 2, CAST(0x5B3E0B00 AS Date), CAST(0x533E0B00 AS Date), CAST(0x0004740000000000 AS Time), 56)
INSERT [dbo].[TURNOS] ([ID], [ID_PACIENTE], [ID_ESTADO], [ID_PROFESIONAL], [FECHA_TURNO], [FECHA_SOLICITUD], [HORA_TURNO], [ID_ESPECIALIDAD]) VALUES (23, 74, 1, 3, CAST(0x693E0B00 AS Date), CAST(0x5B3E0B00 AS Date), CAST(0x00D8BD0000000000 AS Time), 16)
INSERT [dbo].[TURNOS] ([ID], [ID_PACIENTE], [ID_ESTADO], [ID_PROFESIONAL], [FECHA_TURNO], [FECHA_SOLICITUD], [HORA_TURNO], [ID_ESPECIALIDAD]) VALUES (24, 12, 1, 3, CAST(0x6E3E0B00 AS Date), CAST(0x623E0B00 AS Date), CAST(0x0024900000000000 AS Time), 19)
INSERT [dbo].[TURNOS] ([ID], [ID_PACIENTE], [ID_ESTADO], [ID_PROFESIONAL], [FECHA_TURNO], [FECHA_SOLICITUD], [HORA_TURNO], [ID_ESPECIALIDAD]) VALUES (25, 12, 1, 3, CAST(0x673E0B00 AS Date), CAST(0x623E0B00 AS Date), CAST(0x00349E0000000000 AS Time), 16)
INSERT [dbo].[TURNOS] ([ID], [ID_PACIENTE], [ID_ESTADO], [ID_PROFESIONAL], [FECHA_TURNO], [FECHA_SOLICITUD], [HORA_TURNO], [ID_ESPECIALIDAD]) VALUES (26, 12, 1, 3, CAST(0xA13E0B00 AS Date), CAST(0x623E0B00 AS Date), CAST(0x00A08C0000000000 AS Time), 16)
INSERT [dbo].[TURNOS] ([ID], [ID_PACIENTE], [ID_ESTADO], [ID_PROFESIONAL], [FECHA_TURNO], [FECHA_SOLICITUD], [HORA_TURNO], [ID_ESPECIALIDAD]) VALUES (27, 12, 1, 2, CAST(0x693E0B00 AS Date), CAST(0x623E0B00 AS Date), CAST(0x00907E0000000000 AS Time), 56)
INSERT [dbo].[TURNOS] ([ID], [ID_PACIENTE], [ID_ESTADO], [ID_PROFESIONAL], [FECHA_TURNO], [FECHA_SOLICITUD], [HORA_TURNO], [ID_ESPECIALIDAD]) VALUES (28, 12, 1, 2, CAST(0x673E0B00 AS Date), CAST(0x623E0B00 AS Date), CAST(0x0054BA0000000000 AS Time), 56)
INSERT [dbo].[TURNOS] ([ID], [ID_PACIENTE], [ID_ESTADO], [ID_PROFESIONAL], [FECHA_TURNO], [FECHA_SOLICITUD], [HORA_TURNO], [ID_ESPECIALIDAD]) VALUES (29, 74, 1, 2, CAST(0x673E0B00 AS Date), CAST(0x623E0B00 AS Date), CAST(0x0024900000000000 AS Time), 56)
SET IDENTITY_INSERT [dbo].[TURNOS] OFF
/****** Object:  View [dbo].[VW_SERVICIOS]    Script Date: 06/22/2018 21:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_SERVICIOS]
AS
SELECT CP.ID_COBERTURA , CM.NOMBRE FROM COBERTURA_PROFESIONAL AS CP
INNER JOIN COBERTURAS_MEDICAS AS CM ON CM.ID = ID_COBERTURA
GO
/****** Object:  View [dbo].[VW_SELECT_TURNOS]    Script Date: 06/22/2018 21:30:35 ******/
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
/****** Object:  View [dbo].[VW_DIAS_ATENCION]    Script Date: 06/22/2018 21:30:35 ******/
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
/****** Object:  View [dbo].[VW_COBERTURA_PROFESIONAL]    Script Date: 06/22/2018 21:30:35 ******/
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
/****** Object:  View [dbo].[VW_BUSCAR_PACIENTES]    Script Date: 06/22/2018 21:30:35 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_USUARIOS]    Script Date: 06/22/2018 21:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_USUARIOS]
AS
BEGIN
	SELECT U.ID, U.USUARIO, U.PASS, U.ID_PERMISOS, U.ID_PROFESIONAL, P.NOMBRE, P.PERMISO, PRO.NOMBRE, PRO.APELLIDO FROM USUARIOS AS U
	INNER JOIN PERMISOS AS P ON P.ID = U.ID_PERMISOS
	LEFT JOIN PROFESIONALES AS PRO ON PRO.ID = U.ID_PROFESIONAL
END
GO
/****** Object:  StoredProcedure [dbo].[SP_UPDATE_PACIENTE]    Script Date: 06/22/2018 21:30:35 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_SELECT_ATENCION]    Script Date: 06/22/2018 21:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_SELECT_ATENCION](
@ID_PACIENTE INT
)
AS
SELECT 
	A.ID, A.FECHA, 
	A.ID_PACIENTE, 
	P.NOMBRE, 
	P.APELLIDO, 
	A.ID_PROFESIONAL, 
	PR.NOMBRE, 
	PR.APELLIDO,
	A.ID_ESPECIALIDAD, 
	E.NOMBRE, 
	A.INDICACION 
FROM ATENCION AS A 
LEFT JOIN PACIENTES AS P ON P.ID = A.ID_PACIENTE
LEFT JOIN PROFESIONALES AS PR ON PR.ID = A.ID_PROFESIONAL
LEFT JOIN ESPECIALIDADES AS E ON E.ID = A.ID_ESPECIALIDAD
WHERE A.ID_PACIENTE = @ID_PACIENTE
GO
/****** Object:  StoredProcedure [dbo].[SP_PACIENTE_ATENDIDO]    Script Date: 06/22/2018 21:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_PACIENTE_ATENDIDO](
@ID_PACIENTE INT,
@ID_PROFESIONAL INT,
@ID_TURNO INT,
@INDICACION VARCHAR(500),
@ID_ESPECIALIDAD INT
)AS
BEGIN TRANSACTION
	INSERT INTO 
		ATENCION (FECHA, ID_PACIENTE, ID_PROFESIONAL, INDICACION, ID_ESPECIALIDAD) 
	VALUES 
		(GETDATE(), @ID_PACIENTE, @ID_PROFESIONAL, @INDICACION, @ID_ESPECIALIDAD);
	UPDATE 
		TURNOS SET ID_ESTADO = 3
		WHERE ID = @ID_TURNO;
COMMIT
GO
/****** Object:  StoredProcedure [dbo].[SP_NUEVO_USUARIO]    Script Date: 06/22/2018 21:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_NUEVO_USUARIO](
@USUARIO VARCHAR(40),
@PASS VARCHAR(40),
@ID_PERMISO INT,
@ID_PROFESIONAL INT = 0 
)AS
BEGIN
	IF @ID_PROFESIONAL = 0 BEGIN
		INSERT INTO USUARIOS (USUARIO, PASS, ID_PERMISOS) VALUES (@USUARIO, @PASS, @ID_PERMISO)
	END
	 ELSE BEGIN
		INSERT INTO USUARIOS (USUARIO, PASS, ID_PERMISOS, ID_PROFESIONAL) VALUES (@USUARIO, @PASS, @ID_PERMISO, @ID_PROFESIONAL)
	 END
END
GO
/****** Object:  StoredProcedure [dbo].[SP_BORRAR_TEL_PROFESIONAL]    Script Date: 06/22/2018 21:30:35 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_BORRAR_TEL_PACIENTE]    Script Date: 06/22/2018 21:30:35 ******/
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
/****** Object:  StoredProcedure [dbo].[CARGA_TURNO]    Script Date: 06/22/2018 21:30:35 ******/
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
/****** Object:  Table [dbo].[CANCELACIONES]    Script Date: 06/22/2018 21:30:35 ******/
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
/****** Object:  Check [CK__HORARIOS__15502E78]    Script Date: 06/22/2018 21:30:35 ******/
ALTER TABLE [dbo].[HORARIOS]  WITH CHECK ADD CHECK  (([HORA_ABRE]<[HORA_CIERRA]))
GO
/****** Object:  Check [CK__HORARIOS__164452B1]    Script Date: 06/22/2018 21:30:35 ******/
ALTER TABLE [dbo].[HORARIOS]  WITH CHECK ADD CHECK  (([HORA_CORTE]<[HORA_CORTE_FIN]))
GO
/****** Object:  Check [CK__HORARIOS__173876EA]    Script Date: 06/22/2018 21:30:35 ******/
ALTER TABLE [dbo].[HORARIOS]  WITH CHECK ADD CHECK  (([HORA_ABRE]<[HORA_CORTE] AND [HORA_CIERRA]>[HORA_CORTE_FIN]))
GO
/****** Object:  ForeignKey [FK__ATENCION__ID_ESP__11158940]    Script Date: 06/22/2018 21:30:35 ******/
ALTER TABLE [dbo].[ATENCION]  WITH CHECK ADD FOREIGN KEY([ID_ESPECIALIDAD])
REFERENCES [dbo].[ESPECIALIDADES] ([ID])
GO
/****** Object:  ForeignKey [FK__ATENCION__ID_PAC__66603565]    Script Date: 06/22/2018 21:30:35 ******/
ALTER TABLE [dbo].[ATENCION]  WITH CHECK ADD FOREIGN KEY([ID_PACIENTE])
REFERENCES [dbo].[PACIENTES] ([ID])
GO
/****** Object:  ForeignKey [FK__ATENCION__ID_PRO__6754599E]    Script Date: 06/22/2018 21:30:35 ******/
ALTER TABLE [dbo].[ATENCION]  WITH CHECK ADD FOREIGN KEY([ID_PROFESIONAL])
REFERENCES [dbo].[PROFESIONALES] ([ID])
GO
/****** Object:  ForeignKey [FK__CANCELACI__ID_TU__32AB8735]    Script Date: 06/22/2018 21:30:35 ******/
ALTER TABLE [dbo].[CANCELACIONES]  WITH CHECK ADD FOREIGN KEY([ID_TURNO])
REFERENCES [dbo].[TURNOS] ([ID])
GO
/****** Object:  ForeignKey [ID_USUARIO]    Script Date: 06/22/2018 21:30:35 ******/
ALTER TABLE [dbo].[CANCELACIONES]  WITH CHECK ADD  CONSTRAINT [ID_USUARIO] FOREIGN KEY([ID_USUARIO])
REFERENCES [dbo].[USUARIOS] ([ID])
GO
ALTER TABLE [dbo].[CANCELACIONES] CHECK CONSTRAINT [ID_USUARIO]
GO
/****** Object:  ForeignKey [FK__COBERTURA__ID_PA__662B2B3B]    Script Date: 06/22/2018 21:30:35 ******/
ALTER TABLE [dbo].[COBERTURA_PACIENTES]  WITH CHECK ADD FOREIGN KEY([ID_PACIENTE])
REFERENCES [dbo].[PACIENTES] ([ID])
GO
/****** Object:  ForeignKey [FK__COBERTURA__ID_PL__671F4F74]    Script Date: 06/22/2018 21:30:35 ******/
ALTER TABLE [dbo].[COBERTURA_PACIENTES]  WITH CHECK ADD FOREIGN KEY([ID_PLAN])
REFERENCES [dbo].[PLANES] ([ID])
GO
/****** Object:  ForeignKey [FK__COBERTURA__ID_CO__7D0E9093]    Script Date: 06/22/2018 21:30:35 ******/
ALTER TABLE [dbo].[COBERTURA_PROFESIONAL]  WITH CHECK ADD FOREIGN KEY([ID_COBERTURA])
REFERENCES [dbo].[COBERTURAS_MEDICAS] ([ID])
GO
/****** Object:  ForeignKey [FK__COBERTURA__ID_PR__7C1A6C5A]    Script Date: 06/22/2018 21:30:35 ******/
ALTER TABLE [dbo].[COBERTURA_PROFESIONAL]  WITH CHECK ADD FOREIGN KEY([ID_PROFESIONAL])
REFERENCES [dbo].[PROFESIONALES] ([ID])
GO
/****** Object:  ForeignKey [FK__CONSULTOR__ID_HO__2F10007B]    Script Date: 06/22/2018 21:30:35 ******/
ALTER TABLE [dbo].[CONSULTORIOS]  WITH CHECK ADD FOREIGN KEY([ID_HORARIO])
REFERENCES [dbo].[HORARIOS] ([ID])
GO
/****** Object:  ForeignKey [FK_CONSULTORIOS_localidades]    Script Date: 06/22/2018 21:30:35 ******/
ALTER TABLE [dbo].[CONSULTORIOS]  WITH CHECK ADD  CONSTRAINT [FK_CONSULTORIOS_localidades] FOREIGN KEY([ID_LOCALIDAD])
REFERENCES [dbo].[localidades] ([id])
GO
ALTER TABLE [dbo].[CONSULTORIOS] CHECK CONSTRAINT [FK_CONSULTORIOS_localidades]
GO
/****** Object:  ForeignKey [FK__DIA_ATENC__ID_AT__74794A92]    Script Date: 06/22/2018 21:30:35 ******/
ALTER TABLE [dbo].[DIA_ATENCION_PROFESIONAL]  WITH CHECK ADD FOREIGN KEY([ID_ATENCION])
REFERENCES [dbo].[ATENCION_PROFESIONAL] ([ID])
GO
/****** Object:  ForeignKey [FK__DIA_ATENC__ID_DI__73852659]    Script Date: 06/22/2018 21:30:35 ******/
ALTER TABLE [dbo].[DIA_ATENCION_PROFESIONAL]  WITH CHECK ADD FOREIGN KEY([ID_DIA])
REFERENCES [dbo].[DIAS] ([ID])
GO
/****** Object:  ForeignKey [FK__DIA_ATENC__ID_PR__72910220]    Script Date: 06/22/2018 21:30:35 ******/
ALTER TABLE [dbo].[DIA_ATENCION_PROFESIONAL]  WITH CHECK ADD FOREIGN KEY([ID_PROFESIONAL])
REFERENCES [dbo].[PROFESIONALES] ([ID])
GO
/****** Object:  ForeignKey [FK__INTERNACI__ID_DE__619B8048]    Script Date: 06/22/2018 21:30:35 ******/
ALTER TABLE [dbo].[INTERNACIONES]  WITH CHECK ADD FOREIGN KEY([ID_DERIVADOR])
REFERENCES [dbo].[PROFESIONALES] ([ID])
GO
/****** Object:  ForeignKey [FK__INTERNACI__ID_ES__60A75C0F]    Script Date: 06/22/2018 21:30:35 ******/
ALTER TABLE [dbo].[INTERNACIONES]  WITH CHECK ADD FOREIGN KEY([ID_ESPECIALIDAD])
REFERENCES [dbo].[ESPECIALIDADES] ([ID])
GO
/****** Object:  ForeignKey [FK__INTERNACI__ID_PA__5FB337D6]    Script Date: 06/22/2018 21:30:35 ******/
ALTER TABLE [dbo].[INTERNACIONES]  WITH CHECK ADD FOREIGN KEY([ID_PACIENTE])
REFERENCES [dbo].[PACIENTES] ([ID])
GO
/****** Object:  ForeignKey [FK_localidades_provincias]    Script Date: 06/22/2018 21:30:35 ******/
ALTER TABLE [dbo].[localidades]  WITH CHECK ADD  CONSTRAINT [FK_localidades_provincias] FOREIGN KEY([id_privincia])
REFERENCES [dbo].[provincias] ([id])
GO
ALTER TABLE [dbo].[localidades] CHECK CONSTRAINT [FK_localidades_provincias]
GO
/****** Object:  ForeignKey [FK__PACIENTE___ID_PA__44CA3770]    Script Date: 06/22/2018 21:30:35 ******/
ALTER TABLE [dbo].[PACIENTE_TELEFONOS]  WITH CHECK ADD FOREIGN KEY([ID_PACIENTE])
REFERENCES [dbo].[PACIENTES] ([ID])
GO
/****** Object:  ForeignKey [FK__PACIENTE___NUMER__45BE5BA9]    Script Date: 06/22/2018 21:30:35 ******/
ALTER TABLE [dbo].[PACIENTE_TELEFONOS]  WITH CHECK ADD FOREIGN KEY([NUMERO])
REFERENCES [dbo].[TELEFONO] ([NUMERO])
GO
/****** Object:  ForeignKey [FK_PACIENTES_localidades]    Script Date: 06/22/2018 21:30:35 ******/
ALTER TABLE [dbo].[PACIENTES]  WITH CHECK ADD  CONSTRAINT [FK_PACIENTES_localidades] FOREIGN KEY([ID_LOCALIDAD])
REFERENCES [dbo].[localidades] ([id])
GO
ALTER TABLE [dbo].[PACIENTES] CHECK CONSTRAINT [FK_PACIENTES_localidades]
GO
/****** Object:  ForeignKey [FK__PLANES__ID_COBER__3493CFA7]    Script Date: 06/22/2018 21:30:35 ******/
ALTER TABLE [dbo].[PLANES]  WITH CHECK ADD FOREIGN KEY([ID_COBERTURA])
REFERENCES [dbo].[COBERTURAS_MEDICAS] ([ID])
GO
/****** Object:  ForeignKey [FK_PROFESIONALES_localidades]    Script Date: 06/22/2018 21:30:35 ******/
ALTER TABLE [dbo].[PROFESIONALES]  WITH CHECK ADD  CONSTRAINT [FK_PROFESIONALES_localidades] FOREIGN KEY([ID_LOCALIDAD])
REFERENCES [dbo].[localidades] ([id])
GO
ALTER TABLE [dbo].[PROFESIONALES] CHECK CONSTRAINT [FK_PROFESIONALES_localidades]
GO
/****** Object:  ForeignKey [FK__PROFESION__ID_ES__51300E55]    Script Date: 06/22/2018 21:30:35 ******/
ALTER TABLE [dbo].[PROFESIONALES_ESPECIALIDADES]  WITH CHECK ADD FOREIGN KEY([ID_ESPECIALIDAD])
REFERENCES [dbo].[ESPECIALIDADES] ([ID])
GO
/****** Object:  ForeignKey [FK__PROFESION__ID_PR__503BEA1C]    Script Date: 06/22/2018 21:30:35 ******/
ALTER TABLE [dbo].[PROFESIONALES_ESPECIALIDADES]  WITH CHECK ADD FOREIGN KEY([ID_PROFESIONAL])
REFERENCES [dbo].[PROFESIONALES] ([ID])
GO
/****** Object:  ForeignKey [FK__PROFESION__ID_PR__4A8310C6]    Script Date: 06/22/2018 21:30:35 ******/
ALTER TABLE [dbo].[PROFESIONALES_TELEFONOS]  WITH CHECK ADD FOREIGN KEY([ID_PROFESIONALES])
REFERENCES [dbo].[PROFESIONALES] ([ID])
GO
/****** Object:  ForeignKey [FK__PROFESION__NUMER__4B7734FF]    Script Date: 06/22/2018 21:30:35 ******/
ALTER TABLE [dbo].[PROFESIONALES_TELEFONOS]  WITH CHECK ADD FOREIGN KEY([NUMERO])
REFERENCES [dbo].[TELEFONO] ([NUMERO])
GO
/****** Object:  ForeignKey [FK__TELEFONO__TIPO__0519C6AF]    Script Date: 06/22/2018 21:30:35 ******/
ALTER TABLE [dbo].[TELEFONO]  WITH CHECK ADD FOREIGN KEY([TIPO])
REFERENCES [dbo].[TIPO_TEL] ([ID])
GO
/****** Object:  ForeignKey [FK__TURNOS__ID_ESPEC__7FEAFD3E]    Script Date: 06/22/2018 21:30:35 ******/
ALTER TABLE [dbo].[TURNOS]  WITH CHECK ADD FOREIGN KEY([ID_ESPECIALIDAD])
REFERENCES [dbo].[ESPECIALIDADES] ([ID])
GO
/****** Object:  ForeignKey [FK__TURNOS__ID_ESTAD__7E37BEF6]    Script Date: 06/22/2018 21:30:35 ******/
ALTER TABLE [dbo].[TURNOS]  WITH CHECK ADD FOREIGN KEY([ID_ESTADO])
REFERENCES [dbo].[ESTADO] ([ID])
GO
/****** Object:  ForeignKey [FK__TURNOS__ID_PACIE__7D439ABD]    Script Date: 06/22/2018 21:30:35 ******/
ALTER TABLE [dbo].[TURNOS]  WITH CHECK ADD FOREIGN KEY([ID_PACIENTE])
REFERENCES [dbo].[PACIENTES] ([ID])
GO
/****** Object:  ForeignKey [FK__TURNOS__ID_PROFE__7F2BE32F]    Script Date: 06/22/2018 21:30:35 ******/
ALTER TABLE [dbo].[TURNOS]  WITH CHECK ADD FOREIGN KEY([ID_PROFESIONAL])
REFERENCES [dbo].[PROFESIONALES] ([ID])
GO
/****** Object:  ForeignKey [FK__USUARIOS__ID_PER__0C50D423]    Script Date: 06/22/2018 21:30:35 ******/
ALTER TABLE [dbo].[USUARIOS]  WITH CHECK ADD FOREIGN KEY([ID_PERMISOS])
REFERENCES [dbo].[PERMISOS] ([ID])
GO
/****** Object:  ForeignKey [FK__USUARIOS__ID_PRO__10216507]    Script Date: 06/22/2018 21:30:35 ******/
ALTER TABLE [dbo].[USUARIOS]  WITH CHECK ADD FOREIGN KEY([ID_PROFESIONAL])
REFERENCES [dbo].[PROFESIONALES] ([ID])
GO
