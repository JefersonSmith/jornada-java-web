<h1 align="center"> Jornada | Projeto Java Web | Recode Pro 2023 </h1>

![Badge em Desenvolvimento](http://img.shields.io/static/v1?label=STATUS&message=EM%20DESENVOLVIMENTO&color=GREEN&style=for-the-badge)

# Link para acessar o projeto após iniciar o sevidor (Tutorial abaixo)
Site da Agência de viagens: http://localhost:8080/jornada/
<br>
Tela de cadastros para novos destinos: http://localhost:8080/jornada/home
<br>
(A tela de cadastros também pode ser acessada diretamente pelo navbar (Cadastro)
# Projeto

Vamos a mais uma etapa para evolução do projeto Agência de Viagens, com recursos de interface usando o padrão MVC, 
implementação do Banco de Dados usando SQL no Mysql, manipulação de JSON e implementação do banco de dados e as classes do sistema.

# Como rodar o projeto

Passo 1: Baixar o projeto do GitHub

    Acesse o repositório do projeto no GitHub.
    Clique no botão "Code" e copie o URL do repositório (https://github.com/JefersonSmith/jornada-java-web.git).
    Abra o terminal ou prompt de comando e navegue até o diretório onde você deseja baixar o projeto.
    Execute o seguinte comando para clonar o repositório:
git clone https://github.com/JefersonSmith/jornada-java-web.git


Passo 2: Configurar o Banco de Dados MySQL

    Certifique-se de ter o MySQL instalado em seu sistema.
    Crie um banco de dados vazio com um nome adequado para o seu projeto (por exemplo, jornada_java).
    Configure as informações de conexão com o banco de dados no arquivo de configuração do seu projeto (dentro da pasta "model", no arquivo Conexão.java), 
    especificando o URL, nome de usuário e senha do banco de dados.


Script do BD

CREATE DATABASE jornada_java;

USE jornada_java;

CREATE TABLE destinos ( <br>
id INTEGER PRIMARY KEY auto_increment,<br>
cidade VARCHAR(50),<br>
pais VARCHAR(50),<br>
valor DOUBLE<br>
);


Passo 3: Executar o Projeto

    Inicie seu servidor de aplicação (por exemplo, Apache Tomcat).
    Implante o seu projeto no servidor de aplicação.
    Acesse o aplicativo em um navegador da web, através da URL http://localhost:8080/jornada/
    Acesse o menu de cadastros de novos destinos na URL http://localhost:8080/jornada/home






# Obrigado!
