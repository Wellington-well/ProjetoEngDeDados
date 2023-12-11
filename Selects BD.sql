SELECT ID_Editora, Editora
FROM Steam_DB.dbo.Editoras;

SELECT ID_Genero, Genero
FROM Steam_DB.dbo.Generos;

SELECT ID_Idioma, Idioma
FROM Steam_DB.dbo.Idiomas;

SELECT ID_Jogo, URL, Nome, Editora, Tags, Detalhes, Idiomas, Generos, Descricao, Preco, Desconto, Data_de_lancamento, Numero_de_conquistas, Desenvolvedora, Avaliacao_geral, Porcentagem_de_satisfacao, Quantidade_de_avaliacoes, ID_Editora, ID_Genero
FROM Steam_DB.dbo.Jogos;

SELECT ID_Jogo, ID_Idioma
FROM Steam_DB.dbo.Jogos_Idiomas;

SELECT ID_Jogo, ID_Tag
FROM Steam_DB.dbo.Jogos_Tags;

SELECT ID_Tag, Tag
FROM Steam_DB.dbo.Tags;