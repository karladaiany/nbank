*Settings*
Documentation           Este é o arquivo principal do projeto

Library                 Browser
Library                 String

Resource                actions.robot

*Keywords*
Start Session
    New Browser         chromium        headless=False      slowMo=00:00:01
    New Page            https://nbank.vercel.app/

End Session
    Take Screenshot