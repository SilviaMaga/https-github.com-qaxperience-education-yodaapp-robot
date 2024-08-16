*** Settings ***
library    AppiumLibrary


Resource    ../resources/base.resource

*** Test Cases ***

selecionar a opcao Javascript
    Start session
    Get started
    Navigate to         Check e Radio
    Go to item          Botões de radio         Escolha sua linguagem preferida
    
    Click Element    xpath=//android.widget.RadioButton[@text="Javascript "]
    
    Sleep    3
   Close session