<%@ page autoFlush="true" buffer="1094kb"%>
<%@include file="Menu.jsp" %>
<% if (session.getAttribute("nome") != null){%>
<%@page import="modelo.ProfessorXDisciplina"%>
<%@page import="modelo.Prof"%>
<%@page import="modelo.Disciplina"%>
<%@page import="modelo.DAOProfessorxDisciplina"%>
<%@page import="modelo.DAOProf"%>
<%@page import="modelo.DAODisciplina"%>
<script>
    function enviar(par) {
        if (par == 'cadastrar') {

            if (document.cadastro.codDisciplina.value == '') {
                document.cadastro.mensagem.value = 'Selecione o campo disciplina para cadastrar';
            } else {
                document.cadastro.opcao.value = 'cadastrar';
                document.cadastro.action = 'CAEProfessorxDisciplina.jsp';
                document.cadastro.submit();
            }
        } else if (par == 'excluir') {
            if (document.cadastro.codDisciplina.value == '') {
                document.cadastro.mensagem.value = 'Selecione uma disciplina para remover';
            } else {
            document.cadastro.opcao.value = 'excluir';
            document.cadastro.action = 'CAEProfessorxDisciplina.jsp';
            document.cadastro.submit();
        }
    }else if (par == 'cancelar') {
            
            document.cadastro.opcao.value = 'cancelar';
            document.cadastro.action = 'CadastroProfessorxDisciplina.jsp';
            document.cadastro.submit();
        }
    }
      
    
</script>

<%      
    
    String mensagem = request.getParameter("mensagem");
    String codProf = request.getParameter("codProf");
    String codDisciplina = request.getParameter("codDisciplina");
    String opcao = request.getParameter("opcao");
    String codProfessorXdisciplina = request.getParameter("codProfessorXdisciplina");
    
    
    DAOProfessorxDisciplina daoatividadexDisciplina = new DAOProfessorxDisciplina();
    DAOProf daoprof= new DAOProf();
    DAODisciplina daodisciplina3= new DAODisciplina();
    List<ProfessorXDisciplina> listaProfessorXDisciplina = daoatividadexDisciplina.listarProfessorXDisciplina();
    List<Prof> listaProf = daoprof.listarProf();
    List<Disciplina> listaDisciplina3 = daodisciplina3.listarDisciplina();

if(opcao==null){
    opcao="cadastrar";
}
if(codDisciplina==null){
    codDisciplina = "0";
}
if(codProfessorXdisciplina==null){
    codProfessorXdisciplina = "0";
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
        /* Estilo para ajustar o layout das listas */
select[name="codProf"], select[name="codDisciplina"] {
    width: 100%;
}

/* Estilo para diminuir o tamanho do botão Cadastrar */
input[name="Cadastrar"] {
    width: auto; /* Ou você pode tentar ajustar a largura em pixels */
    padding: 6px 12px; /* Ajuste o padding conforme necessário */
    font-size: 14px; /* Ajuste o tamanho da fonte conforme necessário */
}

        
.image-button-container {
    display: flex;
    align-items: center; /* Centraliza verticalmente */
}

.image-button-container img {
    margin-left: 10px; /* Espaço entre a imagem e o botão */
}


        
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Professores x Disciplina</title>
    </head>
    <body class="container-fluid row">
        <h1 class="text-uppercase fw-bold pb-3 titulo">Cadastro da disciplina do Professor</h1>
        <div class="row">
            <div class="col-6 ">
        <form name="cadastro" method="get" >
            
            
            <p><label> Lista dos Professores:</label> 
                <select name="codProf" size="1">
                    <% for (Prof lista : listaProf) { %>
                    <% if (codProf.equals(String.valueOf(lista.getCodProf()))) {%>
                    <option selected value="<%= lista.getCodProf()%>"><%= lista.getNomeProf()%></option>
                    <%} else {%>
                    <option  value="<%= lista.getCodProf()%>"><%= lista.getNomeProf()%></option>
                    <% }%>
                    <% }%>
                </select></p>

                    <p>  <label> Lista de Disciplinas:</label> <br>
                        <select name="codDisciplina" size="15">
                        <% for (Disciplina lista : listaDisciplina3) {%>
                        <option  value="<%= lista.getCodDisciplina()%>"><%= lista.getNomeDisciplina()%></option>
                        <% } %>
                            </select></p>
            </div>
            </div>
                   

            <% if(opcao.equals("cadastrar")||opcao.equals("cancelar")) {%>
            <div class="text-center">
    <button class="btn btn-outline-dark fw-bold" type="submit" name="Cadastrar" onclick="enviar('cadastrar')">Cadastrar</button>
</div>

            <%}%>
            <% if(opcao.equals("excluir")) {%>
            <div class="text-center">
            <input class="btn btn-outline-dark fw-bold" type="submit" value="Excluir" name="Excluir" onclick="enviar('excluir')">
            <input class="btn btn-outline-dark fw-bold" type="submit" value="Cancelar" name="Cancelar" onclick="enviar('cancelar')">
            </div>
            <%}%><br>
          
            <input type="hidden" name="opcao" value="<%=opcao%>"/>
      
            <input type="hidden" name="codProfessorXDisciplina" value="<%=codProfessorXdisciplina%>"/>
             <p><textarea name="mensagem" rows="2" cols="60">
                <%= (mensagem == null) ? "" : mensagem%></textarea></p>
        </form>
        
        
        <br></br>
        <%@include file="ListarProfessorxDisciplina.jsp" %>
            </div>
            </body>
</html>

<% } else {%>
<jsp:forward page="index.jsp">
<jsp:param name="mensagem" value="Acesso negado, efetue seu login!"/>
</jsp:forward>
<% } %>