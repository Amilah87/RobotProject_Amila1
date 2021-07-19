*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
MyFirstTest
    Log    AmilaTest
    

FirstSeleniumT
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    LoginKw1
    Log    Test Completed
    Log    This was tested by %{username} on %{os}    
    
*** Variables ***
${URL}     https://qa.bi-octopus.com/login
@{CREDENTIALS}    amila.rangana@ayra.com.au    Amilah@87

*** Keywords ***
LoginKw1
    Input Text    id=login_email    @{CREDENTIALS}[0]
    Sleep    5
    Click Button    xpath=//button[@type='submit']
    Input Password  id=addPassword_password    @{CREDENTIALS}[1]
    Click Button    xpath=//button[@type='submit']
    Sleep    5
