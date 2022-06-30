***Settings***
Resource        Elements.resource
Library         FakerLibrary

***Keywords***
Dado que eu acesse o site Automationpractice
    Open Browser        ${URL}      ${Browser}

E clico no link ${link}
    wait until element is visible       //a[contains(text(),"${link}")]
    sleep                               .5s
    Click Element                       //a[contains(text(),"${link}")]

E clico no botao ${text}
    wait until element is visible       //button[contains(.,"${text}")]
    Click Element                       //button[contains(.,"${text}")]

E preencho o campo com um email valido
    wait until element is visible       ${teste.input_email}    10s
    ${Email}  FakerLibrary.Email
    Input Text                          ${teste.input_email}    ${Email}

Quando preencho os dados obrigatorios excluindo os campos em analise
    wait until element is visible       ${teste.input_firstname}    20s

    FOR     ${form}    ${formdata}      IN ZIP      ${form}     ${formdata}

        wait until element is visible   ${form}
        Input Text                      ${form}      ${formdata}

    END

    wait until element is visible       ${teste.select_state}
    Click Element       ${teste.select_state}
    Click Element       ${teste.select_country}


Entao valido se os campos em analise sao obrigatorios
    Element Should Be Visible   ${teste.div_erro}

Dado que preeencho os campos restantes
    wait until element is visible       ${teste.input_customerfirstname}
    Input Text                          ${teste.input_customerfirstname}     nome
    Input Text                          ${teste.input_customerlastname}      sobrenome
    Input Text                          ${teste.input_password}              123456789

Entao valido se o usuario é redirecionado
    Element Should Be Visible           //a[@title="My wishlists"]  10s     
