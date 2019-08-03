*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify search completed
    Wait until page contains  results for "Ferrari 458"
    wait until page contains element   xpath=//div[@data-cel-widget="search_result_0"]//img
Click product link
    [Documentation]  Click first product in search result list
    Click Element  xpath=//div[@data-cel-widget="search_result_0"]//img