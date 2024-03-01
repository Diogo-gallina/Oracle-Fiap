SET SERVEROUTPUT ON;

DECLARE

DADOS_TABELA DADOS_DE_VENDAS.quantityordered%TYPE;
DADOS_TABELA2 DADOS_DE_VENDAS.quantityordered%TYPE;
DADOS_TABELA3 DADOS_DE_VENDAS.ORDERNUMBER%TYPE;
BEGIN

SELECT quantityordered,quantityordered,ORDERNUMBER INTO DADOS_TABELA, DADOS_TABELA2, DADOS_TABELA3
FROM DADOS_DE_VENDAS
WHERE ORDERNUMBER = 10107
AND quantityordered = 27;

dbms_output.put_line('DADOS:');
dbms_output.put_line(DADOS_TABELA);
dbms_output.put_line(DADOS_TABELA2);
dbms_output.put_line(DADOS_TABELA3);

END;

-- Criando tabela aluno
CREATE TABLE TB_ALUNO(
NOME VARCHAR(50),
RM VARCHAR2(30)
)

--Inserindo dados na tabela
INSERT INTO TB_ALUNO(NOME, RM) values ('Antonio Alves', 111222333);
INSERT INTO TB_ALUNO(NOME, RM) values ('Beatriz Bernardes', 222333444);
INSERT INTO TB_ALUNO(NOME, RM) values ('Claudio Cardoso', 333444555);

--Imprimindo um dos alunos
DECLARE
ALUNO1 TB_ALUNO.NOME%TYPE;

BEGIN
SELECT NOME INTO ALUNO1
FROM TB_ALUNO
WHERE NOME = 'Antonio Alves';
COMMIT;
dbms_output.put_line(ALUNO1);


END;


--Atualizando um dos alunos
DECLARE

ALUNO_ATUALIZADO TB_ALUNO.NOME%TYPE := 'DIOGO';

BEGIN

UPDATE TB_ALUNO  
SET NOME = ALUNO_ATUALIZADO
WHERE NOME = 'Antonio Alves';
COMMIT;

dbms_output.put_line(ALUNO_ATUALIZADO);

END;

--Deletando um dos alunos
DECLARE

RM1 TB_ALUNO.RM%TYPE := '333444555';

BEGIN

DELETE FROM TB_ALUNO WHERE RM=RM1;

END;
