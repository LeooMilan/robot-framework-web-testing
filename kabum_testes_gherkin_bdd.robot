*** Settings ***
Documentation    Suite de testes automatizados no site da Kabum usando Robot Framework + SeleniumLibrary.
Resource         kabum_resources.robot

*** Test Cases ***
Caso de Teste 01 - Acesso ao menu "Hardware"
    [Documentation]    Verifica o acesso ao menu Hardware do Kabum e suas validações
    [Tags]    menus    hardware
    [Setup]    Abrir o navegador
    Dado que estou na home page da kabum.com.br
    Quando acessoc o menu "Hardware"
    Então o titulo da pagina deve ficar "Hardware" | Kabum.com.br
    E a categoria "Placa de video" deve ser exibida na pagina
    [Teardown]    Fechar o navegador



Caso de Teste 02 - Pesquisa de um produto
    [Documentation]    Testa a pesquisa pelo nome exato do produto e valida se aparece nos resultados
    [Tags]    busca    produtos    localizador    scroll
    [Setup]    Abrir o navegador
    Dado que estou na home page do site Kabum.com.br
    Quando eu digito o nome do produto no campo de busca    notebook
    E verifico o localizador do campo de pesquisa    notebook
    E clico no botão de pesquisa
    E verifico se a pesquisa retornou resultados    notebook
    E conto o total de produtos encontrados    notebook
    E rolo a página para mostrar todos os resultados
    Então devo ver o produto pesquisado listado nos resultados    notebook
    [Teardown]    Fechar o navegador