# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

get 'providers/:id', to: 'providers#edit', as: 'provider'
get 'providers', to: 'providers#index', as: 'providers'
get 'providers/new', to: 'providers#new', as: 'new_provider'
get 'providers/:id/edit', to: 'providers#edit', as: 'edit_provider'

post 'providers', to: 'providers#create'
put 'providers/:id', to: 'providers#update'
