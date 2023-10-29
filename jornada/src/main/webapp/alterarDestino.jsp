<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>Alteração do destino ${destino.cidade}</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
        crossorigin="anonymous"></script>

    <style>
        body {
            background-color: #f5f5f5;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        main {
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
    <main>
        <div class="container">
            <h1 class="m-0">
                <img class="logo" src="./assets/logo branca.png" alt="Logotipo">
            </h1>
            <h5>Alteração do destino ${destino.cidade}</h5>
            <form action="editar" method="post" class="form-control">

                <input type="hidden" name="id" value="${destino.id}">
                <p>Cidade:</p>
                <p>
                    <input type="text" name="cidade" value="${destino.cidade}">
                </p>
                <input type="hidden" name="id" value="${destino.id}">
                <p>País:</p>
                <p>
                    <input type="text" name="pais" value="${destino.pais}">
                </p>
                <p>Valor:</p>
                <p>
                    <input type="number" name="valor" value="${destino.valor}">
                </p>

                <button type="submit" class="btn btn-success">Atualizar</button>
            </form>
        </div>
    </main>
</body>

</html>