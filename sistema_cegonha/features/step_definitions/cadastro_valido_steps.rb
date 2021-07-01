Dado('que acesso o cadastro de perfil de usuario') do
  @cadastro_perfil_usuario_page = CadastroPerfilUsuarioPage.new
  @cadastro_perfil_usuario_page.load
  @cadastro_perfil_usuario_page.acessar_menu_perfil_usuario
  @cadastro_perfil_usuario_page.cadastrar_novo
  sleep 3
end

E('preencho os campos do formulário com dados válidos') do
  @cadastro_perfil_usuario_page.preencher_form_com_dados_validos_fixos
end

Quando('confirmo o cadastro') do
  @cadastro_perfil_usuario_page.confirmar_cadastro
end

Entao("o sistema deve exibir mensagem de sucesso") do
  @cadastro_perfil_usuario_page.wait_until_msg_sucesso_visible
  expect(@cadastro_perfil_usuario_page).to have_content 'Cadastro efetuado com sucesso.'
end

Então('o sistema deve exibir a mensagem de boas vindas') do
  @cadastro_page.wait_until_msg_sucesso_visible
  expect(@cadastro_page).to have_content 'Cadastro efetuado com sucesso. Obrigado'
end



