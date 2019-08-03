*** Settings ***
Documentation  This is some basic info about the whole suite
Resource  ../Resources/amazonApp.robot
Resource  ../Resources/common.robot

Test Setup  common.Begin Web Test
Test Teardown  common.End web test
*** Variables ***
${browses}  = Chrome
${start}

*** Test Cases ***
User can search for products
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke

    amazonApp.search for products

User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke

    amazonApp.search for products
    amazonApp.Select product from search results
    amazonApp.Add product to card
    amazonApp.begin Checkout


