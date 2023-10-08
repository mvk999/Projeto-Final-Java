<%@page import="modelo.ConverteData"%>
<%@page import="modelo.AtividadexAluno"%>
<%@page import="modelo.DAOAtividadexAluno"%>
<%@page import="java.util.List"%>
<%
    DAOAtividadexAluno objDAOAtividadexaluno = new DAOAtividadexAluno();
    List<AtividadexAluno> listaAtividadexaluno = objDAOAtividadexaluno.listarAtividadexAluno();
    ConverteData objConverte1 = new ConverteData();


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
            <th>ALUNO</th>
            <th>EXCLUIR</th>
        </tr>
    </thead>
    <tbody>
        <% for(AtividadexAluno atividadexAluno: listaAtividadexaluno){ %>
        <tr>
            <td><%= atividadexAluno.getCodAtividadeXaluno()%></td>
            <td><%= atividadexAluno.getObjAtivComple().getNomeAtivComple()%></td>
            <td><%= atividadexAluno.getObjAluno().getNomeAluno()%></td>

           
            <td><a class="btn btn-outline-danger fw-bold bottom-0" href="CadastroAtividadexAluno.jsp?opcao=excluir&codAtividadeXaluno=<%= atividadexAluno.getCodAtividadeXaluno()%>&codAtivComple=<%= atividadexAluno.getObjAtivComple().getCodAtivComple()%>&codAluno=<%= atividadexAluno.getObjAluno().getCodAluno()%>">Excluir</a></td>

        </tr>
        <% } %>        
    </tbody>
</table>
