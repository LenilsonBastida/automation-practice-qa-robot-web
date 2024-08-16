*** Settings ***
Resource    base.resource
Resource    minha_conta_registro.resource

*** Keywords ***
Dado que eu tenha um usuário registrado
    Dado que eu acesse a página de Registrar em Minha Conta
    Quando eu informar todos os campos obrigatórios com informações válidas
    E clicar em "Registrar"
    Click    selector=//a[contains(.,'Sign out')]
    
E acesse a página de Login em Minha Conta
    Click    selector=//a[contains(.,'My Account')]    

Quando eu informar todos os campos obrigatórios de login com informações válidas
    Fill Text    selector=input[id="username"]    txt=${EMAIL}
    Type Text    selector=input[id="password"]    txt=${SENHA}

E clicar em "Login"
    Click    selector=//input[@name='login']