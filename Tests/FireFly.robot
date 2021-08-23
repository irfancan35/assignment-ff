*** Settings ***
Documentation  FireFlyTest
Resource    ../Resources/FireFlyApp.robot
Resource    ../Resources/Common.robot

Test Setup      Begin Web Test
Test Teardown   End Web Test

# robot --variable BROWSER:chrome -d Results Tests/Trendyol.robot
# robot --variable BROWSER:headlessfirefox -d Results Tests/Trendyol.robot

*** Test Cases ***
Registered user should be able to buy a product
    FireFlyApp.Open Home Page
    FireFlyApp.Login with Valid User
    FireFlyApp.Add A Product To Basket In Home Page
    FireFlyApp.Complete Payment

User should be able to search a product and approve comments
    FireFlyApp.Open Home Page
    FireFlyApp.Search A Product As      bluetooth kulaklık
    FireFlyApp.Filter Search Results By     ${FILTER_BRAND_JBL}
    FireFlyApp.Filter Search Results By     ${FILTER_PRICE_750_1000}
    FireFlyApp.Filter Search Results By     ${FILTER_COLOR_BLACK}
    FireFlyApp.Select A Model In Search Results
    FireFlyApp.Show Product Comments
    FireFlyApp.Approve A Comment As Usefull