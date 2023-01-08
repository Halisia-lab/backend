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
    @{query}=  Execute Sql String  INSERT INTO users VALUES (4,'13 rue', 'Paris', 'bob@gmail.com', 'Bob', 'Name', 'password123', '0612341212', 75000) returning email
    PostgreSQLDB.Close All Postgresql Connections
