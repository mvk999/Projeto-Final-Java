<%@page import="modelo.ConverteData"%>
<%@page import="modelo.Ocorrencia"%>
<%@page import="java.util.List"%>
<%@page import="modelo.DAOOcorrencia"%>
<%
    DAOOcorrencia objDAOOcorrencia = new DAOOcorrencia();
    List<Ocorrencia> listaOcorrencia = objDAOOcorrencia.listarOcorrencia();
    ConverteData objConverte = new ConverteData();


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
            <th>DESCRIÇÃO</th>
            <th>DATA OCORRÊNCIA</th>
            <th>ALUNO</th>
            <th>TURMA</th>
            <th>ALTERAR</th>
            <th>EXCLUIR</th>
        </tr>
    </thead>
    <tbody>
        <% for(Ocorrencia ocorrencia:listaOcorrencia){%>
        <tr>
            <td><%= ocorrencia.getCodOcorrencia()%>  </td>
            <td><%= ocorrencia.getDescOcorrencia()%>  </td>
            <td><%= objConverte.converteTela(ocorrencia.getDataOcorrencia()) %></td>
            <td><%= ocorrencia.getObjAluno().getNomeAluno()%>  </td> 
            <td><%= ocorrencia.getObjTurma().getNumeroSala()%>  </td> 
            <td><a class="btn btn-outline-secondary fw-bold bottom-0" href="CadastroOcorrencia.jsp?opcao=alterar&codOcorrencia=<%= ocorrencia.getCodOcorrencia()%>&descOcorrencia=<%= ocorrencia.getDescOcorrencia()%>&dataOcorrencia=<%= objConverte.converteBanco(ocorrencia.getDataOcorrencia()) %>&codaluno=<%= ocorrencia.getObjAluno().getCodAluno()%>&codturma=<%= ocorrencia.getObjTurma().getCodTurma()%>">Alterar</a> </td>
            <td><a class="btn btn-outline-danger fw-bold bottom-0" href="CadastroOcorrencia.jsp?opcao=excluir&codOcorrencia=<%= ocorrencia.getCodOcorrencia()%>&descOcorrencia=<%= ocorrencia.getDescOcorrencia()%>&dataOcorrencia=<%= objConverte.converteBanco(ocorrencia.getDataOcorrencia()) %>&codaluno=<%= ocorrencia.getObjAluno().getCodAluno()%>&codturma=<%= ocorrencia.getObjTurma().getCodTurma()%>">Excluir</a> </td>
        </tr>
        <%}%>            
    </tbody>
       
</table>