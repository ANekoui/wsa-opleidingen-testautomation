*** Settings ***
library    SeleniumLibrary
Library    DatabaseLibrary

*** Test Cases ***
test homepage-welkomtekst
        Open Browser    http://localhost:4200/home    chrome
        Wait Until Page Contains    Welkom bij de Working Spirit academy    
        sleep    3
        Close Browser
        
test homepage-navbar
        Open Browser    http://localhost:4200/home    chrome
        Maximize Browser Window
        Wait Until Element Is Visible    CorporateButton    
        Click Element    CorporateButton    
        Wait Until Page Contains    Working Spirit bestaat inmiddels bijna 15 jaar en    
        sleep    2
        Go Back
        Wait Until Element Is Visible    DetacheringButton    
        Click Element    DetacheringButton    
        Wait Until Page Contains    Wij detacheren ICT-professionals die een organisatie tijdelijk    
        sleep    2
        Go Back
        Wait Until Element Is Visible    AcademyButton    
        Click Element    AcademyButton    
        Wait Until Page Contains    De vraag naar ICT-ers neemt ieder jaar toe. Dit in    
        sleep    2
        Go Back
        Wait Until Element Is Visible    ContactButton    
        Click Element    ContactButton    
        Wait Until Page Contains    Richard Oosterhuis    
        sleep    2
        Go Back
        Wait Until Element Is Visible    WerkenbijButton    
        Click Element    WerkenbijButton    
        Wait Until Page Contains    Detachering biedt jou de kans om met regelmaat in verschillende    
        sleep    2
        Go Back
        sleep    3
        Close Browser