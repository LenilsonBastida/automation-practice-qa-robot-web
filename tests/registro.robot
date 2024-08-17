*** Settings ***
Documentation    Este arquivo de teste contém cenários que validam a funcionalidade de registro de usuário na conta do site.    
Resource         ../resources/registro.resource
Suite Setup      Abrir navegador
Test Teardown    Reload     

*** Test Cases ***
Registro de conta com sucesso
    Dado que eu acesse a página de Registrar em Minha Conta
    Quando eu informar todos os campos obrigatórios com informações válidas
    E clicar em "Registrar"
    Então o texto "Hello" deve ser exibido na página.

Registro de conta com insucesso devido a senha ser Fraca com menos de 7 caracteres
    Dado que eu acesse a página de Registrar em Minha Conta
    Quando eu preencher o campo email e a senha contendo menos de 7 caracteres
    Então deve exibir a mensagem "Weak - Please enter a stronger password."

Registro de conta com insucesso devido a senha ser Fraca com 7 ou mais caracteres, sem símbolos
    Dado que eu acesse a página de Registrar em Minha Conta
    Quando eu preencher o campo email e a senha contendo 7 ou mais caracteres, mas sem símbolos
    Então deve exibir a mensagem "Weak - Please enter a stronger password."

Registro de conta com insucesso devido a senha ser Fraca com 7 ou mais caracteres, sem números e letras minúsculas
    Dado que eu acesse a página de Registrar em Minha Conta
    Quando eu preencher o campo email e a senha contendo 7 ou mais caracteres, mas sem números e letras minúsculas
    Então deve exibir a mensagem "Weak - Please enter a stronger password."

Registro de conta com insucesso devido a senha ser Média com 7 caracteres, contendo letras maiúsculas, minúsculas e números
    Dado que eu acesse a página de Registrar em Minha Conta
    Quando eu preencher o campo email e a senha com 7 caracteres, contendo letras maiúsculas, minúsculas e números
    Então deve exibir a mensagem "Medium"