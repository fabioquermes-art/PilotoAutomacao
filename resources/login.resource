*** Settings ***
Library    AppiumLibrary

*** Keywords ***
Realizo Login com o usuário '${username}' e a senha '${password}'
    Preencho o campo da tela de login com '${username}'
    Click Text    Continuar
    Sleep    2
    Preencho o campo da tela de login com '${password}'
    Click Element    br.com.portoseguro.experienciacliente.mundoporto.hml:id/label

Preencho o campo da tela de login com '${texto}'
    Wait Until Element Is Visible    ${txt_box}    5
    Click Element    ${txt_box}
    Input Text    ${txt_box}    ${texto}

Avanço sem utilizar a biometria
    Wait Until Page Contains    text=Continuar sem biometria    timeout=10
    Click Text    Continuar sem biometria