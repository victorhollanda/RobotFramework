***Settings***
Library         SeleniumLibrary
Library         FakerLibrary

***Variables***
${URL}          http://automationpractice.com/index.php
${Browser}      Chrome
${Email}        emailteste123@gmail.com

&{teste}
...     button_signin=//a[@class="login"]
...     input_email=//input[@id="email_create"]
...     button_create=//button[@id="SubmitCreate"]
...     input_firstname=//input[@id="firstname"]
...     input_lastname=//input[@id="lastname"]
...     input_address1=//input[@id="address1"]
...     input_city=//input[@id="city"]
...     select_state=(//option[@value="1"])[3]
...     input_postcode=//input[@id="postcode"]
...     select_country=(//option[@value="21"])[3]
...     input_mobilephone=//input[@id="phone_mobile"]
...     input_aliasaddress=//input[@id="alias"]
...     button_register=//button[@id="submitAccount"]
...     div_erro=//div[@class="alert alert-danger"]
...     input_customerfirstname=//input[@id="customer_firstname"]
...     input_customerlastname=//input[@id="customer_lastname"]
...     input_password=//input[@id="passwd"]