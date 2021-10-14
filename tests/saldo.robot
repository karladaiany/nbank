*Settings*
Documentation           Suíte de testes para verificar se o saldo é exibido

Resource                ${EXECDIR}/resources/base.robot

Test Setup              Start Session
Test Teardown           End Session

*Test Cases*
nBank deve exibir saldo
    Go To Home Page
    Check For Balance Initial  Olá Papito, seu saldo é R$ 1000