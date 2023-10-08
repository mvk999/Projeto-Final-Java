<%@page import="modelo.DAOAtivComple"%>
<%@page import="modelo.AtivComple"%>
<%
    String mensagem="";
    String nomeAtivComple = request.getParameter("nomeAtivComple");
    String descAtivComple = request.getParameter("descAtivComple");
    String opcao = request.getParameter("opcao");
    String codAtivComple = request.getParameter("codAtivComple");
    
    AtivComple objAtivComple= new AtivComple();
    objAtivComple.setNomeAtivComple(nomeAtivComple);
    objAtivComple.setDescAtivComple(descAtivComple);
    objAtivComple.setCodAtivComple(Integer.parseInt(codAtivComple));
    
    DAOAtivComple objDAOAtivComple = new DAOAtivComple();
    if(opcao.equals("cadastrar")){
    mensagem = objDAOAtivComple.inserir(objAtivComple);
    }
    if(opcao.equals("alterar")){
    mensagem = objDAOAtivComple.alterar(objAtivComple);
    }
    if(opcao.equals("excluir")){
    mensagem = objDAOAtivComple.excluir(objAtivComple);
    }
    
    response.sendRedirect("CadastroAtivComple.jsp?mensagem="+mensagem); %>