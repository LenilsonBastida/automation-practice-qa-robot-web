*** Settings ***
Resource    base.resource

*** Keywords ***
Dado que eu acesse a página de compra do produto
    Click    selector=//a[contains(.,'Shop')]

Quando eu selecionar o produto "Android Quick Start Guide"
    Click    selector=//h3[contains(.,'Android Quick Start Guide')]    

E clicar em "ADD TO BASKET"
    Click    selector=//button[contains(.,'Add to basket')]

Então a mensagem “Android Quick Start Guide” has been added to your basket." deve ser exibida
    Wait For Elements State    selector=//div[@class='woocommerce-message'][contains(.,'View Basket “Android Quick Start Guide” has been added to your basket.')]
                        ...    state=visible
    Take Screenshot

E eu devo visualizar um produto no menu do item com preço
    Wait For Elements State    selector=//span[contains(.,'1 item')]    state=visible
    Take Screenshot

Quando eu selecionar o produto que esta em Oferta
    Click    selector=(//span[@class='onsale'])[1]

E inserir o código de cupom "krishnasakinala" na caixa de texto do cupom
    Click    selector=//a[contains(.,'View Basket')]
    Fill Text    selector=//input[@id='coupon_code']    txt=${CUPOM_DESCONTO}
    Click    selector=//input[@name='apply_coupon']
    
Então a mensagem "Sorry, this coupon is not valid for sale items." deve ser exibida
    Wait For Elements State    selector=//li[contains(.,'Sorry, this coupon is not valid for sale items.')]    state=visible
    Take Screenshot

Quando eu acessar o carrinho de compras
    Click    selector=//a[contains(.,'View Basket')]

E eu remover o produto "Android Quick Start Guide" do carrinho
    Click    selector=//a[@data-product_id='169']

Então a mensagem “Android Quick Start Guide removed. Undo?" deve ser exibida
    Wait For Elements State    selector=(//div[contains(.,'Android Quick Start Guide removed. Undo?')])[7]    state=visible
    Take Screenshot