﻿CREATE TABLE [dbo].[Table]
(
	[Id] INT NOT NULL  ,
	[UserName] VARCHAR(50) NOT NULL UNIQUE,
	[Password] VARCHAR(100) NOT NULL, 
    PRIMARY KEY CLUSTERED ([Id]),

)
