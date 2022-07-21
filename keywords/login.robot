*** Settings ***
Documentation   Frases para login no site de exemplo do Robocorp
Library         RPA.Browser.Selenium

*** Variables ***
${URL}=     https://robotsparebinindustries.com/

*** Keywords ***
RobotSpareBin - Fazer login
    Open Browser    url=${URL}   browser=chrome
    Input Text    locator=css:#username    text=maria
    Input Password    locator=css:#password    password=thoushallnotpass
    Click Button    locator=css:#root > div > div > div > div:nth-child(1) > form > button
    
