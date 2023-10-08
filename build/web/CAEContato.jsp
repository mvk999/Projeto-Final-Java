<%@page import="modelo.Contato"%>
<%@page import="modelo.DAOContato"%>
<%@page import="modelo.ConverteData"%>
<%@page import="java.util.Date"%>
<%
String codContato = request.getParameter("codContato");
String nome = request.getParameter("nome");
String email = request.getParameter("email");
String mensagem = request.getParameter("mensagem");
String aviso = "";

Contato objContato = new Contato();
ConverteData objConverte = new ConverteData();

objContato.setCodContato(Integer.parseInt(codContato));
objContato.setNome(nome);
objContato.setEmail(email);
objContato.setMensagem(mensagem);

DAOContato objDAOContato = new DAOContato();
aviso = objDAOContato.inserir(objContato);
response.sendRedirect("Contato.jsp?aviso="+aviso);
%>
