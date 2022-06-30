***Settings***
Resource        Resources/Elements.resource
Resource        Resources/Steps.robot

***Test Cases***

TS1- Validar se os campos tem preenchimento obrigatorio
    Dado que eu acesse o site Automationpractice
    E clico no link Sign in
    E preencho o campo com um email valido
    E clico no botao Create an account
    Quando preencho os dados obrigatorios excluindo os campos em analise
    E clico no botao Register
    Entao valido se os campos em analise sao obrigatorios

TS2- Validar Que o usuario é redirecionado ao preencher todos os campos obrigatorios
    Dado que preeencho os campos restantes
    E clico no botao Register
    Entao valido se o usuario é redirecionado
    close Browser
