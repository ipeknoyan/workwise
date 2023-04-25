*** Settings ***
Library           SeleniumLibrary
Variables    /Users/ipekeroglu/PycharmProjects/workwise/Resources/Locators.py

*** Keywords ***

Verify cookies page is opened
    Element Should Be Visible  ${acceptCookies_button}  timeout=5

Accept Cookies
    Click Element   ${acceptCookies_button}
