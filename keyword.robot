*** Settings ***
Resource    resource.robot
Suite Teardown    Close Browser

*** Keywords ***
  

*** Test Cases *** 
Cenario Botão Criar Conta
    Given usuario esteja na pagian de boas vindas a lacrei saude
    When clicar no botao criar conta
    Then e encaminhado para a pagina cadastre-se
Cenario Formulário Inválido
    Given o usuário esteja na página de Cadastra-se
    When clicar no botão Cadastrar
    Then é apresentado a mensagem de erro “Campo obrigatório” 
Cenario Senha inválida (Mínimo Caractere)
    Given o usuário esteja na página de Cadastra-se
    When não preencher a senha com o requisito mínimo 8 caracteres
    Then é apresentado a mensagem de erro "8 caracteres"
Cenario Senha inválida (Letra Maiuscula)
    Given o usuário esteja na página de Cadastra-se
    When não preencher a senha com o requisito Letra Maiúscula
    Then é apresentado a mensagem de erro “Letra Maiúscula”
Cenario Senha inválida (Letra Minuscula)
    Given o usuário esteja na página de Cadastra-se
    When não preencher a senha com o requisito Letra Minúscula
    Then é apresentado a mensagem de erro “Letra Minúscula”
Cenario Senha inválida (Número)
    Given o usuário esteja na página de Cadastra-se
    When não preencher a senha com o requisito Número
    Then é apresentado a mensagem de erro “Número”
Cenario Senha inválida (Caractere Especial)
    Given o usuário esteja na página de Cadastra-se
    When não preencher a senha com o requisito Caractere Especial
    Then é apresentado a mensagem de erro “Caractere especial (ex: #!*-_&)”