*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Load
    Go to  http://www.amazon.com
Verify Page loaded
    Wait Until Page Contains   Your Amazon.com