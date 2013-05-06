Redmine::Plugin.register :spd_proveedores do
  name 'Spd Proveedores plugin'
  author 'Author name'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'

  #permission :spd_proveedores,  { :project_providers => :index }, public: true
  menu :project_menu, :providers, { :controller => 'project_providers', :action => 'index' }, caption: 'Proveedores', param: :project_id

  project_module :proveedores do 
    permission :list_providers, { :project_providers => :index }
    permission :edit_required_services, { :project_providers => :index }
  end
end
