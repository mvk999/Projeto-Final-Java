<%@page import="modelo.AtivComple"%>
<%@page import="modelo.DAOAtivComple"%>
<%@page import="java.util.List"%>
<%
    DAOAtivComple objDAOAtivComple = new DAOAtivComple();
    
List<AtivComple> listaAtivComple = objDAOAtivComple.listarAtivComple();





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
            <th>ATIVIDADE COMPLEMENTAR</th>
            <th>DESCRIÇÃO</th>
            <th>ALTERAR</th>
            <th>EXCLUIR</th>
        </tr>
    </thead>
    <tbody>
        <% for(AtivComple ativComple: listaAtivComple){ %>
        <tr>
            <td><%= ativComple.getCodAtivComple() %></td>
            <td><%= ativComple.getNomeAtivComple() %></td>
            <td><%= ativComple.getDescAtivComple() %></td>
            <td><a class="btn btn-outline-secondary fw-bold bottom-0" href="CadastroAtivComple.jsp?opcao=alterar&codAtivComple=<%= ativComple.getCodAtivComple() %>&nomeAtivComple=<%= ativComple.getNomeAtivComple() %>&descAtivComple=<%= ativComple.getDescAtivComple() %>">Alterar</a></td>
            <td><a class="btn btn-outline-danger fw-bold bottom-0" href="CadastroAtivComple.jsp?opcao=excluir&codAtivComple=<%= ativComple.getCodAtivComple() %>&nomeAtivComple=<%= ativComple.getNomeAtivComple() %>&descAtivComple=<%= ativComple.getDescAtivComple() %>">Excluir</a></td>

        </tr>
        <% } %>
        
    </tbody>
    
</table>