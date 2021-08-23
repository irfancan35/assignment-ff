*** Settings ***
Documentation  FireFlyTest
Library  Selenium2Library
Library  DebugLibrary
Library  Collections
Library  String

*** Variables ***
${DOD_PRODUCTS}         css=.hb_dod_product
${DOD_ADD_TO_BASKET}    xpath=//button[contains(@class, 'sf-dod-kMtuEI')]

*** Keywords ***
Add To Basket DealOfTheDays First Product
    ${elms}     Get WebElements     ${DOD_PRODUCTS}
    scroll element into view        ${elms[0]}
    set focus to element            ${elms[0]}
    Sleep   1
    click element   ${DOD_ADD_TO_BASKET}
    Sleep   3
    # Wait For Page Loaded

