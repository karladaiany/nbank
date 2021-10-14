*Settings*
Documentation           Suíte de testes para verificar operações PIX

Library                 ${EXECDIR}/resources/factories/values.py

Resource                ${EXECDIR}/resources/base.robot

Test Setup              Start Session
Test Teardown           End Session

*Test Cases*
nBank deve realizar PIX com valor positivo
    ${data}     Factory Positivo
    
    Go To Home Page
    Check For Balance Initial  Olá Papito, seu saldo é R$ 1000
    Go To PIX
    Fill PIX Form  ${data}
    Submit PIX Form
    Check For Balance Finale  Olá Papito, seu saldo é R$ 900
    Extract Shold Be Visible  ${data}

nBank deve realizar PIX com valor zerado
    ${data}     Factory Zero

    Go To Home Page
    Check For Balance Initial  Olá Papito, seu saldo é R$ 1000
    Go To PIX
    Fill PIX Form  ${data}
    Submit PIX Form
    Check for Error  Oops. Transferir ZERO é osso hein...

nBank deve realizar PIX com valor negativo
    ${data}     Factory Negativo

    Go To Home Page
    Check For Balance Initial  Olá Papito, seu saldo é R$ 1000
    Go To PIX
    Fill PIX Form  ${data}
    Submit PIX Form
    Check for Error  Oops. Valor para PIX incorreto...
    