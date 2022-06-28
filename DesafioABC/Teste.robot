***Settings***
Resource        Resources/Elements.resource
Resource        Resources/Steps.robot

***Test Cases***

TS1- Validar se os campos tem preenchimento obrigatorio
    Dado que eu acesse o site Automationpractice
    Quando clico em sign in
    E preencho o campo com um email valido
    E clico em criar conta
    Quando preencho os dados obrigatorios excluindo os campos em analise
    E clico em registrar
    Entao valido se os campos em analise sao obrigatorios

TS2- Validar Que o usuario é redirecionado ao preencher todos os campos obrigatorios
    Dado que preeencho os campos restantes
    E clico em registrar
    Entao valido se o usuario é redirecionado
    close Browser
    

