# Autocore - Serviços Automotivos

Projeto desenvolvido para a avaliação da disciplina de **Fundamentos ao Desenvolvimento Web** (Sistemas de Informação - UNOESC).

O objetivo foi transformar um site estático em uma aplicação dinâmica, utilizando **JavaScript (Fetch API)** para comunicação assíncrona com o **PHP** e persistência em banco de dados **MySQL**.

## Tecnologias Utilizadas

- **Front-end:** HTML5, CSS3, Bootstrap 5, JavaScript (Async/Await + Fetch API).
- **Back-end:** PHP 8 (PDO com Prepared Statements).
- **Banco de Dados:** MySQL.

## Funcionalidades

- **Formulário de Contato:** Envio de mensagens sem recarregar a página (AJAX).
- **Solicitação de Orçamento:** Modal interativo para pedir orçamentos de serviços.
- **Painel Administrativo:** Página restrita que consome dados via JSON para listar contatos e orçamentos.

## Como rodar o projeto

1. Instale o **XAMPP** e inicie o Apache e MySQL.
2. Clone este repositório dentro da pasta `C:\xampp\htdocs`.
3. Acesse `http://localhost/phpmyadmin`, crie um banco chamado `mecanica_db`.
4. Importe o arquivo `mecanica_db.sql` (disponível na raiz deste projeto).
5. Acesse no navegador:
   - **Site:** `http://localhost/site-autocore-servicos-automotivos/`
   - **Admin:** `http://localhost/site-autocore-servicos-automotivos/admin.html`

