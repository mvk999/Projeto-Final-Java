<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Escola Mundial</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/all.css">
    <link rel="stylesheet" href="css/estilo.css">
    <link rel="shortcut icon" href="imagens/escolalogo.png" type="image/x-icon">
    
		<link rel="stylesheet" href="css/font-awesome.css">
		<link rel="stylesheet" href="css/fsbanner.css">
		<link rel="stylesheet" href="css/countdown.css">
		<link rel="stylesheet" href="css/animate.css">
		<link rel="stylesheet" href="css/hover.css">
		<link rel="stylesheet" href="css/menu.css">

		<script src="js/jquery.js"></script>
		<script src="js/popper.js"></script>
		<script src="js/bootstrap.js"></script>
		<script src="js/fsbanner.js"></script>
		<script src="js/jquery.downCount.js"></script>
		<script src="js/smooth_navigation.js"></script>
		<script src="js/wow.min.js"></script>
		<script src="js/backtotop.js"></script>
	        <script src="js/validadados.js"></script>
</head>
<body>

     
    
<div class="container-fluid">
        <!-- start header -->
        <header class="fixed-top">
            <nav class="navbar navbar-expand-md px-4">
                <div class="navbar-brand">
                    <a href="#escola"><img  height="72" onclick="goToPage1()" src="imagens/escolalogo.png" alt=""></a>
                    <button class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#menubar"><span class="fa-solid fa-bars"></span></button>
                </div>
    
                <div class="collapse navbar-collapse" id="menubar">
                    <ul class="navbar-nav">
                         <li class="fw-bold nav-item"><a href="#" class="nav-link text-white" onclick="goToPage1()">Home</a></li>
                        <script>
        function goToPage1() {
            window.location.href = 'http://localhost:8080/OtavioEscola/Home.jsp';
        }
    </script> 
                        <li class="nav-item dropdown">
                            <a href="#" class="fw-bold nav-link text-white dropdown-toggle" data-bs-toggle="dropdown">Cadastros</a>
                            <ul class="dropdown-menu p-3">
                                <li><a href="CadastroAluno.jsp" class="menu-item dropdown-item text-white">Aluno</a></li>
                                <li><a href="CadastroAtivComple.jsp" class="menu-item dropdown-item text-white">Atividade Complementar</a></li>
                                <li><a href="CadastroDisciplina.jsp" class="menu-item dropdown-item text-white">Disciplina</a></li>
                                <li><a href="CadastroNivelEnsino.jsp" class="menu-item dropdown-item text-white">Nivel de Ensino</a></li>
                                <li><a href="CadastroProf.jsp" class="menu-item dropdown-item text-white">Professores</a></li>
                                <li><a href="CadastroSetor.jsp" class="menu-item dropdown-item text-white">Setor</a></li>
                                <li><a href="CadastroTurma.jsp" class="menu-item dropdown-item text-white">Turmas</a></li>
                                <li><a href="CadastroTurno.jsp" class="menu-item dropdown-item text-white">Turno</a></li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown">
                            <a href="#" class="fw-bold nav-link text-white dropdown-toggle" data-bs-toggle="dropdown">Cargos</a>
                            <ul class="dropdown-menu p-3">
                                <li><a href="CadastroAtividadexAluno.jsp" class="menu-item dropdown-item text-white">Atividade do Aluno</a></li>
                                <li><a href="CadastroProfessorxDisciplina.jsp" class="menu-item dropdown-item text-white">Disciplina do Professor</a></li>
                            </ul>
                        </li>
                         
                        <li class="fw-bold nav-item dropdown">
                        
                            <a href="#http://localhost:8080/OtavioEscola/Contato.jsp" onclick="goToPage3()" class="menu-item dropdown-item nav-link text-white">Contato</a>
                             <script>
        function goToPage3() {
            window.location.href = 'http://localhost:8080/OtavioEscola/Contato.jsp';
        }
    </script> 
                        </li>
                        
                       <li>
    <a id="openModal" class="fw-bold menu-item nav-link text-white">Sobre</a>
    <div id="myModal" class="modal">
                <div class="modal-content text-center">
                    <span class="close">&times;</span>
                    <h2 class="titulo-sobre text-uppercase fw-bold">Sobre a Escola Mundial</h2>
                    <div class="text-sobre">
                        <p>
                           
