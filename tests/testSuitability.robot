*** Settings ***
Library    AppiumLibrary
Resource    ../resources/main.resource
Resource    ../resources/login.resource


*** Variables ***
${txt_box}    br.com.portoseguro.experienciacliente.mundoporto.hml:id/it_edit_text


*** Test Cases ***
Cenario Acessar Deeplink Perfil Conservador
   Abrir Aplicativo
   Abrir Deeplink Perfil 'CONSERVATIVE'
   Realizo Login com o usuário '91510934642' e a senha 'senha123'
   Avanço sem utilizar a biometria
   Sleep    5