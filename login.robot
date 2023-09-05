*** Settings ***
Library         SeleniumLibrary
Suite Setup     Open Browser    ${BaseUrl}    ${BROWSER} 
Suite Teardown  Close Browser 

*** Variables ***
${BaseUrl}      {your_url}
${BROWSER}      chrome

#Locator
${UsernameField}        //*[@id="form_login"]/div[1]/div/input
${PasswordField}        //*[@id="user_password"]
${LoginButton}          //*[@id="btn_submit"]

*** Keywords ***

Input Username
    Input Text    ${UsernameField}     {your_username}

Input Password 
    Input Text    ${PasswordField}     {your_password}

Click Button Login 
    Click Element    ${LoginButton}
    Sleep        1s

Verify on Login Page
    Page Should Contain     Dasbor Personalia

*** Test Cases ***
User Login With Valid Data
    Input Username
    Input Password 
    Click Button Login 
    Verify on Login Page
