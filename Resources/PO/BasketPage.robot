*** Settings ***
Documentation  FireFlyTest
Library  Selenium2Library
Library  DebugLibrary
Library  Collections
Library  String

*** Variables ***
${CONTINUE_SHOPPING_BUTTON}     id=continue_step_btn
${DELETE_PRODUCT_BUTTON}        css=.delete_product_3DFC0

*** Keywords ***
Navigate To Payment Page
    click element   ${CONTINUE_SHOPPING_BUTTON}
    Sleep   3
    # Wait For Page Loaded
    click element   ${CONTINUE_SHOPPING_BUTTON}
    # Wait For Page Loaded
    Sleep   2

Empty the Basket
    Wait Until Element Is Visible   ${DELETE_PRODUCT_BUTTON}
    : FOR    ${i}    IN RANGE    999999
    \   ${elements}=    Get WebElements     ${DELETE_PRODUCT_BUTTON}
    \   ${elm_len}=     get length          ${elements}
    \   Exit For Loop If    ${elm_len} == 0
    \   Click Element       ${elements[0]}
    \   Sleep   2
