*** Settings ***
Documentation     Database Testing with Robot Framework
Library           DatabaseLibrary

*** Variables ***
${DBName}         postgres_fyc
${DBUser}         postgres
${DBPassword}     1997
${DBHost}         localhost
${DBPort}         5433

*** Test Cases ***
Connect DB
    Connect To Database  ${DBName}    ${DBUser}    ${DBPassword}    ${DBHost}    ${DBPort}
    Execute Sql String  SELECT first_name from users where city = 'Paris'
    Disconnect From Database
#INSERT INTO users VALUES (5,'15 rue', 'Paris', 'test@gmail.com', 'Test', 'Name', 'password123', '0612341212', 75000) returning email;
#@{query}=  
