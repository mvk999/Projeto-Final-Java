<%-- 
    Document   : CAETurno
    Created on : 09/05/2023, 21:08:44
    Author     : 16110968633
--%>

<%@page import="modelo.Turno"%>
<%@page import="modelo.DAOTurno"%>
<%@page import="modelo.ConverteData"%>
<%@page import="java.util.Date"%>
<%
String codTurno = request.getParameter("codTurno");
String nomeTurno = request.getParameter("nomeTurno");
String horarioEntrada = request.getParameter("horarioEntrada");
String horarioSaida = request.getParameter("horarioSaida");
String opcao = request.getParameter("opcao");
String mensagem = "";

Turno objTurno = new Turno();
ConverteData objConverte = new ConverteData();

objTurno.setCodTurno(Integer.parseInt(codTurno));
objTurno.setNomeTurno(nomeTurno);
objTurno.setHorarioEntrada(horarioEntrada);
objTurno.setHorarioSaida(horarioSaida);

DAOTurno objDAOTurno = new DAOTurno();
if(opcao.equals("cadastrar")){
mensagem = objDAOTurno.inserir(objTurno);
}
if(opcao.equals("alterar")){
mensagem = objDAOTurno.alterar(objTurno);
}
if(opcao.equals("excluir")){
mensagem = objDAOTurno.excluir(objTurno);
}
response.sendRedirect("CadastroTurno.jsp?mensagem="+mensagem);
%>
