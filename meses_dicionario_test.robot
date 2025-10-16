*** Settings ***
Documentation    Teste para imprimir todos os meses e seus respectivos dias no console

*** Variables ***
&{MESES_DIAS}    Janeiro=31    Fevereiro=28    Março=31    Abril=30    Maio=31    Junho=30    Julho=31    Agosto=31    Setembro=30    Outubro=31    Novembro=30    Dezembro=31

*** Test Cases ***
Imprimir meses e quantidade de dias
    [Documentation]    Imprime cada mês e sua respectiva quantidade de dias
    Log To Console    Janeiro tem ${MESES_DIAS.Janeiro} dias
    Log To Console    Fevereiro tem ${MESES_DIAS.Fevereiro} dias
    Log To Console    Março tem ${MESES_DIAS.Março} dias
    Log To Console    Abril tem ${MESES_DIAS.Abril} dias
    Log To Console    Maio tem ${MESES_DIAS.Maio} dias
    Log To Console    Junho tem ${MESES_DIAS.Junho} dias
    Log To Console    Julho tem ${MESES_DIAS.Julho} dias
    Log To Console    Agosto tem ${MESES_DIAS.Agosto} dias
    Log To Console    Setembro tem ${MESES_DIAS.Setembro} dias
    Log To Console    Outubro tem ${MESES_DIAS.Outubro} dias
    Log To Console    Novembro tem ${MESES_DIAS.Novembro} dias
    Log To Console    Dezembro tem ${MESES_DIAS.Dezembro} dias