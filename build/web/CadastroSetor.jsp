<%@ page autoFlush="true" buffer="1094kb"%>
<%@include file="Menu.jsp" %>
<% if (session.getAttribute("nome") != null){%>

<%
    String mensagem = request.getParameter("mensagem");
    String nomeSetor = request.getParameter("nomeSetor");
    String descSetor = request.getParameter("descSetor");
    String numeroSalaSetor = request.getParameter("numeroSalaSetor");
    String codSetor = request.getParameter("codSetor");
    String opcao = request.getParameter("opcao");

    DAOSetor daoSetor = new DAOSetor();
    List<Setor> listaSetor = daoSetor.listarSetor();
            

    if(opcao==null){
        opcao = "cadastrar";
    }
    if(codSetor==null){
        codSetor="0";
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
        <title>Cadastro Setor</title>
    </head>
    <body class="container-fluid row">
        <div class="ms-4">
        <h1 class="text-uppercase fw-bold pb-3 titulo">Cadastro de Setores</h1>
        <div class="row">
            <div class="col-6 ">
        <form name="escola" method="get" action="CAESetor.jsp">
            
            <p> <label > Nome do Setor:<input type="text" name="nomeSetor" value="<%= (nomeSetor==null)?"": nomeSetor %>" class="input-field" size="400" /> </label> </p>
            <p> <label> Descrição do Setor:<input type="text" name="descSetor" value="<%= (descSetor==null)?"": descSetor %>" class="input-field" size="400" /> </label> </p>
            <p> <label> Numero de Sala do Setor: <input type="text" name="numeroSalaSetor" value="<%= (numeroSalaSetor==null)?"": numeroSalaSetor %>" class="input-field" size="400" /> </label> </p>
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
            <input type="hidden" name="codSetor" value="<%=codSetor%>"/>
        </form>
            <p> <%= (mensagem==null)?"": mensagem%> </p>
            <p></p>
            <p></p>
       
            
            <%@include file="ListarSetor.jsp"%>
    </div>
            </body>
</html>

<% } else {%>
<jsp:forward page="index.jsp">
<jsp:param name="mensagem" value="Acesso negado, efetue seu login!"/>
</jsp:forward>
<% } %>