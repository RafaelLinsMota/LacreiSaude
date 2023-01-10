*** Settings ***
Library   OperatingSystem  
Library   SeleniumLibrary

*** Variables ***
${BROWSER}                        chrome
${URL}                            https://frontend-lacrei-pessoa-usuaria.vercel.app/login
${PAG_LOGIN}                      Boas-vindas à Lacrei Saúde
${CRIARCONTA}                     //*[@id="__next"]/div/section/div/form/div[3]/div[2]/button
${PAG_REGISTRO}                   Cadastre-se

*** Keywords ***

usuario esteja na pagian de boas vindas a lacrei saude
   Open Browser                                    ${URL}    ${BROWSER}
   Maximize Browser Window
   Sleep    3s
   Page Should Contain                             ${PAG_LOGIN} 
clicar no botao criar conta
    Click Element                                  ${CRIARCONTA}
    Sleep    3s
    Capture Page Screenshot
e encaminhado para a pagina cadastre-se
    Page Should Contain                            ${PAG_REGISTRO}