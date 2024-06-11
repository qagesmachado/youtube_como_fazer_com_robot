# Como executar
# https://youtu.be/GQXXY50Vg3I

*** Settings ***
# Utilizado para importar bibliotecas/libs ou outros arquivos dentro do projeto

# Suite Teardown    Run Keyword If Any Tests Failed    KYD 1
# Test Teardown    Run Keyword If Test Failed    KYD 1

*** Variables ***

# Utilizado para escrever variáveis estáticas, xpath, variáveis globais

*** Test Cases ***

Test case 1: Continue On Failure 1
    Fail    Falhou
    Log	Essa Keyword será executada	

Test case 2: Continue On Failure 1
    Log	Essa Keyword será executada		

*** Keywords ***

KYD 1
    Log To Console    message=Executando porque alguma keyword falhou



