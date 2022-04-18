USE [YakovlevDB1]
GO
/****** Object:  Table [dbo].[Adres]    Script Date: 18.04.2022 13:17:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adres](
	[Cod_adres] [nvarchar](199) NOT NULL,
	[Adres] [nvarchar](199) NULL,
PRIMARY KEY CLUSTERED 
(
	[Cod_adres] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 18.04.2022 13:17:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Cod_category] [nvarchar](199) NOT NULL,
	[Name] [nvarchar](199) NULL,
PRIMARY KEY CLUSTERED 
(
	[Cod_category] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 18.04.2022 13:17:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[guid_clients] [nvarchar](199) NOT NULL,
	[Passport] [nvarchar](199) NULL,
	[SecondName] [nvarchar](199) NULL,
	[Name] [nvarchar](199) NULL,
	[MiddleName] [nvarchar](199) NULL,
	[Adres_proj] [nvarchar](199) NULL,
	[Adres_propis] [nvarchar](199) NULL,
PRIMARY KEY CLUSTERED 
(
	[guid_clients] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Passport]    Script Date: 18.04.2022 13:17:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Passport](
	[SANPass] [nvarchar](199) NOT NULL,
	[BirthDay] [date] NULL,
	[Cod_podr] [nvarchar](199) NULL,
	[Otdelenie] [nvarchar](199) NULL,
	[DateVidachi] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[SANPass] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 18.04.2022 13:17:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Cod_role] [int] NOT NULL,
	[Name] [nvarchar](155) NULL,
PRIMARY KEY CLUSTERED 
(
	[Cod_role] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 18.04.2022 13:17:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[Cod_service] [nvarchar](199) NOT NULL,
	[Number_pp] [nvarchar](199) NULL,
	[Perechen_service] [nvarchar](199) NULL,
	[Price] [nvarchar](199) NULL,
	[Category] [nvarchar](199) NULL,
PRIMARY KEY CLUSTERED 
(
	[Cod_service] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 18.04.2022 13:17:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[guid_users] [nvarchar](199) NOT NULL,
	[FIO] [nvarchar](199) NULL,
	[Login] [nvarchar](199) NULL,
	[Password] [nvarchar](199) NULL,
	[Роль] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[guid_users] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ZapisNaPriem]    Script Date: 18.04.2022 13:17:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZapisNaPriem](
	[guid_registratora] [nvarchar](199) NOT NULL,
	[DATPrim] [datetime] NULL,
	[Comments] [nvarchar](199) NULL,
	[Client] [nvarchar](199) NULL,
	[Employee] [nvarchar](199) NULL,
	[Service] [nvarchar](199) NULL,
PRIMARY KEY CLUSTERED 
(
	[guid_registratora] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'1', N'Россия, г. Электросталь, Железнодорожная ул., д. 13 кв.144')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'10', N'Россия, г. Череповец, Весенняя ул., д. 21 кв.67')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'11', N'Россия, г. Челябинск, Приозерная ул., д. 1 кв.37')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'12', N'Россия, г. Одинцово, Рабочая ул., д. 2 кв.196')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'13', N'Россия, г. Ковров, Мирная ул., д. 12 кв.39')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'14', N'Россия, г. Обнинск, Спортивная ул., д. 14 кв.125')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'15', N'Россия, г. Армавир, Юбилейная ул., д. 13 кв.124')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'16', N'Россия, г. Комсомольск-на-Амуре, Молодежный пер., д. 14 кв.106')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'17', N'Россия, г. Ноябрьск, Максима Горького ул., д. 23 кв.64')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'18', N'Россия, г. Магнитогорск, ЯнкиКупалы ул., д. 19 кв.125')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'19', N'Россия, г. Раменское, Тихая ул., д. 22 кв.14')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'2', N'Россия, г. Ярославль, Заслонова ул., д. 12 кв.132')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'20', N'Россия, г. Новочеркасск, Песчаная ул., д. 14 кв.127')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'21', N'Россия, г. Новочебоксарск, Гагарина ул., д. 17 кв.110')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'22', N'Россия, г. Домодедово, Заречная ул., д. 13 кв.131')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'23', N'Россия, г. Волжский, Социалистическая ул., д. 22 кв.211')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'24', N'Россия, г. Орехово-Зуево, Центральный пер., д. 14 кв.52')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'25', N'Россия, г. Коломна, Севернаяул., д. 6 кв.71')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'26', N'Россия, г. Калуга, Новый пер., д. 6 кв.205')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'27', N'Россия, г. Прокопьевск, Приозерная ул., д. 21 кв.82')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'28', N'Россия, г. Альметьевск, Луговой пер., д. 13 кв.32')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'29', N'Россия, г. Альметьевск, Полевая ул., д. 17 кв.56')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'3', N'Россия, г. Балашиха, Октябрьский пер., д. 8 кв.202')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'30', N'Россия, г. Реутов, Новоселов ул., д. 13 кв.57')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'31', N'Россия, г. Березники, Новая ул., д. 10 кв.62')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'32', N'Россия, г. Ногинск, Новоселов ул., д. 16 кв.58')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'33', N'Россия, г. Сургут, Молодежный пер., д. 1 кв.150')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'34', N'Россия, г. Архангельск, Сосновая ул., д. 22 кв.54')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'35', N'Россия, г. Химки, Советская ул., д. 18 кв.31')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'36', N'Россия, г. Димитровград, Первомайская ул., д. 14 кв.135')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'37', N'Россия, г. Вологда, Советский пер., д. 3 кв.72')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'38', N'Россия, г. Королёв, Гагарина ул., д. 1 кв.114')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'39', N'Россия, г. Новошахтинск, Мичурина ул., д. 6 кв.29')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'4', N'Россия, г. Санкт-Петербург, Партизанская ул., д. 8 кв.179')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'40', N'Россия, г. Орёл, Железнодорожная ул., д. 13 кв.122')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'41', N'Россия, г. Ярославль, Калинина ул., д. 8 кв.113')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'42', N'Россия, г. Тверь, Полевая ул., д. 8 кв.195')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'43', N'Россия, г. Ковров, Парковая ул., д. 15 кв.157')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'44', N'Россия, г. Нальчик, Вишневая ул., д. 23 кв.113')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'45', N'Россия, г. Реутов, Ленина ул., д. 18 кв.99')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'46', N'Россия, г. Мурманск, Центральный пер., д. 2 кв.183')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'47', N'Россия, г. Омск, Первомайский пер., д. 16 кв.216')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'48', N'Россия, г. Нефтекамск, Весенняя ул., д. 20 кв.50')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'49', N'Россия, г. Елец, Центральная ул., д. 1 кв.16')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'5', N'Россия, г. Нефтекамск, Новоселов ул., д. 19 кв.56')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'50', N'Россия, г. Северодвинск, Дружбы ул., д. 16 кв.206')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'51', N'Россия, г. Сочи, Дзержинского ул., д. 5 кв.186')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'52', N'Россия, г. Бердск, Заводская ул., д. 6 кв.10')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'53', N'Россия, г. Старый Оскол, Октябрьский пер., д. 13 кв.30')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'54', N'Россия, г. Октябрьский, Заречная ул., д. 5 кв.48')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'55', N'Россия, г. Пятигорск, Молодежный пер., д. 19 кв.169')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'56', N'Россия, г. Сызрань, Первомайская ул., д. 12 кв.77')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'57', N'Россия, г. Воронеж, Заречный пер., д. 13 кв.139')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'58', N'Россия, г. Нефтеюганск, Кирова ул., д. 25 кв.120')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'59', N'Россия, г. Дзержинск, Цветочная ул., д. 2 кв.61')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'6', N'Россия, г. Химки, Новая ул., д. 7 кв.131')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'60', N'Россия, г. Златоуст, Пионерская ул., д. 1 кв.17')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'61', N'Россия, г. Пермь, Строителей ул., д. 17 кв.58')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'62', N'Россия, г. Хасавюрт, Новый пер., д. 11 кв.13')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'63', N'Россия, г. Нижний Тагил, Якуба Коласа ул., д. 16 кв.67')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'64', N'Россия, г. Рыбинск, Ленина В.И.ул., д. 1 кв.103')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'65', N'Россия, г. Ижевск, Чкалова ул., д. 8 кв.200')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'66', N'Россия, г. Великий Новгород, Севернаяул., д. 2 кв.185')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'67', N'Россия, г. Химки, Речной пер., д. 10 кв.167')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'68', N'Россия, г. Ессентуки, Дзержинского ул., д. 4 кв.149')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'69', N'Россия, г. Ногинск, Севернаяул., д. 2 кв.121')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'7', N'Россия, г. Арзамас, Победы ул., д. 18 кв.148')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'70', N'Россия, г. Псков, Набережная ул., д. 22 кв.8')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'71', N'Россия, г. Новороссийск, ЯнкиКупалы ул., д. 2 кв.34')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'72', N'Россия, г. Златоуст, Калинина ул., д. 8 кв.83')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'73', N'Россия, г. Вологда, Приозерная ул., д. 21 кв.17')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'74', N'Россия, г. Нижний Тагил, Коммунистическая ул., д. 13 кв.52')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'75', N'Россия, г. Екатеринбург, Первомайский пер., д. 5 кв.66')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'76', N'Россия, г. Магнитогорск, Полесская ул., д. 17 кв.101')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'77', N'Россия, г. Ростов-на-Дону, Молодежный пер., д. 12 кв.199')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'78', N'Россия, г. Ноябрьск, Первомайский пер., д. 19 кв.210')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'79', N'Россия, г. Дзержинск, Строителей ул., д. 2 кв.139')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'8', N'Россия, г. Хасавюрт, Сосновая ул., д. 19 кв.202')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'80', N'Россия, г. Каменск - Уральский, Вокзальная ул., д. 7 кв.178')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'81', N'Россия, г. Великий Новгород, Полесская ул., д. 22 кв.210')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'82', N'Россия, г. Астрахань, 17 Сентября ул., д. 20 кв.215')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'83', N'Россия, г. Чебоксары, Комсомольская ул., д. 16 кв.185')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'84', N'Россия, г. Калининград, Октябрьская ул., д. 13 кв.161')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'85', N'Россия, г. Калининград, Вокзальная ул., д. 16 кв.96')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'86', N'Россия, г. Северск, Приозерная ул., д. 18 кв.79')
INSERT [dbo].[Adres] ([Cod_adres], [Adres]) VALUES (N'9', N'Россия, г. Нижний Тагил, Ленина В.И.ул., д. 12 кв.45')
GO
INSERT [dbo].[Category] ([Cod_category], [Name]) VALUES (N'1', N'Консультация')
INSERT [dbo].[Category] ([Cod_category], [Name]) VALUES (N'10', N'Пародонтология терапевтическая')
INSERT [dbo].[Category] ([Cod_category], [Name]) VALUES (N'11', N'Ортопедические услуги. Оттиски')
INSERT [dbo].[Category] ([Cod_category], [Name]) VALUES (N'12', N'Ортопедические услуги. Несъемное протезирование')
INSERT [dbo].[Category] ([Cod_category], [Name]) VALUES (N'13', N'Ортопедические услуги. Съемные протезы')
INSERT [dbo].[Category] ([Cod_category], [Name]) VALUES (N'14', N'Ортопедические услуги.Протезирование с опорой на имплантаты')
INSERT [dbo].[Category] ([Cod_category], [Name]) VALUES (N'15', N'Съемное протезирование с опорой на имплантаты')
INSERT [dbo].[Category] ([Cod_category], [Name]) VALUES (N'16', N'Прочие ортопедические услуги')
INSERT [dbo].[Category] ([Cod_category], [Name]) VALUES (N'17', N'Хирургические услуги')
INSERT [dbo].[Category] ([Cod_category], [Name]) VALUES (N'18', N'Имплантация (хирургическая часть)')
INSERT [dbo].[Category] ([Cod_category], [Name]) VALUES (N'19', N'Лабораторные конструкции')
INSERT [dbo].[Category] ([Cod_category], [Name]) VALUES (N'2', N'Рентгенология')
INSERT [dbo].[Category] ([Cod_category], [Name]) VALUES (N'20', N'Детская стоматология')
INSERT [dbo].[Category] ([Cod_category], [Name]) VALUES (N'21', N'Лечение осложнений кариеса временных зубов и постоянных зубов ')
INSERT [dbo].[Category] ([Cod_category], [Name]) VALUES (N'22', N'Ортодонтия')
INSERT [dbo].[Category] ([Cod_category], [Name]) VALUES (N'3', N'Исследования и диагностика')
INSERT [dbo].[Category] ([Cod_category], [Name]) VALUES (N'4', N'Анестезия, инъекции.')
INSERT [dbo].[Category] ([Cod_category], [Name]) VALUES (N'5', N'Профилактика')
INSERT [dbo].[Category] ([Cod_category], [Name]) VALUES (N'6', N'Отбеливание зубов')
INSERT [dbo].[Category] ([Cod_category], [Name]) VALUES (N'7', N'Восстановление зуба пломбой')
INSERT [dbo].[Category] ([Cod_category], [Name]) VALUES (N'8', N'Лечение осложнений кариеса')
INSERT [dbo].[Category] ([Cod_category], [Name]) VALUES (N'9', N'Шинирование зубов')
GO
INSERT [dbo].[Clients] ([guid_clients], [Passport], [SecondName], [Name], [MiddleName], [Adres_proj], [Adres_propis]) VALUES (N'132cf0c8-12e1-47e3-9b27-477bc1f775c9', N'4182 518222', N'Блохина', N'Альбина', N'Васильевна', N'50', N'50')
INSERT [dbo].[Clients] ([guid_clients], [Passport], [SecondName], [Name], [MiddleName], [Adres_proj], [Adres_propis]) VALUES (N'136002ff-bb26-48e4-aff1-7c870c73ab8e', N'4411 137248', N'Якубович', N'Серафима', N'Григориевна', N'17', N'61')
INSERT [dbo].[Clients] ([guid_clients], [Passport], [SecondName], [Name], [MiddleName], [Adres_proj], [Adres_propis]) VALUES (N'176518d3-088c-4770-8116-0f2a31ea2591', N'4922 400607', N'Козарь', N'Давид', N'Егорович', N'9', N'56')
INSERT [dbo].[Clients] ([guid_clients], [Passport], [SecondName], [Name], [MiddleName], [Adres_proj], [Adres_propis]) VALUES (N'1dad3904-85d5-44ee-ba53-e071e5e06ded', N'4658 620953', N'Пантелеев', N'Григорий', N'Валерьевич', N'8', N'8')
INSERT [dbo].[Clients] ([guid_clients], [Passport], [SecondName], [Name], [MiddleName], [Adres_proj], [Adres_propis]) VALUES (N'26749e42-0b8c-4df9-9836-1c5ec8dd2276', N'4992 862382', N'Цуцков', N'Роман', N'Федотович', N'46', N'46')
INSERT [dbo].[Clients] ([guid_clients], [Passport], [SecondName], [Name], [MiddleName], [Adres_proj], [Adres_propis]) VALUES (N'2781fe3d-e307-44c3-8d6f-6c74e6ccc43b', N'4341 534559', N'Шурдук', N'Петр', N'Акимович', N'15', N'15')
INSERT [dbo].[Clients] ([guid_clients], [Passport], [SecondName], [Name], [MiddleName], [Adres_proj], [Adres_propis]) VALUES (N'2dadaf6e-ff64-4be2-bf36-05e9319199ff', N'4240 193905', N'Карнаухова', N'Римма', N'Давидовна', N'22', N'66')
INSERT [dbo].[Clients] ([guid_clients], [Passport], [SecondName], [Name], [MiddleName], [Adres_proj], [Adres_propis]) VALUES (N'353bd51b-9449-431d-ad67-2d6fdba6fb33', N'4525 181979', N'Чеботарева', N'Екатерина', N'Юлиановна', N'19', N'63')
INSERT [dbo].[Clients] ([guid_clients], [Passport], [SecondName], [Name], [MiddleName], [Adres_proj], [Adres_propis]) VALUES (N'36998fe1-d8f1-45c7-9bf3-8fcdef7d997d', N'4612 242676', N'Гуринов', N'Семен', N'Тарасович', N'41', N'81')
INSERT [dbo].[Clients] ([guid_clients], [Passport], [SecondName], [Name], [MiddleName], [Adres_proj], [Adres_propis]) VALUES (N'3b2a6feb-ab99-41f2-a01e-17a3d9c5b034', N'4566 579064', N'Ермилов', N'Максим', N'Дмитриевич', N'23', N'67')
INSERT [dbo].[Clients] ([guid_clients], [Passport], [SecondName], [Name], [MiddleName], [Adres_proj], [Adres_propis]) VALUES (N'3fd09a9f-01e3-4ef5-888b-f2b1ae959d1a', N'4635 822768', N'Дружинина', N'Ярослава', N'Трофимовна', N'26', N'69')
INSERT [dbo].[Clients] ([guid_clients], [Passport], [SecondName], [Name], [MiddleName], [Adres_proj], [Adres_propis]) VALUES (N'47b44bc1-e4b2-4aaa-9f68-3e7c53a03fa2', N'4922 752560', N'Киселёва', N'Пелагея', N'Яковна', N'20', N'64')
INSERT [dbo].[Clients] ([guid_clients], [Passport], [SecondName], [Name], [MiddleName], [Adres_proj], [Adres_propis]) VALUES (N'4b368f74-e599-4352-9de2-db7bdb3d53d3', N'4395 669870', N'Шапцев', N'Григорий', N'Ростиславович', N'5', N'54')
INSERT [dbo].[Clients] ([guid_clients], [Passport], [SecondName], [Name], [MiddleName], [Adres_proj], [Adres_propis]) VALUES (N'4e12a6ab-3059-4595-be6e-6699f71cdb43', N'4628 936872', N'Урусова', N'Алина', N'Ефимовна', N'37', N'78')
INSERT [dbo].[Clients] ([guid_clients], [Passport], [SecondName], [Name], [MiddleName], [Adres_proj], [Adres_propis]) VALUES (N'53bddbd4-e193-44b2-a8c2-dee2589bc64f', N'4541 187966', N'Елышев', N'Семен', N'Васильевич', N'45', N'84')
INSERT [dbo].[Clients] ([guid_clients], [Passport], [SecondName], [Name], [MiddleName], [Adres_proj], [Adres_propis]) VALUES (N'5cd5fa47-b02b-4d4c-8bf6-6a11ba2f271c', N'4989 111571', N'Никешин', N'Егор', N'Давидович', N'21', N'65')
INSERT [dbo].[Clients] ([guid_clients], [Passport], [SecondName], [Name], [MiddleName], [Adres_proj], [Adres_propis]) VALUES (N'6572af84-61e3-436f-bc75-266e22c372a4', N'4166 744352', N'Балдагуев', N'Максим', N'Филиппович', N'43', N'82')
INSERT [dbo].[Clients] ([guid_clients], [Passport], [SecondName], [Name], [MiddleName], [Adres_proj], [Adres_propis]) VALUES (N'6c40d154-37a6-4aac-9206-8dbae427566b', N'4499 760477', N'Сомкина', N'Вера', N'Леонидовна', N'31', N'73')
INSERT [dbo].[Clients] ([guid_clients], [Passport], [SecondName], [Name], [MiddleName], [Adres_proj], [Adres_propis]) VALUES (N'6e1b8689-0f9b-4573-bef1-23f48a410c0e', N'4146 993152', N'Катрановская', N'Раиса', N'Ильишна', N'12', N'12')
INSERT [dbo].[Clients] ([guid_clients], [Passport], [SecondName], [Name], [MiddleName], [Adres_proj], [Adres_propis]) VALUES (N'71d1a1c0-53dc-4f9b-8e94-5db5748ac8e8', N'4781 356773', N'Полкова', N'Марианна', N'Давидович', N'13', N'58')
INSERT [dbo].[Clients] ([guid_clients], [Passport], [SecondName], [Name], [MiddleName], [Adres_proj], [Adres_propis]) VALUES (N'7e047534-1a96-4069-a333-6a2bec6ca324', N'4789 158553', N'Дудина', N'Тамара', N'Филипповна', N'18', N'62')
INSERT [dbo].[Clients] ([guid_clients], [Passport], [SecondName], [Name], [MiddleName], [Adres_proj], [Adres_propis]) VALUES (N'7e7633e1-f861-497a-b35c-f9a7631a498c', N'4875 547078', N'Жидков', N'Константин', N'Евгениевич', N'28', N'71')
INSERT [dbo].[Clients] ([guid_clients], [Passport], [SecondName], [Name], [MiddleName], [Adres_proj], [Adres_propis]) VALUES (N'83fc564e-4bc9-491f-a396-709a1f3e1777', N'4272 900351', N'Ибрагимов', N'Геннадий', N'Панкратович', N'16', N'60')
INSERT [dbo].[Clients] ([guid_clients], [Passport], [SecondName], [Name], [MiddleName], [Adres_proj], [Adres_propis]) VALUES (N'87cfc3a5-3423-4b15-9eed-ee04c0ba96a3', N'4938 823022', N'Александрина', N'Лидия', N'Семеновна', N'47', N'85')
INSERT [dbo].[Clients] ([guid_clients], [Passport], [SecondName], [Name], [MiddleName], [Adres_proj], [Adres_propis]) VALUES (N'897c8a6d-cae0-4299-baac-c7ca3619438a', N'4286 432161', N'Конакова', N'Василиса', N'Данииловна', N'33', N'75')
INSERT [dbo].[Clients] ([guid_clients], [Passport], [SecondName], [Name], [MiddleName], [Adres_proj], [Adres_propis]) VALUES (N'8d27ec35-80d2-4eed-be53-f56989301173', N'4212 468783', N'Буков', N'Феликс', N'Феоктистович', N'30', N'30')
INSERT [dbo].[Clients] ([guid_clients], [Passport], [SecondName], [Name], [MiddleName], [Adres_proj], [Adres_propis]) VALUES (N'8f5abaed-b728-429b-95f9-566aa09c0514', N'4623 576683', N'Ябуров', N'Захар', N'Маркович', N'2', N'51')
INSERT [dbo].[Clients] ([guid_clients], [Passport], [SecondName], [Name], [MiddleName], [Adres_proj], [Adres_propis]) VALUES (N'93e872c2-f8fe-4cd8-9f59-a8b001c30daf', N'4496 117482', N'Кожедуб', N'Илья', N'Тарасович', N'14', N'59')
INSERT [dbo].[Clients] ([guid_clients], [Passport], [SecondName], [Name], [MiddleName], [Adres_proj], [Adres_propis]) VALUES (N'95c3d71c-a67b-4c36-b7f8-3a4162abc57d', N'4583 961410', N'Северова', N'Вероника', N'Федоровна', N'38', N'79')
INSERT [dbo].[Clients] ([guid_clients], [Passport], [SecondName], [Name], [MiddleName], [Adres_proj], [Adres_propis]) VALUES (N'9ab2407d-b2cc-48b8-b160-7845009d6e72', N'4671 891410', N'Сиясинова', N'Ульяна', N'Макаровна', N'6', N'6')
INSERT [dbo].[Clients] ([guid_clients], [Passport], [SecondName], [Name], [MiddleName], [Adres_proj], [Adres_propis]) VALUES (N'9dd76498-1f35-40b5-b663-b787d7a0b162', N'4982 836337', N'Аюшиев', N'Игнатий', N'Михаилович', N'4', N'53')
INSERT [dbo].[Clients] ([guid_clients], [Passport], [SecondName], [Name], [MiddleName], [Adres_proj], [Adres_propis]) VALUES (N'9e285ec9-7748-49ad-a7e1-6de169ea6c1d', N'4048 934700', N'Сысоев', N'Захар', N'Максимович', N'1', N'1')
INSERT [dbo].[Clients] ([guid_clients], [Passport], [SecondName], [Name], [MiddleName], [Adres_proj], [Adres_propis]) VALUES (N'a83855a6-a326-4ebe-819c-5481553762b6', N'4219 193826', N'Лебединская', N'Галина', N'Ильишна', N'11', N'11')
INSERT [dbo].[Clients] ([guid_clients], [Passport], [SecondName], [Name], [MiddleName], [Adres_proj], [Adres_propis]) VALUES (N'b0cfe5a7-bbe1-4ef5-9445-e5396a19d839', N'4836 598073', N'Коржакова', N'Любовь', N'Фадеевна', N'25', N'25')
INSERT [dbo].[Clients] ([guid_clients], [Passport], [SecondName], [Name], [MiddleName], [Adres_proj], [Adres_propis]) VALUES (N'b791de0b-fd3c-4fca-b44a-fa1a36048ea2', N'4650 493925', N'Разудалова', N'Инна', N'Константиновна', N'39', N'39')
INSERT [dbo].[Clients] ([guid_clients], [Passport], [SecondName], [Name], [MiddleName], [Adres_proj], [Adres_propis]) VALUES (N'bec5d31d-ffac-47fb-aa7f-b364e17baa84', N'4881 321478', N'Кокорин', N'Юрий', N'Семенович', N'24', N'68')
INSERT [dbo].[Clients] ([guid_clients], [Passport], [SecondName], [Name], [MiddleName], [Adres_proj], [Adres_propis]) VALUES (N'bece4d8e-b57f-4386-9fa0-c261fd521d41', N'4385 545584', N'Мирохин', N'Адам', N'Михаилович', N'32', N'74')
INSERT [dbo].[Clients] ([guid_clients], [Passport], [SecondName], [Name], [MiddleName], [Adres_proj], [Adres_propis]) VALUES (N'c37cba28-f684-46b3-8585-e69d82de9155', N'4199 264120', N'Фурманова', N'Арина', N'Егоровна', N'10', N'57')
INSERT [dbo].[Clients] ([guid_clients], [Passport], [SecondName], [Name], [MiddleName], [Adres_proj], [Adres_propis]) VALUES (N'c6e9ea1f-0b5d-4435-a802-582bfc3cccb6', N'4871 399767', N'Флеров', N'Максим', N'Герасимович', N'3', N'52')
INSERT [dbo].[Clients] ([guid_clients], [Passport], [SecondName], [Name], [MiddleName], [Adres_proj], [Adres_propis]) VALUES (N'ca71a196-ebf3-4840-9ae5-4ba7f705dc2f', N'4616 808120', N'Лясковец', N'Александр', N'Никитович', N'44', N'83')
INSERT [dbo].[Clients] ([guid_clients], [Passport], [SecondName], [Name], [MiddleName], [Adres_proj], [Adres_propis]) VALUES (N'd1192b9e-88b9-45f0-aaba-dc8c670c39c5', N'4256 506229', N'Караулов', N'Иван', N'Макарович', N'35', N'76')
INSERT [dbo].[Clients] ([guid_clients], [Passport], [SecondName], [Name], [MiddleName], [Adres_proj], [Adres_propis]) VALUES (N'd557227f-a168-4e5a-8126-482bccd4348f', N'4629 964222', N'Толстой', N'Федор', N'Яковлевич', N'7', N'55')
INSERT [dbo].[Clients] ([guid_clients], [Passport], [SecondName], [Name], [MiddleName], [Adres_proj], [Adres_propis]) VALUES (N'dd522566-f94d-4fca-b9c0-821623a4bf2a', N'4265 900840', N'Раскатова', N'Юлиана', N'Фадеевна', N'40', N'80')
INSERT [dbo].[Clients] ([guid_clients], [Passport], [SecondName], [Name], [MiddleName], [Adres_proj], [Adres_propis]) VALUES (N'dfdb5b29-bf93-4da3-9739-d5e07aba0a41', N'4654 265203', N'Ямпольский', N'Роман', N'Валерианович', N'42', N'42')
INSERT [dbo].[Clients] ([guid_clients], [Passport], [SecondName], [Name], [MiddleName], [Adres_proj], [Adres_propis]) VALUES (N'e003f1d3-240b-48e8-aea4-ac91d098e563', N'4355 195132', N'Яламов', N'Георгий', N'Макарович', N'49', N'86')
INSERT [dbo].[Clients] ([guid_clients], [Passport], [SecondName], [Name], [MiddleName], [Adres_proj], [Adres_propis]) VALUES (N'e5078b5c-01f2-4fd6-8986-b729b0f51ce2', N'4638 380981', N'Жуков', N'Сергей', N'Вячеславович', N'36', N'77')
INSERT [dbo].[Clients] ([guid_clients], [Passport], [SecondName], [Name], [MiddleName], [Adres_proj], [Adres_propis]) VALUES (N'f3a7333e-faac-4b1c-9bc3-bb0de5a4586a', N'4390 352714', N'Стиплина', N'Алина', N'Адамовна', N'34', N'34')
INSERT [dbo].[Clients] ([guid_clients], [Passport], [SecondName], [Name], [MiddleName], [Adres_proj], [Adres_propis]) VALUES (N'faed00cf-529c-42f5-9ce0-daaf01d1291e', N'4249 420611', N'Кацена', N'Людмила', N'Артемова', N'29', N'72')
INSERT [dbo].[Clients] ([guid_clients], [Passport], [SecondName], [Name], [MiddleName], [Adres_proj], [Adres_propis]) VALUES (N'fc5b08c9-c45a-474e-a00d-343208b4ab3b', N'4814 732054', N'Уланов', N'Аркадий', N'Себастьянович', N'27', N'70')
INSERT [dbo].[Clients] ([guid_clients], [Passport], [SecondName], [Name], [MiddleName], [Adres_proj], [Adres_propis]) VALUES (N'fdf47e0a-9400-4d9b-8987-8e39a37a679b', N'4682 779066', N'Махнёва', N'Наталия', N'Степановна', N'48', N'48')
GO
INSERT [dbo].[Passport] ([SANPass], [BirthDay], [Cod_podr], [Otdelenie], [DateVidachi]) VALUES (N'4048 934700', CAST(N'1982-05-18' AS Date), N'370-274', N'Управление внутренних дел по г. Электросталь', CAST(N'2019-09-19' AS Date))
INSERT [dbo].[Passport] ([SANPass], [BirthDay], [Cod_podr], [Otdelenie], [DateVidachi]) VALUES (N'4146 993152', CAST(N'1988-10-02' AS Date), N'800-305', N'Отделением УФМС России по г. Элиста', CAST(N'2020-06-30' AS Date))
INSERT [dbo].[Passport] ([SANPass], [BirthDay], [Cod_podr], [Otdelenie], [DateVidachi]) VALUES (N'4166 744352', CAST(N'1969-09-02' AS Date), N'750-606', N'Отделом УФМС России по г. Ковров', CAST(N'2015-05-03' AS Date))
INSERT [dbo].[Passport] ([SANPass], [BirthDay], [Cod_podr], [Otdelenie], [DateVidachi]) VALUES (N'4182 518222', CAST(N'1967-12-16' AS Date), N'800-563', N'Управление внутренних дел по г. Северодвинск', CAST(N'2020-10-23' AS Date))
INSERT [dbo].[Passport] ([SANPass], [BirthDay], [Cod_podr], [Otdelenie], [DateVidachi]) VALUES (N'4199 264120', CAST(N'1974-12-11' AS Date), N'880-936', N'Отделом УФМС России по г. Череповец', CAST(N'2013-09-24' AS Date))
INSERT [dbo].[Passport] ([SANPass], [BirthDay], [Cod_podr], [Otdelenie], [DateVidachi]) VALUES (N'4212 468783', CAST(N'1968-08-08' AS Date), N'460-284', N'ОУФМС России по г. Реутов', CAST(N'2018-09-16' AS Date))
INSERT [dbo].[Passport] ([SANPass], [BirthDay], [Cod_podr], [Otdelenie], [DateVidachi]) VALUES (N'4219 193826', CAST(N'1990-03-14' AS Date), N'510-637', N'Отделом внутренних дел России по г. Челябинск', CAST(N'2018-10-14' AS Date))
INSERT [dbo].[Passport] ([SANPass], [BirthDay], [Cod_podr], [Otdelenie], [DateVidachi]) VALUES (N'4240 193905', CAST(N'1991-02-09' AS Date), N'760-475', N'Отделом внутренних дел России по г. Домодедово', CAST(N'2019-05-21' AS Date))
INSERT [dbo].[Passport] ([SANPass], [BirthDay], [Cod_podr], [Otdelenie], [DateVidachi]) VALUES (N'4249 420611', CAST(N'1988-06-27' AS Date), N'450-308', N'ОВД России по г. Альметьевск', CAST(N'2014-02-11' AS Date))
INSERT [dbo].[Passport] ([SANPass], [BirthDay], [Cod_podr], [Otdelenie], [DateVidachi]) VALUES (N'4256 506229', CAST(N'1969-03-25' AS Date), N'340-896', N'Отделением УФМС России по г. Химки', CAST(N'2016-02-29' AS Date))
INSERT [dbo].[Passport] ([SANPass], [BirthDay], [Cod_podr], [Otdelenie], [DateVidachi]) VALUES (N'4265 900840', CAST(N'1976-04-20' AS Date), N'860-922', N'ОВД России по г. Орёл', CAST(N'2016-07-22' AS Date))
INSERT [dbo].[Passport] ([SANPass], [BirthDay], [Cod_podr], [Otdelenie], [DateVidachi]) VALUES (N'4272 900351', CAST(N'1966-08-08' AS Date), N'180-202', N'Управление внутренних дел по г. Комсомольск-на-Амуре', CAST(N'2021-11-02' AS Date))
INSERT [dbo].[Passport] ([SANPass], [BirthDay], [Cod_podr], [Otdelenie], [DateVidachi]) VALUES (N'4286 432161', CAST(N'1980-02-06' AS Date), N'550-142', N'Отделением УФМС России по г. Сургут', CAST(N'2021-05-03' AS Date))
INSERT [dbo].[Passport] ([SANPass], [BirthDay], [Cod_podr], [Otdelenie], [DateVidachi]) VALUES (N'4341 534559', CAST(N'1974-06-07' AS Date), N'680-579', N'Отделом внутренних дел России по г. Рязань', CAST(N'2019-03-07' AS Date))
INSERT [dbo].[Passport] ([SANPass], [BirthDay], [Cod_podr], [Otdelenie], [DateVidachi]) VALUES (N'4355 195132', CAST(N'1971-06-17' AS Date), N'720-759', N'Отделением УФМС России по г. Елец', CAST(N'2022-01-23' AS Date))
INSERT [dbo].[Passport] ([SANPass], [BirthDay], [Cod_podr], [Otdelenie], [DateVidachi]) VALUES (N'4385 545584', CAST(N'1973-02-16' AS Date), N'680-895', N'Отделом внутренних дел России по г. Ногинск', CAST(N'2017-10-23' AS Date))
INSERT [dbo].[Passport] ([SANPass], [BirthDay], [Cod_podr], [Otdelenie], [DateVidachi]) VALUES (N'4390 352714', CAST(N'1969-08-27' AS Date), N'710-482', N'Отделом внутренних дел России по г. Архангельск', CAST(N'2017-11-06' AS Date))
INSERT [dbo].[Passport] ([SANPass], [BirthDay], [Cod_podr], [Otdelenie], [DateVidachi]) VALUES (N'4395 669870', CAST(N'1960-11-05' AS Date), N'420-651', N'Отделом УФМС России по г. Нефтекамск', CAST(N'2012-11-13' AS Date))
INSERT [dbo].[Passport] ([SANPass], [BirthDay], [Cod_podr], [Otdelenie], [DateVidachi]) VALUES (N'4411 137248', CAST(N'1972-06-23' AS Date), N'910-183', N'Отделением УФМС России в г. Ноябрьск', CAST(N'2017-02-04' AS Date))
INSERT [dbo].[Passport] ([SANPass], [BirthDay], [Cod_podr], [Otdelenie], [DateVidachi]) VALUES (N'4496 117482', CAST(N'1981-05-19' AS Date), N'820-744', N'Отделением УФМС России в г. Обнинск', CAST(N'2013-10-22' AS Date))
INSERT [dbo].[Passport] ([SANPass], [BirthDay], [Cod_podr], [Otdelenie], [DateVidachi]) VALUES (N'4499 760477', CAST(N'1962-07-08' AS Date), N'320-938', N'Отделением УФМС России в г. Березники', CAST(N'2018-12-10' AS Date))
INSERT [dbo].[Passport] ([SANPass], [BirthDay], [Cod_podr], [Otdelenie], [DateVidachi]) VALUES (N'4525 181979', CAST(N'1970-06-18' AS Date), N'910-764', N'Отделением УФМС России в г. Раменское', CAST(N'2018-05-08' AS Date))
INSERT [dbo].[Passport] ([SANPass], [BirthDay], [Cod_podr], [Otdelenie], [DateVidachi]) VALUES (N'4541 187966', CAST(N'1967-01-16' AS Date), N'820-265', N'Отделом УФМС России по г. Реутов', CAST(N'2017-10-13' AS Date))
INSERT [dbo].[Passport] ([SANPass], [BirthDay], [Cod_podr], [Otdelenie], [DateVidachi]) VALUES (N'4566 579064', CAST(N'1976-09-20' AS Date), N'390-720', N'Отделом внутренних дел России по г. Волжский', CAST(N'2020-11-20' AS Date))
INSERT [dbo].[Passport] ([SANPass], [BirthDay], [Cod_podr], [Otdelenie], [DateVidachi]) VALUES (N'4583 961410', CAST(N'1965-10-28' AS Date), N'190-866', N'ОУФМС России по г. Королёв', CAST(N'2017-10-04' AS Date))
INSERT [dbo].[Passport] ([SANPass], [BirthDay], [Cod_podr], [Otdelenie], [DateVidachi]) VALUES (N'4612 242676', CAST(N'1985-10-05' AS Date), N'250-390', N'ОВД России по г. Ярославль', CAST(N'2022-03-25' AS Date))
INSERT [dbo].[Passport] ([SANPass], [BirthDay], [Cod_podr], [Otdelenie], [DateVidachi]) VALUES (N'4616 808120', CAST(N'1965-02-22' AS Date), N'570-996', N'Отделением УФМС России по г. Нальчик', CAST(N'2015-05-21' AS Date))
INSERT [dbo].[Passport] ([SANPass], [BirthDay], [Cod_podr], [Otdelenie], [DateVidachi]) VALUES (N'4623 576683', CAST(N'1994-09-18' AS Date), N'800-908', N'ОУФМС России по г. Ярославль', CAST(N'2021-02-03' AS Date))
INSERT [dbo].[Passport] ([SANPass], [BirthDay], [Cod_podr], [Otdelenie], [DateVidachi]) VALUES (N'4628 936872', CAST(N'1991-07-07' AS Date), N'280-495', N'Отделом внутренних дел России по г. Вологда', CAST(N'2019-05-02' AS Date))
INSERT [dbo].[Passport] ([SANPass], [BirthDay], [Cod_podr], [Otdelenie], [DateVidachi]) VALUES (N'4629 964222', CAST(N'1965-12-04' AS Date), N'160-139', N'Отделением УФМС России по г. Арзамас', CAST(N'2017-09-12' AS Date))
INSERT [dbo].[Passport] ([SANPass], [BirthDay], [Cod_podr], [Otdelenie], [DateVidachi]) VALUES (N'4635 822768', CAST(N'1962-08-18' AS Date), N'780-944', N'Отделением УФМС России по г. Калуга', CAST(N'2018-10-19' AS Date))
INSERT [dbo].[Passport] ([SANPass], [BirthDay], [Cod_podr], [Otdelenie], [DateVidachi]) VALUES (N'4638 380981', CAST(N'1977-02-27' AS Date), N'890-871', N'ОУФМС России по г. Димитровград', CAST(N'2016-12-10' AS Date))
INSERT [dbo].[Passport] ([SANPass], [BirthDay], [Cod_podr], [Otdelenie], [DateVidachi]) VALUES (N'4650 493925', CAST(N'1994-01-12' AS Date), N'830-241', N'Отделом внутренних дел России по г. Новошахтинск', CAST(N'2021-10-06' AS Date))
INSERT [dbo].[Passport] ([SANPass], [BirthDay], [Cod_podr], [Otdelenie], [DateVidachi]) VALUES (N'4654 265203', CAST(N'1960-05-15' AS Date), N'340-297', N'Отделением УФМС России в г. Тверь', CAST(N'2017-07-01' AS Date))
INSERT [dbo].[Passport] ([SANPass], [BirthDay], [Cod_podr], [Otdelenie], [DateVidachi]) VALUES (N'4658 620953', CAST(N'1983-03-19' AS Date), N'510-124', N'ОУФМС России по г. Хасавюрт', CAST(N'2018-10-27' AS Date))
INSERT [dbo].[Passport] ([SANPass], [BirthDay], [Cod_podr], [Otdelenie], [DateVidachi]) VALUES (N'4671 891410', CAST(N'1995-02-09' AS Date), N'800-539', N'Отделением УФМС России по г. Химки', CAST(N'2019-11-18' AS Date))
INSERT [dbo].[Passport] ([SANPass], [BirthDay], [Cod_podr], [Otdelenie], [DateVidachi]) VALUES (N'4682 779066', CAST(N'1993-04-15' AS Date), N'360-627', N'Управление внутренних дел по г. Нефтекамск', CAST(N'2015-10-04' AS Date))
INSERT [dbo].[Passport] ([SANPass], [BirthDay], [Cod_podr], [Otdelenie], [DateVidachi]) VALUES (N'4781 356773', CAST(N'1992-10-19' AS Date), N'820-307', N'ОВД России по г. Ковров', CAST(N'2014-02-16' AS Date))
INSERT [dbo].[Passport] ([SANPass], [BirthDay], [Cod_podr], [Otdelenie], [DateVidachi]) VALUES (N'4789 158553', CAST(N'1969-04-22' AS Date), N'160-375', N'Отделением УФМС России по г. Магнитогорск', CAST(N'2018-12-09' AS Date))
INSERT [dbo].[Passport] ([SANPass], [BirthDay], [Cod_podr], [Otdelenie], [DateVidachi]) VALUES (N'4814 732054', CAST(N'1994-07-23' AS Date), N'290-919', N'Отделением УФМС России в г. Прокопьевск', CAST(N'2016-01-31' AS Date))
INSERT [dbo].[Passport] ([SANPass], [BirthDay], [Cod_podr], [Otdelenie], [DateVidachi]) VALUES (N'4836 598073', CAST(N'1963-04-09' AS Date), N'890-993', N'Отделением УФМС России по г. Коломна', CAST(N'2014-03-06' AS Date))
INSERT [dbo].[Passport] ([SANPass], [BirthDay], [Cod_podr], [Otdelenie], [DateVidachi]) VALUES (N'4871 399767', CAST(N'1961-05-13' AS Date), N'760-389', N'Отделением УФМС России в г. Балашиха', CAST(N'2021-11-04' AS Date))
INSERT [dbo].[Passport] ([SANPass], [BirthDay], [Cod_podr], [Otdelenie], [DateVidachi]) VALUES (N'4875 547078', CAST(N'1961-11-02' AS Date), N'120-787', N'Отделением УФМС России по г. Альметьевск', CAST(N'2021-08-10' AS Date))
INSERT [dbo].[Passport] ([SANPass], [BirthDay], [Cod_podr], [Otdelenie], [DateVidachi]) VALUES (N'4881 321478', CAST(N'1971-03-05' AS Date), N'120-217', N'Отделом внутренних дел России по г. Орехово-Зуево', CAST(N'2014-10-10' AS Date))
INSERT [dbo].[Passport] ([SANPass], [BirthDay], [Cod_podr], [Otdelenie], [DateVidachi]) VALUES (N'4922 400607', CAST(N'1970-10-12' AS Date), N'950-937', N'ОУФМС России по г. Нижний Тагил', CAST(N'2021-07-30' AS Date))
INSERT [dbo].[Passport] ([SANPass], [BirthDay], [Cod_podr], [Otdelenie], [DateVidachi]) VALUES (N'4922 752560', CAST(N'1986-10-10' AS Date), N'490-812', N'Отделением УФМС России в г. Новочеркасск', CAST(N'2017-01-31' AS Date))
INSERT [dbo].[Passport] ([SANPass], [BirthDay], [Cod_podr], [Otdelenie], [DateVidachi]) VALUES (N'4938 823022', CAST(N'1996-11-23' AS Date), N'910-291', N'ОВД России по г. Омск', CAST(N'2012-11-13' AS Date))
INSERT [dbo].[Passport] ([SANPass], [BirthDay], [Cod_podr], [Otdelenie], [DateVidachi]) VALUES (N'4982 836337', CAST(N'1967-05-25' AS Date), N'220-678', N'Отделением УФМС России в г. Санкт-Петербург', CAST(N'2017-06-13' AS Date))
INSERT [dbo].[Passport] ([SANPass], [BirthDay], [Cod_podr], [Otdelenie], [DateVidachi]) VALUES (N'4989 111571', CAST(N'1981-02-09' AS Date), N'120-805', N'Отделением УФМС России по г. Новочебоксарск', CAST(N'2017-05-24' AS Date))
INSERT [dbo].[Passport] ([SANPass], [BirthDay], [Cod_podr], [Otdelenie], [DateVidachi]) VALUES (N'4992 862382', CAST(N'1960-08-26' AS Date), N'260-786', N'Отделением УФМС России в г. Мурманск', CAST(N'2021-11-20' AS Date))
GO
INSERT [dbo].[Role] ([Cod_role], [Name]) VALUES (1, N'Начальник Административно-хозяйственного отдела')
INSERT [dbo].[Role] ([Cod_role], [Name]) VALUES (2, N'Медицинский регистратор')
INSERT [dbo].[Role] ([Cod_role], [Name]) VALUES (3, N'Стоматолог')
GO
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A02.07.004.002', N'025', N'Антропометрические исследования (медицинское фотографирование)', N'300', N'3')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A02.07.004.003', N'296', N'Описание и интерпретация рентгенографических изображений ТРГ (1 снимок)', N'1 100', N'22')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A02.07.006.002', N'108', N'Определение прикуса при помощи примерки в полости рта результата воскового моделирования (Moke-Up) из временного композитного материала, планирования эстетики и функции (1 единица)', N'500', N'11')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A02.07.010.007', N'107', N'Исследование на диагностических моделях челюстей с восковой моделировкой (Wax-Up) будущей ортопедической конструкции с целью планирования препарирования, эстетики и функции (1 единица) ', N'500', N'11')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A05.07.001', N'013', N'Электроодонтометрия зуба (ЭОД)', N'200', N'3')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A11.07.012.001', N'123', N'Глубокое фторирование твердых тканей зубов для сохранения витальности при сошлифовывании твердых тканей под ортопедическую конструкцию (1 зуб) ', N'400', N'12')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.003.001', N'062', N'Восстановление зуба вкладками, виниром, полукоронкой из фотополимерного материала прямым методом', N'5 200', N'7')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.004.001', N'110', N'Восстановление зуба коронкой временной прямым методом', N'1 700', N'12')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.004.002', N'111', N'Восстановление зуба коронкой временной композитной фрезерованной лабораторным методом', N'3 000', N'12')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.004.003', N'112', N'Восстановление зуба коронкой постоянной  металлокерамической стандартной', N'15 000', N'12')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.004.004', N'113', N'Восстановление зуба коронкой постоянной металлокерамической с плечевой массой и индивидуальным воспроизведением эстетики на зубы в линии улыбки', N'16 500', N'12')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.004.005', N'114', N'Восстановление зуба коронкой постоянной безметалловой из диоксида циркония стандартная эстетика (метод окрашивания)', N'17 000', N'12')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.004.006', N'115', N'Восстановление зуба коронкой постоянной безметалловой цельнокерамической диоксид циркония или Е-мах с индивидуальной эстетикой (метод нанесения)', N'19 500', N'12')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.006.001', N'139', N'Протезирование зуба с использованием имплантата коронкой постоянной безметалловой из диоксида циркония с винтовой фиксацией (стандартная эстетика)', N'17 000', N'14')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.006.002', N'140', N'Протезирование зуба с использованием имплантата коронкой постоянной безметалловой из диоксида циркония с винтовой фиксацией (индивидуальная эстетика)', N'19 000', N'14')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.006.003', N'141', N'Протезирование зуба с использованием имплантата коронкой постоянной безметалловой цельнокерамической Е-мах (стандартная эстетика)', N'15 000', N'14')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.006.004', N'142', N'Протезирование зуба с использованием имплантата коронкой постоянной безметалловой цельнокерамической Е-мах (индивидуальная эстетика) с цементной фиксацией на титановом абатменте', N'21 000', N'14')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.006.005', N'143', N'Протезирование зуба с использованием имплантата коронкой постоянной безметалловой цельнокерамической Е-мах с цементной фиксацией (индивидуальная эстетика) на циркониевом абатменте', N'29 000', N'14')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.006.007', N'145', N'Протезирование зуба с использованием имплантата индивидуальным циркониевым абатментом, индивидуальным титановым абатментом (без стоимости коронки) Osstem, Dentium (Ю.Корея), Mis (Израиль)', N'12 000', N'14')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.006.008', N'146', N'Протезирование зуба с использованием имплантата стандартным титановым абатментом (без стоимости коронки) Osstem, Dentium (Ю.Корея), Mis (Израиль)', N'8 000', N'14')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.006.009', N'147', N'Протезирование зуба с использованием имплантата временной коронкой с винтовой или цементной фиксацией (1 ед.)', N'5 000', N'14')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.009.001', N'256', N'Пульпотомия (ампутация коронковой пульпы) временного зуба с наложением лекарственного вещества', N'2 000', N'21')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.010', N'255', N'Экстирпация пульпы', N'1 200', N'21')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.019', N'091', N'Временное шинирование при заболеваниях пародонта (1 единица)', N'1 200', N'9')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.023.005', N'154', N'Протезирование зубов полными съемными пластиночными протезами (1 челюсть) с опорой на имплантаты на фрезерованной балке', N'60 000', N'15')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.025', N'159', N'Избирательное пришлифовывание твердых тканей зубов (1 ед.)', N'300', N'16')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.025.001', N'063', N'Избирательное полирование зуба ', N'800', N'7')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.028.004', N'315', N'Ортодонтическая коррекция с применением брекет-системы частичной', N'16 000', N'22')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.033', N'121', N'Восстановление зуба коронкой с использованием цельнолитой культевой вкладки', N'3 000', N'12')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.033.001', N'122', N'Восстановление зуба коронкой с использованием цельнолитой культевой вкладки, облицованной керамикой Е-мах', N'5 000', N'12')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.035.001', N'125', N'Протезирование частичными съемными пластиночными протезами (1 челюсть): не более 6 искусственных зубов в протезе', N'17 000', N'13')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.035.003', N'127', N'Протезирование зубов частичными съемными пластиночными протезами (1 челюсть): более 6 искусственных зубов в протезе', N'24 000', N'13')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.036.001', N'129', N'Протезирование съемными бюгельными протезами с кламмерной фиксацией (1 челюсть): 2 опорно-удерживающих кламмера', N'39 000', N'13')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.036.002', N'130', N'Протезирование съемным бюгельным протезом: дуга протеза', N'15 000', N'13')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.036.006', N'134', N'Протезирование съемными бюгельными протезами с замковой фиксацией: фрикционный штифт, СЕКА, рельсовые (1 ед.)', N'5 000', N'13')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.036.008', N'136', N'Протезирование съемными бюгельными протезами с телескопической фиксацией (1 ед.без облицовки)', N'11 000', N'13')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.037', N'138', N'Постоянное шинирование цельнолитыми съемными конструкциями при заболеваниях пародонта (шинирующий бюгель на 1 челюсть)', N'28 000', N'13')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.046.001', N'297', N'Ортодонтическая коррекция несъемным ортодонтическим аппаратом: ретейнер (на одну челюсть)', N'7 000', N'22')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.046.002', N'298', N'Ортодонтическая коррекция несъемным ортодонтическим аппаратом кольцо с распоркой  (на одну челюсть)', N'9 500', N'22')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.047.001', N'301', N'Ортодонтическая коррекция съемным ортодонтическим аппаратом одночелюстным', N'15 000', N'22')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.048.001', N'306', N'Ортодонтическая коррекция с применением брекет-системы металлической ( система Roth ,Orthos)', N'22 000', N'22')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.048.003', N'308', N'Ортодонтическая коррекция с применением брекет-системы Inspire ICE (эстетические брекеты)', N'39 000', N'22')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.048.004', N'309', N'Ортодонтическая коррекция с применением брекет-системы   Damon Q (самолигирующие брекеты)', N'32 000', N'22')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.048.005', N'310', N'Ортодонтическая коррекция с применением брекет-системы Damon Clear (самолигирующие брекеты)', N'40 000', N'22')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.049.001', N'160', N'Фиксация на постоянный цемент несъемных ортопедических конструкций (1 ед.)', N'900', N'16')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.049.002', N'161', N'Фиксация на постоянный цемент несъемных ортопедических конструкций с опорой на имплантаты (1 ед.)', N'900', N'16')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.049.003', N'162', N'Фиксация на временный цемент несъемных ортопедических конструкций (1 ед.)', N'500', N'16')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.050.001', N'041', N'Профессиональное отбеливание зубов клиническое  за один визит (2 челюсти в линии улыбки) аппаратом DOCTOR SMILE', N'19 000', N'6')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.050.002', N'042', N'Профессиональное отбеливание зубов каповое домашнее 2 челюсти (включает стоимость изготовления кап и стандартный набор отбеливающего геля)', N'13 000', N'6')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.050.003', N'043', N'Профессиональное отбеливание зубов каповое домашнее 1 челюсть (включает стоимость изготовления капы и стандартный набор отбеливающего геля)', N'8 500', N'6')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.050.006', N'046', N'Профессиональное отбеливание зубов внутрикоронковое для невитальных измененных в цвете зубов (1 зуб)', N'1 200', N'6')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.050.007', N'047', N'Профессиональное отбеливание зубов направленное клиническое (1 зуб)', N'1 100', N'6')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.050.009', N'049', N'Профессиональное отбеливание зубов клиническое препаратом Опалесценс (1 челюсть в линии улыбки)', N'8 000', N'6')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.053', N'157', N'Снятие несъемной ортопедической конструкции (1 ед.)', N'1 000', N'16')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.053.001', N'163', N'Снятие несъемной ортопедической конструкции постоянной (1 ед.)', N'1 000', N'16')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.053.002', N'164', N'Снятие несъемной ортопедической конструкции временной (1 ед.)', N'400', N'16')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.054.002', N'180', N'Внутрикостная дентальная имплантация системы MIS (Израиль) для дальнейшего зубопротезирования', N'27 000', N'18')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.054.003', N'181', N'Внутрикостная дентальная имплантация системы Оsstem (Ю.Корея) для дальнейшего зуборотезирования', N'27 000', N'18')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.054.004', N'182', N'Внутрикостная дентальная имплантация системы SuperLine (Ю.Корея) для дальнейшего зубопротезирования', N'27 000', N'18')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.054.007', N'185', N'Внутрикостная дентальная имплантация временного имплантата или мини-имплантата ', N'10 000', N'18')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.054.008', N'186', N'Внутрикостная дентальная имплантация ортодонтического имплантата ', N'8 000', N'18')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.056.001', N'155', N'Восстановление целостности зубного ряда несъемным консольным протезом из акрила с винтовой фиксацией (1 ед.)', N'3 500', N'15')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.056.002', N'156', N'Восстановление целостности зубного ряда несъемным консольным протезом из диоксида циркония  с винтовой фиксацией (1ед.)', N'12 000', N'15')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.082.004', N'109', N'Сошлифовывание твердых тканей зуба для последующего восстановления вкладкой, накладкой, полукоронкой, коронкой, виниром', N'1 200', N'12')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.091', N'089', N'Снятие временной пломбы ', N'150', N'8')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.092', N'065', N'Трепанация зуба, искусственной коронки ', N'700', N'7')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.092.001', N'066', N'Фиксация скайса', N'1 500', N'7')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.093', N'087', N'Фиксация внутриканального штифта/вкладки ', N'1 400', N'8')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A16.07.094', N'088', N'Удаление внутриканального штифта/вкладки ', N'1 200', N'8')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'A25.07.001', N'029', N'Назначение лекарственных препаратов при заболеваниях полости рта и зубов', N'200', N'4')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'B01.003.004.002', N'026', N'Проводниковая анестезия', N'500', N'4')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'B01.003.004.004', N'027', N'Аппликационная анестезия', N'150', N'4')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'B01.003.004.005', N'028', N'Инфильтрационная анестезия', N'500', N'4')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'B01.063.001', N'001', N'Прием (осмотр, консультация) врача-ортодонта первичный', N'500', N'1')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'B01.063.002', N'002', N'Прием (комплексное обследование: анализ и расчет ОПТГ, ТРГ, КДМ, цифровые фото, планирование лечения) врача-ортодонта повторный', N'3 500', N'1')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'B01.066.002', N'006', N'Прием (осмотр, консультация) врача-стоматолога-ортопеда первичный', N'500', N'1')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'B01.067.002', N'008', N'Прием (осмотр, консультация) врача-стоматолога-хирурга повторный', N'300', N'1')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А.16.07.050.005', N'045', N'Профессиональное отбеливание зубов каповое домашнее (дополнительный набор отбеливающего геля малый)', N'5 000', N'6')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А02.07.001.001', N'021', N'Омотр полости рта с помощью дополнительных инструментов: микроскоп', N'1 000', N'3')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А02.07.005', N'022', N'Термодиагностика зуба', N'120', N'3')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А02.07.006.001', N'023', N'Определение вида смыкания зубных рядов с помощью лицевой дуги', N'400', N'3')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А02.07.010', N'024', N'Исследование на диагностических моделях челюстей', N'800', N'3')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А02.07.010.001', N'101', N'Снятие оттиска с одной челюсти альгинатной массой', N'400', N'11')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А02.07.010.002', N'102', N'Снятие оттиска с одной челюсти массой из С-силикона', N'750', N'11')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А02.07.010.003', N'103', N'Снятие оттиска с одной челюсти массой из А-силикона', N'1 350', N'11')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А02.07.010.004', N'104', N'Снятие оттиска с одной челюсти массой из поливинилсилоксана', N'1 450', N'11')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А02.07.010.005', N'105', N'Снятие оттиска с одной челюсти с использованием индивидуальной ложки', N'800', N'11')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А02.07.010.006', N'106', N'Снятие оттиска с одной челюсти для изготовления силиконового ключа', N'700', N'11')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А06.03.059', N'016', N'Телерентгенография черепа в боковой проекции', N'600', N'2')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А06.07.003', N'009', N'Прицельная внутриротовая контактная рентгенография', N'300', N'2')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А06.07.004', N'010', N'Ортопантомография', N'500', N'2')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А06.07.004.002', N'011', N'Ортопантомография повторная', N'300', N'2')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А06.07.006', N'012', N'Телерентгенография челюстей', N'700', N'2')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А06.07.013', N'013', N'Компьютерная томография челюстно-лицевой области', N'2 500', N'2')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А06.07.013.001', N'014', N'Компьютерная томография челюстно-лицевой области повторная (после лечебных манипуляций)', N'800', N'2')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А06.07.013.002', N'015', N'Компьютерная томография челюстно-лицевой области для постоянных пациентов ', N'1 900', N'2')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А11.07.010.001', N'092', N'Введение лекарственных препаратов в пародонтальный карман (в области 1-2 зубов)', N'400', N'10')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А11.07.010.002', N'093', N'Введение лекарственных препаратов в пародонтальный карман (в области 6 зубов)', N'700', N'10')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А11.07.012', N'003', N'Глубокое фторирование эмали зуба', N'100', N'5')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А11.07.012.001', N'263', N'Глубокое фторирование эмали зуба у детей', N'100', N'20')
GO
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А11.07.022', N'001', N'Аппликация лекарственного препарата на слизистую оболочку полости рта', N'250', N'5')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А11.07.022.001', N'260', N'Аппликация лекарственного препарата на слизистую оболочку полости рта у детей', N'250', N'20')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А11.07.023', N'261', N'Применение метода серебрения зуба', N'600', N'20')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А11.07.024', N'002', N'Местное применение реминерализующих препаратов в области зуба', N'40', N'5')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А11.07.024.001', N'262', N'Местное применение реминерализующих препаратов в области зуба у детей', N'40', N'20')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А11.07.026', N'014', N'Взятие образца биологического материала из очагов поражения органов рта', N'1 500', N'3')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А11.07.027', N'067', N'Наложение девитализирующей пасты', N'350', N'8')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А11.07.027.001', N'254', N'Наложение девитализирующей пасты у детей', N'300', N'21')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А12.07.001', N'259', N'Витальное окрашивание твердых тканей зуба', N'200', N'20')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А12.07.003', N'019', N'Определение индексов гигиены полости рта', N'400', N'3')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А12.07.004', N'020', N'Определение пародонтальных индексов', N'300', N'3')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А14.07.008', N'033', N'Обучение гигиене полости рта и зубов индивидуальное, подбор средств и предметов гигиены полости рта', N'300', N'5')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А14.07.008.001', N'264', N'Обучение гигиене полости рта и зубов индивидуальное, подбор средств и предметов гигиены полости рта у детей', N'300', N'20')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А15.07.002', N'165', N'Наложение повязки при операциях в полости рта', N'300', N'17')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А15.07.003', N'099', N'Наложение лечебной повязки при заболеваниях слизистой оболочки полости рта и пародонта в области одной челюсти', N'600', N'10')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А15.07.003.001', N'100', N'Наложение лечебной повязки при заболеваниях слизистой оболочки полости рта и пародонта в области одного зуба при обработке пародонтального кармана диодным лазером', N'450', N'10')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.001.001', N'166', N'Удаление временного зуба', N'1 100', N'17')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.001.002', N'167', N'Удаление постоянного зуба', N'1 500', N'17')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.001.003', N'168', N'Удаление зуба сложное с разъединением корней', N'3 000', N'17')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.001.004', N'169', N'Удаление зуба сложное с консервацией лунки', N'7 500', N'17')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.001.005', N'170', N'Удаление подвижной стенки постоянного зуба', N'500', N'17')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.002', N'050', N'Восстановление зуба пломбой', N'1 800', N'7')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.002.005', N'051', N'Восстановление зуба пломбой IV класс по Блэку с использованием стеклоиномерных цементов', N'1 100', N'7')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.002.009', N'052', N'Наложение временной пломбы', N'200', N'7')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.002.010', N'053', N'Восстановление зуба пломбой I, V, VI класс по Блэку с использованием материалов из фотополимеров', N'3 100', N'7')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.002.011', N'054', N'Восстановление зуба пломбой с нарушением контактного пункта II, III класс по Блэку с использованием материалов из фотополимеров', N'3 400', N'7')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.002.012', N'055', N'Восстановление зуба пломбой IV класс по Блэку с использованием материалов из фотополимеров', N'3 600', N'7')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.002.013', N'056', N'Восстановление стенок зуба фотополимерной пломбой перед эндодонтическим лечением', N'1 400', N'7')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.002.014', N'057', N'Восстановление зуба по технологии ICON', N'1 800', N'7')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.002.015', N'058', N'Восстановление зуба с использованием изолирующей прокладки', N'180', N'7')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.002.016', N'059', N'Восстановление зуба с использованием лечебной прокладки (прямое или непрямое покрытие пульпы зуба)', N'290', N'7')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.002.017', N'060', N'Восстановление зуба пломбой с использованием системы изоляции коффердам', N'350', N'7')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.002.018', N'061', N'Восстановление зуба пломбой с использованием системы изоляции оптрагейт', N'200', N'7')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.002.019', N'272', N'Восстановление зуба временного пломбой IV класс по Блэку с использованием стеклоиномерных цементов у детей', N'1 600', N'20')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.002.020', N'273', N'Восстановление зуба временного  пломбой I, V, VI класс по Блэку с использованием материалов из фотополимеров у детей', N'1 900', N'20')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.002.021', N'274', N'Восстановление зуба временного  пломбой с нарушением контактного пункта II, III класс по Блэку с использованием материалов из фотополимеров у детей', N'2 000', N'20')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.002.022', N'275', N'Восстановление зуба временного  пломбой IV класс по Блэку с использованием материалов из фотополимеров у детей', N'2 200', N'20')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.002.023', N'276', N'Восстановление зуба постоянного пломбой I,V,VI класс по Блэку с использованием материалов из фотополимеров у детей', N'2 700', N'20')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.002.024', N'277', N'Восстановление зуба постоянного пломбой II,III класс по Блэку с использованием материалов из фотополимеров у детей', N'2 900', N'20')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.002.025', N'278', N'Восстановление зуба постоянного  пломбой IV класс по Блэку с использованием материалов из фотополимеров у детей', N'3 100', N'20')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.002.026', N'279', N'Наложение временной пломбы у детей', N'300', N'20')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.003.002', N'119', N'Восстановление зуба временным виниром', N'1 700', N'12')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.003.003', N'120', N'Восстановление зуба виниром, полукоронкой, коронкой в области эстетически-значимой зоны из материала  Е-мах, диоксида циркония', N'20 000', N'12')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.004.007', N'116', N'Восстановление зуба коронкой цельнолитой', N'6 000', N'12')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.004.008', N'117', N'Восстановление зуба долговременной пластмассовой композитной коронкой', N'6 500', N'12')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.006.006', N'144', N'Протезирование зуба с использованием имплантата коронкой металлокерамической ', N'17 000', N'14')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.006.010', N'148', N'Протезирование зуба с использованием имплантата временным абатментом Osstem, Dentium (Ю.Корея),  Mis (Израиль) ( без стоимости коронки)', N'4 600', N'14')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.006.011', N'149', N'Протезирование зуба с использованием имплантата временным абатментом ( со стоимостью коронки) Straumann (Швейцария), Astra Tech, Nobel (Швеция)', N'16 000', N'14')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.006.012', N'150', N'Протезирование зуба с использованием имплантата индивидуальным титановым, циркониевым абатментом  (без стоимости коронки) Straumann (Швейцария), Astra Tech, Nobel (Швеция)', N'30 000', N'14')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.006.013', N'151', N'Протезирование зуба с использованием имплантата стандартным абатментом ( без стоимости коронки) Straumann (Швейцария), Astra Tech,  Nobel (Швеция)', N'20 000', N'14')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.007', N'171', N'Резекция верхушки корня с ретроградным пломбированием корневого канала', N'10 000', N'17')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.008.001', N'082', N'Пломбирование корневого канала зуба пастой', N'800', N'8')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.008.002', N'083', N'Пломбирование корневого канала зуба гуттаперчевыми штифтами', N'1 400', N'8')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.008.003', N'084', N'Закрытие перфорации стенки корневого канала зуба', N'900', N'8')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.008.004', N'085', N'Пломбирование корневого канала зуба вертикальным методом', N'1 550', N'8')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.008.005', N'265', N'Пломбирование корневого канала зуба гуттаперчей гибридным методом у детей ', N'1 300', N'21')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.008.006', N'266', N'Пломбирование корневого канала зуба гуттаперчей вертикальной конденсацией у детей', N'1 400', N'21')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.008.007', N'267', N'Закрытие перфорации стенки корневого канала зуба у детей', N'900', N'21')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.008.008', N'294', N'Пломбирование корневого канала зуба пастой у детей', N'400', N'21')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.009.002', N'257', N'Пульпотомия (ампутация коронковой пульпы): лечение пульпита временного зуба методом витальной ампутации', N'1 800', N'21')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.009.003', N'258', N'Пульпотомия (ампутация коронковой пульпы): лечение пульпита временного зуба методом девитальной ампутации', N'1 300', N'21')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.011', N'172', N'Вскрытие подслизистого или поднадкостничного очага воспаления в полости рта', N'1 100', N'17')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.012', N'173', N'Вскрытие и дренирование одонтогенного абсцесса', N'1 100', N'17')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.013', N'174', N'Отсроченный кюретаж лунки удаленного зуба', N'600', N'17')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.016', N'175', N'Цистотомия или цистэктомия', N'4 500', N'17')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.017', N'176', N'Пластика альвеолярного отростка', N'10 000', N'17')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.020.001', N'098', N'Удаление наддесневых и поддесневых зубных отложений в области зуба ручным методом (КЮРЕТАЖ)', N'350', N'10')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.023', N'128', N'Протезирование зубов полными съемными пластиночными протезами', N'27 000', N'13')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.023.002', N'152', N'Протезирование зубов полными съемными пластиночными протезами (1 челюсть) с опорой на имплантаты: фиксатор системы локатор', N'15 000', N'15')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.023.004', N'153', N'Протезирование зубов полными съемными пластиночными протезами (1 челюсть) с опорой на имплантаты: шаровидный абатмент', N'15 000', N'15')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.024.001', N'177', N'Операция удаления ретинированного, дистопированного или сверхкомплектного зуба (простая)', N'4 600', N'17')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.024.002', N'178', N'Операция удаления ретинированного, дистопированного или сверхкомплектного зуба (сложная)', N'8 000', N'17')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.026', N'179', N'Гингивэктомия', N'1 900', N'17')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.026.001', N'180', N'Гингивэктомия лазером в области одного зуба', N'1 900', N'17')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.028.001', N'312', N'Ортодонтическая коррекция :активация брекет-системы (одна челюсть)', N'2 000', N'22')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.028.002', N'313', N'Ортодонтическая коррекция :повторная фиксация элемента брекет-системы ', N'1 500', N'22')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.028.003', N'314', N'Ортодонтическая коррекция :повторная фиксация элемента брекет-системы: накусочный брекет', N'1 300', N'22')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.028.005', N'316', N'Ортодонтическая коррекция с установкой лингвальной кнопки ', N'760', N'22')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.028.006', N'317', N'Ортодонтическая коррекция с установкой кольца', N'1 150', N'22')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.028.007', N'318', N'Ортодонтическая коррекция с использованием дуги NiTi Damon', N'750', N'22')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.028.008', N'319', N'Ортодонтическая коррекция прикуса с использованием межчелюстной тяги', N'300', N'22')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.028.009', N'320', N'Ортодонтическая коррекция с фиксацией пружины ', N'360', N'22')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.028.010', N'321', N'Ортодонтическая коррекция с фиксацией искусственного зуба на дугу', N'3 400', N'22')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.030', N'073', N'Инструментальная и медикаментозная обработка корневого канала', N'750', N'8')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.030.001', N'074', N'Инструментальная и медикаментозная обработка хорошо проходимого корневого канала', N'1 520', N'8')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.030.002', N'075', N'Инструментальная и медикаментозная обработка плохо проходимого корневого канала', N'1 700', N'8')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.030.003', N'076', N'Временное пломбирование лекарственным препаратом корневого канала', N'600', N'8')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.030.004', N'077', N'Инструментальная и медикаментозная обработка  корневого канала SAF-системой первично', N'1 500', N'8')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.030.005', N'078', N'Инструментальная и медикаментозная обработка корневого канала SAF-системой повторно', N'800', N'8')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.030.006', N'079', N'Инструментальная и медикаментозная обработка корневого канала с использованием диодного лазера ', N'600', N'8')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.030.007', N'080', N'Инструментальная и медикаментозная обработка корневого канала с использованием системы изоляции коффердам', N'350', N'8')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.030.008', N'081', N'Инструментальная и медикаментозная обработка корневого канала с использованием системы изоляции оптрагейт', N'200', N'8')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.030.009', N'086', N'Инструментальная и медикаментозная обработка корневого канала под микроскопом', N'1 200', N'8')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.030.010', N'262', N'Инструментальная и медикаментозная обработка корневого канала у детей', N'500', N'21')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.030.011', N'263', N'Инструментальная и медикаментозная обработка хорошо проходимого корневого канала у детей', N'1 520', N'21')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.030.012', N'264', N'Инструментальная и медикаментозная обработка плохо проходимого корневого канала у детей', N'1 700', N'21')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.030.013', N'295', N'Временное пломбирование лекарственным препаратом корневого канала зуба у детей', N'600', N'21')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.031', N'064', N'Восстановление зуба пломбировочными материалами с использованием  штифтов', N'4 000', N'7')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.035.002', N'126', N'Протезирование частичными съемными пластиночными протезами (косметический протез до 3х искусственных зубов)', N'7 000', N'13')
INSERT [dbo].[Service] ([Cod_service], [Number_pp], [Perechen_service], [Price], [Category]) VALUES (N'А16.07.036.003', N'131', N'Протезирование съемным бюгельным протезом: базис ', N'7 000', N'13')
GO
INSERT [dbo].[Users] ([guid_users], [FIO], [Login], [Password], [Роль]) VALUES (N'0456aa15-f34c-4134-9136-300fc46e95fc', N'Абрамова Ульяна Максимовна', N'AbramovaUM', N'2d42e60e6f60b91da8bb5d3b26c5ad2f1d7fd784', 3)
INSERT [dbo].[Users] ([guid_users], [FIO], [Login], [Password], [Роль]) VALUES (N'1fe02c73-a37e-4f89-af0a-283544cb68f1', N'Любимов Владислав Матвеевич', N'LyubimovVM', N'4747b2f997fa8b9070045206082a9133a3a54f97', 3)
INSERT [dbo].[Users] ([guid_users], [FIO], [Login], [Password], [Роль]) VALUES (N'60d2bdbb-3861-45ee-9db1-e13a3db93ca0', N'Калинин Александр Макарович', N'AnisimovTT', N'a26ab5e235b58d94a186fb376d7cc3a6d4501613', 2)
INSERT [dbo].[Users] ([guid_users], [FIO], [Login], [Password], [Роль]) VALUES (N'6dad4229-2818-422f-bdec-5d5ff797fc4d', N'Архипов Данила Степанович', N'ArkhipovDS', N'237c8d8166393f3f1fd2177f7bc177d9d7502482', 3)
INSERT [dbo].[Users] ([guid_users], [FIO], [Login], [Password], [Роль]) VALUES (N'761477c0-2967-4ed1-ad30-a0efb19c8aec', N'Анисимов Тимофей Тимурович', N'GromovAS', N'c20b0ea538bac8e128dc40352056468b0fbf43f3', 2)
INSERT [dbo].[Users] ([guid_users], [FIO], [Login], [Password], [Роль]) VALUES (N'7d301862-c5e8-4e1d-b8b9-846e08434ccc', N'Демин Евгений Русланович', N'DeminER', N'22c530ef24ba66707056765f249b91fb45efd1a8', 3)
INSERT [dbo].[Users] ([guid_users], [FIO], [Login], [Password], [Роль]) VALUES (N'b9ef4fae-4df3-4cc3-8dbb-dd14d1cc20d9', N'Овчинникова Виктория Фёдоровна', N'OvchinnikovaVF', N'04de611f8e230ec2403571f452c8558e02e0f7ee', 1)
INSERT [dbo].[Users] ([guid_users], [FIO], [Login], [Password], [Роль]) VALUES (N'ca431d6e-30fa-47de-9ecf-d431644c0344', N'Громов Алексей Семёнович', N'KalininAM', N'ce373fbab1ce40459905e77bf439b439c1b33850', 2)
INSERT [dbo].[Users] ([guid_users], [FIO], [Login], [Password], [Роль]) VALUES (N'f29c9802-0dd4-4141-b977-cfbffa8508fe', N'Егоров Никита Ильич', N'EgorovNI', N'e6d6bbaf21ef3b0f4bc6b2d3737001b574900cbc', 3)
INSERT [dbo].[Users] ([guid_users], [FIO], [Login], [Password], [Роль]) VALUES (N'ff044a8b-ad5f-4100-b409-bb0e8b855a40', N'Зимин Леон Константинович', N'ZiminLK', N'5b629e605dbad6ee7849e033adf47f874baf65c4', 3)
GO
INSERT [dbo].[ZapisNaPriem] ([guid_registratora], [DATPrim], [Comments], [Client], [Employee], [Service]) VALUES (N'1', CAST(N'2022-03-02T09:28:00.000' AS DateTime), N'', N'9e285ec9-7748-49ad-a7e1-6de169ea6c1d', N'f29c9802-0dd4-4141-b977-cfbffa8508fe', N'A05.07.001')
INSERT [dbo].[ZapisNaPriem] ([guid_registratora], [DATPrim], [Comments], [Client], [Employee], [Service]) VALUES (N'10', CAST(N'2022-03-09T14:56:00.000' AS DateTime), N'Аппликация лекарственного препарата(ребенок)', N'c37cba28-f684-46b3-8585-e69d82de9155', N'ff044a8b-ad5f-4100-b409-bb0e8b855a40', N'А11.07.022')
INSERT [dbo].[ZapisNaPriem] ([guid_registratora], [DATPrim], [Comments], [Client], [Employee], [Service]) VALUES (N'16', CAST(N'2022-03-18T10:04:00.000' AS DateTime), N'Компьютерная томография челюстно-лицевой области', N'83fc564e-4bc9-491f-a396-709a1f3e1777', N'6dad4229-2818-422f-bdec-5d5ff797fc4d', N'А06.07.013.001')
INSERT [dbo].[ZapisNaPriem] ([guid_registratora], [DATPrim], [Comments], [Client], [Employee], [Service]) VALUES (N'17', CAST(N'2022-03-18T12:03:00.000' AS DateTime), N'', N'136002ff-bb26-48e4-aff1-7c870c73ab8e', N'6dad4229-2818-422f-bdec-5d5ff797fc4d', N'А11.07.026')
INSERT [dbo].[ZapisNaPriem] ([guid_registratora], [DATPrim], [Comments], [Client], [Employee], [Service]) VALUES (N'2', CAST(N'2022-03-02T11:07:00.000' AS DateTime), N'', N'8f5abaed-b728-429b-95f9-566aa09c0514', N'f29c9802-0dd4-4141-b977-cfbffa8508fe', N'А11.07.026')
INSERT [dbo].[ZapisNaPriem] ([guid_registratora], [DATPrim], [Comments], [Client], [Employee], [Service]) VALUES (N'23', CAST(N'2022-03-24T15:19:00.000' AS DateTime), N'Аппликация лекарственного препарата(ребенок)', N'3b2a6feb-ab99-41f2-a01e-17a3d9c5b034', N'0456aa15-f34c-4134-9136-300fc46e95fc', N'А11.07.022')
INSERT [dbo].[ZapisNaPriem] ([guid_registratora], [DATPrim], [Comments], [Client], [Employee], [Service]) VALUES (N'24', CAST(N'2022-03-24T17:28:00.000' AS DateTime), N'', N'bec5d31d-ffac-47fb-aa7f-b364e17baa84', N'0456aa15-f34c-4134-9136-300fc46e95fc', N'B01.067.002')
INSERT [dbo].[ZapisNaPriem] ([guid_registratora], [DATPrim], [Comments], [Client], [Employee], [Service]) VALUES (N'25', CAST(N'2022-03-28T07:29:00.000' AS DateTime), N'', N'b0cfe5a7-bbe1-4ef5-9445-e5396a19d839', N'0456aa15-f34c-4134-9136-300fc46e95fc', N'А06.07.004.002')
INSERT [dbo].[ZapisNaPriem] ([guid_registratora], [DATPrim], [Comments], [Client], [Employee], [Service]) VALUES (N'26', CAST(N'2022-03-28T12:44:00.000' AS DateTime), N'', N'3fd09a9f-01e3-4ef5-888b-f2b1ae959d1a', N'0456aa15-f34c-4134-9136-300fc46e95fc', N'А02.07.001.001')
INSERT [dbo].[ZapisNaPriem] ([guid_registratora], [DATPrim], [Comments], [Client], [Employee], [Service]) VALUES (N'27', CAST(N'2022-03-29T07:50:00.000' AS DateTime), N'', N'fc5b08c9-c45a-474e-a00d-343208b4ab3b', N'0456aa15-f34c-4134-9136-300fc46e95fc', N'А06.07.004.002')
INSERT [dbo].[ZapisNaPriem] ([guid_registratora], [DATPrim], [Comments], [Client], [Employee], [Service]) VALUES (N'28', CAST(N'2022-03-29T14:33:00.000' AS DateTime), N'Аппликация лекарственного препарата(ребенок)', N'7e7633e1-f861-497a-b35c-f9a7631a498c', N'0456aa15-f34c-4134-9136-300fc46e95fc', N'А11.07.022')
INSERT [dbo].[ZapisNaPriem] ([guid_registratora], [DATPrim], [Comments], [Client], [Employee], [Service]) VALUES (N'29', CAST(N'2022-03-30T08:54:00.000' AS DateTime), N'', N'faed00cf-529c-42f5-9ce0-daaf01d1291e', N'1fe02c73-a37e-4f89-af0a-283544cb68f1', N'B01.067.002')
INSERT [dbo].[ZapisNaPriem] ([guid_registratora], [DATPrim], [Comments], [Client], [Employee], [Service]) VALUES (N'3', CAST(N'2022-03-03T12:13:00.000' AS DateTime), N'', N'c6e9ea1f-0b5d-4435-a802-582bfc3cccb6', N'f29c9802-0dd4-4141-b977-cfbffa8508fe', N'А06.07.003')
INSERT [dbo].[ZapisNaPriem] ([guid_registratora], [DATPrim], [Comments], [Client], [Employee], [Service]) VALUES (N'30', CAST(N'2022-03-30T15:12:00.000' AS DateTime), N'Аппликация лекарственного препарата(ребенок)', N'8d27ec35-80d2-4eed-be53-f56989301173', N'1fe02c73-a37e-4f89-af0a-283544cb68f1', N'А11.07.022')
INSERT [dbo].[ZapisNaPriem] ([guid_registratora], [DATPrim], [Comments], [Client], [Employee], [Service]) VALUES (N'32', CAST(N'2022-03-31T16:39:00.000' AS DateTime), N'Компьютерная томография челюстно-лицевой области', N'bece4d8e-b57f-4386-9fa0-c261fd521d41', N'1fe02c73-a37e-4f89-af0a-283544cb68f1', N'А06.07.013.001')
INSERT [dbo].[ZapisNaPriem] ([guid_registratora], [DATPrim], [Comments], [Client], [Employee], [Service]) VALUES (N'34', CAST(N'2022-04-03T10:29:00.000' AS DateTime), N'', N'f3a7333e-faac-4b1c-9bc3-bb0de5a4586a', N'1fe02c73-a37e-4f89-af0a-283544cb68f1', N'B01.067.002')
INSERT [dbo].[ZapisNaPriem] ([guid_registratora], [DATPrim], [Comments], [Client], [Employee], [Service]) VALUES (N'36', CAST(N'2022-04-06T09:58:00.000' AS DateTime), N'Компьютерная томография челюстно-лицевой области', N'e5078b5c-01f2-4fd6-8986-b729b0f51ce2', N'1fe02c73-a37e-4f89-af0a-283544cb68f1', N'А06.07.013.001')
INSERT [dbo].[ZapisNaPriem] ([guid_registratora], [DATPrim], [Comments], [Client], [Employee], [Service]) VALUES (N'39', CAST(N'2022-04-08T15:48:00.000' AS DateTime), N'', N'b791de0b-fd3c-4fca-b44a-fa1a36048ea2', N'f29c9802-0dd4-4141-b977-cfbffa8508fe', N'B01.067.002')
INSERT [dbo].[ZapisNaPriem] ([guid_registratora], [DATPrim], [Comments], [Client], [Employee], [Service]) VALUES (N'40', CAST(N'2022-04-10T11:12:00.000' AS DateTime), N'Компьютерная томография челюстно-лицевой области', N'dd522566-f94d-4fca-b9c0-821623a4bf2a', N'f29c9802-0dd4-4141-b977-cfbffa8508fe', N'А06.07.013.001')
INSERT [dbo].[ZapisNaPriem] ([guid_registratora], [DATPrim], [Comments], [Client], [Employee], [Service]) VALUES (N'41', CAST(N'2022-04-11T13:45:00.000' AS DateTime), N'', N'36998fe1-d8f1-45c7-9bf3-8fcdef7d997d', N'f29c9802-0dd4-4141-b977-cfbffa8508fe', N'B01.063.002')
INSERT [dbo].[ZapisNaPriem] ([guid_registratora], [DATPrim], [Comments], [Client], [Employee], [Service]) VALUES (N'42', CAST(N'2022-04-11T14:04:00.000' AS DateTime), N'Аппликация лекарственного препарата(ребенок)', N'dfdb5b29-bf93-4da3-9739-d5e07aba0a41', N'7d301862-c5e8-4e1d-b8b9-846e08434ccc', N'А11.07.022')
INSERT [dbo].[ZapisNaPriem] ([guid_registratora], [DATPrim], [Comments], [Client], [Employee], [Service]) VALUES (N'43', CAST(N'2022-04-11T15:20:00.000' AS DateTime), N'', N'6572af84-61e3-436f-bc75-266e22c372a4', N'7d301862-c5e8-4e1d-b8b9-846e08434ccc', N'B01.063.002')
INSERT [dbo].[ZapisNaPriem] ([guid_registratora], [DATPrim], [Comments], [Client], [Employee], [Service]) VALUES (N'44', CAST(N'2022-04-11T16:15:00.000' AS DateTime), N'', N'ca71a196-ebf3-4840-9ae5-4ba7f705dc2f', N'7d301862-c5e8-4e1d-b8b9-846e08434ccc', N'А02.07.001.001')
INSERT [dbo].[ZapisNaPriem] ([guid_registratora], [DATPrim], [Comments], [Client], [Employee], [Service]) VALUES (N'46', CAST(N'2022-04-13T13:05:00.000' AS DateTime), N'', N'26749e42-0b8c-4df9-9836-1c5ec8dd2276', N'7d301862-c5e8-4e1d-b8b9-846e08434ccc', N'B01.063.002')
INSERT [dbo].[ZapisNaPriem] ([guid_registratora], [DATPrim], [Comments], [Client], [Employee], [Service]) VALUES (N'47', CAST(N'2022-04-13T14:51:00.000' AS DateTime), N'Аппликация лекарственного препарата(ребенок)', N'87cfc3a5-3423-4b15-9eed-ee04c0ba96a3', N'6dad4229-2818-422f-bdec-5d5ff797fc4d', N'А11.07.022')
INSERT [dbo].[ZapisNaPriem] ([guid_registratora], [DATPrim], [Comments], [Client], [Employee], [Service]) VALUES (N'48', CAST(N'2022-04-13T16:49:00.000' AS DateTime), N'', N'fdf47e0a-9400-4d9b-8987-8e39a37a679b', N'6dad4229-2818-422f-bdec-5d5ff797fc4d', N'B01.063.002')
INSERT [dbo].[ZapisNaPriem] ([guid_registratora], [DATPrim], [Comments], [Client], [Employee], [Service]) VALUES (N'5', CAST(N'2022-03-07T09:28:00.000' AS DateTime), N'', N'4b368f74-e599-4352-9de2-db7bdb3d53d3', N'ff044a8b-ad5f-4100-b409-bb0e8b855a40', N'А02.07.001.001')
INSERT [dbo].[ZapisNaPriem] ([guid_registratora], [DATPrim], [Comments], [Client], [Employee], [Service]) VALUES (N'50', CAST(N'2022-04-15T13:26:00.000' AS DateTime), N'', N'132cf0c8-12e1-47e3-9b27-477bc1f775c9', N'6dad4229-2818-422f-bdec-5d5ff797fc4d', N'А02.07.001.001')
INSERT [dbo].[ZapisNaPriem] ([guid_registratora], [DATPrim], [Comments], [Client], [Employee], [Service]) VALUES (N'6', CAST(N'2022-03-08T09:52:00.000' AS DateTime), N'', N'9ab2407d-b2cc-48b8-b160-7845009d6e72', N'ff044a8b-ad5f-4100-b409-bb0e8b855a40', N'А11.07.026')
INSERT [dbo].[ZapisNaPriem] ([guid_registratora], [DATPrim], [Comments], [Client], [Employee], [Service]) VALUES (N'7', CAST(N'2022-03-08T11:19:00.000' AS DateTime), N'', N'd557227f-a168-4e5a-8126-482bccd4348f', N'ff044a8b-ad5f-4100-b409-bb0e8b855a40', N'А06.03.059')
INSERT [dbo].[ZapisNaPriem] ([guid_registratora], [DATPrim], [Comments], [Client], [Employee], [Service]) VALUES (N'8', CAST(N'2022-03-09T10:14:00.000' AS DateTime), N'', N'1dad3904-85d5-44ee-ba53-e071e5e06ded', N'ff044a8b-ad5f-4100-b409-bb0e8b855a40', N'А02.07.005')
GO
ALTER TABLE [dbo].[Clients]  WITH CHECK ADD  CONSTRAINT [FK_Clients_Adres] FOREIGN KEY([Adres_proj])
REFERENCES [dbo].[Adres] ([Cod_adres])
GO
ALTER TABLE [dbo].[Clients] CHECK CONSTRAINT [FK_Clients_Adres]
GO
ALTER TABLE [dbo].[Clients]  WITH CHECK ADD  CONSTRAINT [FK_Clients_Adres1] FOREIGN KEY([Adres_propis])
REFERENCES [dbo].[Adres] ([Cod_adres])
GO
ALTER TABLE [dbo].[Clients] CHECK CONSTRAINT [FK_Clients_Adres1]
GO
ALTER TABLE [dbo].[Clients]  WITH CHECK ADD  CONSTRAINT [FK_Clients_Passport] FOREIGN KEY([Passport])
REFERENCES [dbo].[Passport] ([SANPass])
GO
ALTER TABLE [dbo].[Clients] CHECK CONSTRAINT [FK_Clients_Passport]
GO
ALTER TABLE [dbo].[Service]  WITH CHECK ADD  CONSTRAINT [FK_Service_Category] FOREIGN KEY([Category])
REFERENCES [dbo].[Category] ([Cod_category])
GO
ALTER TABLE [dbo].[Service] CHECK CONSTRAINT [FK_Service_Category]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Role] FOREIGN KEY([Роль])
REFERENCES [dbo].[Role] ([Cod_role])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Role]
GO
ALTER TABLE [dbo].[ZapisNaPriem]  WITH CHECK ADD  CONSTRAINT [FK_ZapisNaPriem_Clients] FOREIGN KEY([Client])
REFERENCES [dbo].[Clients] ([guid_clients])
GO
ALTER TABLE [dbo].[ZapisNaPriem] CHECK CONSTRAINT [FK_ZapisNaPriem_Clients]
GO
ALTER TABLE [dbo].[ZapisNaPriem]  WITH CHECK ADD  CONSTRAINT [FK_ZapisNaPriem_Service] FOREIGN KEY([Service])
REFERENCES [dbo].[Service] ([Cod_service])
GO
ALTER TABLE [dbo].[ZapisNaPriem] CHECK CONSTRAINT [FK_ZapisNaPriem_Service]
GO
ALTER TABLE [dbo].[ZapisNaPriem]  WITH CHECK ADD  CONSTRAINT [FK_ZapisNaPriem_Users] FOREIGN KEY([Employee])
REFERENCES [dbo].[Users] ([guid_users])
GO
ALTER TABLE [dbo].[ZapisNaPriem] CHECK CONSTRAINT [FK_ZapisNaPriem_Users]
GO
