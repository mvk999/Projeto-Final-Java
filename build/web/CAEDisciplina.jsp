<%@page import="modelo.DAODisciplina"%>
<%@page import="modelo.Disciplina"%>
<%
    String mensagem="";
    String nomeDisciplina = request.getParameter("nomeDisciplina");
    String areaDisciplina = request.getParameter("areaDisciplina");
    String opcao = request.getParameter("opcao");
    String codDisciplina = request.getParameter("codDisciplina");
    
    Disciplina objDisciplina= new Disciplina();
    objDisciplina.setNomeDisciplina(nomeDisciplina);
    objDisciplina.setAreaDisciplina(areaDisciplina);
    objDisciplina.setCodDisciplina(Integer.parseInt(codDisciplina));
    
    DAODisciplina objDAODisciplina = new DAODisciplina();
    if(opcao.equals("cadastrar")){
    mensagem = objDAODisciplina.inserir(objDisciplina);
    }
    if(opcao.equals("alterar")){
    mensagem = objDAODisciplina.alterar(objDisciplina);
    }
    if(opcao.equals("excluir")){
    mensagem = objDAODisciplina.excluir(objDisciplina);
    }
    
    response.sendRedirect("CadastroDisciplina.jsp?mensagem="+mensagem); %>