<%@page import="modelo.Disciplina"%>
<%@page import="modelo.DAODisciplina"%>
<%@page import="java.util.List"%>
<%
    DAODisciplina objDAODisciplina = new DAODisciplina();
    
List<Disciplina> listaDisciplina = objDAODisciplina.listarDisciplina();





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
            <th>NOME DA DISCIPLINA</th>
            <th>ÁREA</th>
            <th>ALTERAR</th>
            <th>EXCLUIR</th>
        </tr>
    </thead>
    <tbody>
        <% for(Disciplina disciplina: listaDisciplina){ %>
        <tr>
            <td><%= disciplina.getCodDisciplina() %></td>
            <td><%= disciplina.getNomeDisciplina() %></td>
            <td><%= disciplina.getAreaDisciplina() %></td>
            <td><a class="btn btn-outline-secondary fw-bold bottom-0" href="CadastroDisciplina.jsp?opcao=alterar&codDisciplina=<%= disciplina.getCodDisciplina() %>&nomeDisciplina=<%= disciplina.getNomeDisciplina() %>&areaDisciplina=<%= disciplina.getAreaDisciplina() %>">Alterar</a></td>
            <td><a class="btn btn-outline-danger fw-bold bottom-0" href="CadastroDisciplina.jsp?opcao=excluir&codDisciplina=<%= disciplina.getCodDisciplina() %>&nomeDisciplina=<%= disciplina.getNomeDisciplina() %>&areaDisciplina=<%= disciplina.getAreaDisciplina() %>">Excluir</a></td>

        </tr>
        <% } %>
        
    </tbody>
    
</table>