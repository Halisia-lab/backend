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
    Connect To Database    pymysql    ${DBName}    ${DBUser}    ${DBPassword}    ${DBHost}    ${DBPort}
    Execute SQL String    CREATE TABLE If Not Exists User (Id int, Name varchar(20), Age int);
    Execute SQL String    INSERT INTO User VALUES (1, "Alice", 30);
    Check If Exists In Database    SELECT Id from User where Name = 'Alice'
    Disconnect From Database
