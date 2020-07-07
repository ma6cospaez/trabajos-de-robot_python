*** Setting ***
Library     String
Library     SeleniumLibrary

*** Variables ***
${browser}      Chrome
${homepage}     automationpractice.com/index.php
${scheme}       http
${testUrl}      ${scheme}://${homepage}

*** Keywords ***
Open Homepage
    Open Browser    ${testUrl}      ${browser}

*** Test Cases ***
C001 Hacer Clic en Contenedores
    Open Homepage
    Set Window Size       1100      500
    Wait Until Element Is Visible     xpath=//*[@id="homefeatured"]/li[1]/div/div[1]/div/div[1]/a
    Click Element   xpath=//*[@id="block_top_menu"]/ul/li[1]/a
    Sleep    3s
    Page Should Contain      Women - My Store 
    Set Global Variable   @{conjuntos}    //*[@id="center_column"]/ul/li[1]/div/div[1]/div/a[1]/img     //*[@id="center_column"]/ul/li[2]/div/div[1]/div/a[1]/img      //*[@id="center_column"]/ul/li[3]/div/div[1]/div/a[1]/img     //*[@id="center_column"]/ul/li[4]/div/div[1]/div/a[1]/img      //*[@id="center_column"]/ul/li[5]/div/div[1]/div/a[1]/img    //*[@id="center_column"]/ul/li[6]/div/div[1]/div/a[1]/img   //*[@id="center_column"]/ul/li[7]/div/div[1]/div/a[1]/img  
    :FOR   ${fotos}  IN  @{conjuntos}
        Click Element   xpath=${fotos}
        Wait Until Element Is Visible      xpath=//*[@id="center_column"]/div/div/div[4]
        Wait Until Element Is Visible      xpath=//*[@id="center_column"]/div/div/div[3]
        Click Element    xpath=//*[@id="block_top_menu"]/ul/li[1]/a
        END
    Close Browser   