*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify page loaded
    Wait until page contains  Back to results
Add to cart
    Click Element  css=#add-to-cart-button
