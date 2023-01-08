*** Settings ***
Documentation     Database Testing with Robot Framework
Library           PostgreSQLDB

*** Variables ***
${DBName}         postgres_fyc
${DBUser}         postgres
${DBPassword}     1997
${DBHost}         localhost
${DBPort}         5433

*** Test Cases ***
Connect DB
    PostgreSQLDB.Connect To Postgresql  ${DBName}    ${DBUser}    ${DBPassword}    ${DBHost}    ${DBPort}
    PostgreSQLDB.Close All Postgresql Connections
