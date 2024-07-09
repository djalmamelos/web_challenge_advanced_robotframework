*** Settings ***
Library    SeleniumLibrary
Library    String

*** Variables ***
${HOME_URL}                 http://automationpractice.pl
${HOME_TITLE}               My Shop
${HOME_FIELD_PESQUISAR}     name=search_query
${HOME_BTN_PESQUISAR}       name=submit_search
${HOME_TOPMENU}             xpath=//*[@id="block_top_menu"]/ul
${HOME_PRODUCT}             xpath=//img[@src='http://www.automationpractice.pl/img/p/1/0/10-home_default.jpg']
${HOME_BTN_ADDCART}         xpath=//*[@id="add_to_cart"]/button
${HOME_BTN_CHECKOUT}        xpath=//*[@id="layer_cart"]//a[@title="Proceed to checkout"]
${HOME_PINKDRESS}    id=color_24

*** Keywords ***
#### Ações
Adicionar o produto "${PRODUTO}" no carrinho
    Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Clicar no botão pesquisar
    Clicar no botão "Add to Cart" do produto
    Clicar no botão "Proceed to checkout"

Acessar a página home do site
    Go To               ${HOME_URL}
    Wait Until Element Is Visible    ${HOME_TOPMENU}
    Title Should Be     ${HOME_TITLE}

Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Input Text          ${HOME_FIELD_PESQUISAR}    ${PRODUTO}

Clicar no botão pesquisar
    Click Element       ${HOME_BTN_PESQUISAR}

Clicar no botão "Add to Cart" do produto
    Wait Until Element Is Visible   ${HOME_PRODUCT}
    Click Element                   ${HOME_PRODUCT}
    Wait Until Element Is Visible   ${HOME_PINKDRESS}
    Click Element                   ${HOME_PINKDRESS} 
    Wait Until Element Is Visible   ${HOME_BTN_ADDCART}
    Click Button                    ${HOME_BTN_ADDCART}

Clicar no botão "Proceed to checkout"
    Wait Until Element Is Visible   ${HOME_BTN_CHECKOUT}
    Click Element                   ${HOME_BTN_CHECKOUT}
