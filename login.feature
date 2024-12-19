            #language: pt

            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado Que estou na página de login da EBAC-SHOP

            Cenário: Dados válidos direcionados para o checkout
            Quando eu digitar o <usuario> e <senha> válidos
            Então deve ser direcionado para a tela do checkout

            Esquema do Cenário: Dados inválidos devem exibir mensagem de erro
            Quando eu digitar o usuario <usuario> e <senha> inválidos
            Então <mensagem> de erro deve ser exibida

            Exemplos:
            | usuario             | senha       | mensagem                     |
            | "fulano@gmail.com"  | "sea@##sda" | "Usuário ou senha inválidos" |
            | "fula###@gmail.com" | "senha123"  | "Usuário ou senha inválidos" |
            | "fulano@gmail.com"  | "senha123"  | -                            |