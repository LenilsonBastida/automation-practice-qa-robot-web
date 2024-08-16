*** Settings ***
Resource    base.resource

*** Keywords ***
Gerar email e senha
    ${EMAIL_GERADO}    FakerLibrary.Email
    Set Suite Variable    ${EMAIL}    ${EMAIL_GERADO}    #torna a variável acessível dentro desta suíte de testes.
    Log    ${EMAIL}

    ${PASSWORD_GERADO}    FakerLibrary.Password    
                        ...    length=10    
                        ...    special_chars=True
                        ...    digits=True
                        ...    upper_case=True
                        ...    lower_case=True
    Set Suite Variable    ${SENHA}    ${PASSWORD_GERADO}
    Log    ${SENHA}

    Set Suite Variable    ${SENHA_FRACA}    Senha123
    Log    ${SENHA_FRACA}

    Set Suite Variable    ${SENHA_MEDIA}    Senha@123
    Log    ${SENHA_MEDIA}

Dado que eu acesse a página de Registrar em Minha Conta
    Click    selector=//a[contains(.,'My Account')]
        
Quando eu informar todos os campos obrigatórios com informações válidas
    Gerar email e senha
    Fill Text    selector=id=reg_email    txt=${EMAIL}
    Type Text    selector=id=reg_password    txt=${SENHA}    delay=500ms

E clicar em "Registrar"
    Wait For Elements State    selector=input[name="register"]    state=enabled
    Click    selector=input[name="register"]
    
Então o texto "Hello" deve ser exibido na página.
    Wait For Elements State    selector=//p[contains(.,'Hello')]    state=Visible
    Take Screenshot
    Click    selector=//a[contains(.,'Sign out')]

Quando eu preencher o campo email e a senha com "Senha123"
    Fill Text    selector=id=reg_email    txt=${EMAIL}
    Type Text    selector=id=reg_password    txt=${SENHA_FRACA}    delay=500ms

Então deve exibir a mensagem "Weak - Please enter a stronger password."
    Wait For Elements State    selector=(//div[contains(.,'Weak - Please enter a stronger password.')])[10]
                        ...    state=Visible
    Take Screenshot

Quando eu preencher o campo email e a senha com "Senha@123"
    Fill Text    selector=id=reg_email    txt=${EMAIL}
    Type Text    selector=id=reg_password    txt=${SENHA_MEDIA}    delay=500ms

Então deve exibir a mensagem "Medium"
    Wait For Elements State    selector=(//div[contains(.,'Medium')])[10]
                        ...    state=Visible
    Take Screenshot
  




