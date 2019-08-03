*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify product added
    Wait until page contains  Added to Cart
Proceed to checkout
    Click link  css=#hlb-ptc-btn-native