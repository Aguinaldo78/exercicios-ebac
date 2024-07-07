## language: pt

Funcionalidade: Configurar produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Cenário: Selecionar cor, tamanho e quantidade
Dado que eu estou na página do produto
Quando eu seleciono uma cor
E seleciono um tamanho
E escolho a quantidade
E clico no botão "Comprar"
Então devo ser direcionado para a página de checkout

Cenário: Tentativa de adicionar produto sem selecionar cor, tamanho ou quantidade
Dado que eu estou na página do produto
Quando eu não seleciono uma cor
E não seleciono um tamanho
E não escolho a quantidade
E clico no botão "Comprar"
Então eu devo ver uma mensagem de erro indicando que cor, tamanho e quantidade são obrigatórios

Cenário: Adicionar mais de 10 produtos
Dado que eu estou na página do produto
Quando eu seleciono uma cor
E seleciono um tamanho
E escolho a quantidade de 11 produtos
E clico no botão "Comprar"
Então devo ver uma mensagem de erro indicando que o limite máximo é de 10 produtos por venda

Cenário: Limpar as seleções do produto
Dado que eu estou na página do produto
E selecionei uma cor
E selecionei um tamanho
E escolhi uma quantidade
Quando clico no botão "limpar"
Então as seleções devem voltar ao estado original

Cenário: Adicionar quantidade máxima de produtos
Dado que eu estou na página do produto
Quando eu seleciono uma cor
E seleciono um tamanho
E escolho a quantidade de 10 produtos
E clico no botão "Comprar"
Então devo ser direcionado para a página de checkout



