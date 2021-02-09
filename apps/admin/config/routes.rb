# Configure your routes here
# See: https://guides.hanamirb.org/routing/overview
#
# Example:
# get '/hello', to: ->(env) { [200, {}, ['Hello from Hanami!']] }
get '/', to: 'home#index'
get '/posts', to: 'posts#index'
get '/posts/:id', to: 'posts#show'
