            #Language: pt

            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu estou na tela de checkout da EBAC-SHOP

            Esquema do Cenário: Cadastro concluido
            Quando insiro os dados válidos nos campos que são obrigatórios marcado com asteriscos
            E clico no botão "Finalizar Compra"
            Então a compra dever ser concluída com sucesso
            E devo ver um mensagem de confirmação de pedido

            | campo                 | valor                    |
            | Nome (*)              | José                     |
            | Sobrenome (*)         | Santos                   |
            | Nome da Empresa       |                          |
            | País (*)              | Brasil                   |
            | Endereço (*)          | Rua das Oliveiras Nr 399 |
            | Cidade (*)            | Curitiba                 |
            | CEP (*)               | 81260-240                |
            | Telefone (*)          | 41 99823 1010            |
            | Endereço de Email (*) | jose@exemplo.com         |


            Esquema do Cenário: Inserir um Email com formato inválido
            Quando Tento inserir um email com um formato inválido
            Então devo receber uma mensagem "formato inválido"

            | campo                 | valor                    |
            | Nome (*)              | José                     |
            | Sobrenome (*)         | Santos                   |
            | Nome da Empresa       |                          |
            | País (*)              | Brasil                   |
            | Endereço (*)          | Rua das Oliveiras Nr 399 |
            | Cidade (*)            | Curitiba                 |
            | CEP (*)               | 81260-240                |
            | Telefone (*)          | 41 99823 1010            |
            | Endereço de Email (*) | joseexemplo.com          |

            Esquema do Cenário: Campos Vazios
            Quando Tento cadastrar com compos Vazios
            E cliclo em "Finalizar a Compra"
            Então devo receber uma mensagem de alerta "Todos os campos são Obrigatórios"

            | campo                 | valor           |
            | Nome (*)              | José            |
            | Sobrenome (*)         | Santos          |
            | Nome da Empresa       |                 |
            | País (*)              | Brasil          |
            | Endereço (*)          |                 |
            | Cidade (*)            |                 |
            | CEP (*)               | 81260-240       |
            | Telefone (*)          |                 |
            | Endereço de Email (*) | joseexemplo.com |

