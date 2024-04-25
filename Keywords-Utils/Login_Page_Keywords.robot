***Settings***
Variables       ../Keywords-Utils/Locators.yaml
Library     SeleniumLibrary
Library     String
*** Keywords ***
Go To Sauce Lab Login Page
    Open Browser    https://www.saucedemo.com/  Chrome
Page Title Should Be Correct
    Title Should Be    Swag Labs
Page Header Should Be Correct
    Element Should Be Visible    ${login_logo}
User Login As Standard User
    Input Text    ${login_username}    standard_user
    Input Text    ${login_password}    secret_sauce
    Click Button    ${login_button}
    Wait Until Element Is Visible    ${inventory_header_text}
User Login As Locked Out User
    Input Text    ${login_username}    locked_out_user
    Input Text    ${login_password}    secret_sauce
    Click Button    ${login_button}
Locked Out User Error Message Should Be Displayed
    Wait Until Page Contains Element    ${login_error_msg}
    Element Text Should Be    ${login_error_msg}    Epic sadface: Sorry, this user has been locked out.
End Test
    Close Browser
