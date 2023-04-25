*** Settings ***
Library           SeleniumLibrary
Variables     /Users/ipekeroglu/PycharmProjects/workwise/Resources/Locators.py

*** Keywords ***
Select “Aushilfe” in “Anstellungsart”-Filter
    Click Element   ${aushilfe_checkbox}

