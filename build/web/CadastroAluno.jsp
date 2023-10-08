<%@ page autoFlush="true" buffer="1094kb"%>

<%@include file="Menu.jsp" %>
<% if (session.getAttribute("nome") != null){%>
<%@page import="modelo.NivelEnsino"%>
<%@page import="modelo.DAONivelEnsino"%>
<%      
    ConverteData objConverte = new ConverteData();
    String mensagem = request.getParameter("mensagem");
    String nomeAluno = request.getParameter("nomeAluno");
    String cpfAluno = request.getParameter("cpfAluno");
    String matriculaAluno = request.getParameter("matriculaAluno");
    String nascimentoAluno = request.getParameter("nascimentoAluno");
    String nomePaiAluno = request.getParameter("nomePaiAluno");
    String nomeMaeAluno = request.getParameter("nomeMaeAluno");
    String telefoneResponsavelAluno = request.getParameter("telefoneResponsavelAluno");
    String nivelEnsino = request.getParameter("nivelEnsinoAluno");
    String opcao = request.getParameter("opcao");
    String codAluno = request.getParameter("codAluno");
    
    
    DAONivelEnsino daonivelEnsino = new DAONivelEnsino();
    List<NivelEnsino> listanivelEnsino = daonivelEnsino.listarNivelEnsino();

if(opcao==null){
    opcao="cadastrar";
}
if(codAluno==null){
    codAluno = "0";
}
if(nivelEnsino==null){
    nivelEnsino="0";
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
        <title>Cadastro de Aluno</title>
    </head>
    <body class="container-fluid row">
        <div class="ms-4">
            <h1 class="text-uppercase fw-bold pb-3 titulo">Cadastro de Aluno</h1>
            <div class="row">
            <div class="col-6 ">
            
            <form name="cadastro" method="get" action="CAEAluno.jsp">
                <p><label class="pe-5">Nome do Aluno:</label>  <input type="text" name="nomeAluno" value="<%= (nomeAluno==null)?"":nomeAluno %>" class="input-field" size="65" /> </p>
            <p><label class="pe-5">CPF do Aluno:</label>  <input type="text" name="cpfAluno" value="<%= (cpfAluno==null)?"":cpfAluno %>" class="input-field" size="65" /> </p>
            <p><label>Matrícula do Aluno: </label>  <input type="text" name="matriculaAluno" value="<%= (matriculaAluno==null)?"":matriculaAluno %>" class="input-field" size="65" /> </p>
            <p><label>Nascimento Aluno: </label>  <input type="text" name="nascimentoAluno" value="<%= (nascimentoAluno==null)?"":nascimentoAluno %>" class="input-field" size="65" /> </p>
            </div>
            <div class="col-6">
            <p><label>Nome Pai do Aluno: </label>  <input type="text" name="nomePaiAluno" value="<%= (nomePaiAluno==null)?"":nomePaiAluno %>" class="input-field" size="65" /> </p>
            <p><label>Nome Mãe do Aluno: </label>  <input type="text" name="nomeMaeAluno" value="<%= (nomeMaeAluno==null)?"":nomeMaeAluno %>" class="input-field" size="65" /> </p>
            <p><label>Telefone do Responsável:</label>  <input type="text" name="telefoneResponsavelAluno" value="<%= (telefoneResponsavelAluno==null)?"":telefoneResponsavelAluno %>" class="input-field" size="65" /> </p>
            <p class="pt-4"><label> Nivel de Ensino Aluno:</label>
                <select name="nivelEnsinoAluno">
                    <% for (NivelEnsino nivelensino : listanivelEnsino) { %>
                    <% if (nivelEnsino.equals(String.valueOf(nivelensino.getCodNivelEnsino()))){%>
                    <option selected value="<%= nivelensino.getCodNivelEnsino()%>"><%= nivelensino.getNiveldeEnsino()%> </option>
                    <%} else {%>
                    <option value="<%= nivelensino.getCodNivelEnsino()%>"><%= nivelensino.getNiveldeEnsino()%> </option>
                    <%}%>
                    <% }%>
                </select>
            </p>
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
            <input type="hidden" name="codAluno" value="<%=codAluno%>"/>
        </form>
        
        <%= (mensagem==null)?"":mensagem %>
        
        <br></br>
             <%@include file="ListarAluno.jsp" %>
    </div>
    </body>
    
</html>

<% } else {%>
<jsp:forward page="index.jsp">
<jsp:param name="mensagem" value="Acesso negado, efetue seu login!"/>
</jsp:forward>
<% } %>
