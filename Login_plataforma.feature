#language: pt

Funcionalidade: Login na plataforma

Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma
Para visualizar meus pedidos

Cenário: Ao inserir dados válidos deve ser direcionado para a tela de checkout
Dado que eu acesse a página de login da EBAC-SHOP
Quando eu informar o email "joaosantos@ebac.com.br"
E informar a senha "123456"
Então devo ser direcionado para a tela de checkout

Cenário: Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos”
Dado que eu acesse a página de login para acessar meu cadastro
Quando eu informar o email "joaoerrado@ebac.com.br" e a senha "78910"
Então deve exibir uma mensagem "Usuário ou senha inválidos"