*** Settings ***
Documentation    Suite de testes automatizados no site da Kabum usando Robot Framework + SeleniumLibrary.
Resource         kabum_resources.robot

*** Test Cases ***
Caso de Teste 01 - Acesso ao menu "Hardware"
    [Documentation]    Verifica o acesso ao menu Hardware do Kabum e suas validações
    [Tags]    menus    hardware
    [Setup]    Abrir o navegador
    Acessar a home page do Kabum
    Entrar no menu Hardware
    Verificar se o título da página fica "Hardware"
    Verificar se aparece a frase "Hardware"
    Verificar se aparece a categoria "Marcas"
    [Teardown]    Fechar o navegador

Caso de Teste 02 - Pesquisa de um produto
    [Documentation]    Testa a pesquisa pelo nome exato do produto e valida se aparece nos resultados
    [Tags]    busca    produtos    localizador    scroll
    [Setup]    Abrir o navegador
    Acessar a home page do Kabum
    Digitar o nome do produto no campo de Pesquisa    Placa de Vídeo ASUS ROG ASTRAL RTX5090 WHITE NVIDIA Geforce, 32GB, GDDR7 - 90YV0LWA-M0NA00
    Ir no campo localizador e buscar o elemento    Placa de Vídeo ASUS ROG ASTRAL RTX5090 WHITE NVIDIA Geforce, 32GB, GDDR7 - 90YV0LWA-M0NA00
    Clicar no botão de Pesquisa
    Verificar o resultado da pesquisa    Placa de Vídeo ASUS ROG ASTRAL RTX5090 WHITE NVIDIA Geforce, 32GB, GDDR7 - 90YV0LWA-M0NA00
    Contar total de produtos encontrados    Placa de Vídeo ASUS ROG ASTRAL RTX5090 WHITE NVIDIA Geforce, 32GB, GDDR7 - 90YV0LWA-M0NA00
    Rolar página até o final mostrando resultados
    Verificar se está listando o produto pesquisado    Placa de Vídeo ASUS ROG ASTRAL RTX5090 WHITE NVIDIA Geforce, 32GB, GDDR7 - 90YV0LWA-M0NA00
    [Teardown]    Fechar o navegador