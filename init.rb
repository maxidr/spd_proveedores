# encoding: UTF-8
require_dependency 'layout_base_hook'

Redmine::Plugin.register :spd_proveedores do
  name 'Spd Proveedores plugin'
  author 'Maximiliano Dello Russo'
  description 'Gestión de proveedores para la plataforma SPD'
  version '0.1.1'
  url 'https://github.com/maxidr/spd_proveedores'
  author_url 'https://coderwall.com/maxidr'

  #permission :spd_proveedores,  { :project_providers => :index }, public: true
  menu :project_menu, :providers, { :controller => 'project_providers', :action => 'index' }, caption: 'Proveedores', param: :project_id

  menu :admin_menu, :providers, { :controller => 'providers', :action => 'index' }, caption: 'Proveedores' 

  project_module :proveedores do 
    permission :list_providers, { :project_providers => :index }, public: true
    permission :edit_required_services, { :project_providers => :index }
  end
end
