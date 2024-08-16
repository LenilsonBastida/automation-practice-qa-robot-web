*** Settings ***
Library    Browser
Library    FakerLibrary

*** Variables ***
${URL}    http://practice.automationtesting.in/
${BROWSER}    chromium


*** Keywords ***
Abrir navegador
    New Browser    browser=${BROWSER}    headless=False
    Set Browser Timeout    50s
    New Page    ${URL}
