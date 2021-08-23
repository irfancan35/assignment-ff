*** Settings ***
Documentation  FireFlyTest
Library  Selenium2Library
Library  DebugLibrary
Library  Collections
Library  String

*** Variables ***
${USER_EMAIL}       test.hepsiburada@yopmail.com
${USER_PASSWORD}    Burada
${USER_NAME}        Hepsi Burada
# Login Page
${LOGIN_EMAIL}      id=txtUserName
${LOGIN_PASSWORD}   id=txtPassword
${LOGIN_BUTTON}     id=btnLogin

*** Keywords ***
Login With Crendentials
    [Arguments]     ${user_mail}=${USER_EMAIL}  ${user_pass}=${USER_PASSWORD}
    Input Text      ${LOGIN_EMAIL}      ${user_mail}
    Sleep   1
    Input Password  ${LOGIN_PASSWORD}   ${user_pass}
    Click Element   ${LOGIN_BUTTON}
    Sleep   3
    # Wait For Page Loaded

