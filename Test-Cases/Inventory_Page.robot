***Settings***
Variables   ../Keywords-Utils/Locators.yaml
Library     SeleniumLibrary
Resource    ../Keywords-Utils/Login_Page_Keywords.robot
Resource    ../Keywords-Utils/Inventory_Page_Keywords.robot

*** Test Cases ***
Add To Cart Items
    Go To Sauce Lab Login Page
    User Login As Standard User
    Add To Cart Button Should Be Visible
    Add To Cart Item
    View Shopping Cart