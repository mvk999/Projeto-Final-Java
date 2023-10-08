<%@ page autoFlush="true" buffer="1094kb"%>
<%@include file="Menu.jsp" %>
<% if (session.getAttribute("nome") != null){%>

<%@page import="java.util.List"%>
<%@page import="modelo.DAOTurno"%>
<%@page import="modelo.Turno"%>
<%@page import="modelo.DAOSetor"%>
<%@page import="modelo.Setor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String mensagem = request.getParameter("mensagem");
    String mestredeSala = request.getParameter("mestredeSala");
    String numeroSala = request.getParameter("numeroSala");
    String quantAlunos = request.getParameter("quantAlunos");
    String quantMaxAlunos = request.getParameter("quantMaxAlunos");
    String codturno = request.getParameter("codturno");
    String codsetor = request.getParameter("codsetor");
    String codTurma = request.getParameter("codTurma");
    
    if(codTurma==null){
        codTurma="0";
    }
    DAOTurno daoTurno = new DAOTurno();
    List<Turno> listaTurno = daoTurno.listarTurno();
    
    DAOSetor daoSetor = new DAOSetor();
    List<Setor> listaSetor = daoSetor.listarSetor();
    
    String opcao = request.getParameter("opcao");
    if(opcao==null){
        opcao = "cadastrar";
    }
    
    if(codTurma==null){
        codTurma="0";
    }
    
    if(codturno==null){
        codturno="1";
    }
    if(codsetor==null){
        codsetor="1";
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
        <title>Cadastro de Turmas</title>
    </head>
    <body class="container-fluid row">
        <div class="ms-4">
        <h1 class="text-uppercase fw-bold pb-3 titulo">Cadastro de Turmas</h1>
        <div class="row">
            <div class="col-6 ">
        <form name="cadastro" method="get" action="CAETurma.jsp">
            
            <p> <label> Mestre da Sala: <input type="text" name="mestredeSala" value="<%= (mestredeSala==null)?"": mestredeSala %>" class="input-field" size="400" /> </label> </p>
            <p> <label> Número da Sala: <input type="text" name="numeroSala" value="<%= (numeroSala==null)?"": numeroSala %>" class="input-field" size="400" /> </label> </p>
            <p> <label> Quantidade de Alunos:<input type="text" name="quantAlunos" value="<%= (quantAlunos==null)?"": quantAlunos %>" class="input-field" size="400" /> </label> </p>
            <p> <label> Quantidade Máxima de Alunos:<input type="text" name="quantMaxAlunos" value="<%= (quantMaxAlunos==null)?"": quantMaxAlunos %>" class="input-field" size="400" /> </label> </p>
            </div>
            <div class="col-6 ">
            <p>  <label> Turno:</label>
                <select name="turno">
                    <% for (Turno turno : listaTurno) { %>
                    <% if (codturno.equals(String.valueOf(turno.getCodTurno()))){%>
                    <option selected value="<%= turno.getCodTurno()%>"><%= turno.getNomeTurno()%> </option>
                    <%} else {%>
                    <option value="<%= turno.getCodTurno()%>"><%= turno.getNomeTurno()%> </option>
                    <%}%>
                    <% }%>
                </select>
            </p>
            <p>  <label> Setor:</label>
                <select name="setor">
                    <% for (Setor setor : listaSetor) { %>
                    <% if (codsetor.equals(String.valueOf(setor.getCodSetor()))){%>
                    <option selected value="<%= setor.getCodSetor()%>"><%= setor.getNomeSetor()%> </option>
                    <%} else {%>
                    <option value="<%= setor.getCodSetor()%>"><%= setor.getNomeSetor()%> </option>
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
            <input type="hidden" name="codTurma" value="<%=codTurma%>"/>
        </form>
            <p> <%= (mensagem==null)?"": mensagem%> </p>
            <p></p>
            <p></p>
       
            <%@include file="ListarTurma.jsp"%>
    </body>
</html>

<% } else {%>
<jsp:forward page="index.jsp">
<jsp:param name="mensagem" value="Acesso negado, efetue seu login!"/>
</jsp:forward>
<% } %>