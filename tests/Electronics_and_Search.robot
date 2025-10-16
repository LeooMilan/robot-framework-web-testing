*** Settings ***
Documentation     Suíte: Acesso ao menu Eletrônicos e pesquisa de produto (Amazon.com.br)
Resource          ../resources/Keywords.robot
Library           SeleniumLibrary
Suite Setup       Open Browser To Amazon BR Home
Suite Teardown    Close Browser

*** Variables ***
${BROWSER}        chrome
${AMAZON_URL}     https://www.amazon.com.br

*** Test Cases ***
Caso de Teste 01 - Acesso ao menu "Eletrônicos"
    [Documentation]
    [Tags]      menus
    Acessar a home page do site Amazon.com.br
    Entrar no menu Eletrônicos
    Verificar se o título da pagina fica "Eletrônicos e Tecnologia | Amazon.com.br"
    Verificar se aparece a frase "Eletrônicos e Tecnologia"
    Verificar se aparece a categoria "Computadores e Informática"
    Go To Electronics Category BR
    Electronics Category BR Should Be Visible

Caso de Teste 02 - "Pesquisa de um produto"
    [Documentation]
    [Tags]      busca_produtos
    Acessar a home page do site Amazon.com.br
    Digitar o nome do produto "Xbox Series S" no campo de Pesquisa
    Clicar no botão de Pesquisa
    Veirificar o resultado da pesquisa, listando o produto pesquisado
    Search For Product    Xbox Series S
    Search Results Should Contain    Xbox Series S
