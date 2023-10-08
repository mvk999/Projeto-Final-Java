<%@page import="modelo.DAONivelEnsino"%>
<%@page import="modelo.NivelEnsino"%>
<%
    String mensagem="";
    String niveldeEnsino = request.getParameter("niveldeEnsino");
    String opcao = request.getParameter("opcao");
    String codNivelEnsino = request.getParameter("codNivelEnsino");
    
    NivelEnsino objNivelEnsino= new NivelEnsino();
    objNivelEnsino.setNiveldeEnsino(niveldeEnsino);
    objNivelEnsino.setCodNivelEnsino(Integer.parseInt(codNivelEnsino));
    
    DAONivelEnsino objDAONivelEnsino = new DAONivelEnsino();
    if(opcao.equals("cadastrar")){
    mensagem = objDAONivelEnsino.inserir(objNivelEnsino);
    }
    if(opcao.equals("alterar")){
    mensagem = objDAONivelEnsino.alterar(objNivelEnsino);
    }
    if(opcao.equals("excluir")){
    mensagem = objDAONivelEnsino.excluir(objNivelEnsino);
    }
    
    response.sendRedirect("CadastroNivelEnsino.jsp?mensagem="+mensagem); %>