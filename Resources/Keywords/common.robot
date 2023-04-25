*** Settings ***
Library           SeleniumLibrary
Resource    /Users/ipekeroglu/PycharmProjects/workwise/Resources/Keywords/cookiesPage.robot
Variables     /Users/ipekeroglu/PycharmProjects/workwise/Resources/Locators.py

*** Keywords ***
Navigate Job Suche Page
    [Arguments]  ${site_url}  ${browser}
    Open Browser  ${site_url}  ${browser}
    Wait Until Element Is Visible  ${acceptCookies_button}  timeout=10
    Accept Cookies

Close Page
    Close Browser