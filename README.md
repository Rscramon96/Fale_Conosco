# Página de Fale Conosco

## Descrição do Projeto

O projeto Fale Conosco tem o propósito de ser uma página em que um cliente pode informar alguns dados e enviar uma mensagem para a empresa, um feedback positivo ou negativo, uma sugestão, etc.

### Tecnologias Utilizadas

- Padrão MVC/MVVM
- Asp Net Core 3.1
- Entity Framework 3.1.9
- Asp Net Core Identity 2.2 
- JQuery
- Bootstrap

### 🚧 Fale Conosco (100%) 🚧

#### Funcionalidades

- [x] Página de fale conosco.
- [x] Área restrita.
- [x] Listagem de mensagens sem resposta.
- [x] Área de resposta com disparo de e-mail (Serviço de e-mail da google).
- [x] Área que permite visualização da mensagem por completo. 
- [x] Área para exclusão da mensagem.
      
### Como rodar localmente

Antes de começar você precisará ter em sua máquina as seguintes ferramentas:
- [Git](https://git-scm.com)
- [VS2019](https://visualstudio.microsoft.com/pt-br/)
- [SSMS](https://docs.microsoft.com/pt-br/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver15)
- [SQL Server](https://www.microsoft.com/pt-br/sql-server/sql-server-downloads)

1. Na pasta escolhida, clone o repositório em sua máquina. Abra o CMD e aplique o comando abaixo:
      > $ git clone <https://github.com/Rscramon96/Fale_Conosco.git>
      
2. Abra o arquivo, 'faleconoscoBD.sql', que se encontra na pasta do projeto,utilizando o Microsoft SQL Server Management Studio (SSMS) e execute o script para criar o banco.
  
3. Abra o projeto no visual studio, vá até appsettings e mude a connection string para sua máquina.
      > $ "DefaultConnection": "Data Source= LocalHost;Initial Catalog=FaleConoscoBD;Integrated Security=True"
      
4. Para acessar a área restrita utilize esse usuário e senha:
      - <em>Usuário: faleconosco1996@gmail.com</em>
      - <em>Senha: Teste@123</em>

## CONTATOS

Feito por Ramon Santos, entre em contato! :v: <br/>
[![LinkedIn Badge](https://img.shields.io/badge/-Ramon-blue?style=flat-square&logo=Linkedin&logoColor=white&link=https://www.linkedin.com/in/ramon-santos-25041996/)](https://www.linkedin.com/in/ramon-santos-25041996/)
[![Gmail Badge](https://img.shields.io/badge/-rscramon95@gmail.com-c14438?style=flat-square&logo=Gmail&logoColor=white&link=mailto:rscramon95@gmail.com)](mailto:rscramon95@gmail.com)
