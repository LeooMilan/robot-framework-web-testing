*** Settings ***
Library    String

*** Keywords ***
Gerar Email Customizado
    [Arguments]    ${nome}    ${sobrenome}
    ${aleatorio}=    Generate Random String    6    [LOWER]
    ${email}=    Set Variable    ${nome}.${sobrenome}.${aleatorio}@testerobot.com
    [Return]    ${email}

*** Test Cases ***
Testar geração de e-mail customizado
    ${email_gerado}=    Gerar Email Customizado    Leonardo    Julio
    Log To Console    ${email_gerado}
