*** Settings ***
Documentation  FireFlyTest
Library  Selenium2Library
Library  DebugLibrary
Library  Collections
Library  String

*** Variables ***
${PRODUCT_COMMENTS}         id=reviewsTabTrigger
${COMMENT_THUMBSUP}         xpath=//*[@class='hermes-ReviewCard-module-tAGUS']

*** Keywords ***
Show Product Comments
    scroll element into view    ${PRODUCT_COMMENTS}
    click element   ${PRODUCT_COMMENTS}
    Sleep   1
    # Wait For Page Loaded

Approve First Comment
    ${elms}         Get WebElements     ${COMMENT_THUMBSUP}
    scroll element into view    ${elms[0]}
    Sleep   1
    click element   ${elms[0]}
    # Wait For Page Loaded
    Sleep   2
