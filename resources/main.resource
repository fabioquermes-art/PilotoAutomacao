*** Settings ***
Library    AppiumLibrary


*** Variables ***


${app_package}     br.com.portoseguro.experienciacliente.mundoporto.hml
${app_activity}    br.com.portoseguro.superapp.ui.splash.SplashActivity


*** Keywords ***
Abrir Aplicativo
   Open Application    http://localhost:4723
   ...   platformName=Android
   ...   deviceName=RXCY3074CAL
   ...   automationName=UiAutomator2
   ...   appPackage=${app_package}
   ...   appActivity=${app_activity}
   ...   autoGrantPermissions=true
   ...   allow-insecure= adb_shell
#   ...   skipUnlock=true
#   ...   noReset=true


*** Keywords ***
Abrir Deeplink Perfil '${profile}'
   ${deeplink_url}=    Set Variable    portosuperapp://porto/invest/suitability?profile=${profile}
   ${adb_command}=    Set Variable
   ...    am start -W -a android.intent.action.VIEW -d "${deeplink_url}" ${app_package}
   Execute Script    mobile: shell    command=${adb_command}
