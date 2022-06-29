***Settings***
Resource        Elements.resource
Library         FakerLibrary

***Keywords***
Dado que eu acesse o site Automationpractice
    Open Browser        ${URL}      ${Browser}

Quando clico em sign in
    wait until element is visible       ${teste.button_signin}
    sleep                               2s
    Click Element                       ${teste.button_signin}

E preencho o campo com um email valido
    wait until element is visible       ${teste.input_email}    10s
    ${Email}  FakerLibrary.Email
    Input Text                          ${teste.input_email}    ${Email}

E clico em criar conta
    Click Element       ${teste.button_create}

Quando preencho os dados obrigatorios excluindo os campos em analise
    wait until element is visible       ${teste.input_firstname}    10s
    Input Text          ${teste.input_firstname}        nome
    Input Text          ${teste.input_lastname}         sobrenome
    Input Text          ${teste.input_address1}         endereço
    Input Text          ${teste.input_city}             cidade
    wait until element is visible       ${teste.select_state}
    Click Element       ${teste.select_state}
    Input Text          ${teste.input_postcode}         00000
    Click Element       ${teste.select_country}
    Input Text          ${teste.input_mobilephone}      00000000
    Input Text          ${teste.input_aliasaddress}     abcdefg

E clico em registrar
    Click Element       ${teste.button_register}

Entao valido se os campos em analise sao obrigatorios
    Element Should Be Visible   ${teste.div_erro}

Dado que preeencho os campos restantes
    wait until element is visible       ${teste.input_customerfirstname}
    Input Text                          ${teste.input_customerfirstname}     nome
    Input Text                          ${teste.input_customerlastname}      sobrenome
    Input Text                          ${teste.input_password}              123456789

Entao valido se o usuario é redirecionado
    Element Should Be Visible           //a[@title="My wishlists"]  10s     
