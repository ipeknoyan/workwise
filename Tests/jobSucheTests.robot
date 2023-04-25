*** Settings ***
Library           SeleniumLibrary
Resource    /Users/ipekeroglu/PycharmProjects/workwise/Resources/Keywords/cookiesPage.robot
Resource   /Users/ipekeroglu/PycharmProjects/workwise/Resources/Keywords/jobSuchePage.robot
Resource    /Users/ipekeroglu/PycharmProjects/workwise/Resources/Keywords/common.robot
Variables     /Users/ipekeroglu/PycharmProjects/workwise/Resources/Locators.py

*** Variables ***
${site_url}  https://www.workwise.io/jobsuche
${browser}  Chrome

*** Test Cases ***

Open the Page
    Navigate Job Suche Page    ${site_url}  ${browser}
    Accept Cookies
    Select “Aushilfe” in “Anstellungsart”-Filter

