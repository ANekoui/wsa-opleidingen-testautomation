*** Settings ***
Resource    ../../Resources/SetupTeardown.resource
Resource    ../../Resources/Navigation.resource
Suite Setup       Open WSA Opleidingen Site
Suite Teardown    Sluit WSA Opleidingen Site
Test Teardown     Terug naar Landingspagina
Test Template     Selecteer Navigatie Button
Documentation     Deze testuite bevat test op de navigatie van de landingspagina.

*** Test Cases ***
Corporate link      Corporate
Detachering link    Detachering
Academy link        Academy
Contact link        Contact
Werken bij link     Werkenbij