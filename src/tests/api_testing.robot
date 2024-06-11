# Como executar
# https://youtu.be/NcoQxPfaQoQ

*** Settings ***
# Utilizado para importar bibliotecas/libs ou outros arquivos dentro do projeto

# Suite Setup -> Antes da suíte começar 
# Suite Teardown -> Depois da suíte terminar
# Test setup -> Antes de cada teste começar
# Test Teardown -> Depois de cada teste terminar
Library           RequestsLibrary

*** Variables ***

# Utilizado para escrever variáveis estáticas, xpath, variáveis globais

*** Test Cases ***

#  Escritas dos casos de teste

Primeiro Teste de exemplo

    ${response}=    GET  url=https://www.google.com
    Log To Console    message=${response}

Sgundo Teste de exemplo
    
    Create Session    alias=teste    url=https://fakerapi.it/api/v1/
    ${response}=    GET On Session    alias=teste     url=addresses?_quantity=1

*** Keywords ***

# Escrita das keywords (palavras-chaves)
# Garante reuso de código
# Deixa o caso de teste mais limpo
# Precisa ser importada pelo Caso de teste se não estiver no mesmo arquivo


