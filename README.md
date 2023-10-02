# ProjetoEngDeDados

Este projeto tem como objetivo extrair informações de jogos da Steam, realizar o ETL (Extração, Transformação e Carregamento) da base de dados e fornecer os dados tratados para análise. 
O fluxo de trabalho envolve o uso de Python e suas bibliotecas para coleta de dados da Steam, manipulação e preparação dos dados.

# Tecnologias Utilizadas
* Python
  * Pandas: Carregar e tratar a base de dados.
  * Numpy: Manipular e tratar a base de dados.
  * Requests, BeautifulSoup e parser: Fazer a solicitações web para fazer o web scraping.
    
# Fluxo de trabalho

1. **Extração dos Dados**:
  - Foi feito o download da base de dados do Kaggle.
  - Utilizou-se a biblioteca Pandas para ler o arquivo.
2. **Tratamento dos Dados**:
  - Usamos o Pandas para limpar e transformar as colunas.
  - Realizamos web scraping para preencher valores nulos em algumas colunas.
  - Tratamos os dados recém-chegados usando Pandas.
3. **Finalização**:
  - Utilizamos Pandas para criar um novo arquivo CSV com a base de dados tratada.
  - Enviou-se o arquivo resultante para a pessoa responsável pela análise de dados.
