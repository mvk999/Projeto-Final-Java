<%@ page autoFlush="true" buffer="1094kb"%>
<%@include file="Menu.jsp" %>
<% if (session.getAttribute("nome") != null){%>
<%
String mensagem = request.getParameter("mensagem");
String nomeAtivComple = request.getParameter("nomeAtivComple");
String descAtivComple = request.getParameter("descAtivComple");
String opcao = request.getParameter("opcao");
String codAtivComple = request.getParameter("codAtivComple");

if(opcao==null){
    opcao="cadastrar";
}
if(codAtivComple==null){
    codAtivComple = "0";
}
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
        .rounded-button {
            display: inline-block;
            padding: 6px 12px;
            font-size: 14px;
            background-color: #007bff;
            color: #ffffff;
            border: none;
            border-radius: 20px;
            cursor: pointer;
            transition: background-color 0.3s, color 0.3s;
        }

        .rounded-button:hover {
            background-color: #0056b3;
        }

        .input-field {
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 10px;
            width: 100%;
            box-sizing: border-box;
            font-size: 14px;
        }
</style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Atividade Complementar</title>
    </head>
    <body class="container-fluid row">
        <div class="ms-4">
        <h1 class="text-uppercase fw-bold pb-3 titulo">Cadastro de Atividade Complementar</h1>
        <div class="row">
        <div class="col-6 ">
                
        <form name="cadastro" method="get" action="CAEAtivComple.jsp">
            <p><label>Atividade Complementar: </label>  <input type="text" name="nomeAtivComple" value="<%= (nomeAtivComple==null)?"":nomeAtivComple %>" class="input-field" size="400" /> </p>
            <p><label>Descrição da Atividade: </label>  <input type="text" name="descAtivComple" value="<%= (descAtivComple==null)?"":descAtivComple %>" class="input-field" size="400" /> </p>
            </div>
            </div>
            <% if(opcao.equals("cadastrar")) {%>
            <input class="btn btn-outline-dark fw-bold bottom-0" type="submit" value="Cadastrar" name="Cadastrar" />
            <%}%>
            <% if(opcao.equals("alterar")) {%>
            <input class="btn btn-outline-dark fw-bold bottom-0" type="submit" value="Alterar" name="Alterar" />
            <%}%>
            <% if(opcao.equals("excluir")) {%>
            <input class="btn btn-outline-dark fw-bold bottom-0" type="submit" value="Excluir" name="Excluir" />
            <%}%>
       
            <input type="hidden" name="opcao" value="<%=opcao%>"/>
            <input type="hidden" name="codAtivComple" value="<%=codAtivComple%>"/>
        </form>
        
        <%= (mensagem==null)?"":mensagem %>
        
        <br></br>
        <%@include file="ListarAtivComple.jsp" %>
        </div>
        </body>
</html>

<% } else {%>
<jsp:forward page="index.jsp">
<jsp:param name="mensagem" value="Acesso negado, efetue seu login!"/>
</jsp:forward>
<% } %>