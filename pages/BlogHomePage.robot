

*** Settings ***
Library    Browser

*** Variables ***
${URL}    https://blog.agibank.com.br
${SEARCH_ICON}    css=.ast-header-search
${SEARCH_INPUT}   input[type="search"]

*** Keywords ***
Open Home Page
    New Page    ${URL}

Open Search
    Click    ${SEARCH_ICON}
    Wait For Elements State    ${SEARCH_INPUT}    visible

Search For Term
    [Arguments]    ${term}
    Open Search
    Fill Text    ${SEARCH_INPUT}    ${term}
    Press Keys    ${SEARCH_INPUT}    Enter
    Wait For Load State    networkidle
