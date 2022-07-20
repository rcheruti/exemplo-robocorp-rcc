*** Settings ***
Documentation   Template robot main suite.
Library         RPA.Browser.Selenium

*** Variables ***
${URL}=     https://robotsparebinindustries.com/

*** Tasks ***
Abrir página
    Open Available Browser    ${URL}
    Input Text    locator=css:#username    text=texto
    Input Password    locator=css:#password    password=texto
    Sleep    2s
