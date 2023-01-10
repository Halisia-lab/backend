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
    Execute Sql String  SELECT first_name from users where city = 'Paris'
    PostgreSQLDB.Close All Postgresql Connections
#INSERT INTO users VALUES (5,'15 rue', 'Paris', 'test@gmail.com', 'Test', 'Name', 'password123', '0612341212', 75000) returning email;
#@{query}=  
