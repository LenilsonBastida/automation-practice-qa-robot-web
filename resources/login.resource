*** Settings ***
Resource    base.resource
Resource    registro.resource

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
    Type Text    selector=input[id="password"]    txt=${SENHA_VALIDA}

E clicar em "Login"
    Click    selector=//input[@name='login']

Dado que eu acesse a página de Login em Minha Conta
    Click    selector=//a[contains(.,'My Account')]

Quando eu informar o nome de usuário inexistente com endereço "usuario_inexistente@inexistente" e a senha "senha_incorreta"
    Fill Text    selector=input[id="username"]    txt=${USUARIO_NAO_REGISTRADO}
    Type Text    selector=input[id="password"]    txt=${SENHA_INCORRETA}

Então uma mensagem de erro "Error: The username usuario_inexistente@inexistente..." deve ser exibida na página
    Wait For Elements State    selector=//li[contains(.,'Error: The username usuario_inexistente@inexistente is not registered on this site. If you are unsure of your username, try your email address instead.')]
                        ...    state=Visible
    Take Screenshot

Quando eu clicar em "Login"
    Click    selector=//input[@name='login']

Então uma mensagem de erro "Error: Username is required." deve ser exibida na página
    Wait For Elements State    selector=//li[contains(.,'Error: Username is required.')]    state=Visible
    Take Screenshot