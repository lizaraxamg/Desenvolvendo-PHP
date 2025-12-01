-- CERTIFIQUE-SE DE QUE O BANCO HOSPITALINFANTIL ESTÁ ATIVO NA SUA CONEXÃO DO VS CODE!

-- ------------------------------
-- COMANDOS UPDATE (Mínimo 3)
-- ------------------------------

-- 1. UPDATE: Aumentar o estoque de um medicamento específico após o recebimento de uma nova remessa.
UPDATE MEDICAMENTO SET estoque_atual = estoque_atual + 100 
WHERE nome_med = 'Dipirona';

-- 2. UPDATE: Corrigir o tipo sanguíneo de um paciente (Lara Souza).
UPDATE PACIENTE SET tipo_sanguineo = 'A-' 
WHERE nome = 'Lara Souza';

-- 3. UPDATE: Registrar a ALTA de um paciente atualmente internado (Felipe Costa).
UPDATE INTERNACAO SET data_saida = '2025-12-02 10:00:00', quarto = NULL
WHERE fk_id_paciente = 3 AND data_saida IS NULL;


-- ------------------------------
-- COMANDOS DELETE (Mínimo 3)
-- ------------------------------

-- 1. DELETE: Remover uma prescrição específica que foi cancelada.
DELETE FROM PRESCRICAO 
WHERE fk_id_internacao = 501 AND fk_id_medicamento = 103 AND data_hora = '2025-11-26 18:00:00'; 

-- 2. DELETE: Remover medicamentos que estão com estoque zerado e não foram usados recentemente.
DELETE FROM MEDICAMENTO 
WHERE estoque_atual = 0 AND id_medicamento NOT IN (SELECT fk_id_medicamento FROM PRESCRICAO);

-- 3. DELETE: Excluir registros de internações muito antigas (e suas dependências, para manter a integridade).
DELETE FROM PRESCRICAO 
WHERE fk_id_internacao IN (SELECT id_internacao FROM INTERNACAO WHERE data_entrada < '2025-11-01');

DELETE FROM INTERNACAO 
WHERE data_entrada < '2025-11-01';