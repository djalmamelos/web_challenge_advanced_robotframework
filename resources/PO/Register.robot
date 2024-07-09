*** Settings ***
Library    SeleniumLibrary
Library    String

*** Variables ***
${BROWSER}      chrome
${REGISTER_SIGNIN}            xpath=//*[@id="header"]//*[@class="login"][contains(text(),"Sign in")]
${REGISTER_CREATE}            id=email_create
${REGISTER_SUBMIT_C}            id=SubmitCreate
${REGISTER_PERSONALINFO}      xpath=//*[@id="account-creation_form"]//h3[contains(text(),"Your personal information")]
${REGISTER_GENDER}            id=id_gender1
${REGISTER_FIRSTNAME}         id=customer_firstname    
${REGISTER_LASTNAME}          id=customer_lastname 
${REGISTER_PW}                id=passwd
${REGISTER_DAY_BIRTH}         id=days
${REGISTER_MONTH_BIRTH}       id=months
${REGISTER_YEAR_BIRTH}        id=years
${REGISTER_ADDRESS}           id=address1
${REGISTER_CITY}              id=city
${REGISTER_STATE}             id=id_state
${REGISTER_POSTAL}            id=postcode
${REGISTER_MOBILE}            id=phone_mobile  
${REGISTER_SUBMIT_A}          submitAccount
${REGISTER_CONFERENCE}        xpath=//p[@class='info-account'][contains(.,'Welcome to your account. Here you can manage all of your personal information and orders.')]
${REGISTER_CONF_ELEMENT}      xpath=//a[contains(@title,'View my customer account')]
*** Keywords ***
#### Setup e Teardown

#### Ações
Clicar em "Sign in"
    Click Element    ${REGISTER_SIGNIN}

Informar um e-mail válido
    Wait Until Element Is Visible   ${REGISTER_CREATE}
    ${EMAIL}                        Generate Random String
    Input Text                      ${REGISTER_CREATE}   ${EMAIL}@testerobot.com

Clicar em "Create an account"
    Click Button    ${REGISTER_SUBMIT_C}

Preencher os dados obrigatórios
    Wait Until Element Is Visible   ${REGISTER_PERSONALINFO} 
    Click Element                   ${REGISTER_GENDER}
    Input Text                      ${REGISTER_FIRSTNAME}    Djalma
    Input Text                      ${REGISTER_LASTNAME}     Melo Sobrinho
    Input Text                      ${REGISTER_PW}                 123456

Preencher os dados de dia        
    Select From List By Value       ${REGISTER_DAY_BIRTH}        15
 Preencher os dados de mês
    Click Element        ${REGISTER_MONTH_BIRTH}
    Wait Until Element Is Visible    id=uniform-months    
    Select From List By Value       ${REGISTER_MONTH_BIRTH}         9
Preencher os dados de ano        
    Select From List By Value       ${REGISTER_YEAR_BIRTH}        1994


Submeter cadastro
    Click Button    ${REGISTER_SUBMIT_A} 

### Conferências
Conferir se o cadastro foi efetuado com sucesso 
    Element Text Should Be           ${REGISTER_CONFERENCE} 
    ...   Welcome to your account. Here you can manage all of your personal information and orders.
    Element Text Should Be           ${REGISTER_CONF_ELEMENT}     Djalma Melo Sobrinho