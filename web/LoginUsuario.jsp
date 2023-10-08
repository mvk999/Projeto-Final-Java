<%@page import="modelo.Usuario"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="modelo.DAOUsuario"%>
<%@include file="Menu.jsp" %>
<%
    String email = request.getParameter("email");
    String senha = request.getParameter("senha");
    DAOUsuario login = new DAOUsuario();
    Usuario usuario = new Usuario();
    System.out.println("email="+email+" senha="+senha);
    usuario.setEmail(email);
    usuario.setSenha(senha);
  
    ResultSet rs = login.getLogin(usuario);
    
    if (!(rs.next())) {
 
        response.sendRedirect("index.jsp?mensagem=Login inválido");
    } else {
        
         
                // String senhaBD = rs.getString("senha");
        String nomeBD = rs.getString("nome");
        String codigoIDUsuarioBD = rs.getString("idusuario");
       // if (!senha.equals(senhaBD)) {
        //    response.sendRedirect("index.jsp?mensagem=Senha inválida");
       // } else {
            session.setAttribute("email", email);
            session.setAttribute("nome", nomeBD);
            session.setAttribute("codigoUsuario", codigoIDUsuarioBD);
       // }
       
    }
   
%>

<html>
    <head>
        <title>Página Principal</title>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
        

        
    </head>
    <body >
       

        
        <br>
<br>
        <table border="0" cellpadding="0" cellspacing="0" align="center" width="700" >
                
                        <tr >

                            <th align="LEFT" width="11%" bordercolor="#FFFFFF">


                                <div align="left"><font face="verdana" size="1"> </font></div>
                            </th>

                            <th align="LEFT" bordercolor="#FFFFFF" width="89%">
 
  <div class="modal-content text-center" style="border: 1px solid #ccc; padding: 20px; border-radius: 5px;">
    <span class="close">&times;</span>
    <h2 class="titulo-sobre text-uppercase fw-bold">Obrigado por efetuar seu login!</h2>
    <div class="text-sobre">
        <p>Para garantir sua segurança, faça o logout sempre que sair do nosso site, clicando no link localizado na barra acima.</p>
        <p>Se surgirem dúvidas, não hesite em entrar em contato utilizando a seção 'Contato' acima. </p>
        <p class="fw-bold">Sejam bem-vindos!!</p>
    </div>
</div>

                        </tr>
                    </table>

    </body>
 
</html>
