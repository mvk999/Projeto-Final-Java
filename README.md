Projeto Final Java


Este repositório contém o projeto final da disciplina de Linguagem de Programação II. O trabalho foi desenvolvido em dupla por Marcos Vinícius Pereira e Otávio Pacheco, com o objetivo de criar uma aplicação web utilizando Java.

A aplicação desenvolvida é uma plataforma simulada para uma escola, projetada para oferecer uma experiência próxima da realidade, com o objetivo de aprimorar o aprendizado prático. O sistema inclui funcionalidades como cadastro de alunos e professores, registro de ocorrências, autenticação por meio de login e senha, além de integração com um banco de dados externo para armazenamento e gestão das informações. A interface do usuário é desenvolvida utilizando JSP (JavaServer Pages), enquanto o backend é implementado em Java, seguindo os princípios de programação orientada a objetos para garantir modularidade e reutilização de código.
A estrutura do projeto é organizada da seguinte forma:

/src/: Contém o código fonte Java.

/build/: Contém as classes Java compiladas e os arquivos JSP gerados.

/web/: Contém os arquivos JSP utilizados para a interface do usuário.

build.xml: Arquivo de configuração do Ant para automatização do processo de build.




Requisitos
Java JDK 8 ou superior
Apache Tomcat 9 ou superior
Apache Ant para build


Como Executar:
1)Clone esse repositorio:
![image](https://github.com/user-attachments/assets/4f16ca7c-a2d2-45b9-90f1-7c6e1f5c1cbc)

2) Compile o projeto usando o Ant:
![image](https://github.com/user-attachments/assets/02f1b5cb-fa6f-47fd-b497-95f93c0c8f82)

3)Execute o projeto em um servidor Apache Tomcat:
Copie o conteúdo da pasta build para o diretório webapps do Tomcat.
Inicie o Tomcat e acesse a aplicação através do navegador, no endereço http://localhost:8080/nome-do-projeto.

Todos os direitos deste código estão reservados aos seus respectivos criadores, Marcos Vinícius Pereira e Otávio Pacheco.
