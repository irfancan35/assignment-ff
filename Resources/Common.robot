*** Settings ***
Documentation  FireFlyTest
Library  Selenium2Library
Library  DebugLibrary
Library  Collections
Library  String

#Test Setup      Begin Web Test
#Test Teardown   End Web Test

*** Variables ***
${BROWSER}                      chrome
${BASE_URL}                     https://www.hepsiburada.com

*** Keywords ***
Begin Web Test
    [Arguments]     ${brw}=${BROWSER}
    Open Browser    about:blank         ${brw}
    maximize browser window

End Web Test
    Close Browser

Open Home Page
    go to           ${BASE_URL}
    Wait For Page Loaded
    #Sleep       3

Wait For Page Loaded
    wait for condition  return document.readyState === "complete"   timeout=5

Validate that Login is successful
    Wait Until Element Is Visible       ${LOC_USERNAME}
    ${elm}    Get WebElement            ${LOC_USERNAME}
    ${att}    Get Element Attribute     ${elm}   text
    Should Be Equal     ${att}          ${USER_NAME}
    log to console  ${att}

#Logout
#    Mouse Up        ${MYACCOUNT_DROPDOWN}
#    Sleep   1
#    Click Element   ${MYACCOUNT_DROPDOWN_LOGOUT}
#    Sleep   2

Scenario First ${xyz}
    Open Home Page
    Navigate To Login Page
    Login With Crendentials
    Add To Basket DealOfTheDays First Product
    Navigate To Basket Page
    #Sleep   5
    Navigate To Payment Page

Scenario Second ${product}
    Open Home Page
    Search A Product    ${product}
    Filter By   ${FILTER_BRAND_JBL}
    Filter By   ${FILTER_PRICE_750_1000}
    Filter By   ${FILTER_COLOR_BLACK}
    Select Commented First Model
    Show Product Comments
    Approve First Comment


#*** Test Cases ***
#Scenario Test1
#    [Template]  Scenario First ${xyz}
#    ASD
#
#Scenario Test2
#    [Template]  Scenario Second ${product}
#    bluetooth kulaklık