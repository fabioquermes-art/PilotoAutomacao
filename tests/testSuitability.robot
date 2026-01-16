*** Settings ***


Library    AppiumLibrary


Resource    ../resources/main.resource


*** Variables ***
${txt_box}    br.com.portoseguro.experienciacliente.mundoporto.hml:id/it_edit_text



*** Test Cases ***
Cenario Acessar Deeplink Perfil Conservador
   Abrir Aplicativo
   Abrir Deeplink Perfil 'CONSERVATIVE'
   Wait Until Element Is Visible    ${txt_box}    5
   Click Element    ${txt_box}
   Input Text    ${txt_box}    91510934642
   Click Text    Continuar
   Sleep    2
   Wait Until Element Is Visible    ${txt_box}    5
   Click Element    ${txt_box}
   Input Text    ${txt_box}    senha123
   Click Element    br.com.portoseguro.experienciacliente.mundoporto.hml:id/label
   Wait Until Page Contains    text=Continuar sem biometria    timeout=10
   Click Text    Continuar sem biometria
   Sleep    5