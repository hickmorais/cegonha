     #language: pt
     @regressivo
     Funcionalidade: Criar conta
     Como um usuário do Cegonha
     Quero cadastrar um novo usuario

     
     @cadastro_usuario_valido
     Cenário: Cadastrar usuário com dados válidos
     Dado que acesso o cadastro de usuário
     E preencho os campos do formulário com dados válidos
     Quando confirmo o cadastro
     Então o sistema deve exibir a mensagem de sucesso
     