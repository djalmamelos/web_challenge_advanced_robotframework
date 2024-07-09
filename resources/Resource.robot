*** Settings ***
Library    SeleniumLibrary
Library    String
Library    Screenshot

*** Variables ***
${BROWSER}      chrome

*** Keywords ***
#### Setup e Teardown
Abrir navegador
    Open Browser        about:blank   ${BROWSER}

Fechar navegador
    Capture Page Screenshot
    Close Browser


