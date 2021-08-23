*** Settings ***
Documentation  FireFlyTest
Library  Selenium2Library
Library  DebugLibrary
Library  Collections
Library  String

*** Variables ***
${PRODUCT_LISTS}            css=.carousel-lazy-item
${FILTER_BRAND_JBL}         xpath=//*[@class='box-container brand']//label[@for='brand-jbl']
${FILTER_PRICE_750_1000}    xpath=//*[@class='box-container fiyat']//label[@for='attr-fiyat-750-1000']
${FILTER_COLOR_BLACK}       xpath=//*[@class='box-container color-palette renk']//label[@for='attr-renk-Siyah']
${NUMBER_OF_REVIEWS}        css=.product-list.results-container .number-of-reviews

*** Keywords ***
Click first Product in Search Results
    ${elms}         Get WebElements     ${PRODUCT_LISTS}
    Click Element   ${elms[0]}
    Sleep   3

Select Commented First Model
    ${elms}     Get WebElements     ${NUMBER_OF_REVIEWS}
    scroll element into view        ${elms[0]}
    click element   ${elms[0]}
    Sleep   5
    # Wait For Page Loaded

Filter By
    [Arguments]     ${locator}
    scroll element into view    ${locator}
    click element   ${locator}
    # Wait For Page Loaded
    Sleep           1
