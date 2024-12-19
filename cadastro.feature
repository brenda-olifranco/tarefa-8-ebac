      #language: pt

      Funcionalidade: Tela de cadastro no Checkout
      Como cliente da EBAC-SHOP
      Quero concluir meu cadastro
      Para finalizar minha compra

      Contexto:
      Dado que estou na página de cadastro no checkout

      Esquema do Cenário: Cadastro no checkout
      Quando eu já adicionei os <produtos> e concluo meu <cadastro>
      Então o <botao> "finalizar compra" fica disponível

      Exemplos:
      | produtos    | cadastro      | botao        |
      | adicionados | não concluído | indisponível |
      | -           | concluído     | indisponível |
      | adicionados | concluído     | disponível   |