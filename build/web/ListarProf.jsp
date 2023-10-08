<%@page import="modelo.ConverteData"%>
<%@page import="modelo.Prof"%>
<%@page import="modelo.DAOProf"%>
<%@page import="java.util.List"%>
<%
    DAOProf objDAOProf = new DAOProf();
    
List<Prof> listaProf = objDAOProf.listarProf();
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
            <th>NOME</th>
            <th>CPF</th>
            <th>EMAIL</th>
            <th>TELEFONE</th>
            <th>DATA DE NASCIMENTO</th>
            <th>ANO DE INGRESSÃO</th>
            <th>NATURALIDADE</th>
            <th>ALTERAR</th>
            <th>EXCLUIR</th>
        </tr>
    </thead>
    <tbody>
        <% for(Prof prof: listaProf){ %>
        <tr>
            <td><%= prof.getCodProf() %></td>
            <td><%= prof.getNomeProf() %></td>
            <td><%= prof.getCpfProf() %></td>
            <td><%= prof.getEmailProf() %></td>
            <td><%= prof.getTelefoneProf() %></td>
            <td><%= objConverte.converteTela(prof.getNascimentoProf()) %></td>
            <td><%= prof.getAnoIngressaoProf() %></td>
            <td><%= prof.getNaturalidadeProf() %></td>
            <td><a class="btn btn-outline-secondary fw-bold bottom-0" href="CadastroProf.jsp?opcao=alterar&codProf=<%= prof.getCodProf() %>&nomeProf=<%= prof.getNomeProf() %>&cpfProf=<%= prof.getCpfProf() %>&emailProf=<%= prof.getEmailProf() %>&telefoneProf=<%= prof.getTelefoneProf() %>&nascimentoProf=<%= objConverte.converteBanco(prof.getNascimentoProf()) %>&anoIngressaoProf=<%= prof.getAnoIngressaoProf() %>&naturalidadeProf=<%= prof.getNaturalidadeProf() %>">Alterar</a></td>
            <td><a class="btn btn-outline-danger fw-bold bottom-0" href="CadastroProf.jsp?opcao=excluir&codProf=<%= prof.getCodProf() %>&nomeProf=<%= prof.getNomeProf() %>&cpfProf=<%= prof.getCpfProf() %>&emailProf=<%= prof.getEmailProf() %>&telefoneProf=<%= prof.getTelefoneProf() %>&nascimentoProf=<%= objConverte.converteBanco(prof.getNascimentoProf()) %>&anoIngressaoProf=<%= prof.getAnoIngressaoProf() %>&naturalidadeProf=<%= prof.getNaturalidadeProf() %>">Excluir</a></td>

        </tr>
        <% } %>
        
    </tbody>
</table>
