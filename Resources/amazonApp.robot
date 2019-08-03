*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/PO/LandingPage.robot
Resource  ../Resources/PO/TopNav.robot
Resource  ../Resources/PO/SearchResult.robot
Resource  ../Resources/PO/Product.robot
Resource  ../Resources/PO/Cart.robot
Resource  ../Resources/PO/SignIn.robot
*** Keywords ***


search for products
    LandingPage.Load
    LandingPage.Verify Page loaded
    TopNav.Search for products
    SearchResult.Verify search completed

Select product from search results
    SearchResult.Click product link
    Product.Verify page loaded

Add product to card
    Product.Add to cart
    Cart.Verify product added

begin Checkout
    Cart.Proceed to checkout
    SignIn.Verify page loaded

