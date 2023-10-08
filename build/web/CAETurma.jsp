
<%@page import="modelo.Turno"%>
<%@page import="modelo.DAOTurno"%>
<%@page import="modelo.Setor"%>
<%@page import="modelo.DAOSetor"%>

<%@page import="modelo.DAOTurma"%>
<%@page import="modelo.Turma"%>
<%
String mestredeSala = request.getParameter("mestredeSala");
String numeroSala = request.getParameter("numeroSala");
String quantAlunos = request.getParameter("quantAlunos");
String quantMaxAlunos = request.getParameter("quantMaxAlunos");
String turno = request.getParameter("turno");
String setor = request.getParameter("setor");
String codTurma = request.getParameter("codTurma");
String opcao = request.getParameter("opcao");
String mensagem = "";

Turma objTurma = new Turma();
Turno objTurno = new Turno();
Setor objSetor = new Setor();

objTurma.setMestredeSala(mestredeSala);
objTurma.setNumeroSala(Integer.parseInt(numeroSala));
objTurma.setQuantAlunos(Integer.parseInt(quantAlunos));
objTurma.setQuantMaxAlunos(Integer.parseInt(quantMaxAlunos));
objTurma.getObjTurno().setCodTurno(Integer.parseInt(turno));
objTurma.getObjSetor().setCodSetor(Integer.parseInt(setor));
objTurma.setCodTurma(Integer.parseInt(codTurma));

DAOTurma objDAOTurma = new DAOTurma();
if(opcao.equals("cadastrar")){
mensagem = objDAOTurma.inserir(objTurma);
}
if(opcao.equals("alterar")){
mensagem = objDAOTurma.alterar(objTurma);
}
if(opcao.equals("excluir")){
mensagem = objDAOTurma.excluir(objTurma);
}
response.sendRedirect("CadastroTurma.jsp?mensagem="+mensagem);
%>