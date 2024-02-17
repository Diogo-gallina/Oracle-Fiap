SET SERVEROUTPUT ON;


--EX 01 - ACRESCENTAR 25% AO SALARIO ATUAL
declare
    salario number := 1000;    
    novo_salario salario%type;
    
begin
    novo_salario := salario + salario * 0.25;
    dbms_output.put_line(novo_salario);
    
END;

--EX 02 - CONVERTER DOLAR PARA REAL
declare
    moeda_dolar number := 45;    
    moeda_real number;
    
begin
    moeda_real := moeda_dolar * 5;
    dbms_output.put_line(moeda_real);
    
END;

--EX 03 - CONVERTER DOLAR PARA REAL
declare

    valor_compra number := &VALOR;
    numero_parcelas number := 10;    
    juros number := 0.3;
    valor_total number;
    valor_parcela number;
begin
    
    valor_total := valor_compra + valor_compra * juros; 
    valor_parcela := valor_total/numero_parcelas;  
    dbms_output.put_line(valor_parcela);
    
END;

--EX4
declare

    valor_compra number := &VALOR;
    entrada number;
    valor_sem_entrada number;
    seis_p number;
    doze_p number;
    dezoito_p number;
    
begin

    entrada := valor_compra * 0.2;
    valor_sem_entrada := valor_compra - entrada;
    
    seis_p := valor_sem_entrada + valor_sem_entrada * 0.1;
    doze_p := valor_sem_entrada + valor_sem_entrada * 0.15;
    dezoito_p := valor_sem_entrada + valor_sem_entrada * 0.2;
    
    dbms_output.put_line('Entrada = '|| entrada);
    dbms_output.put_line('6 parcelas = '|| seis_p);
    dbms_output.put_line('12 parcelas = '|| doze_p);
    dbms_output.put_line('18 parcelas = '|| dezoito_p);
    
END;