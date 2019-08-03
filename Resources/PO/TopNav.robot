*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Search for products
    Enter Search term
    Submit Search
Enter Search term
    Input Text  css=#twotabsearchtextbox  Ferrari 458
Submit Search
    Click button  xpath=//div[@class="nav-search-submit nav-sprite"]/input

