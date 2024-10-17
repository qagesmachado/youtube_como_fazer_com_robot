# Como executar
# robot -d ./results -L trace src\tests\excel_scenarios.robot
# https://youtu.be/xaZgUpk9JXY

*** Settings ***
Library    ExcelLibrary

*** Variables ***

${path}    ${EXECDIR}/src/support/excel_file.xlsx

*** Test Cases ***

CT 1 - Criar e Escrever em um arquivo de Excel
    
    # CRIAR
    ${document}=    Create Excel Document    docname1
    Should Be Equal As Strings    docname1    ${document}
    Save Excel Document    filename=${path}
    Close Current Excel Document

    #ESCREVER
    Open Excel Document    filename=${path}  doc_id=docname1
    Write Excel Cell    row_num=1    col_num=1   value=Teste1  sheet_name=Sheet
    Save Excel Document    filename=${path}
    Close Current Excel Document
    

*** Keywords ***



