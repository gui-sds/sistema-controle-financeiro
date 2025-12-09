# Sistema de Controle Financeiro (Banco de Dados)

Banco de dados em Oracle SQL para organizar gastos e recebimentos por usuário e categoria.  
Inclui tabelas, sequences e triggers para geração automática de IDs.

## Estrutura do banco
- **USUARIO**: cadastro do usuário (nome, email, senha, data de criação)
- **CATEGORIA**: categorias do usuário (ex.: Alimentação, Salário) com tipo **GASTO** ou **RECEBIMENTO**
- **GASTO**: lançamentos de gastos vinculados ao usuário e categoria
- **RECEBIMENTO**: lançamentos de recebimentos vinculados ao usuário e categoria

## Tecnologias
- Oracle Database (SQL)
- Oracle SQL Developer

## Como executar (passo a passo)
1. Abra o **Oracle SQL Developer** e conecte no seu schema (ex.: `CF_USER`).
2. Execute o script principal:
   ```sql
   @00_run_all.sql

