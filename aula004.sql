--Crie um código PLSQL que retorne todo o endereço e o nome do cliente

SET SERVEROUTPUT ON;

DECLARE
    
    NOME_PAIS PAIS.NOME%TYPE;
    NOME_ESTADO ESTADO.NOME%TYPE;
    NOME_CIDADE CIDADE.NOME%TYPE;
    NOME_BAIRRO BAIRRO.NOME%TYPE;
    NOME_ENDERECO ENDERECO.NOME%TYPE;    
    NOME_CLIENTE CLIENTE.NOME%TYPE;

BEGIN

    SELECT 
        pais.NOME,
        estado.NOME,
        cidade.NOME,
        bairro.NOME,
        endereco.NOME,
        cliente.NOME
   INTO 
        NOME_PAIS,
        NOME_ESTADO,
        NOME_CIDADE,
        NOME_BAIRRO,
        NOME_ENDERECO,
        NOME_CLIENTE
    FROM PAIS pais
        INNER JOIN ESTADO estado ON estado.id_pais = pais.id_pais
        INNER JOIN CIDADE cidade ON cidade.id_estado = estado.id_estado
        INNER JOIN BAIRRO bairro ON bairro.id_cidade = cidade.id_cidade
        INNER JOIN ENDERECO endereco ON endereco.id_bairro = bairro.id_bairro
        INNER JOIN CLIENTE cliente ON cliente.id_endereco = endereco.id_endereco
    WHERE pais.id_pais = 3;
    
    
    dbms_output.put_line('ENDERECO COMPLETO: ' || NOME_PAIS || ' - ' || NOME_ESTADO || ' - ' || NOME_CIDADE || ' - ' || NOME_BAIRRO || ' - ' || NOME_ENDERECO);
    dbms_output.put_line('NOME CLIENTE: ' || NOME_CLIENTE);
    
END;