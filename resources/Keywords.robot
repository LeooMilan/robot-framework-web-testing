*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}      chrome
${AMAZON_URL}   https://www.amazon.com.br

*** Keywords ***
Open Browser To Amazon BR Home
    Open Browser    ${AMAZON_URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    css:input#twotabsearchtextbox    timeout=10s

Go To Electronics Category BR
    # Abre o menu (caso exista) e tenta clicar em Eletrônicos
    Run Keyword And Ignore Error    Click Element    css:#nav-hamburger-menu
    # Tenta clicar pelo link com texto Eletrônicos (versão pt-br)
    ${status}    ${msg}=    Run Keyword And Ignore Error    Click Link    Eletrônicos
    Run Keyword If    '${status}' == 'PASS'    Return From Keyword
    # alternativa: clicar em um link que contenha 'eletrônicos' no href
    ${status2}    ${msg2}=    Run Keyword And Ignore Error    Click Element    xpath=//a[contains(translate(., 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'eletrônicos')]
    # se ainda não clicou, tenta link com texto 'Eletrônicos e Tecnologia'
    Run Keyword If    '${status2}' == 'PASS'    Return From Keyword
    Click Element    xpath=//a[contains(., 'Eletrônicos') or contains(., 'Eletrônicos e Tecnologia')]
    Wait Until Page Contains    Eletrônicos e Tecnologia    timeout=10s

Electronics Category BR Should Be Visible
    Page Should Contain    Eletrônicos e Tecnologia
    Page Should Contain    Computadores e Informática

Search For Product
    [Arguments]    ${term}
    Wait Until Element Is Visible    css:input#twotabsearchtextbox    timeout=10s
    Input Text    css:input#twotabsearchtextbox    ${term}
    Click Button    css:input#nav-search-submit-button
    Wait Until Page Contains Element    css:div.s-main-slot    timeout=10s

Search Results Should Contain
    [Arguments]    ${term}
    Wait Until Page Contains    ${term}    timeout=10s
    Page Should Contain Element    css:div.s-main-slot
