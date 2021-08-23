*** Settings ***
Documentation  FireFlyTest
Resource    Common.robot
Resource    ../Resources/PO/BasketPage.robot
Resource    ../Resources/PO/Header.robot
Resource    ../Resources/PO/HomePage.robot
Resource    ../Resources/PO/LoginPage.robot
Resource    ../Resources/PO/ProductDetailsPage.robot
Resource    ../Resources/PO/SearchResultsPage.robot

*** Variables ***
${BROWSER} =                chrome
${URL_BASE} =               https://www.hepsiburada.com

*** Keywords ***
Open Home Page
    Common.Open Home Page

Login with Valid User
    Header.Navigate To Login Page
    LoginPage.Login With Crendentials

Add A Product To Basket In Home Page
    HomePage.Add To Basket DealOfTheDays First Product

Complete Payment
    Header.Navigate To Basket Page
    BasketPage.Navigate To Payment Page

Search A Product As
    [Arguments]     ${product_name}
    Header.Search A Product     ${product_name}

Filter Search Results By
    [Arguments]     ${locator}
    SearchResultsPage.Filter By   ${locator}

Select A Model In Search Results
    SearchResultsPage.Select Commented First Model

Show Product Comments
    ProductDetailsPage.Show Product Comments

Approve A Comment As Usefull
    ProductDetailsPage.Approve First Comment
