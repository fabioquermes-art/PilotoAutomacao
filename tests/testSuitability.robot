*** Settings ***
Library    AppiumLibrary
Library    AppiumLibrary    screenshot_on_failure=True
Resource    ../resources/main.resource
Resource    ../resources/login.resource


*** Variables ***
${txt_box}    br.com.portoseguro.experienciacliente.mundoporto.hml:id/it_edit_text


*** Test Cases ***
CT01 - Cenario Acessar Deeplink Perfil Conservador
   Abrir Aplicativo
   Abrir Deeplink Perfil 'CONSERVATIVE'
   Realizo Login com o usuário '91510934642' e a senha 'senha123'
   Avanço sem utilizar a biometria
   Sleep    5
   Wait Until Page Contains     Seu perfil é conservador    timeout=10s
   Sleep    5

CT02 - Cenario Acessar Deeplink Perfil Moderado
   Abrir Aplicativo
   Abrir Deeplink Perfil 'MODERATE'
   Realizo Login com o usuário '91510934642' e a senha 'senha123'
   Avanço sem utilizar a biometria
   Sleep    5

CT03 - Cenario Acessar Deeplink Perfil Agressivo
   Abrir Aplicativo
   Abrir Deeplink Perfil 'AGRESSIVE'
   Realizo Login com o usuário '91510934642' e a senha 'senha123'
   Sleep    2
   Avanço sem utilizar a biometria
   Sleep    5