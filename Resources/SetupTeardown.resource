*** Settings ***
Library    SeleniumLibrary

*** Variables ***
#GLOBALS
${BROWSER}    chrome
${ENV}    local

#Suite variables
${localURL}    http://localhost:4200/home


*** Keywords ***
Wacht tot landingspagina gereed is
    Wait Until Element Is Visible    headtext
    Element Text Should Be    headtext    Welkom bij de Working Spirit academy!

Open WSA Opleidingen site
    Run Keyword If    '${ENV}' == 'local'     Open Browser    ${localURL}    ${BROWSER}
    ...    ELSE    Fail    Omgeving wordt nog niet ondersteund
    
    Maximize Browser Window
    Wacht tot landingspagina gereed is

Sluit WSA Opleidingen Site
    Close All Browsers

Terug naar Landingspagina
    Go Back
    Wacht tot landingspagina gereed is