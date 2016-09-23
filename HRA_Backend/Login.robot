*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported Selenium2Library.
Resource          Resource.robot
Resource          Library.robot

*** Variables ***
${DELAY}          0
${SERVER}         http://10.32.86.132/ylhealth-hra/home.do?method=home    # Backend

*** Keywords ***
Go To Portal
    Open Browser    ${SERVER}    ${G_BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
