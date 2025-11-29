*** Settings ***
Library    Browser
Resource    ../pages/BlogHomePage.robot
Suite Setup    Open Browser To Blog
Suite Teardown    Close Browser

*** Variables ***
${HEADLESS}    True
&{VIDEO}       dir=videos

*** Keywords ***
Open Browser To Blog
    New Browser    chromium    headless=${HEADLESS}
    New Context
    Open Home Page

*** Test Cases ***
Buscar termo existente retorna resultados
    Search For Term    cartão
    ${count}=    Get Element Count    css=article
    Should Be True    ${count} > 0
    Take Screenshot

Buscar termo inexistente exibe mensagem
    Search For Term    asdasdqweqwe
    Wait For Elements State    xpath=//*[contains(text(),"Lamentamos, mas nada foi encontrado para sua pesquisa, tente novamente com outras palavras.")]    visible
    Take Screenshot
