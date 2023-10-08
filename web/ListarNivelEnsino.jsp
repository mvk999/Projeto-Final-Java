<%@page import="modelo.NivelEnsino"%>
<%@page import="modelo.DAONivelEnsino"%>
<%@page import="java.util.List"%>
<%
    DAONivelEnsino objDAONivelEnsino = new DAONivelEnsino();
    
List<NivelEnsino> listaNivelEnsino = objDAONivelEnsino.listarNivelEnsino();





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
            <th>NÍVEL DE ENSINO</th>
            <th>ALTERAR</th>
            <th>EXCLUIR</th>
        </tr>
    </thead>
    <tbody>
        <% for(NivelEnsino nivelEnsino: listaNivelEnsino){ %>
        <tr>
            <td><%= nivelEnsino.getCodNivelEnsino() %></td>
            <td><%= nivelEnsino.getNiveldeEnsino() %></td>
            <td><a class="btn btn-outline-secondary fw-bold bottom-0" href="CadastroNivelEnsino.jsp?opcao=alterar&codNivelEnsino=<%= nivelEnsino.getCodNivelEnsino() %>&niveldeEnsino=<%= nivelEnsino.getNiveldeEnsino() %>">Alterar</a></td>
            <td><a class="btn btn-outline-danger fw-bold bottom-0" href="CadastroNivelEnsino.jsp?opcao=excluir&codNivelEnsino=<%= nivelEnsino.getCodNivelEnsino() %>&niveldeEnsino=<%= nivelEnsino.getNiveldeEnsino() %>">Excluir</a></td>

        </tr>
        <% } %>
        
    </tbody>
    
</table>