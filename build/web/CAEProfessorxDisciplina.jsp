<%@page import="modelo.ConverteData"%>
<%@page import="modelo.DAOProfessorxDisciplina"%>
<%@page import="modelo.ProfessorXDisciplina"%>
<%
    String mensagem="";

    String codProf = request.getParameter("codProf");
    String codDisciplina = request.getParameter("codDisciplina");
    String opcao = request.getParameter("opcao");
    String codProfessorXdisciplina = request.getParameter("codProfessorXDisciplina");
    System.out.println("codDisciplina="+codDisciplina);
    System.out.println("codProf="+codProf);
    System.out.println("codProfessorXdisciplina="+codProfessorXdisciplina);
    
    ProfessorXDisciplina objProfessorXDisciplina = new ProfessorXDisciplina();
    objProfessorXDisciplina.getObjProf().setCodProf(Integer.parseInt(codProf));
    objProfessorXDisciplina.getObjDisciplina().setCodDisciplina(Integer.parseInt(codDisciplina));
    objProfessorXDisciplina.setCodProfessorXdisciplina(Integer.parseInt(codProfessorXdisciplina));
    
    DAOProfessorxDisciplina objDAOProfessorXDisciplina = new DAOProfessorxDisciplina();
    if(opcao.equals("cadastrar")){
    mensagem = objDAOProfessorXDisciplina.inserir(objProfessorXDisciplina);
    }
    if(opcao.equals("excluir")){
    mensagem = objDAOProfessorXDisciplina.excluir(objProfessorXDisciplina);
    }
   
    
    response.sendRedirect("CadastroProfessorxDisciplina.jsp?mensagem="+mensagem); %>