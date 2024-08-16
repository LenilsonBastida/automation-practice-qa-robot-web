*** Settings ***
Resource    ../resources/login.resource
Suite Setup    Abrir navegador
Test Teardown    Reload   
 

*** Test Cases ***
login com conta valida
    Dado que eu tenha um usuário registrado
    E acesse a página de Login em Minha Conta
    Quando eu informar todos os campos obrigatórios de login com informações válidas
    E clicar em "Login"
    Então o texto "Hello" deve ser exibido na página.