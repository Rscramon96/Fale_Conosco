USE [master]
GO
/****** Object:  Database [FaleConoscoBD]    Script Date: 19/10/2020 23:01:02 ******/
CREATE DATABASE [FaleConoscoBD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FaleConoscoBD', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\FaleConoscoBD.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FaleConoscoBD_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\FaleConoscoBD_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [FaleConoscoBD] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FaleConoscoBD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FaleConoscoBD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FaleConoscoBD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FaleConoscoBD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FaleConoscoBD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FaleConoscoBD] SET ARITHABORT OFF 
GO
ALTER DATABASE [FaleConoscoBD] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [FaleConoscoBD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FaleConoscoBD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FaleConoscoBD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FaleConoscoBD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FaleConoscoBD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FaleConoscoBD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FaleConoscoBD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FaleConoscoBD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FaleConoscoBD] SET  ENABLE_BROKER 
GO
ALTER DATABASE [FaleConoscoBD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FaleConoscoBD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FaleConoscoBD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FaleConoscoBD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FaleConoscoBD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FaleConoscoBD] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [FaleConoscoBD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FaleConoscoBD] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FaleConoscoBD] SET  MULTI_USER 
GO
ALTER DATABASE [FaleConoscoBD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FaleConoscoBD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FaleConoscoBD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FaleConoscoBD] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FaleConoscoBD] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FaleConoscoBD] SET QUERY_STORE = OFF
GO
USE [FaleConoscoBD]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 19/10/2020 23:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 19/10/2020 23:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 19/10/2020 23:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 19/10/2020 23:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 19/10/2020 23:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 19/10/2020 23:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 19/10/2020 23:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Nome] [nvarchar](max) NULL,
	[Liberado] [bit] NOT NULL,
	[DataCadastro] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 19/10/2020 23:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FaleConosco]    Script Date: 19/10/2020 23:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FaleConosco](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DataCadastro] [datetime2](7) NOT NULL,
	[Excluir] [bit] NOT NULL,
	[Nome] [nvarchar](max) NULL,
	[DataNascimento] [nvarchar](max) NULL,
	[CPF] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Celular] [nvarchar](max) NULL,
	[Sexo] [int] NOT NULL,
	[CEP] [nvarchar](max) NULL,
	[Rua] [nvarchar](max) NULL,
	[Numero] [nvarchar](max) NULL,
	[Complemento] [nvarchar](max) NULL,
	[Bairro] [nvarchar](max) NULL,
	[Cidade] [nvarchar](max) NULL,
	[Estado] [int] NOT NULL,
	[Assunto] [nvarchar](max) NULL,
	[Mensagem] [nvarchar](max) NULL,
 CONSTRAINT [PK_FaleConosco] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SMTP]    Script Date: 19/10/2020 23:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SMTP](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Destinatario] [nvarchar](max) NULL,
	[Assunto] [nvarchar](max) NULL,
	[Mensagem] [nvarchar](max) NULL,
 CONSTRAINT [PK_SMTP] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201016194857_Initial', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201016214856_Correção', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201016215145_COrreção', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201017230646_AdcionandoSMTP', N'3.1.9')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Nome], [Liberado], [DataCadastro]) VALUES (N'b5b1cf01-65bf-4c9a-b861-df26bd30bc5c', N'faleconosco1996@gmail.com', N'FALECONOSCO1996@GMAIL.COM', N'faleconosco1996@gmail.com', N'FALECONOSCO1996@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEJBIQDujc4P1wGi+xV+4ey1Io90WpQ7xT7fdD0CuBLZRGf9lVeG43wzMK0pphdr4Tg==', N'CWGLFPJLF3KYYSL2LIBINO6ZRAU24DA2', N'76acaed7-0c1e-4a57-b9d0-73e0c5724210', NULL, 0, 0, NULL, 1, 0, N'Teste', 0, CAST(N'2020-10-16T17:44:07.1017123' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[FaleConosco] ON 

INSERT [dbo].[FaleConosco] ([Id], [DataCadastro], [Excluir], [Nome], [DataNascimento], [CPF], [Email], [Celular], [Sexo], [CEP], [Rua], [Numero], [Complemento], [Bairro], [Cidade], [Estado], [Assunto], [Mensagem]) VALUES (1, CAST(N'2020-10-16T20:45:13.8075498' AS DateTime2), 1, N'Ramon', N'25041996', N'15334099786', N'teste@teste.com', N'024999745395', 1, N'27510180', N'Rua Almirante Barroso', N'452', N'Perto da Escola', N'Nova Liberdade', N'Resende', 19, N'sssss', N'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx')
INSERT [dbo].[FaleConosco] ([Id], [DataCadastro], [Excluir], [Nome], [DataNascimento], [CPF], [Email], [Celular], [Sexo], [CEP], [Rua], [Numero], [Complemento], [Bairro], [Cidade], [Estado], [Assunto], [Mensagem]) VALUES (2, CAST(N'2020-10-16T23:11:35.6185034' AS DateTime2), 1, N'Ramon', N'25041996', N'15334099786', N'faleconosco1996@gmail.com', N'024999745395', 1, N'27510180', N'Rua Almirante Barroso', N'452', N'Perto da Escola', N'Nova Liberdade', N'Resende', 14, N'sssss', N'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx')
INSERT [dbo].[FaleConosco] ([Id], [DataCadastro], [Excluir], [Nome], [DataNascimento], [CPF], [Email], [Celular], [Sexo], [CEP], [Rua], [Numero], [Complemento], [Bairro], [Cidade], [Estado], [Assunto], [Mensagem]) VALUES (3, CAST(N'2020-10-17T16:12:25.9451180' AS DateTime2), 1, N'Ramon', N'25041996', N'15334099786', N'teste@teste.com', N'02499974539', 1, N'27510180', N'Rua Almirante Barroso', N'452', NULL, N'Nova Liberdade', N'Resende', 17, N'sssss', N'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx')
INSERT [dbo].[FaleConosco] ([Id], [DataCadastro], [Excluir], [Nome], [DataNascimento], [CPF], [Email], [Celular], [Sexo], [CEP], [Rua], [Numero], [Complemento], [Bairro], [Cidade], [Estado], [Assunto], [Mensagem]) VALUES (4, CAST(N'2020-10-17T16:14:57.0319121' AS DateTime2), 1, N'Ramon', N'25041996', N'15334099786', N'faleconosco1996@gmail.com', N'02499974539', 1, N'27510180', N'Rua Almirante Barroso', N'452', NULL, N'Nova Liberdade', N'Resende', 1, N'sssss', N'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx')
INSERT [dbo].[FaleConosco] ([Id], [DataCadastro], [Excluir], [Nome], [DataNascimento], [CPF], [Email], [Celular], [Sexo], [CEP], [Rua], [Numero], [Complemento], [Bairro], [Cidade], [Estado], [Assunto], [Mensagem]) VALUES (5, CAST(N'2020-10-17T16:17:38.1105315' AS DateTime2), 1, N'Ramon', N'25041996', N'15334099786', N'teste@teste.com', N'02499974539', 1, N'27510180', N'Rua Almirante Barroso', N'452', N'Perto da Escola', N'Nova Liberdade', N'Resende', 1, N'sssss', N'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx')
INSERT [dbo].[FaleConosco] ([Id], [DataCadastro], [Excluir], [Nome], [DataNascimento], [CPF], [Email], [Celular], [Sexo], [CEP], [Rua], [Numero], [Complemento], [Bairro], [Cidade], [Estado], [Assunto], [Mensagem]) VALUES (6, CAST(N'2020-10-17T19:34:34.3144244' AS DateTime2), 1, N'Ramon', N'25041996', N'15334099786', N'rscramon95@gmail.com', N'24999745395', 1, N'27510180', N'Rua Almirante Barroso', N'452', N'Perto da Escola', N'Nova Liberdade', N'Resende', 19, N'Testando envio SMTP', N'Note que na coluna Ações existem 2 opções. Ao clicar em ver, precisa mostrar em uma nova
página as informações completas daquela Submissão.
Ao clicar em excluir, deve ser excluído o respectivo registro. Após a exclusão, deverá ser
redirecionado para o link <projeto>/admin/fale-conosco ')
INSERT [dbo].[FaleConosco] ([Id], [DataCadastro], [Excluir], [Nome], [DataNascimento], [CPF], [Email], [Celular], [Sexo], [CEP], [Rua], [Numero], [Complemento], [Bairro], [Cidade], [Estado], [Assunto], [Mensagem]) VALUES (7, CAST(N'2020-10-17T20:31:10.3159255' AS DateTime2), 1, N'Ramon', N'25041996', N'15334099786', N'rscramon95@gmail.com', N'24999745395', 1, N'27510180', N'Rua Almirante Barroso', N'452', NULL, N'Nova Liberdade', N'Resende', 13, N'Testando envio SMTP com disparo após cadastro.', N'DISPARO REALIZADO COM SUCESSO.')
INSERT [dbo].[FaleConosco] ([Id], [DataCadastro], [Excluir], [Nome], [DataNascimento], [CPF], [Email], [Celular], [Sexo], [CEP], [Rua], [Numero], [Complemento], [Bairro], [Cidade], [Estado], [Assunto], [Mensagem]) VALUES (8, CAST(N'2020-10-17T20:33:23.2108955' AS DateTime2), 1, N'Ramon', N'25041996', N'15334099786', N'rscramon95@gmail.com', N'24999745395', 1, N'27510180', N'Rua Almirante Barroso', N'452', NULL, N'Nova Liberdade', N'Resende', 1, N'Testando envio SMTP com disparo após cadastro.', N'DISPARO REALIZADO COM SUCESSO.')
INSERT [dbo].[FaleConosco] ([Id], [DataCadastro], [Excluir], [Nome], [DataNascimento], [CPF], [Email], [Celular], [Sexo], [CEP], [Rua], [Numero], [Complemento], [Bairro], [Cidade], [Estado], [Assunto], [Mensagem]) VALUES (9, CAST(N'2020-10-17T20:33:37.7018945' AS DateTime2), 1, N'Ramon', N'25041996', N'15334099786', N'rscramon95@gmail.com', N'24999745395', 1, N'27510180', N'Rua Almirante Barroso', N'452', NULL, N'Nova Liberdade', N'Resende', 1, N'Testando envio SMTP com disparo após cadastro.', N'DISPARO REALIZADO COM SUCESSO.')
INSERT [dbo].[FaleConosco] ([Id], [DataCadastro], [Excluir], [Nome], [DataNascimento], [CPF], [Email], [Celular], [Sexo], [CEP], [Rua], [Numero], [Complemento], [Bairro], [Cidade], [Estado], [Assunto], [Mensagem]) VALUES (10, CAST(N'2020-10-17T20:34:49.6811364' AS DateTime2), 1, N'Ramon', N'25041996', N'15334099786', N'rscramon95@gmail.com', N'24999745395', 1, N'27510180', N'Rua Almirante Barroso', N'452', NULL, N'Nova Liberdade', N'Resende', 1, N'Testando envio SMTP com disparo após cadastro.', N'DISPARO REALIZADO COM SUCESSO.')
INSERT [dbo].[FaleConosco] ([Id], [DataCadastro], [Excluir], [Nome], [DataNascimento], [CPF], [Email], [Celular], [Sexo], [CEP], [Rua], [Numero], [Complemento], [Bairro], [Cidade], [Estado], [Assunto], [Mensagem]) VALUES (11, CAST(N'2020-10-17T20:40:42.0715974' AS DateTime2), 1, N'Ramon', N'25041996', N'15334099786', N'rscramon95@gmail.com', N'24999745395', 1, N'27510180', N'Rua Almirante Barroso', N'452', NULL, N'Nova Liberdade', N'Resende', 22, N'Testando envio SMTP com disparo após cadastro.', N'DISPARO REALIZADO COM SUCESSO.')
INSERT [dbo].[FaleConosco] ([Id], [DataCadastro], [Excluir], [Nome], [DataNascimento], [CPF], [Email], [Celular], [Sexo], [CEP], [Rua], [Numero], [Complemento], [Bairro], [Cidade], [Estado], [Assunto], [Mensagem]) VALUES (12, CAST(N'2020-10-17T20:43:16.3543866' AS DateTime2), 1, N'Ramon', N'25041996', N'15334099786', N'rscramon95@gmail.com', N'24999745395', 0, N'27510180', N'Rua Almirante Barroso', N'452', NULL, N'Nova Liberdade', N'Resende', 0, N'Testando envio SMTP com disparo após cadastro.', N'DISPARO FEITO COM SUCESSO.')
INSERT [dbo].[FaleConosco] ([Id], [DataCadastro], [Excluir], [Nome], [DataNascimento], [CPF], [Email], [Celular], [Sexo], [CEP], [Rua], [Numero], [Complemento], [Bairro], [Cidade], [Estado], [Assunto], [Mensagem]) VALUES (13, CAST(N'2020-10-17T20:45:40.6454628' AS DateTime2), 1, N'Ramon', N'25041996', N'15334099786', N'rscramon95@gmail.com', N'24999745395', 1, N'27510180', N'Rua Almirante Barroso', N'452', NULL, N'Nova Liberdade', N'Resende', 1, N'Testando envio SMTP com disparo após cadastro.', N'DISPARO COM SUCESSO')
INSERT [dbo].[FaleConosco] ([Id], [DataCadastro], [Excluir], [Nome], [DataNascimento], [CPF], [Email], [Celular], [Sexo], [CEP], [Rua], [Numero], [Complemento], [Bairro], [Cidade], [Estado], [Assunto], [Mensagem]) VALUES (14, CAST(N'2020-10-18T12:56:35.0269751' AS DateTime2), 0, N'Ramon dos Santos', N'25/04/1996', N'153.340.997-86', N'rscramon95@gmail.com', N'(24) 9 9974-5395', 1, N'27510-180', N'Rua Almirante Barroso', N'452', NULL, N'Nova Liberdade', N'Resende', 19, N'Rotas customizadas', N'O roteamento é responsável por corresponder as solicitações HTTP de entrada e expedir essas solicitações aos pontos de extremidade executáveis do aplicativo. Os pontos de extremidade são as unidades de código executável de processamento de solicitação do aplicativo. Os pontos de extremidade são definidos no aplicativo e configurados quando o aplicativo é iniciado. O processo de correspondência de ponto de extremidade pode extrair valores da URL da solicitação e fornecer esses valores para o processamento da solicitação. Usando informações de ponto de extremidade do aplicativo, o roteamento também é capaz de gerar URLs que são mapeadas para pontos de extremidade.')
INSERT [dbo].[FaleConosco] ([Id], [DataCadastro], [Excluir], [Nome], [DataNascimento], [CPF], [Email], [Celular], [Sexo], [CEP], [Rua], [Numero], [Complemento], [Bairro], [Cidade], [Estado], [Assunto], [Mensagem]) VALUES (15, CAST(N'2020-10-18T16:44:07.5576914' AS DateTime2), 1, N'Ramon', N'25/04/1996', N'153.340.997-86', N'teste@teste.com', N'(24) 9 9974-5395', 1, N'27510-180', N'Rua Almirante Barroso', N'452', NULL, N'Nova Liberdade', N'Resende', 19, N'sssss', N'XXXXXXXXXXXXXXXX')
INSERT [dbo].[FaleConosco] ([Id], [DataCadastro], [Excluir], [Nome], [DataNascimento], [CPF], [Email], [Celular], [Sexo], [CEP], [Rua], [Numero], [Complemento], [Bairro], [Cidade], [Estado], [Assunto], [Mensagem]) VALUES (16, CAST(N'2020-10-18T16:56:47.4020542' AS DateTime2), 1, N'Ramon', N'25/04/1996', N'153.340.997-86', N'faleconosco1996@gmail.com', N'(24) 9 9974-5395', 1, N'27510-180', N'Rua Almirante Barroso', N'452', NULL, N'Nova Liberdade', N'Resende', 17, N'Teste SMTP', N'KAUHEJAWHEAKWUEHAWHEAWJ')
INSERT [dbo].[FaleConosco] ([Id], [DataCadastro], [Excluir], [Nome], [DataNascimento], [CPF], [Email], [Celular], [Sexo], [CEP], [Rua], [Numero], [Complemento], [Bairro], [Cidade], [Estado], [Assunto], [Mensagem]) VALUES (17, CAST(N'2020-10-18T17:11:22.9582625' AS DateTime2), 1, N'Ramon dos Santos', N'25/04/1996', N'153.340.997-86', N'teste@teste.com', N'(24) 9 9974-5395', 1, N'27510-180', N'Rua Almirante Barroso', N'452', N'Perto da Escola', N'Nova Liberdade', N'Resende', 2, N'sssss', N'HEAKEHAKJEHKJHEJAHEKJEAH')
INSERT [dbo].[FaleConosco] ([Id], [DataCadastro], [Excluir], [Nome], [DataNascimento], [CPF], [Email], [Celular], [Sexo], [CEP], [Rua], [Numero], [Complemento], [Bairro], [Cidade], [Estado], [Assunto], [Mensagem]) VALUES (18, CAST(N'2020-10-19T17:07:19.2102002' AS DateTime2), 1, N'Ramon dos Santos', N'25/04/1996', N'153.340.997-86', N'teste@teste.com', N'(24) 9 9974-5395', 1, N'27510-180', N'Rua Almirante Barroso', N'452', N'Perto da Escola', N'Nova Liberdade', N'Resende', 1, N'sssss', N'WWWWWWWWWWWWWWWWWWWWWWWWW')
INSERT [dbo].[FaleConosco] ([Id], [DataCadastro], [Excluir], [Nome], [DataNascimento], [CPF], [Email], [Celular], [Sexo], [CEP], [Rua], [Numero], [Complemento], [Bairro], [Cidade], [Estado], [Assunto], [Mensagem]) VALUES (19, CAST(N'2020-10-19T18:13:52.9945758' AS DateTime2), 1, N'Ramon', N'25/04/1996', N'153.340.997-86', N'faleconosco1996@gmail.com', N'(24) 9 9974-5395', 1, N'27510-180', N'Rua Almirante Barroso', N'452', NULL, N'Nova Liberdade', N'Resende', 18, N'SSSSSSSSSSSSSSSSSSSSS', N'SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS')
INSERT [dbo].[FaleConosco] ([Id], [DataCadastro], [Excluir], [Nome], [DataNascimento], [CPF], [Email], [Celular], [Sexo], [CEP], [Rua], [Numero], [Complemento], [Bairro], [Cidade], [Estado], [Assunto], [Mensagem]) VALUES (20, CAST(N'2020-10-19T19:02:46.1630582' AS DateTime2), 1, N'Ramon', N'25/04/1996', N'153.340.997-86', N'rscramon95@gmail.com', N'(24) 9 9974-5395', 1, N'27510-180', N'Rua Almirante Barroso', N'452', N'Perto da Escola', N'Nova Liberdade', N'Resende', 1, N'TESTE MODAL', N'TESTE TESTE TESTE')
INSERT [dbo].[FaleConosco] ([Id], [DataCadastro], [Excluir], [Nome], [DataNascimento], [CPF], [Email], [Celular], [Sexo], [CEP], [Rua], [Numero], [Complemento], [Bairro], [Cidade], [Estado], [Assunto], [Mensagem]) VALUES (21, CAST(N'2020-10-19T19:03:09.3090599' AS DateTime2), 1, N'Ramon', N'25/04/1996', N'153.340.997-86', N'rscramon95@gmail.com', N'(24) 9 9974-5395', 1, N'27510-180', N'Rua Almirante Barroso', N'452', N'Perto da Escola', N'Nova Liberdade', N'Resende', 1, N'TESTE MODAL', N'TESTE TESTE TESTE')
INSERT [dbo].[FaleConosco] ([Id], [DataCadastro], [Excluir], [Nome], [DataNascimento], [CPF], [Email], [Celular], [Sexo], [CEP], [Rua], [Numero], [Complemento], [Bairro], [Cidade], [Estado], [Assunto], [Mensagem]) VALUES (22, CAST(N'2020-10-19T19:03:14.5948560' AS DateTime2), 1, N'Ramon', N'25/04/1996', N'153.340.997-86', N'rscramon95@gmail.com', N'(24) 9 9974-5395', 1, N'27510-180', N'Rua Almirante Barroso', N'452', N'Perto da Escola', N'Nova Liberdade', N'Resende', 1, N'TESTE MODAL', N'TESTE TESTE TESTE')
INSERT [dbo].[FaleConosco] ([Id], [DataCadastro], [Excluir], [Nome], [DataNascimento], [CPF], [Email], [Celular], [Sexo], [CEP], [Rua], [Numero], [Complemento], [Bairro], [Cidade], [Estado], [Assunto], [Mensagem]) VALUES (23, CAST(N'2020-10-19T19:09:07.1038552' AS DateTime2), 1, N'Ramon', N'25/04/1996', N'153.340.997-86', N'rscramon95@gmail.com', N'(24) 9 9974-5395', 1, N'27510-180', N'Rua Almirante Barroso', N'452', N'Perto da Escola', N'Nova Liberdade', N'Resende', 19, N'SSSSSSSSSSSSSSSSSSSSS', N'lllllllllllllllllllllllllllllllllllllllll')
INSERT [dbo].[FaleConosco] ([Id], [DataCadastro], [Excluir], [Nome], [DataNascimento], [CPF], [Email], [Celular], [Sexo], [CEP], [Rua], [Numero], [Complemento], [Bairro], [Cidade], [Estado], [Assunto], [Mensagem]) VALUES (24, CAST(N'2020-10-19T19:20:03.9629595' AS DateTime2), 1, N'Ramon', N'25/04/1996', N'153.340.997-86', N'faleconosco1996@gmail.com', N'(24) 9 9974-5395', 1, N'27510-180', N'Rua Almirante Barroso', N'452', N'Perto da Escola', N'Nova Liberdade', N'Resende', 1, N'sssss', N'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
INSERT [dbo].[FaleConosco] ([Id], [DataCadastro], [Excluir], [Nome], [DataNascimento], [CPF], [Email], [Celular], [Sexo], [CEP], [Rua], [Numero], [Complemento], [Bairro], [Cidade], [Estado], [Assunto], [Mensagem]) VALUES (25, CAST(N'2020-10-19T19:34:56.0238401' AS DateTime2), 1, N'Ramon', N'25/04/1996', N'153.340.997-86', N'faleconosco1996@gmail.com', N'(24) 9 9974-5395', 1, N'27510-180', N'Rua Almirante Barroso', N'452', N'Perto da Escola', N'Nova Liberdade', N'Resende', 1, N'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA', N'LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL')
INSERT [dbo].[FaleConosco] ([Id], [DataCadastro], [Excluir], [Nome], [DataNascimento], [CPF], [Email], [Celular], [Sexo], [CEP], [Rua], [Numero], [Complemento], [Bairro], [Cidade], [Estado], [Assunto], [Mensagem]) VALUES (26, CAST(N'2020-10-19T19:53:40.1894227' AS DateTime2), 1, N'Ramon dos Santos', N'25/04/1996', N'153.340.997-86', N'rscramon95@gmail.com', N'(24) 9 9974-5395', 1, N'27510-180', N'Rua Almirante Barroso', N'452', NULL, N'Nova Liberdade', N'Resende', 1, N'SSSSSSSSSSSSSSSSSSSSS', N'wqqqqqqqqwqwqwqwqwwq')
INSERT [dbo].[FaleConosco] ([Id], [DataCadastro], [Excluir], [Nome], [DataNascimento], [CPF], [Email], [Celular], [Sexo], [CEP], [Rua], [Numero], [Complemento], [Bairro], [Cidade], [Estado], [Assunto], [Mensagem]) VALUES (27, CAST(N'2020-10-19T20:46:31.0113808' AS DateTime2), 0, N'Ramon dos Santos', N'25/04/1996', N'153.340.997-86', N'rscramon95@gmail.com', N'(24) 9 9974-5395', 1, N'27510-180', N'Rua Almirante Barroso', N'452', N'Ao lado do petshop', N'Nova Liberdade', N'Resende', 19, N'Teste Final do Sistema', N'O sistema está okay. Todas as funções estão funcionando corretamente.')
INSERT [dbo].[FaleConosco] ([Id], [DataCadastro], [Excluir], [Nome], [DataNascimento], [CPF], [Email], [Celular], [Sexo], [CEP], [Rua], [Numero], [Complemento], [Bairro], [Cidade], [Estado], [Assunto], [Mensagem]) VALUES (28, CAST(N'2020-10-19T20:46:47.4046996' AS DateTime2), 1, N'Ramon dos Santos', N'25/04/1996', N'153.340.997-86', N'rscramon95@gmail.com', N'(24) 9 9974-5395', 1, N'27510-180', N'Rua Almirante Barroso', N'452', N'Ao lado do petshop', N'Nova Liberdade', N'Resende', 19, N'Teste Final do Sistema', N'O sistema está okay. Todas as funções estão funcionando corretamente.')
INSERT [dbo].[FaleConosco] ([Id], [DataCadastro], [Excluir], [Nome], [DataNascimento], [CPF], [Email], [Celular], [Sexo], [CEP], [Rua], [Numero], [Complemento], [Bairro], [Cidade], [Estado], [Assunto], [Mensagem]) VALUES (29, CAST(N'2020-10-19T20:49:39.2077609' AS DateTime2), 1, N'Ramon', N'25/04/1996', N'153.340.997-86', N'rscramon95@gmail.com', N'(24) 9 9974-5395', 1, N'27510-180', N'Rua Almirante Barroso', N'452', N'Ao lado do petshop', N'Nova Liberdade', N'Resende', 19, N'Teste Final do Sistema', N'Sistema funcionando corretamente!')
INSERT [dbo].[FaleConosco] ([Id], [DataCadastro], [Excluir], [Nome], [DataNascimento], [CPF], [Email], [Celular], [Sexo], [CEP], [Rua], [Numero], [Complemento], [Bairro], [Cidade], [Estado], [Assunto], [Mensagem]) VALUES (30, CAST(N'2020-10-19T20:54:44.7741420' AS DateTime2), 1, N'Ramon dos Santos', N'25/04/1996', N'153.340.997-86', N'faleconosco1996@gmail.com', N'(24) 9 9974-5395', 1, N'27510-180', N'Rua Almirante Barroso', N'452', N'Perto da Escola', N'Nova Liberdade', N'Resende', 19, N'SSSSSSSSSSSSSSSSSSSSS', N'1234132512361732462467175641632')
INSERT [dbo].[FaleConosco] ([Id], [DataCadastro], [Excluir], [Nome], [DataNascimento], [CPF], [Email], [Celular], [Sexo], [CEP], [Rua], [Numero], [Complemento], [Bairro], [Cidade], [Estado], [Assunto], [Mensagem]) VALUES (31, CAST(N'2020-10-19T20:59:35.7703925' AS DateTime2), 1, N'Ramon dos Santos', N'25/04/1996', N'153.340.997-86', N'faleconosco1996@gmail.com', N'(24) 9 9974-5395', 1, N'27510-180', N'Rua Almirante Barroso', N'452', N'Ao lado do petshop', N'Nova Liberdade', N'Resende', 19, N'TESTANDO TUDO', N'TESTES INICIADOS')
INSERT [dbo].[FaleConosco] ([Id], [DataCadastro], [Excluir], [Nome], [DataNascimento], [CPF], [Email], [Celular], [Sexo], [CEP], [Rua], [Numero], [Complemento], [Bairro], [Cidade], [Estado], [Assunto], [Mensagem]) VALUES (32, CAST(N'2020-10-19T21:03:18.9935922' AS DateTime2), 0, N'João ', N'25/04/1996', N'153.340.997-86', N'rscramon95@gmail.com', N'(24) 9 9974-5395', 1, N'27510-180', N'Rua Almirante Barroso', N'455', NULL, N'Nova Liberdade', N'Resende', 19, N'Agradecimentos', N'TESTE TESTE TESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTETESTE TESTE')
INSERT [dbo].[FaleConosco] ([Id], [DataCadastro], [Excluir], [Nome], [DataNascimento], [CPF], [Email], [Celular], [Sexo], [CEP], [Rua], [Numero], [Complemento], [Bairro], [Cidade], [Estado], [Assunto], [Mensagem]) VALUES (33, CAST(N'2020-10-19T21:09:21.8016324' AS DateTime2), 0, N'Maria', N'25/04/1996', N'153.340.997-86', N'faleconosco1996@gmail.com', N'(24) 9 9974-5395', 1, N'27510-180', N'Rua Almirante Barroso', N'452', N'Perto da Escola', N'Nova Liberdade', N'Resende', 19, N'Testando Cadastro', N'Testando cadastro e envio de e-mail.')
SET IDENTITY_INSERT [dbo].[FaleConosco] OFF
GO
SET IDENTITY_INSERT [dbo].[SMTP] ON 

INSERT [dbo].[SMTP] ([Id], [Destinatario], [Assunto], [Mensagem]) VALUES (1, N'rscramon95@gmail.com', N'Rotas customizadas', N'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX.')
INSERT [dbo].[SMTP] ([Id], [Destinatario], [Assunto], [Mensagem]) VALUES (2, N'rscramon95@gmail.com', N'Rotas customizadas', N'WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW.')
INSERT [dbo].[SMTP] ([Id], [Destinatario], [Assunto], [Mensagem]) VALUES (3, N'rscramon95@gmail.com', N'Testando envio SMTP', N'SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS')
INSERT [dbo].[SMTP] ([Id], [Destinatario], [Assunto], [Mensagem]) VALUES (4, N'rscramon95@gmail.com', N'Testando envio SMTP', N'SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS')
INSERT [dbo].[SMTP] ([Id], [Destinatario], [Assunto], [Mensagem]) VALUES (5, N'rscramon95@gmail.com', N'Testando envio SMTP com disparo após cadastro.', N'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX.')
INSERT [dbo].[SMTP] ([Id], [Destinatario], [Assunto], [Mensagem]) VALUES (6, N'rscramon95@gmail.com', N'Rotas customizadas', N'O sistema de roteamento de ponto de extremidade descrito neste documento se aplica ao ASP.NET Core 3,0 e posterior. Para obter informações sobre o sistema de roteamento anterior baseado em IRouter , selecione a versão ASP.NET Core 2,1 usando uma das seguintes abordagens:')
INSERT [dbo].[SMTP] ([Id], [Destinatario], [Assunto], [Mensagem]) VALUES (7, N'rscramon95@gmail.com', N'Rotas customizadas', N'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).')
INSERT [dbo].[SMTP] ([Id], [Destinatario], [Assunto], [Mensagem]) VALUES (8, N'faleconosco1996@gmail.com', N'SSSSSSSSSSSSSSSSSSSSS', N'TESTE TESTE')
INSERT [dbo].[SMTP] ([Id], [Destinatario], [Assunto], [Mensagem]) VALUES (9, N'rscramon95@gmail.com', N'TESTE MODAL', N'TESTANDO MODAL!')
INSERT [dbo].[SMTP] ([Id], [Destinatario], [Assunto], [Mensagem]) VALUES (10, N'rscramon95@gmail.com', N'TESTE MODAL', N'QQQQQQQQQQQQQWWWWWWWWWWWWWWWWWW')
INSERT [dbo].[SMTP] ([Id], [Destinatario], [Assunto], [Mensagem]) VALUES (11, N'rscramon95@gmail.com', N'TESTE MODAL', N'TESTANDO MODAL DEFINITIVO')
INSERT [dbo].[SMTP] ([Id], [Destinatario], [Assunto], [Mensagem]) VALUES (12, N'rscramon95@gmail.com', N'TESTE MODAL', N'aaaaaaaaaaaaaaaaaaaaaaaaaaaa')
INSERT [dbo].[SMTP] ([Id], [Destinatario], [Assunto], [Mensagem]) VALUES (13, N'rscramon95@gmail.com', N'TESTE MODAL', N'OOOOOOOOOOOOOOOOOOIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII')
INSERT [dbo].[SMTP] ([Id], [Destinatario], [Assunto], [Mensagem]) VALUES (14, N'rscramon95@gmail.com', N'TESTE MODAL', N'OOOOOOOOOOOOOOOOOEEEEEEEEEEEEEEEEEEEEEEEEEE')
INSERT [dbo].[SMTP] ([Id], [Destinatario], [Assunto], [Mensagem]) VALUES (15, N'rscramon95@gmail.com', N'TESTE MODAL', N'1234567890987654321234567890987654321')
INSERT [dbo].[SMTP] ([Id], [Destinatario], [Assunto], [Mensagem]) VALUES (16, N'rscramon95@gmail.com', N'TESTE MODAL', N'123456789876543212345678987654321')
INSERT [dbo].[SMTP] ([Id], [Destinatario], [Assunto], [Mensagem]) VALUES (17, N'rscramon95@gmail.com', N'TESTE MODAL', N'HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH')
INSERT [dbo].[SMTP] ([Id], [Destinatario], [Assunto], [Mensagem]) VALUES (18, N'rscramon95@gmail.com', N'TESTE MODAL', N'auiwheuaweiuwahkueahwuekh')
INSERT [dbo].[SMTP] ([Id], [Destinatario], [Assunto], [Mensagem]) VALUES (19, N'rscramon95@gmail.com', N'TESTE MODAL', N'kkkkkkkkkkkkkkkkkkkkkkkkkkk')
INSERT [dbo].[SMTP] ([Id], [Destinatario], [Assunto], [Mensagem]) VALUES (20, N'rscramon95@gmail.com', N'TESTE MODAL', N'KKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKK')
INSERT [dbo].[SMTP] ([Id], [Destinatario], [Assunto], [Mensagem]) VALUES (21, N'faleconosco1996@gmail.com', N'TESTANDO TUDO', N'TESTE DE EMAIL BEM SUCEDIDO')
INSERT [dbo].[SMTP] ([Id], [Destinatario], [Assunto], [Mensagem]) VALUES (22, N'rscramon95@gmail.com', N'Teste Final do Sistema', N'TESTANDO EMAIL')
INSERT [dbo].[SMTP] ([Id], [Destinatario], [Assunto], [Mensagem]) VALUES (23, N'rscramon95@gmail.com', N'Rotas customizadas', N'TESTANDO ROTAS')
INSERT [dbo].[SMTP] ([Id], [Destinatario], [Assunto], [Mensagem]) VALUES (24, N'rscramon95@gmail.com', N'Agradecimentos', N'TESTE SWAL')
INSERT [dbo].[SMTP] ([Id], [Destinatario], [Assunto], [Mensagem]) VALUES (25, N'faleconosco1996@gmail.com', N'Testando Cadastro', N'Envio SMTP realizado com sucesso.')
SET IDENTITY_INSERT [dbo].[SMTP] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 19/10/2020 23:01:03 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 19/10/2020 23:01:03 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 19/10/2020 23:01:03 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 19/10/2020 23:01:03 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 19/10/2020 23:01:03 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 19/10/2020 23:01:03 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 19/10/2020 23:01:03 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
USE [master]
GO
ALTER DATABASE [FaleConoscoBD] SET  READ_WRITE 
GO
