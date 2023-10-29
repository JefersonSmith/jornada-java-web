<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%>
	
	
	
<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro de Destinos</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Handjet&family=Inter:wght@400;700&family=Josefin+Sans:wght@400;700&family=Krona+One&family=Montserrat:wght@400;600&family=Roboto:wght@300&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
    <link rel="apple-touch-icon" sizes="180x180" href="./assets/favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="./assets/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="./assets/favicon/favicon-16x16.png">


    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
        crossorigin="anonymous"></script>

    <style>
        body {
            background-color: #f5f5f5;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        main {
            display: flex;        
            margin-top: 50px;

        }
        
        .container {
            box-shadow: 0 0 10px #ccc;
            padding: 10px;
            border: 1px solid #ccc;            
        }
    </style>


</head>

<body>
    <!-- Menu de Navegação -->
<nav class="navbar navbar-expand-md bg-black navbar-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">
            <h1 class="m-0">
                <img class="logo" src="./assets/logo branca.png" alt="Logotipo">
            </h1>
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
            data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
            aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto">
                <li class="nav-item">
                    <a class="nav-link " aria-current="page" href="/jornada/index.html">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/jornada/destinos.html">Destinos</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/jornada/promocoes.html">Promoções</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/jornada/contato.html">Contato</a>
                </li>
              	<li class="nav-item">
                    <a class="nav-link active" href="/jornada/home">Cadastro</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/jornada/login.html">
                        <i class="bi bi-person"></i> Login
                    </a>
                </li>
            </ul>
          
            <form class="d-flex" role="search">
                <input class="form-control me-2 rounded-0" type="search" placeholder="Digite o destino"
                    aria-label="Pesquisar">
                <button class="btn btn-outline-light rounded-0" type="submit">Buscar</button>
            </form>
        </div>
    </div>
</nav>
    <main>
        <div class="container">

            <h3>Cadastro de Destinos</h3>
            <form action="Inserir" method="post" class="form-control">
                <fieldset>
                    <legend>Dados do Destino</legend>

                    <p>
                        <label for="cidade">Cidade:</label> <input type="text" id="cidade" name="cidade" size="40"
                            class="form-control" required>
                    </p>

                    <p>
                        <label for="pais">País:</label> <input type="text" id="pais" name="pais" size="15"
                            class="form-control" required>
                    </p>

                    <p>
                        <label for=valor>Valor:</label> <input type="text" id="valor" name="valor" size="15"
                            class="form-control" required>
                    </p>

                    <p>
                        <input type="submit" value="Cadastrar Destino" class="btn btn-primary">
                    </p>
                </fieldset>
            </form>

            <br>
            <h5>Destinos cadastrados</h5>

            <table class="table">
                <thead>
                    <tr>
                        <th>Cidade</th>
                        <th>País</th>
                        <th>Valor</th>
                        <th>Ações</th>
                    </tr>
                </thead>
                <tbody>
                    <jstl:forEach items="${listaDestinos}" var="destino">
                        <tr>
                            <td>${destino.cidade}</td>
                            <td>${destino.pais}</td>
                            <td>${destino.valor}</td>
                            <td>
                                <a href="editar?id=${destino.id}" class="btn btn-success">Editar</a>
                                <a href="excluir?id=${destino.id}" onclick="return confirm('Deseja Excluir?')"
                                    class="btn btn-danger">Excluir</a>
                            </td>
                        </tr>
                    </jstl:forEach>

                </tbody>
            </table>
        </div>
    </main>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
        crossorigin="anonymous"></script>
    
</body>

</html>