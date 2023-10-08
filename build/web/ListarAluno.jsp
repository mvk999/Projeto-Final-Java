<%@page import="modelo.ConverteData"%>
<%@page import="modelo.Aluno"%>
<%@page import="modelo.DAOAluno"%>
<%@page import="java.util.List"%>
<%
    DAOAluno objDAOAluno = new DAOAluno();
    List<Aluno> listaAluno1 = objDAOAluno.listarAluno();
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
            <th>NOME</th>
            <th>CPF</th>
            <th>MATRÍCULA</th>
            <th>NASCIMENTO</th>
            <th>NOME DO PAI</th>
            <th>NOME DA MÃE</th>
            <th>TELEFONE DO RESPONSÁVEL</th>
            <th>NIVEL DE ENSINO</th>
            <th>ALTERAR</th>
            <th>EXCLUIR</th>

        </tr>

    </thead>
    <tbody>
        <% for(Aluno aluno: listaAluno1){ %>

        <tr>
            <td><%= aluno.getCodAluno()%></td>
            <td><%= aluno.getNomeAluno()%></td>
            <td><%= aluno.getCpfAluno()%></td>
            <td><%= aluno.getMatriculaAluno()%></td>
            <td><%= objConverte1.converteTela(aluno.getNascimentoAluno())%></td>
            <td><%= aluno.getNomePaiAluno()%></td>
            <td><%= aluno.getNomeMaeAluno()%></td>
            <td><%= aluno.getTelefoneResponsavelAluno()%></td>
            <td><%= aluno.getObjnivelensino().getNiveldeEnsino()%></td>

            <td><a class="btn btn-outline-secondary fw-bold bottom-0" href="CadastroAluno.jsp?opcao=alterar&codAluno=<%= aluno.getCodAluno()%>&nomeAluno=<%= aluno.getNomeAluno()%>&cpfAluno=<%= aluno.getCpfAluno()%>&matriculaAluno=<%= aluno.getMatriculaAluno()%>&nascimentoAluno=<%= objConverte1.converteBanco(aluno.getNascimentoAluno())%>&nomePaiAluno=<%= aluno.getNomePaiAluno()%>&nomeMaeAluno=<%= aluno.getNomeMaeAluno() %>&telefoneResponsavelAluno=<%= aluno.getTelefoneResponsavelAluno()%>&nivelEnsinoAluno=<%= aluno.getObjnivelensino().getCodNivelEnsino() %>">Alterar</a></td>
            <td><a class="btn btn-outline-danger fw-bold bottom-0" href="CadastroAluno.jsp?opcao=excluir&codAluno=<%= aluno.getCodAluno()%>&nomeAluno=<%= aluno.getNomeAluno()%>&cpfAluno=<%= aluno.getCpfAluno()%>&matriculaAluno=<%= aluno.getMatriculaAluno()%>&nascimentoAluno=<%= objConverte1.converteBanco(aluno.getNascimentoAluno())%>&nomePaiAluno=<%= aluno.getNomePaiAluno()%>&nomeMaeAluno=<%= aluno.getNomeMaeAluno() %>&telefoneResponsavelAluno=<%= aluno.getTelefoneResponsavelAluno()%>&nivelEnsinoAluno=<%= aluno.getObjnivelensino().getCodNivelEnsino() %>">Excluir</a></td>

        </tr>

        <% } %>
    </tbody>
</table>
