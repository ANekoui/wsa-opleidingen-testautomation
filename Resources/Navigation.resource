*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Selecteer Navigatie Button
    [Arguments]    ${item}
    Wait Until Element Is Visible    ${item}Button
    Click Element    ${item}Button
    Run Keyword If    '${item}' == 'Corporate'     Wait Until Page Contains Element    CorporatePage
    ...    ELSE IF    '${item}' == 'Detachering'     Wait Until Page Contains Element    DetacheringPage
    ...    ELSE IF    '${item}' == 'Academy'     Wait Until Page Contains Element    DetacheringPage
    ...    ELSE IF    '${item}' == 'Contact'     Wait Until Page Contains Element    ContactPage
    ...    ELSE IF    '${item}' == 'Werkenbij'     Wait Until Page Contains Element    HomePage
    ...    ELSE    Fail    Deze optie wordt niet ondersteund
    
