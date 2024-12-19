            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que estou na página de configuração do produto

            Esquema do Cenário: Seleções de cor, tamanho e quantidade devem ser obrigatórios
            Quando eu seleciono a <cor>, <tamanho> e <quantidade> do produto
            Então o <botao> "Comprar" deve estar habilitado

            Exemplos:
            | cor    | tamanho | quantidade | botao        |
            | "azul" | "M"     | -          | desabilitado |
            | -      | "M"     | 1          | desabilitado |
            | "azul" | "M"     | 1          | habilitado   |
            | "azul" | -       | -          | desabilitado |


Cenário: Limitar a quantidade máxima de produtos
Quando eu tento adicionar mais que 10 unidades no carrinho
Então o botão "Adicionar" deve bloquear sua função

Cenário: Botão "limpar" deve voltar ao estado original
Quando eu já adicionei o produto ao carrinho e clico no botão "limpar"
Então todas as opções devem voltar ao estado original




