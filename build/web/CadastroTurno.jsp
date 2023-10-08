<%@ page autoFlush="true" buffer="1094kb"%>
<%@include file="Menu.jsp" %>
<% if (session.getAttribute("nome") != null){%>
<%@page import="modelo.Turno"%>
<%@page import="modelo.DAOTurno"%>
<%
    String mensagem = request.getParameter("mensagem");
    String nomeTurno = request.getParameter("nomeTurno");
    String horarioEntrada = request.getParameter("horarioEntrada");
    String horarioSaida = request.getParameter("horarioSaida");
    String codTurno = request.getParameter("codTurno");
    String opcao = request.getParameter("opcao");

    DAOTurno daoTurno = new DAOTurno();
    List<Turno> listaTurno = daoTurno.listarTurno();
            

    if(opcao==null){
        opcao = "cadastrar";
    }
    if(codTurno==null){
        codTurno="0";
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
        <title>Cadastro Turno</title>
    </head>
    <body class="container-fluid row">
        <div class="ms-4">
        <h1 class="text-uppercase fw-bold pb-3 titulo">Cadastro de Turnos</h1>
        <div class="row">
            <div class="col-6 ">
        <form name="escola" method="get" action="CAETurno.jsp">
               
            <p> <label> Nome do Turno:<input type="text" name="nomeTurno" value="<%= (nomeTurno==null)?"": nomeTurno %>" class="input-field" size="400" /> </label> </p>
            <p> <label> Horário de Entrada:<input type="text" name="horarioEntrada" value="<%= (horarioEntrada==null)?"": horarioEntrada %>" class="input-field" size="400" /> </label> </p>
            <p> <label> Horário de Saída: <input type="text" name="horarioSaida" value="<%= (horarioSaida==null)?"": horarioSaida %>" class="input-field" size="400" /> </label> </p>
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
            <input type="hidden" name="codTurno" value="<%=codTurno%>"/>
        </form>
            <p> <%= (mensagem==null)?"": mensagem%> </p>
            <p></p>
            <p></p>
       
            <%@include file="ListarTurno.jsp"%>
    </div>
            </body>
</html>

<% } else {%>
<jsp:forward page="index.jsp">
<jsp:param name="mensagem" value="Acesso negado, efetue seu login!"/>
</jsp:forward>
<% } %>