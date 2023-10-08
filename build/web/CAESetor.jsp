<%@page import="modelo.Setor"%>
<%@page import="modelo.DAOSetor"%>
<%@page import="modelo.ConverteData"%>
<%@page import="java.util.Date"%>
<%
String codSetor = request.getParameter("codSetor");
String nomeSetor = request.getParameter("nomeSetor");
String descSetor = request.getParameter("descSetor");
String numeroSalaSetor = request.getParameter("numeroSalaSetor");
String opcao = request.getParameter("opcao");
String mensagem = "";

Setor objSetor = new Setor();
ConverteData objConverte = new ConverteData();

objSetor.setCodSetor(Integer.parseInt(codSetor));
objSetor.setNomeSetor(nomeSetor);
objSetor.setDescSetor(descSetor);
objSetor.setNumeroSalaSetor(numeroSalaSetor);

DAOSetor objDAOSetor = new DAOSetor();
if(opcao.equals("cadastrar")){
mensagem = objDAOSetor.inserir(objSetor);
}
if(opcao.equals("alterar")){
mensagem = objDAOSetor.alterar(objSetor);
}
if(opcao.equals("excluir")){
mensagem = objDAOSetor.excluir(objSetor);
}
response.sendRedirect("CadastroSetor.jsp?mensagem="+mensagem);
%>
