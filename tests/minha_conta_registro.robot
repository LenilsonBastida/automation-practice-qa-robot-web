*** Settings ***
Resource    ../resources/minha_conta_registro.resource
Suite Setup    Abrir navegador
Test Teardown    Reload     

*** Test Cases ***
Registro de conta com sucesso
    Dado que eu acesse a página de Registrar em Minha Conta
    Quando eu informar todos os campos obrigatórios com informações válidas
    E clicar em "Registrar"
    Então o texto "Hello" deve ser exibido na página.

Registro de conta com insucesso devido a senha ser Fraca
    Dado que eu acesse a página de Registrar em Minha Conta
    Quando eu preencher o campo email e a senha com "Senha123"
    Então deve exibir a mensagem "Weak - Please enter a stronger password."

Registro de conta com insucesso devido a senha ser Média
    Dado que eu acesse a página de Registrar em Minha Conta
    Quando eu preencher o campo email e a senha com "Senha@123"
    Então deve exibir a mensagem "Medium"