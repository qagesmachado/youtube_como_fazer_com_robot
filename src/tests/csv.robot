# Todo esse aquivo é uma SUITE DE TESTE / SCRIPT DE TESTE

*** Settings ***
Library    CSVLibrary
Library    Collections

*** Test Cases ***
Lendo um CSV
    
    ${lista}    Read Csv File To List    filename=${EXECDIR}/src/support/csv_exemplo.csv
    Log List    ${lista}

    FOR    ${i}    IN    @{lista}
        # Log To Console    ${i}[0]
        Log To Console    ${i}[1]
        # Log To Console    ${i}[2]
    END

Criando e Adicionando informação em um CSV
    
    ${lista}    Read Csv File To List    filename=${EXECDIR}/src/support/csv_exemplo.csv

    Empty Csv File    filename=${EXECDIR}/src/support/csv_exemplo_2.csv
    Append To Csv File    filename=${EXECDIR}/src/support/csv_exemplo_2.csv    data=${lista}





