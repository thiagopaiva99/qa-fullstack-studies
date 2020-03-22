# language: pt

Funcionalidade: Login
    Para que eu possa gerenciar os filmes do catálogo NinjaFlix
    Sendo um usuário previamente cadastrado
    Posso acessr o sistema com o meu email e senha

    @login_happy
    Cenario: Acesso
        Quando eu faço login com "tony@stark.com" e "123456"
        Entao devo ser autenticado
        E devo ver "Tony Stark" na área logada

    Cenario: Senha Inválida
        Quando eu faço login com "tony@stark.com" com "12345"
        Entao não devo ser autenticado
        E devo ver a mensagem de alerta "Usuário e/ou senha inválidos."

    Cenario: Usuário não existe
        Quando eu faço login com "capitao@america.com" com "123456"
        Entao não devo ser autenticado
        E devo ver a mensagem de alerta "Usuário e/ou senha inválidos."

    Cenario: Email não informado
        Quando eu faço login com "" com "123456"
        Entao não devo ser autenticado
        E devo ver a mensagem de alerta "Oops. Cadê o email?"

    Cenario: Senha não informada
        Quando eu faço login com "teste@gmail.com" com ""
        Entao não devo ser autenticado
        E devo ver a mensagem de alerta "Oops. Cadê a senha?"