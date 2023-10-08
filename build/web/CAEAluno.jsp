<%@page import="modelo.ConverteData"%>
<%@page import="modelo.DAOAluno"%>
<%@page import="modelo.Aluno"%>
<%
    ConverteData objConverte = new ConverteData();
    String mensagem="";
    String nomeAluno = request.getParameter("nomeAluno");
    String cpfAluno = request.getParameter("cpfAluno");
    String matriculaAluno = request.getParameter("matriculaAluno");
    String nascimentoAluno = request.getParameter("nascimentoAluno");
    String nomePaiAluno = request.getParameter("nomePaiAluno");
    String nomeMaeAluno = request.getParameter("nomeMaeAluno");
    String telefoneResponsavelAluno = request.getParameter("telefoneResponsavelAluno");
    String nivelEnsinoAluno = request.getParameter("nivelEnsinoAluno");
    
    
    String opcao = request.getParameter("opcao");
    String codAluno = request.getParameter("codAluno");
    
    Aluno objAluno= new Aluno();
    objAluno.setNomeAluno(nomeAluno);
    objAluno.setCpfAluno(cpfAluno);
    objAluno.setMatriculaAluno(matriculaAluno);
    objAluno.setNascimentoAluno(objConverte.converteCalendario(nascimentoAluno));
    objAluno.setNomePaiAluno(nomePaiAluno);
    objAluno.setNomeMaeAluno(nomeMaeAluno);
    objAluno.setTelefoneResponsavelAluno(Integer.parseInt(telefoneResponsavelAluno));
    objAluno.getObjnivelensino().setCodNivelEnsino(Integer.parseInt(nivelEnsinoAluno));
    objAluno.setCodAluno(Integer.parseInt(codAluno));
    
    DAOAluno objDAOAluno = new DAOAluno();
    if(opcao.equals("cadastrar")){
    mensagem = objDAOAluno.inserir(objAluno);
    }
    if(opcao.equals("alterar")){
    mensagem = objDAOAluno.alterar(objAluno);
    }
    if(opcao.equals("excluir")){
    mensagem = objDAOAluno.excluir(objAluno);
    }
    
    response.sendRedirect("CadastroAluno.jsp?mensagem="+mensagem); %>