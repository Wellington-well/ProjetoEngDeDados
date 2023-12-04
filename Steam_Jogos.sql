-- DROP SCHEMA dbo;

CREATE SCHEMA dbo;
-- Steam_DB.dbo.Editoras definition

-- Drop table

-- DROP TABLE Steam_DB.dbo.Editoras;

CREATE TABLE Steam_DB.dbo.Editoras (
	ID_Editora int NOT NULL,
	Editora varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT PK__Editoras__478AEA9F23964EF7 PRIMARY KEY (ID_Editora)
);


-- Steam_DB.dbo.Generos definition

-- Drop table

-- DROP TABLE Steam_DB.dbo.Generos;

CREATE TABLE Steam_DB.dbo.Generos (
	ID_Genero int NOT NULL,
	Genero varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT PK__Generos__52F05F3D6E9D34C7 PRIMARY KEY (ID_Genero)
);


-- Steam_DB.dbo.Idiomas definition

-- Drop table

-- DROP TABLE Steam_DB.dbo.Idiomas;

CREATE TABLE Steam_DB.dbo.Idiomas (
	ID_Idioma int NOT NULL,
	Idioma varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT PK__Idiomas__4D406AD548B67C7B PRIMARY KEY (ID_Idioma)
);


-- Steam_DB.dbo.Tags definition

-- Drop table

-- DROP TABLE Steam_DB.dbo.Tags;

CREATE TABLE Steam_DB.dbo.Tags (
	ID_Tag int NOT NULL,
	Tag varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT PK__Tags__27BDA9418AA5C599 PRIMARY KEY (ID_Tag)
);


-- Steam_DB.dbo.Jogos definition

-- Drop table

-- DROP TABLE Steam_DB.dbo.Jogos;

CREATE TABLE Steam_DB.dbo.Jogos (
	ID_Jogo int NOT NULL,
	URL varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	Nome varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	Editora varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	Tags varchar(300) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	Detalhes varchar(350) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	Idiomas varchar(350) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	Generos varchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	Descricao text COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	Preco numeric(8,2) NOT NULL,
	Desconto numeric(8,2) NULL,
	Data_de_lancamento date NOT NULL,
	Numero_de_conquistas int NULL,
	Desenvolvedora varchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	Avaliacao_geral varchar(300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Porcentagem_de_satisfacao int NULL,
	Quantidade_de_avaliacoes int NULL,
	ID_Editora int NULL,
	ID_Genero int NULL,
	CONSTRAINT PK__Jogos__0885A6FF512C8C23 PRIMARY KEY (ID_Jogo),
	CONSTRAINT FK__Jogos__ID_Editor__3F466844 FOREIGN KEY (ID_Editora) REFERENCES Steam_DB.dbo.Editoras(ID_Editora),
	CONSTRAINT FK__Jogos__ID_Genero__403A8C7D FOREIGN KEY (ID_Genero) REFERENCES Steam_DB.dbo.Generos(ID_Genero)
);


-- Steam_DB.dbo.Jogos_Idiomas definition

-- Drop table

-- DROP TABLE Steam_DB.dbo.Jogos_Idiomas;

CREATE TABLE Steam_DB.dbo.Jogos_Idiomas (
	ID_Jogo int NOT NULL,
	ID_Idioma int NOT NULL,
	CONSTRAINT PK__Jogos_Id__4C51A052FC20A07D PRIMARY KEY (ID_Jogo,ID_Idioma),
	CONSTRAINT FK__Jogos_Idi__ID_Id__440B1D61 FOREIGN KEY (ID_Idioma) REFERENCES Steam_DB.dbo.Idiomas(ID_Idioma),
	CONSTRAINT FK__Jogos_Idi__ID_Jo__4316F928 FOREIGN KEY (ID_Jogo) REFERENCES Steam_DB.dbo.Jogos(ID_Jogo)
);


-- Steam_DB.dbo.Jogos_Tags definition

-- Drop table

-- DROP TABLE Steam_DB.dbo.Jogos_Tags;

CREATE TABLE Steam_DB.dbo.Jogos_Tags (
	ID_Jogo int NOT NULL,
	ID_Tag int NOT NULL,
	CONSTRAINT PK__Jogos_Ta__0AFE7C6BDBAD434F PRIMARY KEY (ID_Jogo,ID_Tag),
	CONSTRAINT FK__Jogos_Tag__ID_Jo__46E78A0C FOREIGN KEY (ID_Jogo) REFERENCES Steam_DB.dbo.Jogos(ID_Jogo),
	CONSTRAINT FK__Jogos_Tag__ID_Ta__47DBAE45 FOREIGN KEY (ID_Tag) REFERENCES Steam_DB.dbo.Tags(ID_Tag)
);