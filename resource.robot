*** Settings ***
Library   OperatingSystem  
Library   SeleniumLibrary

*** Variables ***
${BROWSER}                        chrome
${URL_LOGIN}                      https://frontend-lacrei-pessoa-usuaria.vercel.app/login
${URL_REGISTER}                   https://frontend-lacrei-pessoa-usuaria.vercel.app/register
${PAG_LOGIN}                      Boas-vindas à Lacrei Saúde
${BT_CRIARCONTA}                  //*[@id="__next"]/div/section/div/form/div[3]/div[2]/button
${PAG_REGISTRO}                   Cadastre-se
${BT_CADASTRAR}                   //*[@id="__next"]/div/section/div/form/div[8]/button
${CAMP_OBR}                       Campo obrigatório

*** Keywords ***

usuario esteja na pagian de boas vindas a lacrei saude
   Open Browser                                   ${URL_LOGIN}    ${BROWSER}
   Maximize Browser Window
   Sleep    3s
   Page Should Contain                            ${PAG_LOGIN} 
clicar no botao criar conta
   Click Element                                  ${BT_CRIARCONTA}
   Sleep    3s
   Capture Page Screenshot
e encaminhado para a pagina cadastre-se
   Page Should Contain                            ${PAG_REGISTRO}
   Close Browser
que o usuário esteja na página de Cadastra-se
   Open Browser                                   ${URL_REGISTER}    ${BROWSER}
   Maximize Browser Window
   Sleep    3s
não preencher todo o formulário
   Page Should Contain                            ${PAG_REGISTRO}
clicar no botão Cadastrar
   Click Element                                  ${BT_CADASTRAR}
   Sleep    3s
é apresentado a mensagem de erro “Campo obrigatório”
   Page Should Contain                            ${CAMP_OBR} 
   Close Browser