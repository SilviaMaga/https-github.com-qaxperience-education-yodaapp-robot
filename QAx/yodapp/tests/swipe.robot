*** Settings ***
library    AppiumLibrary


Resource    ../resources/base.resource

*** Variables ***
${DARTH_VADER_XPATH}    xpath=//android.widget.TextView[@text="Darth Vader"]

*** Test Cases ***
Remover Darth Vader e Iniciar Sessão

    # Inicia a sessão
    Start session
    Get started
    # Navega até a seção Star Wars e localiza Darth Vader
    Navigate to    Star Wars
    Go to item     Lista    Darth Vader

    # Obtém a localização do elemento Darth Vader
    ${positions}    Get Element Location    ${DARTH_VADER_XPATH}

    # Calcula as coordenadas do início do swipe
    ${start_x}      Set Variable    ${positions}[x]
    ${start_y}      Evaluate        ${positions}[y] - 650

    # Define as coordenadas de destino do swipe
    ${offset_x}     Set Variable    ${positions}[x]
    ${offset_y}     Set Variable    ${positions}[y]

    # Realiza o swipe
    Swipe           ${start_x}    ${start_y}    ${offset_x}    ${offset_y}    1000

    Click Element        id=com.qaxperience.yodapp:id/btnRemove

    Wait Until Page Does Not Contain    Darth Vader

    Close session