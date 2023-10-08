<%@ page autoFlush="true" buffer="1094kb"%>
<%@include file="Menu.jsp" %>
<% if (session.getAttribute("nome") != null){%>
<%@page import="modelo.ConverteData"%>
<%@page import="java.util.List"%>
<%@page import="modelo.DAOAluno"%>
<%@page import="modelo.Aluno"%>
<%@page import="modelo.DAOTurma"%>
<%@page import="modelo.Turma"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String mensagem = request.getParameter("mensagem");
    String descOcorrencia = request.getParameter("descOcorrencia");
    String dataOcorrencia = request.getParameter("dataOcorrencia");
    String codaluno = request.getParameter("codaluno");
    String codturma = request.getParameter("codturma");
    String codOcorrencia = request.getParameter("codOcorrencia");
    
    if(codOcorrencia==null){
        codOcorrencia="0";
    }
    DAOAluno daoAluno = new DAOAluno();
    List<Aluno> listaAluno = daoAluno.listarAluno();
    
    DAOTurma daoTurma = new DAOTurma();
    List<Turma> listaTurma = daoTurma.listarTurma();
    
    String opcao = request.getParameter("opcao");
    if(opcao==null){
        opcao = "cadastrar";
    }
    
    if(codOcorrencia==null){
        codOcorrencia="0";
    }
    
    if(codaluno==null){
        codaluno="1";
    }
    if(codturma==null){
        codturma="1";
    }
%>
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
        <title>Cadastro de Ocorrencias</title>
    </head>
    <body class="container-fluid row">
        <div class="ms-4">
        <h1 class="text-uppercase fw-bold pb-3 titulo">Cadastro de Ocorrências</h1>
        <div class="row">
            <div class="col-6 ">
        <form name="cadastro" method="get" action="CAEOcorrencia.jsp">
            
            <p> <label> Descrição da Ocorrência: <input type="text" name="descOcorrencia" value="<%= (descOcorrencia==null)?"": descOcorrencia %>" class="input-field" size="400" /> </label> </p>
            <p> <label> Data da Ocorrência: <input type="text" name="dataOcorrencia" value="<%= (dataOcorrencia==null)?"": dataOcorrencia %>" class="input-field" size="400" /> </label> </p>
            <p>  <label> Aluno: </label>
                <select name="aluno">
                    <% for (Aluno aluno : listaAluno) { %>
                    <% if (codaluno.equals(String.valueOf(aluno.getCodAluno()))){%>
                    <option selected value="<%= aluno.getCodAluno()%>"><%= aluno.getNomeAluno()%> </option>
                    <%} else {%>
                    <option value="<%= aluno.getCodAluno()%>"><%= aluno.getNomeAluno()%> </option>
                    <%}%>
                    <% }%>
                </select>
            </p>
            <p>  <label> Turma: </label>
                <select name="turma">
                    <% for (Turma turma : listaTurma) { %>
                    <% if (codturma.equals(String.valueOf(turma.getCodTurma()))){%>
                    <option selected value="<%= turma.getCodTurma()%>"><%= turma.getNumeroSala()%> </option>
                    <%} else {%>
                    <option value="<%= turma.getCodTurma()%>"><%= turma.getNumeroSala()%> </option>
                    <%}%>
                    <% }%>
                </select>
            </p>
            </div>
            </div>
            <%if(opcao.equals("cadastrar")){%>
            <input class="btn btn-outline-dark fw-bold bottom-0" type="submit" value="Cadastrar" name="Cadastrar" />            
            <% } if(opcao.equals("alterar")){ %>
            <input class="btn btn-outline-dark fw-bold bottom-0" type="submit" value="Alterar" name="Alterar" />
            <% } if(opcao.equals("excluir")){ %>
            <input class="btn btn-outline-dark fw-bold bottom-0" type="submit" value="Excluir" name="Excluir" />
            <% } %>
            <input type="hidden" name="opcao" value="<%=opcao%>"/>
            <input type="hidden" name="codOcorrencia" value="<%=codOcorrencia%>"/>
        </form>
            <p> <%= (mensagem==null)?"": mensagem%> </p>
            <p></p>
            <p></p>
            
            <%@include file="ListarOcorrencia.jsp"%>
    </div>
    </body>
</html>

<% } else {%>
<jsp:forward page="index.jsp">
<jsp:param name="mensagem" value="Acesso negado, efetue seu login!"/>
</jsp:forward>
<% } %>