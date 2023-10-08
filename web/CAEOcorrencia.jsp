<%@page import="modelo.ConverteData"%>
<%@page import="modelo.Aluno"%>
<%@page import="modelo.DAOAluno"%>
<%@page import="modelo.Turma"%>
<%@page import="modelo.DAOTurma"%>

<%@page import="modelo.DAOOcorrencia"%>
<%@page import="modelo.Ocorrencia"%>
<%

ConverteData objConverte = new ConverteData();
String descOcorrencia = request.getParameter("descOcorrencia");
String dataOcorrencia = request.getParameter("dataOcorrencia");
String aluno = request.getParameter("aluno");
String turma = request.getParameter("turma");
String codOcorrencia = request.getParameter("codOcorrencia");
String opcao = request.getParameter("opcao");
String mensagem = "";

Ocorrencia objOcorrencia = new Ocorrencia();
Aluno objAluno = new Aluno();
Turma objTurma = new Turma();

objOcorrencia.setDescOcorrencia(descOcorrencia);
objOcorrencia.setDataOcorrencia(objConverte.converteCalendario(dataOcorrencia));
objOcorrencia.getObjAluno().setCodAluno(Integer.parseInt(aluno));
objOcorrencia.getObjTurma().setCodTurma(Integer.parseInt(turma));
objOcorrencia.setCodOcorrencia(Integer.parseInt(codOcorrencia));

DAOOcorrencia objDAOOcorrencia = new DAOOcorrencia();
if(opcao.equals("cadastrar")){
mensagem = objDAOOcorrencia.inserir(objOcorrencia);
}
if(opcao.equals("alterar")){
mensagem = objDAOOcorrencia.alterar(objOcorrencia);
}
if(opcao.equals("excluir")){
mensagem = objDAOOcorrencia.excluir(objOcorrencia);
}
response.sendRedirect("CadastroOcorrencia.jsp?mensagem="+mensagem);
%>