
# Projeto Final Java Web

## Índice  
- [Descrição do Projeto](#descrição-do-projeto)  
- [Tecnologias Utilizadas](#tecnologias-utilizadas)  
- [Arquitetura e Organização do Código](#arquitetura-e-organização-do-código)  
- [Banco de Dados](#banco-de-dados)  
- [Configuração do Ambiente](#configuração-do-ambiente)  
- [Instalação e Deploy](#instalação-e-deploy)  
- [Uso](#uso)  
- [Considerações Finais](#considerações-finais)  
- [Autor](#autor)  
- [Contato](#contato)

---

## Descrição do Projeto  
Este projeto consiste em uma aplicação web desenvolvida em Java, criada como trabalho final da materia de Linguagem de Programação II. A aplicação tem como objetivo gerenciar entidades por meio de operações CRUD (Create, Read, Update, Delete), aplicando conceitos de programação orientada a objetos, persistência de dados com banco MySQL e deploy em servidor GlassFish.

---

## Tecnologias Utilizadas  
- **Java EE** — Plataforma para desenvolvimento da aplicação web robusta e escalável  
- **NetBeans** — IDE utilizada para desenvolvimento, configuração e deploy da aplicação  
- **GlassFish** — Servidor de aplicações Java EE para execução da aplicação  
- **MySQL (via XAMPP)** — Sistema gerenciador de banco de dados relacional para persistência de dados  
- **HeidiSQL** — Ferramenta para administração visual do banco de dados MySQL

---

## Arquitetura e Organização do Código  
A aplicação está estruturada segundo as boas práticas para projetos Java web:  
- Camada de apresentação com Servlets e JSPs ou tecnologias equivalentes  
- Pacotes organizados por responsabilidade para facilitar manutenção e escalabilidade  
- Persistência implementada via JDBC ou JPA conectada ao banco MySQL  
- Arquivos estáticos (CSS, JS, imagens) organizados dentro da pasta `webapp`

---

## Banco de Dados  
- Banco de dados MySQL configurado localmente, gerenciado pelo XAMPP  
- Administração do banco realizada via HeidiSQL 

---

## Configuração do Ambiente  
1. Instale o XAMPP e certifique-se de que o MySQL esteja ativo  
2. Utilize o HeidiSQL para criar o banco de dados e importar os scripts SQL  
3. Configure a conexão com o banco no projeto, no arquivo `[nome_do_arquivo_de_configuração]`  
4. Configure o servidor GlassFish no NetBeans e inicie-o para disponibilizar a aplicação

---

## Instalação e Deploy  
1. Clone este repositório:  
```bash  
git clone https://github.com/mvk999/Projeto-Final-Java
```  
2. Importe o banco de dados utilizando o HeidiSQL:  
- Crie o banco (exemplo: `projeto_final_java`)  
- Importe os scripts SQL presentes no diretório `[caminho dos scripts]`  
3. Abra o projeto no NetBeans e ajuste as configurações de conexão com o banco de dados  
4. Realize o deploy da aplicação no GlassFish pelo NetBeans:  
- Clique com o botão direito no projeto e selecione **Run**  
5. Acesse a aplicação pelo navegador:  
```  
http://localhost:8080/[nome_do_contexto]  
```

---

## Uso  
Acesse a aplicação via navegador para utilizar as funcionalidades disponíveis, como cadastro, edição, listagem e exclusão de dados. O sistema conta com validações e feedbacks para garantir a integridade e consistência das informações.

---

## Considerações Finais  
Este projeto possui caráter acadêmico e foi desenvolvido com o intuito de consolidar os conhecimentos em Java EE, persistência de dados e deploy em servidor de aplicações, proporcionando uma base sólida para futuras aplicações corporativas.

---

## Autor  
Marcos Vinícius Pereira e
Otávio Pacheco

---

## Contato  
- GitHub: [https://github.com/mvk999](https://github.com/mvk999)  
- LinkedIn: [https://www.linkedin.com/in/mvpereira2006](https://www.linkedin.com/in/mvpereira2006)
