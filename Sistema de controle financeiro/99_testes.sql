PROMPT === TESTE: inserir usuario (sem id) ===
INSERT INTO USUARIO (nome, email, senha)
VALUES ('User Teste', 'teste@email.com', '123');

PROMPT === TESTE: inserir categoria (sem id) ===
INSERT INTO CATEGORIA (id_usuario, nome, tipo)
VALUES (1, 'Lazer', 'GASTO');

INSERT INTO CATEGORIA (id_usuario, nome, tipo)
VALUES (1, 'Salario', 'RECEBIMENTO');

PROMPT === TESTE: inserir gasto (sem id) ===
INSERT INTO GASTO (id_usuario, id_categoria, descricao, valor, data_gasto)
VALUES (1, 1, 'Cinema', 50.00, SYSDATE);

PROMPT === TESTE: inserir recebimento (sem id) ===
INSERT INTO RECEBIMENTO (id_usuario, id_categoria, descricao, valor, data_receb)
VALUES (1, 2, 'Pagamento', 1500.00, SYSDATE);

PROMPT === CONFERIR RESULTADOS ===
SELECT * FROM USUARIO ORDER BY id_usuario;
SELECT * FROM CATEGORIA ORDER BY id_categoria;
SELECT * FROM GASTO ORDER BY id_gasto;
SELECT * FROM RECEBIMENTO ORDER BY id_recebimento;

COMMIT;