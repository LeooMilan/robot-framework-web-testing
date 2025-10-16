# Amazon (BR) Testes com Robot Framework

Suíte de exemplo com dois casos: acessar menu Eletrônicos e pesquisar um produto.

Estrutura:
- tests/Electronics_and_Search.robot
- resources/Keywords.robot

Como executar (PowerShell):

1. Criar e ativar venv (opcional):
```powershell
python -m venv .venv; .\.venv\Scripts\Activate.ps1
```

2. Instalar dependências:
```powershell
pip install -r requirements.txt
```

3. Executar os testes:
```powershell
# Projeto Robot Framework - Automação Web

Este projeto contém testes automatizados desenvolvidos com Robot Framework para automação web do site Kabum.com.br.

## 📁 Estrutura do Projeto

- `kabum_testes.robot` - Testes básicos do Kabum
- `kabum_testes_gherkin_bdd.robot` - Testes em formato BDD/Gherkin
- `kabum_resources.robot` - Keywords e recursos compartilhados
- `meses_lista_test.robot` - Teste com variáveis tipo lista
- `meses_dicionario_test.robot` - Teste com variáveis tipo dicionário
- `email_custom_test.robot` - Teste de geração de email customizado
- `UsandoLoops.robot` - Exemplos de uso de loops (FOR, Repeat Keyword)
- `DesafioIFLoops.robot` - Desafios com estruturas condicionais e loops

## 🚀 Como Executar

```bash
# Executar todos os testes
robot -d ./resultados .

# Executar teste específico
robot -d ./resultados nome_do_arquivo.robot

# Executar com tags específicas
robot -d ./resultados -i tag_name .
```

## 📋 Pré-requisitos

- Python 3.x
- Robot Framework
- SeleniumLibrary
- ChromeDriver

## 📖 Funcionalidades

- ✅ Testes de navegação web
- ✅ Busca e validação de produtos
- ✅ Scroll infinito e contagem de resultados
- ✅ Testes BDD com Gherkin
- ✅ Estruturas de controle (IF, FOR, loops)
- ✅ Variáveis (listas, dicionários)
- ✅ Keywords customizadas
```

Observações:
- Ajuste os seletores em `resources/Keywords.robot` se a Amazon alterar o layout.
- Para estabilidade, considere usar `webdriver-manager` para gerenciar o chromedriver.
