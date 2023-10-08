<HTML>
<HEAD>
</HEAD>
 <%
  session.invalidate();
  response.sendRedirect("Home.jsp?mensagem=logoff efetuado com sucesso!");
%>
</HTML>
