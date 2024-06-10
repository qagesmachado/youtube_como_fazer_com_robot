# Todo esse aquivo é uma SUITE DE TESTE / SCRIPT DE TESTE

*** Settings ***
# Utilizado para importar bibliotecas/libs ou outros arquivos dentro do projeto

*** Variables ***

# Utilizado para escrever variáveis estáticas, xpath, variáveis globais

*** Test Cases ***

# Test case 1: Continue On Failure 1
#     Run Keyword And Continue On Failure    Fail	    Falhou
#     Log	Essa Keyword será executada

# Test case 2: Continue On Failure 1
#     Run Keyword And Continue On Failure    KYD 1
#     Log	Essa Keyword será executada		

Test case 3: Warn On Failure 1
    Run Keyword And Warn On Failure    Fail	    Falhou
    Log	Essa Keyword será executada	

Test case 4: Warn On Failure 2
    Run Keyword And Warn On Failure    KYD 1
    Log	Essa Keyword será executada	

*** Keywords ***

KYD 1
    Log To Console    message=Inicio
    Fail



