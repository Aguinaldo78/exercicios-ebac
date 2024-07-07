            #language: pt

            Funcionalidade: Configurar produto

            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Cenário: Quando eu clicar no botão “limpar” deve voltar ao estado original
            Dado que existam produtos no carrinho de compras
            Quando o botão "limpar" for acionado
            Então o sistema deve zerar os produtos adicionados e exibir a mensagem "Você não possui itens no carrinho"

            Esquema do Cenário: Deve permitir apenas 10 produtos por venda
            Dado que eu selecione <quantidade> de um item
            Quando clicar em adicionar o produto ao carrinho
            Então o sistema deve exibir a crítica <mensagem>

            Exemplos:

            | quantidade | mensagem                                 |
            | "5"        | "Itens adicionados ao carrinho"          |
            | "6"        | "Itens adicionados ao carrinho"          |
            | "11"       | "Quantidade de itens acima do permitido" |

            Esquema do Cenário: Seleções de cor, tamanho e quantidade devem ser obrigatórios
            Dado que eu selecione <cor>, <tamanho> e <quantidade> do item desejado
            Quando clicar em adicionar o produto ao carrinho
            Então o sistema deve exibir <mensagem>

            Exemplos:

            | cor   | tamanho | quantidade | mensagem                                         |
            | preto | G       | 5          | "Itens adicionados ao carrinho"                  |
            | verde | P       | 11         | "Quantidade de itens acima do permitido"         |
            | azul  | vazio   | 6          | "Selecione o tamanho desejados"                  |
            | verde | M       | 0          | "A quantidade de itens deve ser, no mínimo, 1"   |
            | vazio | vazio   | 0          | "Escolha a cor, tamanho e quantidade do produto" |