A "Escola Mundial" � uma institui��o de ensino que se destaca por sua dedica��o incans�vel em proporcionar a seus alunos a mais alta qualidade educacional. Fundada com a miss�o de elevar os padr�es de aprendizado e preparar os estudantes para um futuro globalizado, esta institui��o � um farol de excel�ncia acad�mica e desenvolvimento pessoal.

No cora��o dessa escola est� o compromisso com a busca do conhecimento em todas as suas formas. Acreditamos que cada aluno possui um potencial �nico que merece ser nutrido e cultivado. Nossa abordagem educacional � centrada no aluno, focando em suas necessidades individuais e permitindo que eles se desenvolvam como pensadores cr�ticos, cidad�os respons�veis e l�deres inspirados.

Com uma equipe de educadores altamente qualificados e dedicados, esta institui��o oferece um ambiente de aprendizado enriquecedor, onde a curiosidade � incentivada, a criatividade � valorizada e a busca pelo conhecimento � constantemente estimulada. Nossos professores n�o s�o apenas transmissores de informa��es, mas mentores e guias que inspiram os alunos a explorar novas ideias, questionar o status quo e se esfor�ar pelo seu melhor desempenho.

Al�m das quatro paredes da sala de aula, nossa abordagem hol�stica abrange n�o apenas o desenvolvimento acad�mico, mas tamb�m o crescimento emocional, social e �tico dos alunos. Acreditamos que uma educa��o de qualidade vai al�m dos livros did�ticos. Por isso, oferecemos uma variedade de atividades extracurriculares, projetos sociais e oportunidades de envolvimento com a comunidade.

Como uma verdadeira institui��o global, abra�amos a diversidade e a globaliza��o. Promovemos a compreens�o intercultural, incentivando os alunos a explorar diferentes perspectivas e a respeitar as diversas culturas e tradi��es que enriquecem nosso mundo. Preparamos nossos alunos para enfrentar os desafios de um mundo em constante evolu��o, capacitando-os com as habilidades e a mentalidade necess�rias para se destacarem em qualquer campo que escolham seguir.

Na "Escola Mundial", a busca pelo melhor ensino poss�vel � uma jornada cont�nua. Estamos comprometidos em criar um ambiente educacional que inspire a excel�ncia, nutra a paix�o pelo aprendizado e prepare os alunos para se tornarem cidad�os globais respons�veis. Eles s�o capazes de moldar um futuro melhor para si mesmos e para o mundo ao seu redor.
                        </p>
                        <p class="fw-bold">Sejam bem-vindos!!</p>
                    </div>
            </div>
        
        <script>const openModalButton = document.getElementById('openModal');
const modal = document.getElementById('myModal');
const closeButton = modal.querySelector('.close');

openModalButton.addEventListener('click', () => {
    modal.style.display = 'block';
});

closeButton.addEventListener('click', () => {
    modal.style.display = 'none';
});

window.addEventListener('click', (event) => {
    if (event.target === modal) {
        modal.style.display = 'none';
    }
});</script>
    </div>
</li>

    <% if (session.getAttribute("nome") != null) {%>
                <li>
                    <a class="menu-item dropdown-item fw-bold nav-link text-secondary" href="logoff.jsp">Desconectar</a>
                    </li>
                    <% }%>

                            
                        
                    </ul>
                </div>

            </nav>
            
               
     <script src="js/mobile-navbar.js"></script>
        </header>
<!-- Importando o Bootstrap JS (e depend�ncias) -->
       <script src="caminho/para/jquery.min.js"></script>
       <script src="caminho/para/bootstrap.min.js"></script>
       <script src="js/bootstrap.bundle.js"></script>
       <script src="css/bootstrap-grid.rtl.css"></script>
       

       
</div>   
</body>
</html>
