            # language: pt
            
            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu estou na página de login da EBAC-SHOP

            Esquema do Cenário: Login com dados válidos
            Quando eu insiro um e-mail válido e uma senha válida
            E eu clico no botão "Login"
            Então devo ser direcionado para página de boas-vindas
            | campo | valor             |
            | Email | pedro@exemplo.com |
            | Senha | Senha1234         |


            Esquema do Cenário: Login com email inválido
            Quando eu insiro um e-mail inválido e uma senha válida
            E clico no botão "Login"
            Então eu devo ver uma mensagem de alerta "Usuário ou senha inválidos"
            | campo | valor          |
            | Email | emailinvalido@ |
            | Senha | Senha1234      |


            Esquema do Cenário: Login com senha inválida
            Quando eu insiro um e-mail válido inválido e uma senha inválida
            E clico no botão "Login"
            Então eu devo ver uma mensagem de alerta "Usuário ou senha inválidos"
            | campo | valor             |
            | Email | pedro@exemplo.com |
            | Senha | senhaerrada       |


            Esquema do Cenário: Login com ambos os campos inválidos
            Quando eu insiro um e-mail inválido e uma senha inválida
            E eu clico no botão "Login"
            Então eu devo ver uma mensagem de alerta "Usuário ou senha inválidos"
            | campo | valor        |
            | Email | email@errado |
            | Senha | errada       |


