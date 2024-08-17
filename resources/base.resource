*** Settings ***
Library    Browser
Library    FakerLibrary

*** Variables ***
${URL}                              http://practice.automationtesting.in/
${BROWSER}                          chromium
${EMAIL}
${SENHA_VALIDA}
${SENHA_MUITO_FRACA}                abc
${SENHA_FRACA_<7}                   abc12
${SENHA_FRACA_>=7_SEM_SIMBOLOS}     abcd123
${SENHA_FRACA_>=7_SEM_NUM_MIN}      ABCD!@$
${SENHA_MEDIA}                      Senha@123
${USUARIO_NAO_REGISTRADO}           usuario_inexistente@inexistente  
${SENHA_INCORRETA}                  senha_incorreta

*** Keywords ***
Abrir navegador
    New Browser    browser=${BROWSER}    headless=False
    Set Browser Timeout    50s
    New Page    ${URL}
