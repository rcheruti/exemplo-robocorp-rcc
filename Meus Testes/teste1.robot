*** Settings ***
Documentation   Arquivo Teste1 de testes.
Library         RPA.Browser.Selenium
Library         RPA.HTTP
Resource        ../keywords/login.robot

Default Tags    MinhaTag1 com espaços   Mais um

*** Variables ***
${URL}=         https://robotsparebinindustries.com/
${REST_URL}=    https://gorest.co.in/public/v2/users

${RESP_ARQ}=    ./arquivo-resp1.txt

*** Tasks ***
Teste um
    Log    Minha mensagem

Teste dois
    [Tags]    Outras tags, dois
    Log    Minha mensagem
    
Teste três
    Log    Minha mensagem

# Abrir página
#     RobotSpareBin - Fazer login
#     Sleep   3s

# Testar APIs
#     ${valores}=  Http Get   url=${REST_URL}  verify=False   target_file=${RESP_ARQ}   
#     Log  ****** resposta:  console=True
#     Log  ${valores}  console=True
