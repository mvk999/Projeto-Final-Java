<%@ page autoFlush="true" buffer="1094kb"%>
<%@include file="Menu.jsp" %>
<% if (session.getAttribute("nome") != null){%>
<%@page import="modelo.AtividadexAluno"%>
<%@page import="modelo.AtivComple"%>
<%@page import="modelo.Aluno"%>
<%@page import="modelo.DAOAtividadexAluno"%>
<%@page import="modelo.DAOAtivComple"%>
<%@page import="modelo.DAOAluno"%>
<script>
    function enviar(par) {
        if (par == 'cadastrar') {

            if (document.cadastro.codAtivComple.value == '') {
                document.cadastro.mensagem.value = 'Selecione o campo atividade complementar para cadastrar';
            } else {
                document.cadastro.opcao.value = 'cadastrar';
                document.cadastro.action = 'CAEAtividadexAluno.jsp';
                document.cadastro.submit();
            }
        } else if (par == 'excluir') {
            if (document.cadastro.codAtivComple.value == '') {
                document.cadastro.mensagem.value = 'Selecione uma atividade complementar para remover';
            } else {
            document.cadastro.opcao.value = 'excluir';
            document.cadastro.action = 'CAEAtividadexAluno.jsp';
            document.cadastro.submit();
        }
    }else if (par == 'cancelar') {
            
            document.cadastro.opcao.value = 'cancelar';
            document.cadastro.action = 'CadastroAtividadexAluno.jsp';
            document.cadastro.submit();
        }
    }
      
    
</script>



<%      
    ConverteData objConverte = new ConverteData();
    String mensagem = request.getParameter("mensagem");
    String codAtivComple = request.getParameter("codAtivComple");
    String codAluno = request.getParameter("codAluno");
    String opcao = request.getParameter("opcao");
    String codAtividadeXaluno = request.getParameter("codAtividadeXaluno");
    
    
    DAOAtividadexAluno daoatividadexAluno = new DAOAtividadexAluno();
    DAOAtivComple daoativComple= new DAOAtivComple();
    DAOAluno daoaluno3= new DAOAluno();
    List<AtividadexAluno> listaAtividadexAluno = daoatividadexAluno.listarAtividadexAluno();
    List<AtivComple> listaAtivComple = daoativComple.listarAtivComple();
    List<Aluno> listaAluno3 = daoaluno3.listarAluno();

if(opcao==null){
    opcao="cadastrar";
}
if(codAluno==null){
    codAluno = "0";
}
if(codAtividadeXaluno==null){
    codAtividadeXaluno = "0";
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
        
/* Estilo para ajustar o layout das listas de seleção */
select[name="codAluno"], select[name="codAtivComple"] {
    width: 50%; /* Você pode ajustar a largura conforme necessário */
    padding: 8px; /* Espaçamento interno */
    border: 1px solid #ccc; /* Borda de 1px */
    border-radius: 10px; /* Borda arredondada */
    font-size: 14px; /* Tamanho da fonte */
}

/* Estilo para diminuir o tamanho dos botões */
input[name="Cadastrar"] {
    width: auto; /* Ou você pode ajustar a largura em pixels */
    padding: 6px 12px; /* Espaçamento interno */
    font-size: 14px; /* Tamanho da fonte */
}

/* Estilo para os botões de bordas escuras e sem preenchimento */
.btn-outline-dark {
    border: 2px solid #000; /* Borda preta de 2px */
    background-color: transparent; /* Sem preenchimento de fundo */
    color: #000; /* Cor do texto */
    cursor: pointer;
    transition: background-color 0.3s, color 0.3s;
}

.btn-outline-dark:hover {
    background-color: #000; /* Cor de fundo ao passar o mouse */
    color: #fff; /* Cor do texto ao passar o mouse */
}


        
        
</style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Atividades x Aluno</title>
    </head>
    <body class="container-fluid row">
        <div class="ms-4">
        <h1 class="text-uppercase fw-bold pb-3 titulo">Cadastro de Atividades do alunos</h1>
        <div class="row">
        <div class="col-6 ">
        <form name="cadastro" method="get">
            
            
            <p><label> Lista dos Alunos:</label> 
                <select name="codAluno">
                    <% for (Aluno lista : listaAluno3) { %>
                    <% if (codAluno.equals(String.valueOf(lista.getCodAluno()))) {%>
                    <option selected value="<%= lista.getCodAluno()%>"><%= lista.getNomeAluno()%></option>
                    <%} else {%>
                    <option  value="<%= lista.getCodAluno()%>"><%= lista.getNomeAluno()%></option>
                    <% }%>
                    <% }%>
                </select></p>

                    <p>  <label> Lista de Atividades Complementares:</label> <br>
                        <select name="codAtivComple" size="15">
                        <% for (AtivComple lista : listaAtivComple) {%>
                        <option  value="<%= lista.getCodAtivComple()%>"><%= lista.getNomeAtivComple()%></option>
                        <% } %>
                            </select></p>
        </div>
        </div>
                            
           <% if(opcao.equals("cadastrar")||opcao.equals("cancelar")) {%>
           <div class="text-center">
            <input class="btn btn-outline-dark fw-bold" type="submit" value="Cadastrar" name="Cadastrar" onclick="enviar('cadastrar')">
           </div>
            
            <%}%>
            <% if(opcao.equals("excluir")) {%>
            <input class="btn btn-outline-dark fw-bold" type="submit" value="Excluir" name="Excluir" onclick="enviar('excluir')">
            <input class="btn btn-outline-dark fw-bold" type="submit" value="Cancelar" name="Cancelar" onclick="enviar('cancelar')">
            <%}%><br>
          
            <input type="hidden" name="opcao" value="<%=opcao%>"/>
      
            <input type="hidden" name="codAtividadeXaluno" value="<%=codAtividadeXaluno%>"/>
             <p><textarea name="mensagem" rows="2" cols="60">
                <%= (mensagem == null) ? "" : mensagem%></textarea></p>
        
        </form>
        
        
                <br></br>
        <%@include file="ListarAtividadexAluno.jsp" %>
        </div>
        </body>
</html>

<% } else {%>
<jsp:forward page="index.jsp">
<jsp:param name="mensagem" value="Acesso negado, efetue seu login!"/>
</jsp:forward>
<% } %>
