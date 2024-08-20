*** Settings ***
Documentation    Este arquivo de teste contém cenários para verificar a funcionalidade de adicionar e remover produtos do carrinho de compras no site.
Resource         ../resources/carrinho.resource
Suite Setup      Abrir navegador
Test Teardown    Reload

*** Test Cases ***
Validar a Adição de Produto e Mensagem de Sucesso
    Dado que eu acesse a página de compra do produto
    Quando eu selecionar o produto "Android Quick Start Guide" 
    E clicar em "ADD TO BASKET"
    Então a mensagem “Android Quick Start Guide” has been added to your basket." deve ser exibida
    E eu devo visualizar um produto no menu do item com preço

Adicionar produto ao carrinho e aplicar cupom de desconto no produto em oferta
    Dado que eu acesse a página de compra do produto
    Quando eu selecionar o produto que esta em Oferta
    E clicar em "ADD TO BASKET"
    E inserir o código de cupom "krishnasakinala" na caixa de texto do cupom
    Então a mensagem "Sorry, this coupon is not valid for sale items." deve ser exibida

Validar a exclusão de produto do carrinho
    Dado que eu acesse a página de compra do produto
    Quando eu selecionar o produto "Android Quick Start Guide"
    E clicar em "ADD TO BASKET"
    Quando eu acessar o carrinho de compras
    E eu remover o produto "Android Quick Start Guide" do carrinho
    Então a mensagem “Android Quick Start Guide removed. Undo?" deve ser exibida






