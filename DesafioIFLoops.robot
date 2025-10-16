*** Settings ***
Documentation    Desafio: Praticando IF e Loops no Robot Framework

*** Variables ***
@{NUMEROS}    1    2    3    4    5    6    7    8    9    10
@{LISTA_NUMEROS}    1    3    5    7    9    10    12    15    20    25

*** Test Cases ***
Desafio IF e Loops
    [Documentation]    Teste que combina FOR e IF para verificar números pares e ímpares
    Log To Console    ${\n}=== DESAFIO: PRATICANDO IF E LOOPS ===
    Log To Console    Verificando números de 1 a 10:
    
    FOR    ${numero}    IN    @{NUMEROS}
        ${resto}=    Evaluate    ${numero} % 2
        IF    ${resto} == 0
            Log To Console    ${numero} é PAR
        ELSE
            Log To Console    ${numero} é ÍMPAR
        END
    END
    
    Log To Console    ${\n}=== FIM DO DESAFIO ===

Desafio IF e Loops com Range
    [Documentation]    Outro exemplo usando FOR IN RANGE com condições
    Log To Console    ${\n}=== DESAFIO COM RANGE ===
    Log To Console    Verificando números de 1 a 20:
    
    FOR    ${i}    IN RANGE    1    21
        IF    ${i} < 5
            Log To Console    ${i} é menor que 5
        ELSE IF    ${i} >= 5 and ${i} <= 10
            Log To Console    ${i} está entre 5 e 10
        ELSE IF    ${i} > 10 and ${i} <= 15
            Log To Console    ${i} está entre 11 e 15
        ELSE
            Log To Console    ${i} é maior que 15
        END
    END
    
    Log To Console    ${\n}=== FIM DO SEGUNDO DESAFIO ===

*** Keywords ***
Percorrer Lista com IF
    [Documentation]    Keyword que percorre a lista e identifica os números 5 e 10
    FOR    ${numero}    IN    @{LISTA_NUMEROS}
        IF    ${numero} == 5
            Log    Eu sou o número 5!
        ELSE IF    ${numero} == 10
            Log    Eu sou o número 10!
        ELSE
            Log    Eu não sou o número 5 e nem o 10!
        END
    END

Desafio Percorrer Lista Específica
    [Documentation]    Testa a keyword que percorre lista com condições IF específicas
    Log To Console    ${\n}=== DESAFIO: PERCORRENDO LISTA COM IF ===
    Log To Console    Percorrendo lista: @{LISTA_NUMEROS}
    Percorrer Lista com IF
    Log To Console    ${\n}=== FIM DO TERCEIRO DESAFIO ===

*** Test Cases ***
Desafio Percorrer Lista com IF Específico
    [Documentation]    Chama a keyword que percorre lista identificando números 5 e 10
    Desafio Percorrer Lista Específica