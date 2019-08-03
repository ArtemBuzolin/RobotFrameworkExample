*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify page loaded
    Page should contain element  xpath=//h1[@class='a-spacing-small']
    Element Text should be  xpath=//h1[@class='a-spacing-small']  Sign-In