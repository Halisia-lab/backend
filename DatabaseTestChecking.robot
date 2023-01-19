*** Settings ***
Library           DatabaseLibrary

*** Variables ***
${name}           postgres_fyc
${user}           postgres
${password}       1997
${host}           localhost
${port}           5433

*** Test Cases ***
Connect DB
    Connect To Database    psycopg2    ${name}    ${user}    ${password}    ${host}    ${port}

Check if java exists
    Check If Exists In Database    SELECT Id from Cours where Nom = 'Java'

Check if there is one row
    ${rows} =    Row Count    SELECT * from Cours where Nom = 'Java'
    Should Be Equal As Integers    ${rows}    3

Disconnect
    Disconnect From Database 

