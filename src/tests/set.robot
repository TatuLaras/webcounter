*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
When counter has been set to a value the counter should have that value
    Go To  ${HOME_URL}
    Input Text  value  8374
    Click Button  aseta
    Page Should Contain  nappia painettu 8374 kertaa
