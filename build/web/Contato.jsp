
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/all.css">
    <link rel="stylesheet" href="css/estilo.css">
    <link href="../../OtavioEscola/web/webfonts/Ubuntu-Regular.ttf" rel="stylesheet">
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="modelo.Contato"%>
<%@page import="modelo.DAOContato"%>
<%
    String aviso = request.getParameter("aviso");
    String nome = request.getParameter("nome");
    String email = request.getParameter("email");
    String mensagem = request.getParameter("mensagem");
    String codContato = request.getParameter("codContato");

    DAOContato daoContato = new DAOContato();
            
   
    if(codContato==null){
        codContato="0";
    }
    
%>
<!DOCTYPE html>
<html>
    <%@include file="Menu.jsp" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contato</title>
</head>
<body>
            <section class="container">
            <h1>Entre em Contato</h1>
            <p>Estamos ansiosos para ouvir você. Use o formulário abaixo ou nossas informações de contato.</p>

            <div class="row ">
                <div class="col-md-6">
                    <br>
                    <br>
                    <h2>Informações de Contato</h2>
                    <p><strong>Telefone:</strong> (XX) XXXX-XXXX</p>
                    <p><strong>Email:</strong> contato@escolamundial.com</p>
                    <p><strong>Endereço:</strong> Rua Donizete Ferreira, 1234</p>
                    <p class="fw-bold">Se surgirem dúvidas, não hesite em entrar em contato utilizando a seção 'Contato' ao lado.</p>
                    
                </div>
    
    
    <br>
    <br>
    <br>
    <div class="contato contact-form">
        <h2>Entre em Contato</h2>
        <form name="escola" method="get" action="CAEContato.jsp">
            <label>Nome:</label>
            <input type="text" name="nome" value="<%= (nome==null)?"": nome %>" >
            
            <label>E-mail:</label>
            <input type="text" name="email" value="<%= (email==null)?"": email %>">
            
            <label>Mensagem:</label>
            <textarea type="text" name="mensagem" value="<%= (mensagem==null)?"": mensagem %>" rows="4"></textarea>
            
            <button type="submit" value="Cadastrar" name="Cadastrar">Enviar</button>
            <input type="hidden" name="codContato" value="<%=codContato%>"/>
        </form>
        <p> <%= (aviso==null)?"": aviso%> </p>
    </div>
<div class="mapa">
    <h2>Nossa localização:</h2>
    <div style="width: 50%; height: 300px; vertical-align: middle;">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3657.5631121039786!2d-46.64869258451792!3d-23.564709084676565!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce588e6f7ec1cd%3A0x174c68b318cfe0ce!2sAvenida%20Paulista%2C%20S%C3%A3o%20Paulo%20-%20SP%2C%200130-200!5e0!3m2!1sen!2sbr!4v1629758676180!5m2!1sen!2sus!q=-23.564709%2C-46.648693" width="100%" height="100%" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
    </div>
</div>



            </section>
</body>

</html>