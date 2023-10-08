<%-- 
    Document   : ListarTurno
    Created on : 09/05/2023, 21:14:13
    Author     : 16110968633
--%>

<%@page import="modelo.ConverteData"%>
<%@page import="modelo.Turno"%>
<%@page import="java.util.List"%>
<%@page import="modelo.DAOTurno"%>
<%
    DAOTurno objDAOTurno = new DAOTurno();
    List <Turno> listarTurno = objDAOTurno.listarTurno();
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
            <th>NOME TURNO</th>
            <th>HORÁRIO DE ENTRADA</th>
            <th>HORÁRIO DE SAÍDA</th>
            <th>ALTERAR</th>
            <th>EXCLUIR</th>
        </tr>
    </thead>
    <tbody>
           <% for(Turno turno:listarTurno){%>
        <tr>
            <td><%= turno.getCodTurno()%>  </td>
            <td><%= turno.getNomeTurno()%>  </td>  
            <td><%= turno.getHorarioEntrada()%>  </td>
            <td><%= turno.getHorarioSaida()%>  </td>
            <td><a class="btn btn-outline-secondary fw-bold bottom-0" href="CadastroTurno.jsp?opcao=alterar&codTurno=<%= turno.getCodTurno()%>&nomeTurno=<%= turno.getNomeTurno()%>&horarioEntrada=<%= turno.getHorarioEntrada()%>&horarioSaida=<%= turno.getHorarioSaida()%>">Alterar</a></td>
            <td><a class="btn btn-outline-danger fw-bold bottom-0" href="CadastroTurno.jsp?opcao=excluir&codTurno=<%= turno.getCodTurno()%>&nomeTurno=<%= turno.getNomeTurno()%>&horarioEntrada=<%= turno.getHorarioEntrada()%>&horarioSaida=<%= turno.getHorarioSaida()%>">Excluir</a></td>
        </tr>
        <%}%>            
    </tbody>
       
</table>
