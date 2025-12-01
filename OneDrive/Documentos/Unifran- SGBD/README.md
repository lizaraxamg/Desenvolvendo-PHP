# 🏥 Projeto de Banco de Dados: Hospital Infantil (Atividade 4 - DML)

Este repositório contém os scripts SQL para a criação e manipulação de dados de um sistema de gerenciamento básico para um Hospital Infantil. O projeto atende aos requisitos da Atividade 4, aplicando comandos DDL (Data Definition Language) e DML (Data Manipulation Language) em um modelo relacional.

## ⚙️ Configuração do Ambiente

* **SGBD Utilizado:** MySQL
* **Ferramenta de Execução:** Visual Studio Code (VS Code) com a extensão MySQL.
* **Banco de Dados:** `HospitalInfantil`

## 📂 Arquivos e Ordem de Execução

Execute os arquivos na ordem numérica a seguir para criar, popular e testar o banco de dados:

| Arquivo | Tipo de SQL | Finalidade |
| :--- | :--- | :--- |
| **01_DDL_Criacao.sql** | DDL | Criação do Banco de Dados e das Tabelas (Estrutura). |
| **02_DML_Insercao.sql** | DML | Inserção dos dados de teste (`INSERT`). |
| **03_DML_Consultas.sql** | DML | Consultas complexas (`SELECT` com JOIN, WHERE, ORDER BY e LIMIT). |
| **04_DML_Manipulacao.sql** | DML | Manipulação de Dados (`UPDATE` e `DELETE`). |

## ✨ Destaques das Consultas e Manipulações

O projeto cumpre integralmente os requisitos de uso de:

* **JOINs:** Cruzamento de dados entre tabelas (ex: Pacientes e Internações).
* **WHERE/ORDER BY/LIMIT:** Filtros, ordenação e restrição de resultados.
* **UPDATE/DELETE:** Comandos de alteração e exclusão de dados com cláusula `WHERE` para segurança e integridade.