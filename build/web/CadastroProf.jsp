<%@ page autoFlush="true" buffer="1094kb"%>
<%@include file="Menu.jsp" %>

<% if (session.getAttribute("nome") != null){%>

<%@page import="modelo.ConverteData"%>
<%      
String mensagem = request.getParameter("mensagem");
    String nomeProf = request.getParameter("nomeProf");
    String cpfProf = request.getParameter("cpfProf");
    String emailProf = request.getParameter("emailProf");
    String telefoneProf = request.getParameter("telefoneProf");
    String nascimentoProf = request.getParameter("nascimentoProf");
    String anoIngressaoProf = request.getParameter("anoIngressaoProf");
    String naturalidadeProf = request.getParameter("naturalidadeProf");

String opcao = request.getParameter("opcao");
String codProf = request.getParameter("codProf");

if(opcao==null){
    opcao="cadastrar";
}
if(codProf==null){
    codProf = "0";
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
        <title>Cadastro de Professor</title>
    </head>
    <body class="container-fluid row">
        <div class="ms-4">
        <h1 class="text-uppercase fw-bold pb-3 titulo">Cadastro de Professores</h1>
            <div class="row">
            <div class="col-6 ">
            <form name="cadastro" method="get" action="CAEProf.jsp">
            <p><label>Nome do Professor: </label>  <input type="text" name="nomeProf" value="<%= (nomeProf==null)?"":nomeProf %>"   class="input-field" size="60" /> </p>
            <p><label class="pe-5">CPF do Professor: </label>  <input type="text" name="cpfProf" value="<%= (cpfProf==null)?"":cpfProf %>" class="input-field" size="65" /> </p>
            <p><label>Email do Professor: </label>  <input type="text" name="emailProf" value="<%= (emailProf==null)?"":emailProf %>" class="input-field"  size="65" /> </p>
            <p><label>Telefone do Professor: </label>  <input type="text" name="telefoneProf" value="<%= (telefoneProf==null)?"":telefoneProf %>" class="input-field" size="65" /> </p>
            </div>
            <div class="col-6 ">
            <p><label>Data de nascimento: </label>  <input type="text" name="nascimentoProf" value="<%= (nascimentoProf==null)?"":nascimentoProf %>" class="input-field" size="65" /> </p>
            <p><label class="pe-5">Ano de Ingressão: </label>  <input type="text" name="anoIngressaoProf" value="<%= (anoIngressaoProf==null)?"":anoIngressaoProf %>" class="input-field" size="65" /> </p>
            <p><label class="pe-5">Naturalidade: </label>  <input type="text" name="naturalidadeProf" value="<%= (naturalidadeProf==null)?"":naturalidadeProf %>" class="input-field"  size="65" /> </p>
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
            <input type="hidden" name="codProf" value="<%=codProf%>"/>
        </form>
        
        <%= (mensagem==null)?"":mensagem %>
        
        <br></br>
        <%@include file="ListarProf.jsp" %>
            </div>
            </body>
</html>


<% } else {%>
<jsp:forward page="index.jsp">
<jsp:param name="mensagem" value="Acesso negado, efetue seu login!"/>
</jsp:forward>
<% } %>
