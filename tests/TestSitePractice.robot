*** Settings ***
Resource            ../resources/Resource.robot
Resource            ../resources/PO/Home.robot
Resource            ../resources/PO/Carrinho.robot
Resource            ../resources/PO/Register.robot
Test Setup          Abrir navegador
Test Teardown       Fechar navegador

*** Test Cases ***
Caso de Teste com PO 01: Remover Produtos do Carrinho
    Home.Acessar a página home do site
    Home.Adicionar o produto "printed dress" no carrinho
    Carrinho.Excluir o produto do carrinho
    Carrinho.Conferir se o carrinho fica vazio

## EXERCÍCIO
Caso de Teste com PO 02: Adicionar Cliente
    Home.Acessar a página home do site
    Register.Clicar em "Sign in"
    Register.Informar um e-mail válido
    Register.Clicar em "Create an account"
    Register.Preencher os dados obrigatórios
    Register.Preencher os dados de dia
    Register. Preencher os dados de mês
    Register.Preencher os dados de ano
    Register.Submeter cadastro
    Register.Conferir se o cadastro foi efetuado com sucesso
