<%@page import="modelo.ConverteData"%>
<%@page import="modelo.DAOProf"%>
<%@page import="modelo.Prof"%>
<%
    ConverteData objConverte = new ConverteData();
    String mensagem="";
    String nomeProf = request.getParameter("nomeProf");
    String cpfProf = request.getParameter("cpfProf");
    String emailProf = request.getParameter("emailProf");
    String telefoneProf = request.getParameter("telefoneProf");
    String nascimentoProf = request.getParameter("nascimentoProf");
    String anoIngressaoProf = request.getParameter("anoIngressaoProf");
    String naturalidadeProf = request.getParameter("naturalidadeProf");
    
    
    String opcao = request.getParameter("opcao");
    String codProf = request.getParameter("codProf");
    
    Prof objProf= new Prof();
    objProf.setNomeProf(nomeProf);
    objProf.setCpfProf(cpfProf);
    objProf.setEmailProf(emailProf);
    objProf.setTelefoneProf(telefoneProf);
    objProf.setNascimentoProf(objConverte.converteCalendario(nascimentoProf));
    objProf.setAnoIngressaoProf(Integer.parseInt(anoIngressaoProf));
    objProf.setNaturalidadeProf(naturalidadeProf);
    objProf.setCodProf(Integer.parseInt(codProf));
    
    DAOProf objDAOProf = new DAOProf();
    if(opcao.equals("cadastrar")){
    mensagem = objDAOProf.inserir(objProf);
    }
    if(opcao.equals("alterar")){
    mensagem = objDAOProf.alterar(objProf);
    }
    if(opcao.equals("excluir")){
    mensagem = objDAOProf.excluir(objProf);
    }
    
    response.sendRedirect("CadastroProf.jsp?mensagem="+mensagem); %>