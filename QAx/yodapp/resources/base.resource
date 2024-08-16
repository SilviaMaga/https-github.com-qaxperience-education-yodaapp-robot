*** Settings ***
library    AppiumLibrary

*** Variables ***

${START}              QAX

*** Keywords ***
Start session
     Open Application    http://localhost:4723
     ...                 platformName=Android
     ...                 deviceName=Android Emulator
     ...                 automationName=UIAutomator2
     ...                 app=C:\\QAx\\yodapp\\app\\yodapp-beta.apk
     ...                 udid=emulator-5554
     ...                 auGrantPermissions=true


Get started
# Checkpoint: ponto em que a execução do teste para e verifica se o estado do sistema ou aplicação está conforme o esperado. Isso pode envolver verificar valores de variáveis

# Espera até que um elemento específico se torne visível na página
     Wait Until Page Contains    ${START}            5
     Click Text                  ${START}

Navigate to 

# Palavra reservada argumento

     [Arguments]        ${item_text}       
     ${hamburger}       Set Variable    xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
     
     Wait Until Element Is Visible    ${hamburger}    5
     Click Element                    ${hamburger}

# Manipulação  do elemento, montando o xpath pelo elemento "Pai"

     ${menu_item}           Set Variable    xpath=//*[@resource-id="com.qaxperience.yodapp:id/navView"]//*[@text="${item_text}"]
     
     Wait Until Element Is Visible    ${menu_item}     5
     Click Element                    ${menu_item} 

Go to item 
     [Arguments]     ${Item}    ${checkpoint} 

# Espera até que o texto especificado apareça em qualquer lugar da página.

     Wait Until Page Contains          ${Item}    5
     Click Text                        ${Item}
     Wait Until Page Contains         ${checkpoint} 


Close session

     Close All Applications