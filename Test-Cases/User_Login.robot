***Settings***
Variables       ../Keywords-Utils/Locators.yaml
Library     SeleniumLibrary
Resource    ../Keywords-Utils/Login_Page_Keywords.robot

*** Test Cases ***

Verify That Standard User Can Successfully Log In
    Go To Sauce Lab Login Page
    Page Title Should Be Correct
    Page Header Should Be Correct
    User Login As Standard User
    End Test

Verify That Locked Out User Can't Login
    Go To Sauce Lab Login Page
    Page Header Should Be Correct
    Page Title Should Be Correct
    User Login As Locked Out User
    Locked Out User Error Message Should Be Displayed
    End Test
