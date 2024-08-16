*** Settings ***
library    AppiumLibrary


Resource    ../resources/base.resource

*** Test Cases ***


Deve marcar as techs que usam Appium
    Start session
    Get started
    Navigate to         Check e Radio
    Go to item          Checkbox        Marque as techs que usam Appium
#variaveis no plural
    @{techs}    Create List    Ruby    Python    Java     Javascript    C#    Robot Framework 
# percorrer pela lista
    FOR    ${tech}    IN       @{techs}
        Click Element                       xpath=//android.widget.CheckBox[contains(@text, "${tech}")]
        sleep     3
    END
    
    Sleep    5
   Close session