# Todo esse aquivo é uma SUITE DE TESTE / SCRIPT DE TESTE

*** Settings ***
# Utilizado para importar bibliotecas/libs ou outros arquivos dentro do projeto

*** Variables ***

# Utilizado para escrever variáveis estáticas, xpath, variáveis globais
# robot --exitonfailure src\failing_scenarios_1.robot

*** Test Cases ***
Test case 1: Falha comum com kyw "Fail"
    Log To Console    message=essa é uma mensagem no Console
    Fail    msg=Esse teste falhou
    Log To Console    message=Essa é uma mensagem que não vai aparecer se tiver falhado

Test case 2: Falha total com kyw "Fatal Error"
    Log To Console    message=essa é uma mensagem no Console
    Fatal Error    Esse teste irá falhar tudo a seguir     

Test case 3: Teste exemplo que não irá rodar devido Falha do teste anterior
    Log To Console    message=essa é uma mensagem no Console que não irá rodar

*** Keywords ***


