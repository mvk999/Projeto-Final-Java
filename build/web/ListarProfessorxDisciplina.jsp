<%@page import="modelo.ProfessorXDisciplina"%>
<%@page import="modelo.DAOProfessorxDisciplina"%>
<%@page import="java.util.List"%>
<%
    DAOProfessorxDisciplina objDAOProfessorxDisciplina = new DAOProfessorxDisciplina();
    List<ProfessorXDisciplina> listaProfessorxDisciplina = objDAOProfessorxDisciplina.listarProfessorXDisciplina();


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
            <th>PROFESSOR</th>
            <th>DISCIPLINA</th>
            <th>EXCLUIR</th>
        </tr>
    </thead>
    <tbody>
        <% for(ProfessorXDisciplina professorxDisciplina: listaProfessorxDisciplina){ %>
        <tr>
            <td><%= professorxDisciplina.getCodProfessorXdisciplina()%></td>
            <td><%= professorxDisciplina.getObjProf().getNomeProf()%></td>
            <td><%= professorxDisciplina.getObjDisciplina().getNomeDisciplina()%></td>

           
            <td><a class="btn btn-outline-danger fw-bold bottom-0" href="CadastroProfessorxDisciplina.jsp?opcao=excluir&codProfessorXdisciplina=<%= professorxDisciplina.getCodProfessorXdisciplina()%>&codProf=<%= professorxDisciplina.getObjProf().getCodProf()%>&codDisciplina=<%= professorxDisciplina.getObjDisciplina().getCodDisciplina()%>">Excluir</a></td>

        </tr>
        <% } %>        
    </tbody>
</table>