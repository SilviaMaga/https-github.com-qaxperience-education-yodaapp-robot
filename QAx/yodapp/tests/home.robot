*** Settings ***
library    AppiumLibrary

*** Test Cases ***

Deve abrir a tela principal


     Open Application    http://localhost:4723
     ...                 platformName=Android
     ...                 deviceName=Android Emulator
     ...                 automationName=UIAutomator2
     ...                 app=C:\\QAx\\yodapp\\app\\yodapp-beta.apk
     ...                 udid=emulator-5554
     ...                 auGrantPermissions=true


     Wait Until Page Contains    Yodapp
     Wait Until Page Contains    Mobile Training
     Wait Until Page Contains    by Papito


     Close All Applications