package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/Menu.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=Latin1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <title>Escola Mundial</title>\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/bootstrap.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/all.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/estilo.css\">\n");
      out.write("    <link rel=\"shortcut icon\" href=\"imagens/escolalogo.png\" type=\"image/x-icon\">\n");
      out.write("    \n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"css/font-awesome.css\">\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"css/fsbanner.css\">\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"css/countdown.css\">\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"css/animate.css\">\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"css/hover.css\">\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"css/menu.css\">\n");
      out.write("\n");
      out.write("\t\t<script src=\"js/jquery.js\"></script>\n");
      out.write("\t\t<script src=\"js/popper.js\"></script>\n");
      out.write("\t\t<script src=\"js/bootstrap.js\"></script>\n");
      out.write("\t\t<script src=\"js/fsbanner.js\"></script>\n");
      out.write("\t\t<script src=\"js/jquery.downCount.js\"></script>\n");
      out.write("\t\t<script src=\"js/smooth_navigation.js\"></script>\n");
      out.write("\t\t<script src=\"js/wow.min.js\"></script>\n");
      out.write("\t\t<script src=\"js/backtotop.js\"></script>\n");
      out.write("\t        <script src=\"js/validadados.js\"></script>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("     \n");
      out.write("    \n");
      out.write("<div class=\"container-fluid\">\n");
      out.write("        <!-- start header -->\n");
      out.write("        <header class=\"fixed-top\">\n");
      out.write("            <nav class=\"navbar navbar-expand-md px-4\">\n");
      out.write("                <div class=\"navbar-brand\">\n");
      out.write("                    <a href=\"#escola\"><img  height=\"72\" onclick=\"goToPage1()\" src=\"imagens/escolalogo.png\" alt=\"\"></a>\n");
      out.write("                    <button class=\"navbar-toggler\" data-bs-toggle=\"collapse\" data-bs-target=\"#menubar\"><span class=\"fa-solid fa-bars\"></span></button>\n");
      out.write("                </div>\n");
      out.write("    \n");
      out.write("                <div class=\"collapse navbar-collapse\" id=\"menubar\">\n");
      out.write("                    <ul class=\"navbar-nav\">\n");
      out.write("                         <li class=\"fw-bold nav-item\"><a href=\"#\" class=\"nav-link text-white\" onclick=\"goToPage1()\">Home</a></li>\n");
      out.write("                        <script>\n");
      out.write("        function goToPage1() {\n");
      out.write("            window.location.href = 'http://localhost:8080/OtavioEscola/Home.jsp';\n");
      out.write("        }\n");
      out.write("    </script> \n");
      out.write("                        <li class=\"nav-item dropdown\">\n");
      out.write("                            <a href=\"#\" class=\"fw-bold nav-link text-white dropdown-toggle\" data-bs-toggle=\"dropdown\">Cadastros</a>\n");
      out.write("                            <ul class=\"dropdown-menu p-3\">\n");
      out.write("                                <li><a href=\"CadastroAluno.jsp\" class=\"menu-item dropdown-item text-white\">Aluno</a></li>\n");
      out.write("                                <li><a href=\"CadastroAtivComple.jsp\" class=\"menu-item dropdown-item text-white\">Atividade Complementar</a></li>\n");
      out.write("                                <li><a href=\"CadastroDisciplina.jsp\" class=\"menu-item dropdown-item text-white\">Disciplina</a></li>\n");
      out.write("                                <li><a href=\"CadastroNivelEnsino.jsp\" class=\"menu-item dropdown-item text-white\">Nivel de Ensino</a></li>\n");
      out.write("                                <li><a href=\"CadastroProf.jsp\" class=\"menu-item dropdown-item text-white\">Professores</a></li>\n");
      out.write("                                <li><a href=\"CadastroSetor.jsp\" class=\"menu-item dropdown-item text-white\">Setor</a></li>\n");
      out.write("                                <li><a href=\"CadastroTurma.jsp\" class=\"menu-item dropdown-item text-white\">Turmas</a></li>\n");
      out.write("                                <li><a href=\"CadastroTurno.jsp\" class=\"menu-item dropdown-item text-white\">Turno</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item dropdown\">\n");
      out.write("                            <a href=\"#\" class=\"fw-bold nav-link text-white dropdown-toggle\" data-bs-toggle=\"dropdown\">Cargos</a>\n");
      out.write("                            <ul class=\"dropdown-menu p-3\">\n");
      out.write("                                <li><a href=\"CadastroAtividadexAluno.jsp\" class=\"menu-item dropdown-item text-white\">Atividade do Aluno</a></li>\n");
      out.write("                                <li><a href=\"CadastroProfessorxDisciplina.jsp\" class=\"menu-item dropdown-item text-white\">Disciplina do Professor</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </li>\n");
      out.write("                         \n");
      out.write("                        <li class=\"fw-bold nav-item dropdown\">\n");
      out.write("                        \n");
      out.write("                            <a href=\"#http://localhost:8080/OtavioEscola/Contato.jsp\" onclick=\"goToPage3()\" class=\"menu-item dropdown-item nav-link text-white\">Contato</a>\n");
      out.write("                             <script>\n");
      out.write("        function goToPage3() {\n");
      out.write("            window.location.href = 'http://localhost:8080/OtavioEscola/Contato.jsp';\n");
      out.write("        }\n");
      out.write("    </script> \n");
      out.write("                        </li>\n");
      out.write("                        \n");
      out.write("                       <li>\n");
      out.write("    <a id=\"openModal\" class=\"fw-bold menu-item nav-link text-white\">Sobre</a>\n");
      out.write("    <div id=\"myModal\" class=\"modal\">\n");
      out.write("                <div class=\"modal-content text-center\">\n");
      out.write("                    <span class=\"close\">&times;</span>\n");
      out.write("                    <h2 class=\"titulo-sobre text-uppercase fw-bold\">Sobre a Escola Mundial</h2>\n");
      out.write("                    <div class=\"text-sobre\">\n");
      out.write("                        <p>\n");
      out.write("                           \n");
      out.write("A \"Escola Mundial\" é uma instituição de ensino que se destaca por sua dedicação incansável em proporcionar a seus alunos a mais alta qualidade educacional. Fundada com a missão de elevar os padrões de aprendizado e preparar os estudantes para um futuro globalizado, esta instituição é um farol de excelência acadêmica e desenvolvimento pessoal.\n");
      out.write("\n");
      out.write("No coração dessa escola está o compromisso com a busca do conhecimento em todas as suas formas. Acreditamos que cada aluno possui um potencial único que merece ser nutrido e cultivado. Nossa abordagem educacional é centrada no aluno, focando em suas necessidades individuais e permitindo que eles se desenvolvam como pensadores críticos, cidadãos responsáveis e líderes inspirados.\n");
      out.write("\n");
      out.write("Com uma equipe de educadores altamente qualificados e dedicados, esta instituição oferece um ambiente de aprendizado enriquecedor, onde a curiosidade é incentivada, a criatividade é valorizada e a busca pelo conhecimento é constantemente estimulada. Nossos professores não são apenas transmissores de informações, mas mentores e guias que inspiram os alunos a explorar novas ideias, questionar o status quo e se esforçar pelo seu melhor desempenho.\n");
      out.write("\n");
      out.write("Além das quatro paredes da sala de aula, nossa abordagem holística abrange não apenas o desenvolvimento acadêmico, mas também o crescimento emocional, social e ético dos alunos. Acreditamos que uma educação de qualidade vai além dos livros didáticos. Por isso, oferecemos uma variedade de atividades extracurriculares, projetos sociais e oportunidades de envolvimento com a comunidade.\n");
      out.write("\n");
      out.write("Como uma verdadeira instituição global, abraçamos a diversidade e a globalização. Promovemos a compreensão intercultural, incentivando os alunos a explorar diferentes perspectivas e a respeitar as diversas culturas e tradições que enriquecem nosso mundo. Preparamos nossos alunos para enfrentar os desafios de um mundo em constante evolução, capacitando-os com as habilidades e a mentalidade necessárias para se destacarem em qualquer campo que escolham seguir.\n");
      out.write("\n");
      out.write("Na \"Escola Mundial\", a busca pelo melhor ensino possível é uma jornada contínua. Estamos comprometidos em criar um ambiente educacional que inspire a excelência, nutra a paixão pelo aprendizado e prepare os alunos para se tornarem cidadãos globais responsáveis. Eles são capazes de moldar um futuro melhor para si mesmos e para o mundo ao seu redor.\n");
      out.write("                        </p>\n");
      out.write("                        <p class=\"fw-bold\">Sejam bem-vindos!!</p>\n");
      out.write("                    </div>\n");
      out.write("            </div>\n");
      out.write("        \n");
      out.write("        <script>const openModalButton = document.getElementById('openModal');\n");
      out.write("const modal = document.getElementById('myModal');\n");
      out.write("const closeButton = modal.querySelector('.close');\n");
      out.write("\n");
      out.write("openModalButton.addEventListener('click', () => {\n");
      out.write("    modal.style.display = 'block';\n");
      out.write("});\n");
      out.write("\n");
      out.write("closeButton.addEventListener('click', () => {\n");
      out.write("    modal.style.display = 'none';\n");
      out.write("});\n");
      out.write("\n");
      out.write("window.addEventListener('click', (event) => {\n");
      out.write("    if (event.target === modal) {\n");
      out.write("        modal.style.display = 'none';\n");
      out.write("    }\n");
      out.write("});</script>\n");
      out.write("    </div>\n");
      out.write("</li>\n");
      out.write("\n");
      out.write("    ");
 if (session.getAttribute("nome") != null) {
      out.write("\n");
      out.write("                <li>\n");
      out.write("                    <a class=\"menu-item dropdown-item fw-bold nav-link text-secondary\" href=\"logoff.jsp\">Desconectar</a>\n");
      out.write("                    </li>\n");
      out.write("                    ");
 }
      out.write("\n");
      out.write("\n");
      out.write("                            \n");
      out.write("                        \n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </nav>\n");
      out.write("            \n");
      out.write("               \n");
      out.write("     <script src=\"js/mobile-navbar.js\"></script>\n");
      out.write("        </header>\n");
      out.write("<!-- Importando o Bootstrap JS (e dependências) -->\n");
      out.write("       <script src=\"caminho/para/jquery.min.js\"></script>\n");
      out.write("       <script src=\"caminho/para/bootstrap.min.js\"></script>\n");
      out.write("       <script src=\"js/bootstrap.bundle.js\"></script>\n");
      out.write("       <script src=\"css/bootstrap-grid.rtl.css\"></script>\n");
      out.write("       \n");
      out.write("\n");
      out.write("       \n");
      out.write("</div>   \n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("<script>\n");
      out.write("    function enviar(par) {\n");
      out.write("        if (par == 'login') {\n");
      out.write("            if (document.cadastro.email.value == '') {\n");
      out.write("                alert(\"Preencha o campo email\");\n");
      out.write("            } else if (document.cadastro.senha.value == '') {\n");
      out.write("                alert(\"Preencha o campo senha\");\n");
      out.write("            } else {\n");
      out.write("                document.cadastro.action = 'LoginUsuario.jsp';\n");
      out.write("                document.cadastro.submit();\n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("    }\n");
      out.write("</script>\n");
 String mensagem = request.getParameter("mensagem"); 
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=Latin1\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <title>Login</title>\n");
      out.write("    <style>\n");
      out.write("        /* Adicionei um estilo para remover a barra preta superior */\n");
      out.write("        nav {\n");
      out.write("            display: block;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        /* Estilos para a imagem */\n");
      out.write("        .login-image {\n");
      out.write("            display: block;\n");
      out.write("            margin: 45px auto 10px; /* Adicionei margem inferior para ajustar o espaçamento */\n");
      out.write("            max-width: 200px;\n");
      out.write("            border-radius: 50%;\n");
      out.write("            border: none;\n");
      out.write("            vertical-align: middle; /* Centraliza verticalmente */\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        /* Estilos para o formulário */\n");
      out.write("        .formLogin {\n");
      out.write("            text-align: center;\n");
      out.write("            max-width: 850px;\n");
      out.write("            margin: 0 auto;\n");
      out.write("            padding: 20px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        /* Estilos para o parágrafo de informações */\n");
      out.write("        .infoText {\n");
      out.write("            font-size: 1.2rem;\n");
      out.write("            color: #000;\n");
      out.write("            text-align: center;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        /* Estilos para os campos de login e senha */\n");
      out.write("        .login-input {\n");
      out.write("            font-size: 1.5rem;\n");
      out.write("            padding: 10px;\n");
      out.write("            width: 100%;\n");
      out.write("            box-sizing: border-box;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        /* Estilos para os botões */\n");
      out.write("        .login-button {\n");
      out.write("            font-size: 1.22rem;\n");
      out.write("            padding: 10px 20px;\n");
      out.write("            margin-top: 30px; /* Espaçamento entre os botões */\n");
      out.write("            background-color: #4CAF50; /* Cor de fundo verde */\n");
      out.write("            color: #fff; /* Cor do texto branca */\n");
      out.write("            border: none; /* Sem borda */\n");
      out.write("            border-radius: 5px; /* Borda arredondada */\n");
      out.write("            cursor: pointer; /* Cursor de mão ao passar o mouse */\n");
      out.write("            transition: background-color 0.3s; /* Transição suave para a cor de fundo */\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .login-button:hover {\n");
      out.write("            background-color: #45a049; /* Cor de fundo ligeiramente mais escura ao passar o mouse */\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        .limpar{\n");
      out.write("            font-size: 1.22rem;\n");
      out.write("            padding: 10px 20px;\n");
      out.write("            margin-top: 30px; /* Espaçamento entre os botões */\n");
      out.write("            background-color: red; /* Cor de fundo verde */\n");
      out.write("            color: #fff; /* Cor do texto branca */\n");
      out.write("            border: none; /* Sem borda */\n");
      out.write("            border-radius: 5px; /* Borda arredondada */\n");
      out.write("            cursor: pointer; /* Cursor de mão ao passar o mouse */\n");
      out.write("            transition: background-color 0.3s; /* Transição suave para a cor de fundo */\n");
      out.write("        }\n");
      out.write("        /* Estilos para o quadro de avisos */\n");
      out.write(".info-box {\n");
      out.write("    background-color: #f2f2f2; /* Cor de fundo cinza claro */\n");
      out.write("    border: 1px solid #ddd; /* Borda cinza clara */\n");
      out.write("    padding: 20px; /* Espaçamento interno */\n");
      out.write("    border-radius: 5px; /* Borda arredondada */\n");
      out.write("}\n");
      out.write("\n");
      out.write(".info-box p {\n");
      out.write("    margin: 10px 0; /* Espaçamento entre os parágrafos */\n");
      out.write("    font-size: 1.2rem; /* Tamanho da fonte */\n");
      out.write("}\n");
      out.write("/* Estilos para o título \"Informações\" */\n");
      out.write(".info-title {\n");
      out.write("    color: #666; /* Cor de texto cinza suave */\n");
      out.write("    font-size: 1.5rem; /* Tamanho da fonte do título */\n");
      out.write("    margin-bottom: 10px; /* Espaçamento inferior */\n");
      out.write("}\n");
      out.write("\n");
      out.write("        \n");
      out.write("        \n");
      out.write("    </style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <!-- Start Interface--><br>\n");
      out.write("\n");
      out.write("    <img class=\"login-image\" src=\"imagens/login.jfif\" alt=\"Imagem de Login\">\n");
      out.write("\n");
      out.write("    <div id=\"interface\" class=\"container-fluid\">\n");
      out.write("        <!-- Start nav-->\n");
      out.write("        <nav class=\"row\">\n");
      out.write("            <div class=\"bg-dark\" style=\"width: 100%; height: 1.5px;\"></div>\n");
      out.write("        </nav>\n");
      out.write("\n");
      out.write("        <article class=\"row pt-3 formLogin\">\n");
      out.write("            <form class=\"col-md-4 pl-5 pt-4\" name=\"cadastro\" method=\"POST\">\n");
      out.write("                <p class=\"paragrafo\" style=\"font-size: 1.5rem;\">Login: <input required class=\"form-control \" name=\"email\" maxlength=\"50\" placeholder=\"Digite o seu login\"></p>\n");
      out.write("                <p class=\"paragrafo\" style=\"font-size: 1.5rem;\">Senha: <input required class=\"form-control \" type=\"password\" name=\"senha\" maxlength=\"50\" placeholder=\"Digite a sua senha\"></p>\n");
      out.write("                <div class=\"fw-bold\">\n");
      out.write("                        <input class=\"btn btn-outline-danger\" type=\"reset\" value=\"Limpar\" style=\"margin-right: 20px;\">\n");
      out.write("                        <input class=\"btn btn-outline-success\" type=\"submit\" name=\"image\" style=\"margin-right: 20px;\" onClick=\"enviar('login')\" value=\"Entrar\">\n");
      out.write("                </div>\n");
      out.write("                ");
 if(mensagem != null){
      out.write("\n");
      out.write("                    <p> ");
      out.print( mensagem );
      out.write("</p>\n");
      out.write("                ");
}
      out.write("\n");
      out.write("            </form>\n");
      out.write("<div class=\"col-md-6\" style=\"margin-left: 90px; border: 1px #000; padding: 15px;\">\n");
      out.write("    <h2 class=\"info-title\">Informações úteis:</h2>\n");
      out.write("    <div class=\"info-box\">\n");
      out.write("        <p class=\"infoText\">*Se você já possui um cadastro, então se identifique usando seu login e senha!</p>\n");
      out.write("        <p class=\"infoText\">*Se você já estava utilizando o software, sua sessão pode ter expirado portanto apenas faça o login novamente.</p>\n");
      out.write("        <p class=\"infoText\">*Se você ainda não possui um login e senha, dirija-se ao seu gerente.</p>\n");
      out.write("        <p class=\"infoText\">Se surgirem dúvidas, não hesite em entrar em contato utilizando a seção 'Contato' acima.</p>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("        </article>\n");
      out.write("    </div>\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
