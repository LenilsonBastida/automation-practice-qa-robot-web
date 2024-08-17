*** Settings ***
Resource    base.resource

*** Keywords ***
Dado que eu acesse a página de compra do produto
    Click    selector=//a[contains(.,'Shop')]

Quando eu selecionar o produto "Android Quick Start Guide"
    Click    selector=//h3[contains(.,'Android Quick Start Guide')]    

E clicar em "ADD TO BASKET"
    Click    selector=//button[contains(.,'Add to basket')]

Então eu devo visualizar um produto no menu do item com preço
    Wait For Elements State    selector=//span[contains(.,'1 item')]    state=visible
    Take Screenshot

Então a mensagem “Android Quick Start Guide” has been added to your basket." deve ser exibida
    Wait For Elements State    selector=//div[@class='woocommerce-message'][contains(.,'View Basket “Android Quick Start Guide” has been added to your basket.')]
                        ...    state=visible
    Take Screenshot