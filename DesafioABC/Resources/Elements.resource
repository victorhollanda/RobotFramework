***Settings***
Library         SeleniumLibrary

***Variables***
${URL}          http://automationpractice.com/index.php
${Browser}      Chrome

&{teste}
...     input_firstname=//input[@id="firstname"]
...     button_signin=//a[@class="login"]
...     input_email=//input[@id="email_create"]
...     button_create=//button[@id="SubmitCreate"]
...     select_state=(//option[@value="1"])[3]
...     select_country=(//option[@value="21"])[3]
...     button_register=//button[@id="submitAccount"]
...     div_erro=//div[@class="alert alert-danger"]
...     input_customerfirstname=//input[@id="customer_firstname"]
...     input_customerlastname=//input[@id="customer_lastname"]
...     input_password=//input[@id="passwd"]

@{form}
...    //input[@id="firstname"]
...    //input[@id="lastname"]
...    //input[@id="address1"]
...    //input[@id="city"]
...    //input[@id="postcode"]
...    //input[@id="phone_mobile"]
...    //input[@id="alias"]

@{formdata}
...    nome
...    sobrenome
...    endereço
...    cidade
...    00000
...    000000000
...    abcdefg
