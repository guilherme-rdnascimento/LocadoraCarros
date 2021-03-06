USE [DbLocadoraVeiculos]
GO
/****** Object:  Table [dbo].[TbAdministrador]    Script Date: 28/10/2019 16:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbAdministrador](
	[iId] [int] IDENTITY(1,1) NOT NULL,
	[dtDataUltimoAcesso] [datetime] NOT NULL,
 CONSTRAINT [PK_TbAdministrador] PRIMARY KEY CLUSTERED 
(
	[iId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbAluguel]    Script Date: 28/10/2019 16:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbAluguel](
	[iId] [int] IDENTITY(1,1) NOT NULL,
	[iIdTbMontadora] [int] NOT NULL,
	[iIdTbVeiculo] [int] NOT NULL,
	[iIdTbCliente] [int] NOT NULL,
	[iQtdDiarias] [int] NOT NULL,
	[dValorTotal] [decimal](18, 0) NOT NULL,
	[iIdTbFormaPagamento] [int] NOT NULL,
	[dtDataInicioAluguel] [date] NOT NULL,
	[dtDataOperacao] [datetime] NOT NULL,
	[iIdTbVendedor] [int] NOT NULL,
	[dtDataDevolucao] [datetime] NULL,
 CONSTRAINT [PK_TbAluguel] PRIMARY KEY CLUSTERED 
(
	[iId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbCliente]    Script Date: 28/10/2019 16:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbCliente](
	[iId] [int] IDENTITY(1,1) NOT NULL,
	[vNome] [varchar](50) NOT NULL,
	[vCpf] [varchar](20) NOT NULL,
	[iIdade] [tinyint] NOT NULL,
	[vTelefone] [varchar](20) NULL,
	[vEmail] [varchar](50) NULL,
	[vCelular] [varchar](20) NULL,
	[vSexo] [char](1) NOT NULL,
	[dtDataCadastro] [datetime] NOT NULL,
 CONSTRAINT [PK_TbCliente] PRIMARY KEY CLUSTERED 
(
	[iId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbEndereco]    Script Date: 28/10/2019 16:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbEndereco](
	[iId] [int] IDENTITY(1,1) NOT NULL,
	[vLogradouro] [varchar](50) NOT NULL,
	[iNumero] [int] NOT NULL,
	[vComplemento] [varchar](50) NULL,
	[vBairro] [varchar](50) NOT NULL,
	[vCidade] [varchar](50) NOT NULL,
	[vEstado] [char](2) NOT NULL,
	[vCep] [char](9) NOT NULL,
	[dtDataCriacao] [datetime] NOT NULL,
	[vObs] [varchar](100) NULL,
	[iIdTbCliente] [int] NOT NULL,
 CONSTRAINT [PK_Endereco] PRIMARY KEY CLUSTERED 
(
	[iId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbFormaPagamento]    Script Date: 28/10/2019 16:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbFormaPagamento](
	[iId] [int] NOT NULL,
	[vDescricao] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TbFormaPagamento] PRIMARY KEY CLUSTERED 
(
	[iId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbMontadora]    Script Date: 28/10/2019 16:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbMontadora](
	[iId] [int] IDENTITY(1,1) NOT NULL,
	[vNome] [varchar](50) NOT NULL,
	[dFaturamentoEmDolar] [decimal](18, 0) NULL,
	[dLucroAnualEmDolar] [decimal](18, 0) NULL,
	[vCidadeFundacao] [varchar](50) NOT NULL,
	[dtDataFundacao] [date] NOT NULL,
	[iQtdFabricas] [int] NOT NULL,
 CONSTRAINT [PK_TbMontadora] PRIMARY KEY CLUSTERED 
(
	[iId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbMontadoraPais]    Script Date: 28/10/2019 16:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbMontadoraPais](
	[iId] [int] IDENTITY(1,1) NOT NULL,
	[iIdTbMontadora] [int] NOT NULL,
	[iIdTbPais] [int] NOT NULL,
 CONSTRAINT [PK_TbMontadoraPais] PRIMARY KEY CLUSTERED 
(
	[iId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbPais]    Script Date: 28/10/2019 16:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbPais](
	[iId] [int] IDENTITY(1,1) NOT NULL,
	[vNome] [varchar](50) NOT NULL,
	[vIdiomaPrincipal] [varchar](50) NOT NULL,
	[iQtdHabitantes] [bigint] NOT NULL,
	[iAnoFundacao] [smallint] NOT NULL,
	[dPibEmDolar] [decimal](18, 0) NULL,
 CONSTRAINT [PK_TbPais] PRIMARY KEY CLUSTERED 
(
	[iId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbUsuario]    Script Date: 28/10/2019 16:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbUsuario](
	[iId] [int] IDENTITY(1,1) NOT NULL,
	[vNome] [varchar](50) NOT NULL,
	[vLogin] [varchar](50) NOT NULL,
	[vSenha] [varchar](200) NOT NULL,
	[bAtivo] [bit] NOT NULL,
 CONSTRAINT [PK_TbUsuario] PRIMARY KEY CLUSTERED 
(
	[iId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbVeiculo]    Script Date: 28/10/2019 16:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbVeiculo](
	[iId] [int] IDENTITY(1,1) NOT NULL,
	[iIdMontadora] [int] NOT NULL,
	[vModelo] [varchar](50) NOT NULL,
	[iAnoFabricacao] [int] NOT NULL,
	[vCor] [varchar](20) NOT NULL,
	[dValorLocacao] [decimal](13, 0) NOT NULL,
	[vPlaca] [char](8) NOT NULL,
	[iQuilometragem] [bigint] NOT NULL,
	[iEstadoVeiculo] [int] NULL,
 CONSTRAINT [PK_TbVeiculo] PRIMARY KEY CLUSTERED 
(
	[iId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbVendedor]    Script Date: 28/10/2019 16:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbVendedor](
	[iId] [int] IDENTITY(1,1) NOT NULL,
	[iIdTbUsuario] [int] NOT NULL,
	[vCpf] [varchar](20) NOT NULL,
	[dSalario] [decimal](18, 0) NOT NULL,
	[iPercentualComissao] [int] NOT NULL,
	[dtDataAdmissao] [date] NOT NULL,
	[dtDataDemissao] [date] NULL,
 CONSTRAINT [PK_Vendedor] PRIMARY KEY CLUSTERED 
(
	[iId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TbAluguel] ON 

INSERT [dbo].[TbAluguel] ([iId], [iIdTbMontadora], [iIdTbVeiculo], [iIdTbCliente], [iQtdDiarias], [dValorTotal], [iIdTbFormaPagamento], [dtDataInicioAluguel], [dtDataOperacao], [iIdTbVendedor], [dtDataDevolucao]) VALUES (17, 1, 4, 7, 10, CAST(900 AS Decimal(18, 0)), 1, CAST(N'2019-10-28' AS Date), CAST(N'2019-10-28T16:14:46.530' AS DateTime), 11, NULL)
SET IDENTITY_INSERT [dbo].[TbAluguel] OFF
SET IDENTITY_INSERT [dbo].[TbCliente] ON 

INSERT [dbo].[TbCliente] ([iId], [vNome], [vCpf], [iIdade], [vTelefone], [vEmail], [vCelular], [vSexo], [dtDataCadastro]) VALUES (7, N'Cicrano', N'998.987.987-77', 50, N'(81) 3333-9595', N'cicrano32@gmail.com', N'(81) 99999-5959', N'M', CAST(N'2019-05-18T12:37:15.813' AS DateTime))
INSERT [dbo].[TbCliente] ([iId], [vNome], [vCpf], [iIdade], [vTelefone], [vEmail], [vCelular], [vSexo], [dtDataCadastro]) VALUES (9, N'Fulano', N'445.456.456-66', 25, N'(81) 8888-8888', N'fulano@gmail.com', N'(81) 88118-1818', N'M', CAST(N'2019-06-11T13:01:19.463' AS DateTime))
INSERT [dbo].[TbCliente] ([iId], [vNome], [vCpf], [iIdade], [vTelefone], [vEmail], [vCelular], [vSexo], [dtDataCadastro]) VALUES (12, N'Guilherme', N'115.159.159-99', 27, N'(81) 8981-9818', N'guilherme@gmail.com', N'(81) 99999-9888', N'M', CAST(N'2019-06-14T16:47:16.477' AS DateTime))
SET IDENTITY_INSERT [dbo].[TbCliente] OFF
SET IDENTITY_INSERT [dbo].[TbEndereco] ON 

INSERT [dbo].[TbEndereco] ([iId], [vLogradouro], [iNumero], [vComplemento], [vBairro], [vCidade], [vEstado], [vCep], [dtDataCriacao], [vObs], [iIdTbCliente]) VALUES (3, N'rua sem nome 5566', 600, N'sem comple', N'afogados', N'recife', N'RN', N'50850-000', CAST(N'2019-05-18T12:37:18.863' AS DateTime), N'sem obs', 7)
INSERT [dbo].[TbEndereco] ([iId], [vLogradouro], [iNumero], [vComplemento], [vBairro], [vCidade], [vEstado], [vCep], [dtDataCriacao], [vObs], [iIdTbCliente]) VALUES (5, N'rua sem nome', 29, N'a', N'afogados', N'recife', N'PE', N'50850-000', CAST(N'2019-06-11T13:01:19.483' AS DateTime), N'asdfasef', 9)
INSERT [dbo].[TbEndereco] ([iId], [vLogradouro], [iNumero], [vComplemento], [vBairro], [vCidade], [vEstado], [vCep], [dtDataCriacao], [vObs], [iIdTbCliente]) VALUES (6, N'Rua daniel antonio rodrigues', 202, N'comple', N'afogados', N'recife', N'PE', N'50850-000', CAST(N'2019-06-14T16:47:20.940' AS DateTime), N'', 12)
SET IDENTITY_INSERT [dbo].[TbEndereco] OFF
INSERT [dbo].[TbFormaPagamento] ([iId], [vDescricao]) VALUES (2, N'Cartão de crédito')
INSERT [dbo].[TbFormaPagamento] ([iId], [vDescricao]) VALUES (3, N'Cheque')
INSERT [dbo].[TbFormaPagamento] ([iId], [vDescricao]) VALUES (1, N'Dinheiro')
SET IDENTITY_INSERT [dbo].[TbMontadora] ON 

INSERT [dbo].[TbMontadora] ([iId], [vNome], [dFaturamentoEmDolar], [dLucroAnualEmDolar], [vCidadeFundacao], [dtDataFundacao], [iQtdFabricas]) VALUES (1, N'Ford', CAST(293 AS Decimal(18, 0)), CAST(555 AS Decimal(18, 0)), N'Chicago', CAST(N'2017-04-11' AS Date), 1)
INSERT [dbo].[TbMontadora] ([iId], [vNome], [dFaturamentoEmDolar], [dLucroAnualEmDolar], [vCidadeFundacao], [dtDataFundacao], [iQtdFabricas]) VALUES (2, N'Fiat', CAST(900000 AS Decimal(18, 0)), CAST(600000 AS Decimal(18, 0)), N'Sicilia', CAST(N'2004-05-18' AS Date), 5000)
INSERT [dbo].[TbMontadora] ([iId], [vNome], [dFaturamentoEmDolar], [dLucroAnualEmDolar], [vCidadeFundacao], [dtDataFundacao], [iQtdFabricas]) VALUES (3, N'Vokswagen', CAST(10 AS Decimal(18, 0)), CAST(10 AS Decimal(18, 0)), N'Bremen', CAST(N'2019-06-10' AS Date), 20)
INSERT [dbo].[TbMontadora] ([iId], [vNome], [dFaturamentoEmDolar], [dLucroAnualEmDolar], [vCidadeFundacao], [dtDataFundacao], [iQtdFabricas]) VALUES (4, N'Chevrolet', CAST(1000 AS Decimal(18, 0)), CAST(20000 AS Decimal(18, 0)), N'Detroid', CAST(N'2017-06-14' AS Date), 30)
INSERT [dbo].[TbMontadora] ([iId], [vNome], [dFaturamentoEmDolar], [dLucroAnualEmDolar], [vCidadeFundacao], [dtDataFundacao], [iQtdFabricas]) VALUES (5, N'Hyundai', CAST(1011 AS Decimal(18, 0)), CAST(500 AS Decimal(18, 0)), N'Seul', CAST(N'2015-06-14' AS Date), 15)
SET IDENTITY_INSERT [dbo].[TbMontadora] OFF
SET IDENTITY_INSERT [dbo].[TbPais] ON 

INSERT [dbo].[TbPais] ([iId], [vNome], [vIdiomaPrincipal], [iQtdHabitantes], [iAnoFundacao], [dPibEmDolar]) VALUES (1, N'Brasil', N'Portugues', 198, 1500, CAST(188 AS Decimal(18, 0)))
INSERT [dbo].[TbPais] ([iId], [vNome], [vIdiomaPrincipal], [iQtdHabitantes], [iAnoFundacao], [dPibEmDolar]) VALUES (3, N'Austria 5', N'alemao 5', 60, 1955, CAST(60 AS Decimal(18, 0)))
INSERT [dbo].[TbPais] ([iId], [vNome], [vIdiomaPrincipal], [iQtdHabitantes], [iAnoFundacao], [dPibEmDolar]) VALUES (4, N'Estados Unidos', N'Ingles', 50000, 1750, CAST(100 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[TbPais] OFF
SET IDENTITY_INSERT [dbo].[TbUsuario] ON 

INSERT [dbo].[TbUsuario] ([iId], [vNome], [vLogin], [vSenha], [bAtivo]) VALUES (11, N'Vilberto jr', N'vilberto', N'vHQ0oreUmKmStv0l8RORfQ==', 1)
INSERT [dbo].[TbUsuario] ([iId], [vNome], [vLogin], [vSenha], [bAtivo]) VALUES (12, N'Guilherme', N'guilherme', N'X6KF4b6+CmYj4zr8BKH71Q==', 1)
SET IDENTITY_INSERT [dbo].[TbUsuario] OFF
SET IDENTITY_INSERT [dbo].[TbVeiculo] ON 

INSERT [dbo].[TbVeiculo] ([iId], [iIdMontadora], [vModelo], [iAnoFabricacao], [vCor], [dValorLocacao], [vPlaca], [iQuilometragem], [iEstadoVeiculo]) VALUES (1, 3, N'Gol', 2002, N'Verde', CAST(150 AS Decimal(13, 0)), N'KGJ-1516', 20000, 1)
INSERT [dbo].[TbVeiculo] ([iId], [iIdMontadora], [vModelo], [iAnoFabricacao], [vCor], [dValorLocacao], [vPlaca], [iQuilometragem], [iEstadoVeiculo]) VALUES (2, 3, N'Voyage', 1950, N'Azul', CAST(200 AS Decimal(13, 0)), N'KPP-1009', 15000, 1)
INSERT [dbo].[TbVeiculo] ([iId], [iIdMontadora], [vModelo], [iAnoFabricacao], [vCor], [dValorLocacao], [vPlaca], [iQuilometragem], [iEstadoVeiculo]) VALUES (3, 2, N'Palio', 2008, N'Vernelha', CAST(50 AS Decimal(13, 0)), N'FAS-5050', 5000, 1)
INSERT [dbo].[TbVeiculo] ([iId], [iIdMontadora], [vModelo], [iAnoFabricacao], [vCor], [dValorLocacao], [vPlaca], [iQuilometragem], [iEstadoVeiculo]) VALUES (4, 1, N'Ka', 2015, N'Branca', CAST(90 AS Decimal(13, 0)), N'QKP-5478', 41000, 3)
INSERT [dbo].[TbVeiculo] ([iId], [iIdMontadora], [vModelo], [iAnoFabricacao], [vCor], [dValorLocacao], [vPlaca], [iQuilometragem], [iEstadoVeiculo]) VALUES (5, 5, N'HB20', 2019, N'Branca', CAST(170 AS Decimal(13, 0)), N'LAJ-5155', 0, 1)
INSERT [dbo].[TbVeiculo] ([iId], [iIdMontadora], [vModelo], [iAnoFabricacao], [vCor], [dValorLocacao], [vPlaca], [iQuilometragem], [iEstadoVeiculo]) VALUES (6, 5, N'ix35', 2010, N'branca', CAST(50 AS Decimal(13, 0)), N'ASF-1898', 20202, 1)
SET IDENTITY_INSERT [dbo].[TbVeiculo] OFF
SET IDENTITY_INSERT [dbo].[TbVendedor] ON 

INSERT [dbo].[TbVendedor] ([iId], [iIdTbUsuario], [vCpf], [dSalario], [iPercentualComissao], [dtDataAdmissao], [dtDataDemissao]) VALUES (6, 11, N'995,951,951-11', CAST(5000 AS Decimal(18, 0)), 20, CAST(N'2019-06-19' AS Date), CAST(N'2019-06-17' AS Date))
INSERT [dbo].[TbVendedor] ([iId], [iIdTbUsuario], [vCpf], [dSalario], [iPercentualComissao], [dtDataAdmissao], [dtDataDemissao]) VALUES (7, 12, N'445,456,456-66', CAST(2000 AS Decimal(18, 0)), 5, CAST(N'2019-05-10' AS Date), CAST(N'2019-06-17' AS Date))
SET IDENTITY_INSERT [dbo].[TbVendedor] OFF
/****** Object:  Index [UK_TbEndereco_iIdTbCliente]    Script Date: 28/10/2019 16:18:52 ******/
ALTER TABLE [dbo].[TbEndereco] ADD  CONSTRAINT [UK_TbEndereco_iIdTbCliente] UNIQUE NONCLUSTERED 
(
	[iIdTbCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_TbFormaPagamento_vDescricao]    Script Date: 28/10/2019 16:18:52 ******/
ALTER TABLE [dbo].[TbFormaPagamento] ADD  CONSTRAINT [UK_TbFormaPagamento_vDescricao] UNIQUE NONCLUSTERED 
(
	[vDescricao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_TbMontadora_vNome]    Script Date: 28/10/2019 16:18:52 ******/
ALTER TABLE [dbo].[TbMontadora] ADD  CONSTRAINT [UK_TbMontadora_vNome] UNIQUE NONCLUSTERED 
(
	[vNome] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_TbPais_vNome]    Script Date: 28/10/2019 16:18:52 ******/
ALTER TABLE [dbo].[TbPais] ADD  CONSTRAINT [UK_TbPais_vNome] UNIQUE NONCLUSTERED 
(
	[vNome] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_TbUsuario_vLogin]    Script Date: 28/10/2019 16:18:52 ******/
ALTER TABLE [dbo].[TbUsuario] ADD  CONSTRAINT [UK_TbUsuario_vLogin] UNIQUE NONCLUSTERED 
(
	[vLogin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_TbVeiculo_vPlaca]    Script Date: 28/10/2019 16:18:52 ******/
ALTER TABLE [dbo].[TbVeiculo] ADD  CONSTRAINT [UK_TbVeiculo_vPlaca] UNIQUE NONCLUSTERED 
(
	[vPlaca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_TbVendedor_vCpf]    Script Date: 28/10/2019 16:18:52 ******/
ALTER TABLE [dbo].[TbVendedor] ADD  CONSTRAINT [UK_TbVendedor_vCpf] UNIQUE NONCLUSTERED 
(
	[vCpf] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TbAluguel] ADD  CONSTRAINT [DF_TbAluguel_dtDataOperacao]  DEFAULT (getdate()) FOR [dtDataOperacao]
GO
ALTER TABLE [dbo].[TbEndereco]  WITH CHECK ADD  CONSTRAINT [FK_TbEndereco_TbCliente] FOREIGN KEY([iIdTbCliente])
REFERENCES [dbo].[TbCliente] ([iId])
GO
ALTER TABLE [dbo].[TbEndereco] CHECK CONSTRAINT [FK_TbEndereco_TbCliente]
GO
ALTER TABLE [dbo].[TbMontadoraPais]  WITH CHECK ADD  CONSTRAINT [FK_TbMontadoraPais_TbMontadoraPais] FOREIGN KEY([iIdTbMontadora])
REFERENCES [dbo].[TbMontadora] ([iId])
GO
ALTER TABLE [dbo].[TbMontadoraPais] CHECK CONSTRAINT [FK_TbMontadoraPais_TbMontadoraPais]
GO
ALTER TABLE [dbo].[TbMontadoraPais]  WITH CHECK ADD  CONSTRAINT [FK_TbMontadoraPais_TbPais] FOREIGN KEY([iIdTbPais])
REFERENCES [dbo].[TbPais] ([iId])
GO
ALTER TABLE [dbo].[TbMontadoraPais] CHECK CONSTRAINT [FK_TbMontadoraPais_TbPais]
GO
ALTER TABLE [dbo].[TbVendedor]  WITH CHECK ADD  CONSTRAINT [FK_TbVendedor_TbVendedor] FOREIGN KEY([iIdTbUsuario])
REFERENCES [dbo].[TbUsuario] ([iId])
GO
ALTER TABLE [dbo].[TbVendedor] CHECK CONSTRAINT [FK_TbVendedor_TbVendedor]
GO
