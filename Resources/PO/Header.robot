*** Settings ***
Documentation  FireFlyTest
Library  Selenium2Library
Library  DebugLibrary
Library  Collections
Library  String

*** Variables ***
# MyAccount
${MYACCOUNT_DROPDOWN}           id=myAccount
${MYACCOUNT_DROPDOWN_LOGIN}     id=login
${MYACCOUNT_DROPDOWN_LOGOUT}    xpath=//*[contains(text(), 'Çıkış')]
# Basket
${LOC_BASKET_BUTTON}            id=shoppingCart
# Product Search
${SEARCH_BOX}                   css=#SearchBoxOld .desktopOldAutosuggestTheme-input
${SEARCH_BUTTON}                css=#SearchBoxOld .SearchBoxOld-buttonContainer

*** Keywords ***
Navigate To Login Page
    Mouse Up        ${MYACCOUNT_DROPDOWN}
    Sleep   1
    Click Element   ${MYACCOUNT_DROPDOWN_LOGIN}
    Sleep   4

Search A Product
    [Arguments]     ${term}
    Input Text      ${SEARCH_BOX}    ${term}
    Click Element   ${SEARCH_BUTTON}
    Sleep   3
    # Wait For Page Loaded

Navigate To Basket Page
    Wait Until Element Is Enabled   ${LOC_BASKET_BUTTON}
    Click Element   ${LOC_BASKET_BUTTON}
    Sleep   5
    # Wait For Page Loaded

Logout
    Mouse Up        ${MYACCOUNT_DROPDOWN}
    Sleep   1
    Click Element   ${MYACCOUNT_DROPDOWN_LOGOUT}
    Sleep   2

