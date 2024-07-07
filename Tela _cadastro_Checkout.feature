            #language: pt

            Funcionalidade: Tela de Cadastrado - Checkout

            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu esteja na tela de cadastro para fazer meu registro

            Esquema do Cenário: Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
            Quando preencho todos os campos obrigatórios como <nome> <sobrenome> <email> <país> <cidade> <endereco> <telefone> e <cep>
            Então Devo ser direcionado para a página de checkout

            Exemplos:

            | nome   | sobrenome | email                  | país     | cidade     | endereco              | telefone        | cep         |
            | "João" | "Santos"  | "joaosantos@gmail.com" | "Brasil" | "Curitiba" | "Rua das Flores, 011" | "41 99800 0000" | "52051-035" |

            Cenário: Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta.
            Quando eu tentar concluir o cadastro sem preencher qualquer um dos campos obrigatórios
            Então o sistema deve exibir a mensagem "Preencha todos os campos marcados com asterisco"

            Esquema do Cenário: Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
            Quando eu inserir <email>
            Então o sistema deve exibir uma <mensagem>

            Exemplos:

            | email                 | mensagem         |
            | "joaoerradogmail.123" | "email inválido" |