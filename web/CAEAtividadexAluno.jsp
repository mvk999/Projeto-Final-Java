<%@page import="modelo.ConverteData"%>
<%@page import="modelo.DAOAtividadexAluno"%>
<%@page import="modelo.AtividadexAluno"%>
<%
    String mensagem="";

    String codAtivComple = request.getParameter("codAtivComple");
    String codAluno = request.getParameter("codAluno");
    String opcao = request.getParameter("opcao");
     String codAtividadeXAluno = request.getParameter("codAtividadeXaluno");
    System.out.println("codALuno="+codAluno);
    System.out.println("codativcomple="+codAtivComple);
    System.out.println("codativxaluno="+codAtividadeXAluno);
    
    
    AtividadexAluno objAtividadeXaluno = new AtividadexAluno();
    objAtividadeXaluno.getObjAtivComple().setCodAtivComple(Integer.parseInt(codAtivComple));
    objAtividadeXaluno.getObjAluno().setCodAluno(Integer.parseInt(codAluno));
    objAtividadeXaluno.setCodAtividadeXaluno(Integer.parseInt(codAtividadeXAluno));
    
    DAOAtividadexAluno objDAOAtividadeXaluno = new DAOAtividadexAluno();
    if(opcao.equals("cadastrar")){
    mensagem = objDAOAtividadeXaluno.inserir(objAtividadeXaluno);
    }
    if(opcao.equals("excluir")){
    mensagem = objDAOAtividadeXaluno.excluir(objAtividadeXaluno);
    }
    
    response.sendRedirect("CadastroAtividadexAluno.jsp?mensagem="+mensagem); %>