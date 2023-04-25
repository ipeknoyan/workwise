*** Settings ***
Library           SeleniumLibrary
Resource   /Users/ipekeroglu/PycharmProjects/workwise/Resources/Keywords/jobSuchePage.robot
Resource    /Users/ipekeroglu/PycharmProjects/workwise/Resources/Keywords/common.robot
Variables     /Users/ipekeroglu/PycharmProjects/workwise/Resources/Locators.py
Test Teardown   Close Page
Test Setup  Navigate Job Suche Page  ${site_url}    ${browser}

*** Variables ***
${site_url}  https://www.workwise.io/jobsuche
${browser}  Chrome

*** Test Cases ***
Click Aushilfe from “Anstellungsart”-Filter
    [documentation]  This test case verifies that the user is able to successfully select Aushilfe from Filter List
    [Tags]   JobSuchePageTests  E2E
    Select “Aushilfe” in “Anstellungsart”
    Click Filter
    Assert “Aushilfe” was selected

Clear all filters by clicking “Alle Filter zurücksetzen” button
    [documentation]  This test case verifies that the user is able to successfully clear all filters with Filter zurücksetzen
    [Tags]   JobSuchePageTests  E2E
    Select “Aushilfe” in “Anstellungsart”
    Reset Filters




