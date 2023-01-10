*** Settings ***
Resource    resource.robot
Suite Teardown    Close Browser

*** Keywords ***
  

*** Test Cases *** 
Cenario Botão Criar Conta
    Given usuario esteja na pagian de boas vindas a lacrei saude
    When clicar no botao criar conta
    Then e encaminhado para a pagina cadastre-se