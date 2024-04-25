***Settings***
Variables       ../Keywords-Utils/Locators.yaml
Library     SeleniumLibrary
Library     String

*** Keywords ***
Product Image Should Be Visible
    Element Should Be Visible    ${inventory_image}
Add To Cart Button Should Be Visible
    Element Should Be Visible    ${inventory_add_to_cart}
Inventory Price Should Be Displayed
    Element Should Be Visible    ${inventory_item_price}
Add To Cart Item
    Click Button    ${inventory_add_to_cart}
View Shopping Cart
    Click Button    ${inventory_shopping_cart}