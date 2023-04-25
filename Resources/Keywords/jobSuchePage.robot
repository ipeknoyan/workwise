*** Settings ***
Library           SeleniumLibrary
Variables     /Users/ipekeroglu/PycharmProjects/workwise/Resources/Locators.py

*** Keywords ***
Select “Aushilfe” in “Anstellungsart”
    Click Element   ${Anstellungsart_list}
    Click Element   ${aushilfe_checkbox}

Click Filter
    Click Element   ${filter_button}

Assert “Aushilfe” was selected
    Element Should Be Visible  ${aseert_aushilfe}  timeout=5

Reset Filters
    Click Element   ${resetFilter_button}

