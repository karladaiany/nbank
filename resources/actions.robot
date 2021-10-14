*Settings*
Documentation           Ações customizadas do nBank

*Keywords*
Go To Home Page
    Go To           https://nbank.vercel.app/

    #Checkpoint
    Wait For Elements State     
    ...             css=div.carousel-items
    ...             visible     5

Check For Balance Initial
    [Arguments]     ${expect_message}
    
    Wait For Elements State     
    ...             xpath=//a[contains(@href, "#")] >> text=${expect_message}
    ...             visible         5

Go To PIX
    Click           text=Fazer PIX

    #Checkpoint
    Wait For Elements State
    ...             css=p.modal-card-title >> text=PIX
    ...             visible     5

Fill PIX Form
    [Arguments]     ${data}

    Select Options By           xpath=//div[@class="control is-expanded"]//select   text    ${data}[banco]

    Fill Text                   input[id="chave-pix"]   ${data}[chave]

    Fill Text                   input[id="valor"]       ${data}[valor]

Submit PIX Form
    Click           //button[contains(text(), "Enviar PIX")]

Check For Balance Finale
    [Arguments]     ${expect_message}
    
    Wait For Elements State     
    ...             xpath=//a[contains(@href, "#")] >> text=${expect_message}
    ...             visible         5

Extract Shold Be Visible
    [Arguments]     ${data}

    ${element}      Set Variable    xpath=//td[contains(text(), "${data}[banco] - PIX para ${data}[chave]")]/.. 

    Wait For Elements State     ${element}  visible         5

Check for Error
    [Arguments]     ${expect_message}
    
    Wait For Elements State     
    ...             xpath=//div[contains(@class, "media-content")] >> text=${expect_message}
    ...             visible         5