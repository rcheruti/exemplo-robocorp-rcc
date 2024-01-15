*** Settings ***
Documentation   Arquivo Teste1 de testes.
Library         RPA.Browser.Selenium
Library         RPA.HTTP

*** Variables ***
${URL}=    http://localhost:8080/index.html

*** Tasks ***
Executar outro teste
    Abrir página
    Clicar outro botão
    [Teardown]  Fechar

*** Keywords ***
Abrir página
    # set_capability("timeouts", {"pageLoad":15000, "implicitWait": 10000});
    # pageLoadStrategy:
    #    eager: esperar a página ser interativa
    #    none: não esperar a página terminar de carregar
    #    normal: esperar a página carregar por completa
    Open Browser  url=${URL}  browser=Chrome  options=set_capability("timeouts", {"pageLoad":15000, "implicit": 10000});set_capability("pageLoadStrategy", "none")
    Log    Minha mensagem

Clicar outro botão
    # Click Element When Visible    locator=css:#btnCor
    Sleep  2s

Fechar
    Close Browser
