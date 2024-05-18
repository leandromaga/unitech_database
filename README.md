# Documentação do projeto

### Programas necessário:
Para executar o código utilizado pelo etl_postgre.ipynb é preciso ter:
- Python 3
- Biblioteca pycopg
- Postgre

### Preparando o ambiente

#### Python
Para instalar o python basta acessar o site oficial através do link a seguir e baixar a versão mais recente:

[Python](https://www.python.org)

Execute o passos de instalação conforme indicado pelo instalador.
Para verificar se a instalar ocorreu corretamente execute o seguinte comando no terminal para ver a versão instalada:

```python --version```

#### Instalando a biblioteca
Ao instalar python execute no terminal o seguinte comando:

```pip intall psycopg```

#### Banco de dados
Tendo python e a biblioteca instalada vamos baixar o banco de dados postgre no site oficial:

[PostgreSQL](https://www.postgresql.org/download/)

Instale seguindo as instruções do instalador.
Lembre-se de guardar a **senha** e o **user** selecionados na instalação, para o código desse repositório é utilizado os seguintes valores:
- User: postgres
- Senha: admin

Após instalar crie um banco de dados, o utilizado nesse código é o **unitech**.
