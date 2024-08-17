*** Settings ***
Documentation    Este arquivo de teste contém cenários que validam a funcionalidade de login no site.
Resource         ../resources/login.resource
Resource         ../resources/registro.resource
Suite Setup      Abrir navegador
  
 

*** Test Cases ***
login com usuário registrado
    Dado que eu tenha um usuário registrado
    E acesse a página de Login em Minha Conta
    Quando eu informar todos os campos obrigatórios de login com informações válidas
    E clicar em "Login"
    Então o texto "Hello" deve ser exibido na página.

login com usuário não registrado
    Dado que eu acesse a página de Login em Minha Conta
    Quando eu informar o nome de usuário inexistente com endereço "usuario_inexistente@inexistente" e a senha "senha_incorreta"
    E clicar em "Login"
    Então uma mensagem de erro "Error: The username usuario_inexistente@inexistente..." deve ser exibida na página

login sem informar endereço de email e senha
    Dado que eu acesse a página de Login em Minha Conta
    Quando eu clicar em "Login"
    Então uma mensagem de erro "Error: Username is required." deve ser exibida na página