*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported Selenium2Library.
Library           Selenium2Library

*** Variables ***
${BROWSER}        Firefox
${DELAY}          0
${VALID SERACH}     饿了么
${Search URL}      http://www.baidu.com


*** Keywords ***
Open Browser To Searche For Page
    Open Browser    ${Search URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}

Input Keywords
    [Arguments]    ${Searchword}
    input text  id=kw  ${searchword}

Submit Keywords
    Click Button    id=su


*** Test Cases ***
RFtest01
    Open Browser To Searche For Page
    Input Keywords   饿了么
    Submit Keywords
    wait until page contains  饿了么网上订餐




