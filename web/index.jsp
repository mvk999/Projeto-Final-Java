<%@include file="Menu.jsp" %>
<script>
    function enviar(par) {
        if (par == 'login') {
            if (document.cadastro.email.value == '') {
                alert("Preencha o campo email");
            } else if (document.cadastro.senha.value == '') {
                alert("Preencha o campo senha");
            } else {
                document.cadastro.action = 'LoginUsuario.jsp';
                document.cadastro.submit();
            }
        }
    }
</script>
<% String mensagem = request.getParameter("mensagem"); %>

<%@page contentType="text/html" pageEncoding="Latin1"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=Latin1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <style>
        /* Adicionei um estilo para remover a barra preta superior */
        nav {
            display: block;
        }

        /* Estilos para a imagem */
        .login-image {
            display: block;
            margin: 45px auto 10px; /* Adicionei margem inferior para ajustar o espa�amento */
            max-width: 200px;
            border-radius: 50%;
            border: none;
            vertical-align: middle; /* Centraliza verticalmente */
        }

        /* Estilos para o formul�rio */
        .formLogin {
            text-align: center;
            max-width: 850px;
            margin: 0 auto;
            padding: 20px;
        }

        /* Estilos para o par�grafo de informa��es */
        .infoText {
            font-size: 1.2rem;
            color: #000;
            text-align: center;
        }

        /* Estilos para os campos de login e senha */
        .login-input {
            font-size: 1.5rem;
            padding: 10px;
            width: 100%;
            box-sizing: border-box;
        }

        /* Estilos para os bot�es */
        .login-button {
            font-size: 1.22rem;
            padding: 10px 20px;
            margin-top: 30px; /* Espa�amento entre os bot�es */
            background-color: #4CAF50; /* Cor de fundo verde */
            color: #fff; /* Cor do texto branca */
            border: none; /* Sem borda */
            border-radius: 5px; /* Borda arredondada */
            cursor: pointer; /* Cursor de m�o ao passar o mouse */
            transition: background-color 0.3s; /* Transi��o suave para a cor de fundo */
        }

        .login-button:hover {
            background-color: #45a049; /* Cor de fundo ligeiramente mais escura ao passar o mouse */
        }
        
        
        .limpar{
            font-size: 1.22rem;
            padding: 10px 20px;
            margin-top: 30px; /* Espa�amento entre os bot�es */
            background-color: red; /* Cor de fundo verde */
            color: #fff; /* Cor do texto branca */
            border: none; /* Sem borda */
            border-radius: 5px; /* Borda arredondada */
            cursor: pointer; /* Cursor de m�o ao passar o mouse */
            transition: background-color 0.3s; /* Transi��o suave para a cor de fundo */
        }
        /* Estilos para o quadro de avisos */
.info-box {
    background-color: #f2f2f2; /* Cor de fundo cinza claro */
    border: 1px solid #ddd; /* Borda cinza clara */
    padding: 20px; /* Espa�amento interno */
    border-radius: 5px; /* Borda arredondada */
}

.info-box p {
    margin: 10px 0; /* Espa�amento entre os par�grafos */
    font-size: 1.2rem; /* Tamanho da fonte */
}
/* Estilos para o t�tulo "Informa��es" */
.info-title {
    color: #666; /* Cor de texto cinza suave */
    font-size: 1.5rem; /* Tamanho da fonte do t�tulo */
    margin-bottom: 10px; /* Espa�amento inferior */
}

        
        
    </style>
</head>
<body>
    <!-- Start Interface--><br>

    <img class="login-image" src="imagens/login.jfif" alt="Imagem de Login">

    <div id="interface" class="container-fluid">
        <!-- Start nav-->
        <nav class="row">
            <div class="bg-dark" style="width: 100%; height: 1.5px;"></div>
        </nav>

        <article class="row pt-3 formLogin">
            <form class="col-md-4 pl-5 pt-4" name="cadastro" method="POST">
                <p class="paragrafo" style="font-size: 1.5rem;">Login: <input required class="form-control " name="email" maxlength="50" placeholder="Digite o seu login"></p>
                <p class="paragrafo" style="font-size: 1.5rem;">Senha: <input required class="form-control " type="password" name="senha" maxlength="50" placeholder="Digite a sua senha"></p>
                <div class="fw-bold">
                        <input class="btn btn-outline-danger" type="reset" value="Limpar" style="margin-right: 20px;">
                        <input class="btn btn-outline-success" type="submit" name="image" style="margin-right: 20px;" onClick="enviar('login')" value="Entrar">
                </div>
                <% if(mensagem != null){%>
                    <p> <%= mensagem %></p>
                <%}%>
            </form>
<div class="col-md-6" style="margin-left: 90px; border: 1px #000; padding: 15px;">
    <h2 class="info-title">Informa��es �teis:</h2>
    <div class="info-box">
        <p class="infoText">*Se voc� j� possui um cadastro, ent�o se identifique usando seu login e senha!</p>
        <p class="infoText">*Se voc� j� estava utilizando o software, sua sess�o pode ter expirado portanto apenas fa�a o login novamente.</p>
        <p class="infoText">*Se voc� ainda n�o possui um login e senha, dirija-se ao seu gerente.</p>
        <p class="infoText">Se surgirem d�vidas, n�o hesite em entrar em contato utilizando a se��o 'Contato' acima.</p>
    </div>
</div>



</div>
        </article>
    </div>
</body>
</html>
