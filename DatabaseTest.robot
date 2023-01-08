*** Settings ***
Documentation     Database Testing with Robot Framework
Library           DatabaseLibrary

*** Variables ***
${DBName}         postgres
${DBUser}         postgres
${DBPassword}     yacinepassword
${DBHost}         localhost
${DBPort}         5433

*** Test Cases ***
Connect DB
    Connect To Database    pymysql    ${DBName}    ${DBUser}    ${DBPassword}    ${DBHost}    ${DBPort}
    Execute SQL String    CREATE TABLE If Not Exists User (Id int, Name varchar(20), Age int);
    Execute SQL String    INSERT INTO User VALUES (1, "Alice", 30);
    Check If Exists In Database    SELECT Id from User where Name = 'Alice'
    Disconnect From Database
