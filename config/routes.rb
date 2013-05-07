# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

get 'providers', to: 'providers#index', as: 'providers'
get 'providers/new', to: 'providers#new', as: 'new_provider'
get 'providers/:id', to: 'providers#edit', as: 'provider'
get 'providers/:id/edit', to: 'providers#edit', as: 'edit_provider'

post 'providers', to: 'providers#create'
put 'providers/:id', to: 'providers#update'

get 'project_providers',                  to: 'project_providers#index'
get 'project_providers/:project_id/new',  to: 'project_providers#new',    as: 'new_project_provider'
post 'project_providers/:project_id',     to: 'project_providers#create', as: 'create_project_provider'

get 'project_required_categories/:project_id',      to: 'project_required_categories#index',  as: 'project_required_categories'
get 'project_required_categories/:project_id/new',  to: 'project_required_categories#new',    as: 'new_required_category'
get 'project_required_categories/:project_id/edit', to: 'project_required_categories#edit',   as: 'edit_required_category'
post 'project_required_categories/:project_id',     to: 'project_required_categories#create'
put 'project_required_categories/:project_id',      to: 'project_required_categories#update'
