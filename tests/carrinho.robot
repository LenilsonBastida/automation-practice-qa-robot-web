*** Settings ***
Documentation    Este arquivo de teste contém cenários para validar a funcionalidade de adição de produtos ao carrinho de compras no site.
Resource         ../resources/carrinho.resource
Suite Setup      Abrir navegador
Test Teardown    Reload

*** Test Cases ***
Validar se o produto adicionado aparece no menu do item
    Dado que eu acesse a página de compra do produto
    Quando eu selecionar o produto "Android Quick Start Guide" 
    E clicar em "ADD TO BASKET"
    Então eu devo visualizar um produto no menu do item com preço
    E a mensagem “Android Quick Start Guide” has been added to your basket." deve ser exibida


