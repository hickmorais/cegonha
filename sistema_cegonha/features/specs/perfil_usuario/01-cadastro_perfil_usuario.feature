     #language: pt
     @regressivo
     Funcionalidade: Cadastrar novo usuario
     Como um usuário do cegonha
     Quero cadastrar um novo perfil de usuario

     
     @cadastrar_novo_perfil_usuario
     Cenário: Cadastrar novo perfil de usuario
     Dado que acesso o cadastro de perfil de usuario
     E preencho os campos do formulário com dados válidos
     Quando confirmo o cadastro
     Então o sistema deve exibir mensagem de sucesso
     