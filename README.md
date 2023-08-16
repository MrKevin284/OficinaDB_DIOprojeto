# Projeto de Modelagem de Banco de Dados para Oficina

Este projeto consiste na criação de um esquema de banco de dados para uma oficina, seguindo os conceitos de modelagem relacional. O objetivo principal é desenvolver um sistema capaz de gerenciar informações sobre clientes, veículos, serviços prestados e ordens de serviço. Além disso, foram elaboradas diversas consultas SQL para exemplificar o uso do banco de dados e suas funcionalidades.

## Estrutura do Banco de Dados

O esquema do banco de dados foi projetado de acordo com as entidades e relacionamentos identificados no desafio. Ele é composto pelas seguintes tabelas:

- **Tabela Cliente:** Armazena informações sobre os clientes, incluindo nome, e-mail e telefone.

- **Tabela Veiculo:** Contém detalhes sobre os veículos dos clientes, como marca, modelo e ano. Possui uma chave estrangeira para relacionar com a tabela Cliente.

- **Tabela Servico:** Armazena os serviços oferecidos pela oficina, incluindo nome, descrição e preço.

- **Tabela OrdemDeServico:** Registra as ordens de serviço feitas pelos clientes. Contém informações como data de entrada e conclusão. Também possui chaves estrangeiras para relacionar com as tabelas Cliente e Veiculo.

- **Tabela ItemServico:** Associa serviços a ordens de serviço, incluindo quantidade. Possui chaves estrangeiras para relacionar com as tabelas OrdemDeServico e Servico.

## Inserção de Dados de Exemplo

O projeto inclui uma seção de inserção de dados de exemplo para demonstrar o funcionamento do banco de dados. Foram inseridos dados fictícios de clientes, veículos, serviços e ordens de serviço.

## Consultas Exemplos

O projeto também apresenta diversas consultas SQL para ilustrar as funcionalidades do banco de dados, tais como:

- Recuperação simples de dados usando o comando SELECT.
- Uso de filtros com a cláusula WHERE.
- Criação de expressões para gerar atributos derivados.
- Ordenação dos resultados usando ORDER BY.
- Aplicação de condições de filtro a grupos com HAVING.
- Realização de junções entre tabelas para obter perspectivas mais complexas dos dados.

## Como Utilizar

1. Clone este repositório para sua máquina local.
2. Execute o script SQL fornecido (`script.sql`) para criar o esquema do banco de dados e inserir os dados de exemplo.
3. Utilize as consultas SQL presentes no script para explorar as funcionalidades do banco de dados.

Sinta-se à vontade para modificar, estender ou utilizar este projeto como base para suas próprias necessidades.

**Autor:** Kevin Souza
