# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

get 'providers', to: 'providers#index'
get 'providers/new', to: 'providers#new', as: 'new_provider'
post 'providers', to: 'providers#create'
