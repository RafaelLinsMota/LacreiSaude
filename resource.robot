*** Settings ***
Library   OperatingSystem  
Library   SeleniumLibrary

*** Variables ***
${BROWSER}                        chrome
${URL_LOGIN}                      https://frontend-lacrei-pessoa-usuaria.vercel.app/login
${URL_REGISTER}                   https://frontend-lacrei-pessoa-usuaria.vercel.app/register
${PAG_LOGIN}                      Boas-vindas à Lacrei Saúde
${PAG_REGISTRO}                   Cadastre-se
${BT_CRIARCONTA}                  //*[@id="__next"]/div/section/div/form/div[3]/div[2]/button
${BT_CADASTRAR}                   //*[@id="__next"]/div/section/div/form/div[8]/button
${PSW}                            R12raf@
${PSW_1}                          r12rafa@
${PSW_2}                          R12RAFA@
${PSW_3}                          Rlinrafa@
${PSW_4}                          R123rafaa
${SENHA_NUM}                      Número
${SENHA_CARA_ESP}                 Caractere especial (ex: #!*-_&)
${SENHA_CAMP_OBR}                 Campo obrigatório
${SENHA_CARA}                     8 caracteres
${SENHA_LETRA_MA}                 Letra maiúscula
${SENHA_LETRA_MI}                 Letra minúscula

*** Keywords ***
usuario esteja na pagian de boas vindas a lacrei saude
   Open Browser                                   ${URL_LOGIN}    ${BROWSER}
   Maximize Browser Window
   Page Should Contain                            ${PAG_LOGIN} 
clicar no botao criar conta
   Click Element                                  ${BT_CRIARCONTA}
   Sleep    3s
e encaminhado para a pagina cadastre-se
   Page Should Contain                            ${PAG_REGISTRO}
   Close Browser
o usuário esteja na página de Cadastra-se
   Open Browser                                   ${URL_REGISTER}    ${BROWSER}
   Maximize Browser Window
   Sleep    3s
clicar no botão Cadastrar
   Click Element                                  ${BT_CADASTRAR}
   Sleep    3s
   Capture Page Screenshot
é apresentado a mensagem de erro “Campo obrigatório”
   Page Should Contain                            ${SENHA_CAMP_OBR} 
   Capture Page Screenshot
   Close Browser
não preencher a senha com o requisito mínimo 8 caracteres
   Input Password            id=password              ${PSW}
   Sleep    3s
é apresentado a mensagem de erro "8 caracteres"
   Page Should Contain                            ${SENHA_CARA} 
   Capture Page Screenshot
   Close Browser
não preencher a senha com o requisito Letra Maiúscula
   Input Password            id=password          ${PSW_1}
   Sleep    3s
é apresentado a mensagem de erro “Letra Maiúscula”
   Page Should Contain                           ${SENHA_LETRA_MA} 
   Capture Page Screenshot
   Close Browser
não preencher a senha com o requisito Letra Minúscula
   Input Password            id=password          ${PSW_2}
   Sleep    3s
é apresentado a mensagem de erro “Letra Minúscula”
   Page Should Contain                            ${SENHA_LETRA_MA} 
   Capture Page Screenshot
   Close Browser
não preencher a senha com o requisito Número
   Input Password            id=password          ${PSW_3} 
   Sleep    3s
é apresentado a mensagem de erro “Número”
   Page Should Contain                            ${SENHA_NUM} 
   Capture Page Screenshot
   Close Browser
não preencher a senha com o requisito Caractere Especial
   Input Password            id=password          ${PSW_4} 
   Sleep    3s
é apresentado a mensagem de erro “Caractere especial (ex: #!*-_&)”
   Page Should Contain                            ${SENHA_CARA_ESP} 
   Capture Page Screenshot
   Close Browser