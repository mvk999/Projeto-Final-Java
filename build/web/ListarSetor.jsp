<%-- 
    Document   : ListarSetor
    Created on : 04/05/2023, 19:34:28
    Author     : 16110968633
--%>
<%@page import="modelo.ConverteData"%>
<%@page import="modelo.Setor"%>
<%@page import="java.util.List"%>
<%@page import="modelo.DAOSetor"%>
<%
    DAOSetor objDAOSetor = new DAOSetor();
    List <Setor> listarSetor = objDAOSetor.listarSetor();
%>
<style>
        .table {
            width: 100%;
            border-collapse: collapse;
            border: 1px solid #ccc;
        }

        .table th, .table td {
            padding: 10px;
            border: 1px solid #ccc;
            text-align: center;
        }

        .table th {
            background-color: #7a1283;
            color: #ffffff;
            font-weight: bold;
        }

        .table tbody tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        
    </style>
    
<table border="1" class="table table-bordered border-dark table-striped">
    <thead>
        <tr>
            <th>CÓDIGO</th>
            <th>NOME SETOR</th>
            <th>DESCRIÇÃO</th>
            <th>NÚMERO SALAS</th>
            <th>ALTERAR</th>
            <th>EXCLUIR</th>
        </tr>
    </thead>
    <tbody>
           <% for(Setor setor:listarSetor){%>
        <tr>
            <td><%= setor.getCodSetor()%>  </td>
            <td><%= setor.getNomeSetor()%>  </td>  
            <td><%= setor.getDescSetor()%>  </td>
            <td><%= setor.getNumeroSalaSetor()%>  </td>
            <td><a class="btn btn-outline-secondary fw-bold bottom-0" href="CadastroSetor.jsp?opcao=alterar&codSetor=<%= setor.getCodSetor()%>&nomeSetor=<%= setor.getNomeSetor()%>&descSetor=<%= setor.getDescSetor()%>&numeroSalaSetor=<%= setor.getNumeroSalaSetor()%>">Alterar</a></td>
            <td><a class="btn btn-outline-danger fw-bold bottom-0" href="CadastroSetor.jsp?opcao=excluir&codSetor=<%= setor.getCodSetor()%>&nomeSetor=<%= setor.getNomeSetor()%>&descSetor=<%= setor.getDescSetor()%>&numeroSalaSetor=<%= setor.getNumeroSalaSetor()%>">Excluir</a></td>
        </tr>
        <%}%>            
    </tbody>
       
</table>
