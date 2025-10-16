*** Settings ***
Documentation    Suite para demonstrar o uso de loops no Robot Framework

*** Variables ***
@{NUMEROS}    1    3    5    7    9    10    12    15    20    25

*** Keywords ***
Percorrer Lista com IF
    [Documentation]    Keyword que percorre a lista e identifica os números 5 e 10
    FOR    ${numero}    IN    @{NUMEROS}
        IF    ${numero} == 5
            Log    Eu sou o número 5!
        ELSE IF    ${numero} == 10
            Log    Eu sou o número 10!
        ELSE
            Log    Eu não sou o número 5 e nem o 10!
        END
    END

*** Test Cases ***
Usando Repeat Keyword
    Log To Console    ${\n}Iniciando teste com Repeat Keyword:
    Repeat Keyword    8 times    Log To Console    Executando repetição

Usando FOR IN RANGE
    Log To Console    ${\n}Iniciando teste com FOR IN RANGE:
    FOR    ${CONTADOR}    IN RANGE    0    5    2
        Log To Console    Minha posição agora é: ${CONTADOR}
        Log    Minha posição agora é ${CONTADOR}
    END

Teste com IF e FOR na Lista
    [Documentation]    Testa a keyword que percorre lista com condições IF
    Log To Console    ${\n}Testando percorrer lista com IF:
    Percorrer Lista com IF