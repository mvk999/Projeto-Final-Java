
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Escola Mundial</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/all.css">
    <link rel="stylesheet" href="css/estilo.css">
    <link rel="shortcut icon" href="imagens/escolalogo.png" type="image/x-icon">
     <%@include file="Menu.jsp" %>
</head>
    <body class="site-container">
        <header>
            <nav class="menu-bar">
                <a class="logo" href="Home.jsp">
                </a>
                <div class="mobile-menu">
                    <div class="line line1"></div>
                    <div class="line line2"></div>
                    <div class="line line3"></div>
                </div>

            </nav>
        </header>
        
        <main>
            <div id="carouselExampleIndicators" class="carousel slide carousel-fade" data-bs-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active"></li>
                    <li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"></li>
                    <li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"></li>
                    <li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3"></li>
                </ol>
                <div class="carrosel carousel-inner">
                    <div class="carousel-item active">
                        <img src="imagens/imagem1.jpg" class="d-block w-100" alt="Imagem 1">
                    </div>
                    <div class="carousel-item">
                        <img src="imagens/imagem2.jpg" class="d-block w-100" alt="Imagem 2">
                    </div>
                    <div class="carousel-item">
                        <img src="imagens/imagem3.jpg" class="d-block w-100" alt="Imagem 3">
                    </div>
                    <div class="carousel-item">
                        <img src="imagens/home.jpg" class="d-block w-100" alt="Imagem 4">
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Anterior</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Próximo</span>
                </a>
            </div>

            <!-- Seção de Destaques -->
            <section class="py-5">
                <div class="container text-center">
                    <h2 class="display-4">Bem-vindo à nossa escola!</h2>
                    <p class="lead">Aqui o seu futuro acontece!!</p>
                </div>
            </section>

            <!-- Seção de Produtos -->
            <section class="py-5 bg-light">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <h3 class="section-title">Nossa atmosfera,visão e valores</h3>
                            <div class="section-title-underline"></div>
                        </div>
                        <div class="col-md-4">
                            <div class="card mb-4">
                                <img src="imagens/instalacao.jpg" class="card-img-top" alt="Produto 1">
                                <div class="card-body">
                                    <h5 class="card-title">Nossa instalação</h5>
                                    <p class="card-text">Indicado para a totalidade dos discentes em busca de um espaço apropriado.</p>
                                    <a href="#" class="btn btn-light">Ver Detalhes</a>
                                </div>
                            </div>
                        </div>
                    <div class="col-md-4">
                        <div class="card mb-4">
                            <img src="imagens/alunos.jpg" class="card-img-top" alt="Produto 1">
                            <div class="card-body">
                                <h5 class="card-title">Interação com Professores</h5>
                                <p class="card-text">As relações interpessoais é de extrema importância para nós, por isso apoiamos diálogo e interatividade.</p>
                                <a href="#" class="btn btn-light">Ver Detalhes</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                            <div class="card mb-4">
                                <img src="imagens/comemoracao.jpg" class="card-img-top" alt="Produto 1">
                                <div class="card-body">
                                    <h5 class="card-title">Impulsionando seus sonhos</h5>
                                    <p class="card-text">Aqui,celebramos com entusiasmo cada formatura,pois sabemos que é o resultado da dedicação e esforço.</p>
                                    <a href="#" class="btn btn-light">Ver Detalhes</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                
            </section>
            
<section class="py-5">
    <div class="container text-center">
        <h2 class="display-4">Depoimentos de Alunos</h2>
        <div class="row mt-4">
            <div class="col-md-4">
                <div class="testimonial">
                    <img src="imagens/aluno1.PNG" class="testimonial-img" alt="Aluno 1">
                    <p class="testimonial-text">A Escola Mundial proporcionou uma experiência de aprendizado incrível. Os professores são dedicados e as instalações são excelentes.</p>
                    <p class="testimonial-author">- Otávio Pacheco  <br> 1º Lugar em Artes Cênicas -UNIR - Universidade Federal de Rondônia</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="testimonial">
                    <img src="imagens/aluno2.jpg" class="testimonial-img" alt="Aluno 2">
                    <p class="testimonial-text">Estou muito grato por fazer parte da Escola Mundial. Aqui, aprendi não apenas conteúdo, mas também habilidades para a vida.</p>
                    <p class="testimonial-author">- Marcos Vinícius <br> 1º Lugar em Turismo -USP - Universidade de São Paulo</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="testimonial">
                    <img src="imagens/aluno3.jpeg" class="testimonial-img" alt="Aluno 3">
                    <p class="testimonial-text">A atmosfera na escola é acolhedora e amigável. A equipe sempre está pronta para ajudar e incentivar nosso crescimento acadêmico.</p>
                    <p class="testimonial-author">- Gleiber Souza   <br> 1º Lugar em Engenharia de Pesca - UFAC - Universidade Federal do Acre</p>
                </div>
            </div>
        </div>
    </div>
</section>

            
            
            
            
            
            
             <section class="py-5">
                <div class="container text-center">
                    <h2 class="display-4">Faça agora o seu login!</h2>
                    <p class="lead">Seja parte da nossa plataforma e tenha acesso a recursos especiais. Faça o login para explorar todas as funcionalidades.</p>
                </div>
            </section>
                  <button class="botao btn btn-light" onclick="redirectToLogin()">Login</button>
    
    <script>
        function redirectToLogin() {
            window.location.href = "http://localhost:8080/OtavioEscola/index.jsp";
        }
    </script>
    <br>
    <br>
    <br>
    <br>
    <br>
        </main>
        
        
        
        
        <script src="js/mobile-navbar.js"></script>
    </body>
</html>