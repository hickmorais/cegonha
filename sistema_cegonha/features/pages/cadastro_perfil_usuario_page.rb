class CadastroPerfilUsuarioPage < SitePrism::Page
  set_url '/administrative/access-profiles'

  element :btn_adicionar_novo, :xpath, '//span[contains(text(),"Adicionar novo")]'
  element :menu_administrativo, :xpath, '//span[contains(text(),"Administrativo")]'
  element :menu_perfil_usuario, :xpath, '//span[contains(text(),"Perfil usuário")]'
  element :campo_nome, :xpath, '//input[contains(@name,"nmPerfilAcesso")]'
  element :campo_descricao, :xpath, '//textarea[contains(@name,"dsPerfilAcesso")]'
  element :btn_salvar, :xpath, '//span[contains(text(),"Salvar")]'

  def acessar_menu_perfil_usuario
    menu_administrativo.click
    sleep 2
    menu_perfil_usuario.click
  end

  def cadastrar_novo
    btn_adicionar_novo.visible?
    btn_adicionar_novo.click
  end

  def preencher_form_com_dados_validos_fixos
    campo_nome.visible?
    campo_nome.set 'Perfil Teste'
    campo_descricao.set 'Teste de Perfil'
  end

  def confirmar_cadastro
    btn_salvar.click
  end
end
