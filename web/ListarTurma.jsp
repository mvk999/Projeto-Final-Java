<%@page import="modelo.Turma"%>
<%@page import="java.util.List"%>
<%@page import="modelo.DAOTurma"%>
<%
    DAOTurma objDAOTurma = new DAOTurma();
    List<Turma> listaTurma = objDAOTurma.listarTurma();


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
            <th>MESTRE DE SALA</th>
            <th>NUMERO DA SALA</th>
            <th>QUANTIDADE ALUNOS</th>
            <th>QUANTIDADE MAX ALUNOS</th>
            <th>TURNO</th>
            <th>SETOR</th>
            <th>ALTERAR</th>
            <th>EXCLUIR</th>
        </tr>
    </thead>
    <tbody>
        <% for(Turma turma:listaTurma){%>
        <tr>
            <td><%= turma.getCodTurma()%>  </td>
            <td><%= turma.getMestredeSala()%>  </td>
            <td><%= turma.getNumeroSala()%>  </td>
            <td><%= turma.getQuantAlunos()%>  </td>
            <td><%= turma.getQuantMaxAlunos()%>  </td>
            <td><%= turma.getObjTurno().getNomeTurno()%>  </td> 
            <td><%= turma.getObjSetor().getNomeSetor()%>  </td> 
            <td><a class="btn btn-outline-secondary fw-bold bottom-0" href="CadastroTurma.jsp?opcao=alterar&codTurma=<%= turma.getCodTurma()%>&mestredeSala=<%= turma.getMestredeSala()%>&numeroSala=<%= turma.getNumeroSala()%>&quantAlunos=<%= turma.getQuantAlunos()%>&quantMaxAlunos=<%= turma.getQuantMaxAlunos()%>&codturno=<%= turma.getObjTurno().getCodTurno()%>&codsetor=<%= turma.getObjSetor().getCodSetor()%>">Alterar</a> </td>
            <td><a class="btn btn-outline-danger fw-bold bottom-0" href="CadastroTurma.jsp?opcao=excluir&codTurma=<%= turma.getCodTurma()%>&mestredeSala=<%= turma.getMestredeSala()%>&numeroSala=<%= turma.getNumeroSala()%>&quantAlunos=<%= turma.getQuantAlunos()%>&quantMaxAlunos=<%= turma.getQuantMaxAlunos()%>&codturno=<%= turma.getObjTurno().getCodTurno()%>&codsetor=<%= turma.getObjSetor().getCodSetor()%>">Excluir</a> </td>
        </tr>
        <%}%>            
    </tbody>
       
</table>